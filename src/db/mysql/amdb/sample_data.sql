INSERT INTO `clients` (`clientID`, `client`, `modified`, `web`) VALUES
(1, 'Apple', '2017-10-01 14:59:48', 'www.apple.com'),
(2, 'Comcast', '2017-10-01 15:17:35', 'www.comcast.net'),
(3, 'Palo Alto Networks', '2017-10-01 15:20:50', 'www.paloaltonetworks.com'),
(4, 'Verizon', '2017-10-01 15:22:19', 'www.verizon.com');

INSERT INTO `client_locations` (`locationID`, `clientID`, `modified`, `address`, `city`, `state`, `zip`, `phone`, `notes`) VALUES
(1, 1, '2017-10-01 14:59:48', '1 Infinite Loop', 'Cupertino', 'CA', '95014', '408-996-1010', ''),
(2, 2, '2017-10-01 15:17:35', '1701 JFK Boulevard', 'Philadelphia', 'PA', '19103', '800-934-6489', ''),
(3, 3, '2017-10-01 15:20:50', '3000 Tannery Way', 'Santa Clara', 'CA', '95054', '408-753-4000', ''),
(4, 4, '2017-10-01 15:22:19', '140 W. St.', 'New York', 'NY', '10007', '212-395-1000', '');

INSERT INTO `contacts` (`contactID`, `modified`, `contact`, `title`, `work`, `cell`, `email`, `notes`, `clientID`, `projectID`) VALUES
(1, '2017-09-18 20:43:51', 'Brian Roberts', 'CEO', '', '', '', '', 2, 0),
(2, '2017-09-18 20:43:12', 'Lowell McAdam', 'CEO', '', '', '', '', 4, 0),
(3, '2017-09-18 20:50:59', 'Mark D. McLaughlin', 'CEO', '', '', '', '', 3, 0),
(4, '2017-09-18 20:42:22', 'Tim Cook', 'CEO', '', '', '', '', 1, 0);

INSERT INTO `employees` (`employeeID`, `modified`, `employee`, `title`, `cell`, `email`, `notes`) VALUES
(1, '2017-09-18 20:53:41', 'Bugs Bunny', 'Manager', '100-200-0001', 'bugs.bunny@acme.com', 'Linux'),
(2, '2017-09-18 20:54:40', 'Moe Howard', 'Red Team', '100-200-0002', 'moe.howard@acme.com', 'Linux'),
(3, '2017-09-18 20:55:02', 'Larry Fine', 'Red Team', '100-200-0003', 'larry.fine@acme.com', 'Windows'),
(4, '2017-09-18 20:55:27', 'Curly Howard', 'Red Team', '100-200-0004', 'curly.howard@acme.com', 'Web'),
(5, '2017-09-22 22:11:25', 'Wile E Coyote', 'Pure Genius', '100-200-0005', 'wile.e.coyote@acme.com', ''),
(6, '2017-09-22 22:11:25', 'Daffy Duck', 'Intern', '100-200-0006', 'daffy.duck@acme.com', ''),
(7, '2017-09-22 22:11:25', 'Foghorn Leghorn', '1099', '100-200-0007', 'foghorn.leghorn@acme.com', '');

INSERT INTO `findings` (`findingID`, `modified`, `type`, `finding`, `observation`, `severity`, `remediation`, `see_also`) VALUES
(1, '2017-09-18 20:56:27', 'Host', 'Access to Administrative Interface', '', '', '', ''),
(2, '2017-09-18 20:57:53', 'Host', 'Apple Patching Issues', '', '', '', ''),
(3, '2017-09-18 20:57:20', 'Host', 'Apple Configuration Issues', '', '', '', ''),
(4, '2017-09-18 20:58:18', 'Web', 'Reflected XSS', '', '', '', '');

INSERT INTO `projects` (`projectID`, `modified`, `project`, `assessmentID`, `clientID`, `kickoff`, `start`, `finish`, `tech_qa`, `draft_delivery`, `final_delivery`, `notes`, `status`) VALUES
(1, '2017-11-12 19:48:17', '2017 Fall External Assessment', 1, 3, '11/13/2017', '11/14/2017', '11/17/2017', '11/22/2017', '11/24/2017', '', '', 'Contract');

INSERT INTO `hostvulns` (`hostvulnID`, `modified`, `tool`, `vulnerability`, `findingID`, `cvss_base`, `internal`, `external`, `description`, `remediation`, `see_also`, `published`, `updated`) VALUES
(1, '2017-09-22 20:45:52', 'Nessus', 'OS X <10.10', 2, 10, 'High', 'Critical', 'qqq', 'www', 'eee', '', ''),
(2, '2017-09-22 22:12:49', 'Manual', 'Palo Alto admin console', 1, 0, 'Medium', 'High', '', '', '', '09/01/2017', '09/08/2017');

INSERT INTO `webvulns` (`webvulnID`, `modified`, `tool`, `vulnerability`, `findingID`, `severity`, `description`, `remediation`, `see_also`) VALUES
(1, '2017-09-18 23:47:28', 'Burp', 'Homepage XSS', 4, 'Medium', '', '', '');
