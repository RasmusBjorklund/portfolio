SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rasmusbjorklund`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `hp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `code`, `description`, `hp`) VALUES
(1, 'Prototyping: communication & design concepts', 'ISGA06', '
The course is an introduction to the development of computer systems from a user perspective. The interaction between systems and users is in focus.
The course deals with how prototypes can be used in the development and communication of design proposals. The course also provides a general introduction to information systems and how these relate to the basic administration and information needs of a business, as well as to the physical and logical structure and function of computer systems. ', '7.5'),

(2, 'Operations & IT', 'ISGA02', 'The aim of the course is to highlight the connection between business and IT.
Vision, methods and models for business development will be highlighted both theoretically and practically. The course deals with change work and how IT is used and can be used to develop the activities conducted in organizations. ', '7.5'),

(3, 'Acquisition of IT systems', '
ISGA03', 'The aim of the course is to highlight the connection between activities and the acquisition of IT-based information systems. The course deals with the procurement process of IT solutions and its consequences for business and organization. Theory and practical elements (eg in the form of Case, customer meeting and workshop) are alternated during the course.', '7.5'),

(4, 'Basic Programming', 'ISGA04', '
The aim of the course is to introduce basic principles and techniques in a modern programming language. The course highlights the problems that arise in the realization phase and the work of fulfilling the requirement specification. The focus of the course is guidelines for programming, problem structuring and problem solving. Structured programming (sequence, iteration, selection and subprogram), programming methodology and basic object-oriented programming are dealt with in the course.', '7.5'),

(5, 'Introduction to object-oriented programming', 'ISGB18', '
The course is a continuation of ISGA04 Basic programming and includes elements such as exception handling, event management and graphic components. The course is based on object-oriented analysis and design, where basic concepts such as objects, class, encapsulation, method, attributes, inheritance, polymorphism and constructors are some elements. ', '5'),

(6, 'HTML & CSS for web development', 'ISGA11', 'During the course, how to use HTML to structure a web page and how to use the CSS to present the content of the HTML page, with regard to formatting and layout, and how to publish HTML and CSS documents using CSS is discussed.
', '5'),

(7, 'System implementation technology', 'ISGB11', '
During the course, the student discusses how the student with three complementary approaches creates web-based applications. More specifically, it means how the student with a server-controlled scripting language creates solutions for the difference between desktop applications and web-based applications based on stateless environments with connectionless data communication.', '5'),

(8, 'JavaScript for web development', 'ISGB15', '
The course deals with how to create interactive and dynamic web pages that are interpreted in the browser with JavaScript. More specifically, this means how JavaScript uses methods and properties in classes and objects, how to create functions and how to use event management to call functions and methods. In addition, the validation of HTML forms and how to use the DOM to change HTML and CSS are treated.', '5'),

(9, 'Portable format', 'ISGB13', 'On this course you will learn more about how portability plays an increasingly important role in designing e-services and web-based information systems. We attack portability from the perspective of data access via XML, portable image formats and HTML5 as the new de-facto standard for web development. After completing the course you will be able to discuss how to structure and organize information with the aim of being able to exchange it between different information systems, describe the principles for XML, XHTML, and different image formats.
', '5'),

(10, 'Multimedia for the web', 'ISGB16', 'The course deals with how to create and include multimedia on a web page. More specifically, it means how to create 2D graphics with canvas and JavaScript, how to create 2D graphics with SVG and JavaScript, how to include multimedia with video and audio elements, and how to use CSS to customize how multimedia is displayed on portable devices.
', '5'),

(11, 'Web development project', 'ISGB24', '
The course is completed during a semester in project form. The project revolves around the development and construction of a web application with several clients and a server.

The teaching is divided into four parts that deal with:
database design,
object-oriented modeling,
program development as well
Web development.', '30'),

(12, 'C#.NET', 'DVGB07', '
The course provides knowledge in developing programs in C #.', '7.5'),


(13, 'Graphical user interface', 'DVGA11', 'The course focuses on programming of graphic interfaces and includes technical, aesthetic, social and international perspectives on interfaces.
', '7.5'),

(14, 'Webdesign 2', 'MKGB63', '
The course deals with the various work processes of the design process through design, application and problem-solving processes in web design with a focus on UX.
The course includes advanced knowledge of web design. With an emphasis on the design process as a powerful tool through communication, target group analysis and idea generation, the student works with web design.
The course also includes in-depth elements in web development of more advanced websites.', '15');



-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` char(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
