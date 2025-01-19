// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0<0.9.0;

contract Portfolio {
    struct Project{
        uint id;
        string name;
        string description;
        string image;
        string githubLink;
    }

    struct Education{
        uint id;
        string date;
        string degree;
        string instutionName;
    }

    Project[3] public projects;
    Education[3] public educationDetails;
    string public imageLink ="bafkreiaycc5oz3ol33kufayne2mfjunslscqv6niwimgkvnl734c6kzdbm";
    string public resumeLink = "bafkreiho5y7fvqy3ry6jmmoa767q4vtndvo3nlpz2ajhr3wvksdch6z2uy";
    string public description = "Hello! I'm Dhruvil Kasodariya, a passionate developer with experience in react.js ,node.js ,next.js ,solidity.";
    uint projectCount;
    uint educationCount;
    address public manager;
    
    constructor(){
        manager=msg.sender;
    }

    modifier onlyManager(){
        require(manager==msg.sender,"you are not the manager");
        _;
    }

    function insertProject(string calldata _name,string calldata _description,string calldata _image,string calldata _githubLink) external onlyManager{
        require(projectCount<3,"Only 3 project allowed");
        projects[projectCount] =Project(projectCount,_name,_description,_image,_githubLink);
        projectCount++;
    }

    function changeProject(string calldata _name,string calldata _description,string calldata _image,string calldata _githubLink ,uint _projectCount) external onlyManager{
       require(_projectCount>=0 && _projectCount<3,"Only 3 project allowed");
       projects[_projectCount] =Project(_projectCount,_name,_description,_image,_githubLink); 
    }

    function allProject() external view returns (Project[3] memory){
        return projects;
    }

    function insertEduction(string calldata _date,string calldata _degree,string calldata _instutionName) external onlyManager{
        require(educationCount<3,"Only 3 education allowed");
        educationDetails[educationCount] =Education(educationCount,_date,_degree,_instutionName);
        educationCount++;
    }

    function changeEduction(string calldata _date,string calldata _degree,string calldata _instutionName,uint _educationCount) external onlyManager{
       require(_educationCount>=0 && _educationCount<3,"Only 3 education allowed");
       educationDetails[_educationCount] =Education(_educationCount,_date,_degree,_instutionName); 
    }

    function allEduction() external view returns (Education[3] memory){
        return educationDetails;
    }

    function changeDescription(string calldata _description) external onlyManager{
        description=_description;
    }

       function changeImageLink(string calldata _imageLink) external onlyManager{
        imageLink=_imageLink;
    }

       function changeResumeLink(string calldata _resumeLink) external onlyManager{
        resumeLink=_resumeLink;
    }

    function donate() public payable {
        payable(manager).transfer(msg.value);
    }
}