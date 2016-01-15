Return-Path: <mirela.rabulea@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 697D8E00BDF; Fri, 15 Jan 2016 05:09:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0081.outbound.protection.outlook.com [157.55.234.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBDC6E007EA;
	Fri, 15 Jan 2016 05:09:01 -0800 (PST)
Received: from VI1PR0401MB1789.eurprd04.prod.outlook.com (10.165.234.151) by
	DB5PR04MB0904.eurprd04.prod.outlook.com (10.161.195.15) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Fri, 15 Jan 2016 12:36:24 +0000
Received: from VI1PR0401MB1789.eurprd04.prod.outlook.com ([10.165.234.151]) by
	VI1PR0401MB1789.eurprd04.prod.outlook.com ([10.165.234.151]) with
	mapi id 15.01.0365.023; Fri, 15 Jan 2016 12:36:23 +0000
From: Mirela Rabulea <mirela.rabulea@nxp.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, "Barros Pena, 
	Belen" <belen.barros.pena@intel.com>, Mirela Rabulea
	<Mirela.Rabulea@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRO+JQkjs3VfaAnke6FvA1yts7QJ7W4STQgAF+aQCAAA+HAIAkMR0w
Date: Fri, 15 Jan 2016 12:36:22 +0000
Message-ID: <VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0@VI1PR0401MB1789.eurprd04.prod.outlook.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
	<D29D8ACF.6DB8E%belen.barros.pena@intel.com>
	<DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
	<D2A024CD.6DE42%belen.barros.pena@intel.com>
	<1FFB62CE8AEB0D4298B51122D8903E9626165832@irsmsx110.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9626165832@irsmsx110.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mirela.rabulea@nxp.com; 
x-originating-ip: [192.88.146.1]
x-microsoft-exchange-diagnostics: 1; DB5PR04MB0904;
	5:H+KGaOxqdgcphE3J1KfmV+oV/ZesvrK1VzXdJEmGq+fhEjFSQ2oEguO14o+yIkbs1N3TIyCamAc6K6+VsPW0HR7nf3WeMprIlc2kltRbJZOzENda1wJWDSRxwXH6/46j;
	24:Dysk8Lolz9M+FuB83KUYRViswgbDQy0ojBrdC9zRbBeT9VTY1liNlctmPiuR6uPjHJTlJqrXoafFGXYO+RO9BdgIEiqTvihEDWf3cL3VlsY=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR04MB0904;
x-ms-office365-filtering-correlation-id: ddce272a-8b41-4053-1a42-08d31da87a26
x-microsoft-antispam-prvs: <DB5PR04MB0904FE4A6E1DC7389DF35D4D8FCD0@DB5PR04MB0904.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197)(101931422205132);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102615245)(601004)(2401047)(8121501046)(520078)(5005006)(3002001)(10201501046);
	SRVR:DB5PR04MB0904; BCL:0; PCL:0; RULEID:; SRVR:DB5PR04MB0904; 
x-forefront-prvs: 08220FA8D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(24454002)(469094003)(479174004)(53484002)(50834003)(51914003)(13464003)(164054003)(377454003)(199003)(40764003)(189002)(57704003)(19625215002)(76576001)(99936001)(33656002)(87936001)(2900100001)(2950100001)(54356999)(86362001)(40100003)(66066001)(2201001)(15975445007)(93886004)(77096005)(19580405001)(19617315012)(19580395003)(19300405004)(106356001)(106116001)(105586002)(189998001)(1220700001)(5002640100001)(81156007)(16236675004)(74316001)(97736004)(76176999)(10400500002)(5004730100002)(5001770100001)(1096002)(5003600100002)(4326007)(6116002)(92566002)(3846002)(2501003)(50986999)(2906002)(122556002)(586003)(5890100001)(790700001)(102836003)(101416001)(5008740100001)(5001960100002)(7059030);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR04MB0904;
	H:VI1PR0401MB1789.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2016 12:36:22.8056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR04MB0904
Cc: Nicolae Manescu <nicu.manescu@nxp.com>
Subject: Re: using Hob to run images on a custom simulator, other than qemu
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jan 2016 13:09:08 -0000
X-Groupsio-MsgNum: 28003
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_"

--_004_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_"

--_000_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alex, Belen,

Is there some pre-setup necessary in order to run the HOB tests you mention=
ed?

I did the following:

-          Cloned poky repository, from master: git://git.yoctoproject.org/=
poky

-          Tried to run a test-case which seems the most related to my chan=
ges,  "Case 66 - Run image in Hob." from https://bugzilla.yoctoproject.org/=
tr_show_run.cgi?run_id=3D3478

-          With case 66, at first I was not able to build an image, due to =
the fact my homedir is on NFS, so I hacked meta/classes/sanity.bbclass, com=
mented out "status.addresult(check_not_nfs(tmpdir, "TMPDIR"))". After that,=
 I was able to build qemu ppc, core-image-minimal, but it took a lot of tim=
e, cannot say exactly how much, but for sure it did exceed 8 hours (it was =
trial and error for me, with disk quota exceeded, deleting to free space an=
d try again). After the image was build, when running the image I get permi=
ssion errors when running runqemu-ifup (see attached picture), I think it i=
s caused by my homedir being on NFS.

-          With my changes applied on the poky repository, I run again case=
 66, I found 1 issue which I fixed, and now the behavior is the same. With =
qemu image I get up to the point with permission errors when running runqem=
u-ifup, while with my custom image and run script, I can run successfully.

Unfortunately, at this moment I don't have enough quota on a non-NFS locati=
on. I can try to work around that, or expect until someone else performs a =
weekly test run. I am pretty confident now that my changes will not affect =
the current regression tests.

I would like to get the changes merged into YP 2.1 M2, RC1, which I see has=
 the following schedule:

Release Candidate and Milestone Release schedule (Full Pass QA test follows=
 every RC build)

*             RC1: 1/25/16

*             RC2: 2/1/16

*             M2 release: 2/12/16

Considering the above, how should I proceed next?

Should I log a bug/feature in Bugzilla and submit a patch for it? Do I need=
 some special membership to log bugs and submit patches?

The patch should be on which list/repo? Poky or bitbake (my modified files =
are in poky\bitbake\lib\bb\ui\crumbs)?

May I rely on some weekly test run, or do I need to work-out my NFS issues?



Thanks for your help,

Mirela



-----Original Message-----
From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]
Sent: Wednesday, December 23, 2015 1:17 PM
To: Barros Pena, Belen <belen.barros.pena@intel.com>; Mirela Rabulea <mirel=
a.rabulea@nxp.com>; Mirela Rabulea <Mirela.Rabulea@freescale.com>; yocto@yo=
ctoproject.org; poky@yoctoproject.org
Cc: Nicolae Manescu <nicu.manescu@nxp.com>
Subject: RE: [yocto] using Hob to run images on a custom simulator, other t=
han qemu



Hi,

Currently there are two test runs that ensure the HOB is functioning correc=
tly, as following:

                - https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=
=3D3479

                - https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=
=3D3478



We also have some of the test cases automated can be run, but as Belen ment=
ioned earlier, HOB is being deprecated so we would have to see if they stil=
l run correctly on the latest master. Keep me posted if you want to run the=
m, maybe we can help.



Cheers,

AlexG





-----Original Message-----

From: Barros Pena, Belen

Sent: Wednesday, December 23, 2015 12:21 PM

To: Mirela Rabulea <mirela.rabulea@nxp.com<mailto:mirela.rabulea@nxp.com>>;=
 Mirela Rabulea <Mirela.Rabulea@freescale.com<mailto:Mirela.Rabulea@freesca=
le.com>>; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; poky@yocto=
project.org<mailto:poky@yoctoproject.org>

Cc: Nicolae Manescu <nicu.manescu@nxp.com<mailto:nicu.manescu@nxp.com>>; Ge=
orgescu, Alexandru C <alexandru.c.georgescu@intel.com<mailto:alexandru.c.ge=
orgescu@intel.com>>

Subject: Re: [yocto] using Hob to run images on a custom simulator, other t=
han qemu







On 22/12/2015 11:35, "Mirela Rabulea" <mirela.rabulea@nxp.com<mailto:mirela=
.rabulea@nxp.com>> wrote:



>Hi Bel=E9n,

>Thanks for the answer. Is there a set of tests that would ensure there

>are no regressions? Where can it be found?



These are the test cases I can find in Testopia:



https://bugzilla.yoctoproject.org/tr_list_cases.cgi?searchstr=3Dhob&current=
_t

ab=3Dcase&summary_type=3Danywordssubstr&summary=3Dhob&field-1-0-0=3Dsummary=
&type-1-

0-0=3Danywordssubstr&value-1-0-0=3Dhob



Hopefully someone from QA can provide more details on how to run them.



If you want any input on how to present the new options in the UI, let me k=
now. I'll be happy to help.



Cheers



Bel=E9n



>

>Thanks,

>Mirela

>

>-----Original Message-----

>From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]

>Sent: Monday, December 21, 2015 1:26 PM

>To: Mirela Rabulea <Mirela.Rabulea@freescale.com<mailto:Mirela.Rabulea@fre=
escale.com>>;

>yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; poky@yoctoproject.o=
rg<mailto:poky@yoctoproject.org>

>Cc: nicolae.manescu@nxp.com<mailto:nicolae.manescu@nxp.com>

>Subject: Re: [yocto] using Hob to run images on a custom simulator,

>other than qemu

>

>

>

>On 18/12/2015 16:05, "yocto-bounces@yoctoproject.org on behalf of

>Mirela Rabulea" <yocto-bounces@yoctoproject.org on behalf of

>Mirela.Rabulea@freescale.com<mailto:Mirela.Rabulea@freescale.com>> wrote:

>

>>

>>

>>Hello yocto world

>>J

>>

>>

>>

>>This is my first message on any yocto list, I=B9m not sure which list to

>>address, so I choose the ones which seemed the most generic and suited

>>to my purpose. Please redirect me if a more specific list is better

>>suited to ask this question.

>>

>>

>>

>>The problem I see at present is: there is one single button in Hob,

>>=B3Run Image=B2, which is active only for qemu images, and it is

>>triggering the execution of the =B3poky\scripts\runqemu=B2 script. Please

>>scroll down to the picture at end of this email to see what I=B9m talking=
 about.

>>

>>

>>

>>The question I want to ask is if it would be acceptable to add more

>>buttons to the =B3Image details=B2 dialog (or a new dialog to pop-up when

>>=B3Run Image=B2 is clicked), in order to allow the customization of the

>>simulator to be launched, basically to specify the location & command

>>line of such custom simulator. Who may advise in this matter? I am

>>willing to contribute with changes.

>

>Hi Mirela,

>

>I have asked a few people about this, because Hob is pretty much

>deprecated at this point (it's being replaced by a web interface called

>Toaster). They replied they would be willing to merge changes to Hob,

>as long as they can be sure they won't cause any regressions.

>

>I hope this helps.

>

>Cheers

>

>Bel=E9n

>

>>

>>

>>

>>The changes I anticipate would be necessary are:

>>

>>1.

>>Changes in the GUI, somewhere in the python scripts from

>>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,

>>maybe in builder.py

>>

>>2.

>>Be more permissive with the types of images that are allowed to run.

>>Currently, there are these restrictions related to the name and

>>extension of the image in =B3poky\meta\classes\ image_types.bbclass=B2,

>>these need to be extended/customized:

>>

>>RUNNABLE_IMAGE_TYPES ?=3D "ext2 ext3"

>>

>>RUNNABLE_MACHINE_PATTERNS ?=3D "qemu"

>>

>>

>>

>>

>>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, see

>>attached picture, note that the highlighted =B3Run Image=B2 button shows

>>up only for qemu images.

>>

>>

>>Regards,

>>

>>Mirela

>>

>>

>>

>>

>



--_000_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1026561941;
	mso-list-type:hybrid;
	mso-list-template-ids:1096983880 -1823941040 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:13;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hi Alex, Belen,<o:p></o:p></p>
<p class=3D"MsoPlainText">Is there some pre-setup necessary in order to run=
 the HOB tests you mentioned?<o:p></o:p></p>
<p class=3D"MsoPlainText">I did the following:<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>Cloned poky repository, from master: <span style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white">
<a href=3D"git://git.yoctoproject.org/poky">git://git.yoctoproject.org/poky=
</a></span><o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>Tried to run a test-case which seems the most relat=
ed to my changes, &nbsp;&quot;Case 66 - Run image in Hob.&quot; from
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3478"=
>https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3478</a><o:p></=
o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>With case 66, at first I was not able to build an i=
mage, due to the fact my homedir is on NFS, so I hacked meta/classes/sanity=
.bbclass, commented out &#8220;status.addresult(check_not_nfs(tmpdir, &quot=
;TMPDIR&quot;))&#8221;. After that, I was able to build
 qemu ppc, core-image-minimal, but it took a lot of time, cannot say exactl=
y how much, but for sure it did exceed 8 hours (it was trial and error for =
me, with disk quota exceeded, deleting to free space and try again). After =
the image was build, when running
 the image I get permission errors when running runqemu-ifup (see attached =
picture), I think it is caused by my homedir being on NFS.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>With my changes applied on the poky repository, I r=
un again case 66, I found 1 issue which I fixed, and now the behavior is th=
e same. With qemu image I get up to the point with permission errors when r=
unning runqemu-ifup, while with
 my custom image and run script, I can run successfully.<o:p></o:p></p>
<p class=3D"MsoPlainText">Unfortunately, at this moment I don&#8217;t have =
enough quota on a non-NFS location. I can try to work around that, or expec=
t until someone else performs a weekly test run. I am pretty confident now =
that my changes will not affect the current
 regression tests.<o:p></o:p></p>
<p class=3D"MsoPlainText">I would like to get the changes merged into YP 2.=
1 M2, RC1, which I see has the following schedule:<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">Release Candidate and =
Milestone Release schedule (Full Pass QA test follows every RC build)
<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">&#8226;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=3D"ba=
ckground:yellow;mso-highlight:yellow">
RC1: 1/25/16</span> <o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">&#8226;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RC2: 2/1/16 <o:p>=
</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">&#8226;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M2 release: 2/12/=
16<o:p></o:p></p>
<p class=3D"MsoPlainText"><b>Considering the above, how should I proceed ne=
xt? <o:p>
</o:p></b></p>
<p class=3D"MsoPlainText">Should I log a bug/feature in Bugzilla and submit=
 a patch for it? Do I need some special membership to log bugs and submit p=
atches?<o:p></o:p></p>
<p class=3D"MsoPlainText">The patch should be on which list/repo? Poky or b=
itbake (my modified files are in poky\bitbake\lib\bb\ui\crumbs)?<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">May I rely on some weekly test run, or do I need =
to work-out my NFS issues?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks for your help,<o:p></o:p></p>
<p class=3D"MsoPlainText">Mirela<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com] <br>
Sent: Wednesday, December 23, 2015 1:17 PM<br>
To: Barros Pena, Belen &lt;belen.barros.pena@intel.com&gt;; Mirela Rabulea =
&lt;mirela.rabulea@nxp.com&gt;; Mirela Rabulea &lt;Mirela.Rabulea@freescale=
.com&gt;; yocto@yoctoproject.org; poky@yoctoproject.org<br>
Cc: Nicolae Manescu &lt;nicu.manescu@nxp.com&gt;<br>
Subject: RE: [yocto] using Hob to run images on a custom simulator, other t=
han qemu</p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText">Currently there are two test runs that ensure the=
 HOB is functioning correctly, as following:<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a href=3D"https://bugzilla.yoc=
toproject.org/tr_show_run.cgi?run_id=3D3479">
<span style=3D"color:windowtext;text-decoration:none">https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D3479</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a href=3D"https://bugzilla.yoc=
toproject.org/tr_show_run.cgi?run_id=3D3478">
<span style=3D"color:windowtext;text-decoration:none">https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D3478</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We also have some of the test cases automated can=
 be run, but as Belen mentioned earlier, HOB is being deprecated so we woul=
d have to see if they still run correctly on the latest master. Keep me pos=
ted if you want to run them, maybe
 we can help.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Cheers,<o:p></o:p></p>
<p class=3D"MsoPlainText">AlexG<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">From: Barros Pena, Belen <o:p></o:p></p>
<p class=3D"MsoPlainText">Sent: Wednesday, December 23, 2015 12:21 PM<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">To: Mirela Rabulea &lt;<a href=3D"mailto:mirela.r=
abulea@nxp.com"><span style=3D"color:windowtext;text-decoration:none">mirel=
a.rabulea@nxp.com</span></a>&gt;; Mirela Rabulea &lt;<a href=3D"mailto:Mire=
la.Rabulea@freescale.com"><span style=3D"color:windowtext;text-decoration:n=
one">Mirela.Rabulea@freescale.com</span></a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org"><span style=3D"color:windowtext;t=
ext-decoration:none">yocto@yoctoproject.org</span></a>;
<a href=3D"mailto:poky@yoctoproject.org"><span style=3D"color:windowtext;te=
xt-decoration:none">poky@yoctoproject.org</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">Cc: Nicolae Manescu &lt;<a href=3D"mailto:nicu.ma=
nescu@nxp.com"><span style=3D"color:windowtext;text-decoration:none">nicu.m=
anescu@nxp.com</span></a>&gt;; Georgescu, Alexandru C &lt;<a href=3D"mailto=
:alexandru.c.georgescu@intel.com"><span style=3D"color:windowtext;text-deco=
ration:none">alexandru.c.georgescu@intel.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">Subject: Re: [yocto] using Hob to run images on a=
 custom simulator, other than qemu<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">On 22/12/2015 11:35, &quot;Mirela Rabulea&quot; &=
lt;<a href=3D"mailto:mirela.rabulea@nxp.com"><span style=3D"color:windowtex=
t;text-decoration:none">mirela.rabulea@nxp.com</span></a>&gt; wrote:<o:p></=
o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Hi Bel=E9n,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Thanks for the answer. Is there a set of test=
s that would ensure there
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;are no regressions? Where can it be found?<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">These are the test cases I can find in Testopia:<=
o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><a href=3D"https://bugzilla.yoctoproject.org/tr_l=
ist_cases.cgi?searchstr=3Dhob&amp;current_t"><span style=3D"color:windowtex=
t;text-decoration:none">https://bugzilla.yoctoproject.org/tr_list_cases.cgi=
?searchstr=3Dhob&amp;current_t</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">ab=3Dcase&amp;summary_type=3Danywordssubstr&amp;s=
ummary=3Dhob&amp;field-1-0-0=3Dsummary&amp;type-1-<o:p></o:p></p>
<p class=3D"MsoPlainText">0-0=3Danywordssubstr&amp;value-1-0-0=3Dhob<o:p></=
o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hopefully someone from QA can provide more detail=
s on how to run them.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">If you want any input on how to present the new o=
ptions in the UI, let me know. I'll be happy to help.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Cheers<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Bel=E9n<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Thanks,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Mirela<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;-----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;From: Barros Pena, Belen [<a href=3D"mailto:b=
elen.barros.pena@intel.com"><span style=3D"color:windowtext;text-decoration=
:none">mailto:belen.barros.pena@intel.com</span></a>]<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Sent: Monday, December 21, 2015 1:26 PM<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">&gt;To: Mirela Rabulea &lt;<a href=3D"mailto:Mire=
la.Rabulea@freescale.com"><span style=3D"color:windowtext;text-decoration:n=
one">Mirela.Rabulea@freescale.com</span></a>&gt;;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<a href=3D"mailto:yocto@yoctoproject.org"><sp=
an style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.org</=
span></a>;
<a href=3D"mailto:poky@yoctoproject.org"><span style=3D"color:windowtext;te=
xt-decoration:none">poky@yoctoproject.org</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Cc: <a href=3D"mailto:nicolae.manescu@nxp.com=
"><span style=3D"color:windowtext;text-decoration:none">nicolae.manescu@nxp=
.com</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Subject: Re: [yocto] using Hob to run images =
on a custom simulator,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;other than qemu<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;On 18/12/2015 16:05, &quot;yocto-bounces@yoct=
oproject.org on behalf of
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Mirela Rabulea&quot; &lt;yocto-bounces@yoctop=
roject.org on behalf of
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<a href=3D"mailto:Mirela.Rabulea@freescale.co=
m"><span style=3D"color:windowtext;text-decoration:none">Mirela.Rabulea@fre=
escale.com</span></a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Hello yocto world<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;J<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;This is my first message on any yocto lis=
t, I=B9m not sure which list to
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;address, so I choose the ones which seeme=
d the most generic and suited
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;to my purpose. Please redirect me if a mo=
re specific list is better
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;suited to ask this question.<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;The problem I see at present is: there is=
 one single button in Hob,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;=B3Run Image=B2, which is active only for=
 qemu images, and it is
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;triggering the execution of the =B3poky\s=
cripts\runqemu=B2 script. Please
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;scroll down to the picture at end of this=
 email to see what I=B9m talking about.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;The question I want to ask is if it would=
 be acceptable to add more
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;buttons to the =B3Image details=B2 dialog=
 (or a new dialog to pop-up when
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;=B3Run Image=B2 is clicked), in order to =
allow the customization of the
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;simulator to be launched, basically to sp=
ecify the location &amp; command
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;line of such custom simulator. Who may ad=
vise in this matter? I am
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;willing to contribute with changes.<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Hi Mirela,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;I have asked a few people about this, because=
 Hob is pretty much
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;deprecated at this point (it's being replaced=
 by a web interface called
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Toaster). They replied they would be willing =
to merge changes to Hob,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;as long as they can be sure they won't cause =
any regressions.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;I hope this helps.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Cheers<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Bel=E9n<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;The changes I anticipate would be necessa=
ry are:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Changes in the GUI, somewhere in the pyth=
on scripts from
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;=B3poky\bitbake\lib\bb\ui\crumbs\=B2, esp=
ecially in imagedetailspage.py,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;maybe in builder.py<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Be more permissive with the types of imag=
es that are allowed to run.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Currently, there are these restrictions r=
elated to the name and
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;extension of the image in =B3poky\meta\cl=
asses\ image_types.bbclass=B2,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;these need to be extended/customized:<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;RUNNABLE_IMAGE_TYPES ?=3D &quot;ext2 ext3=
&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;RUNNABLE_MACHINE_PATTERNS ?=3D &quot;qemu=
&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;BTW, here is how Hob =B3Image details=B2 =
dialog currently looks like, see
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;attached picture, note that the highlight=
ed =B3Run Image=B2 button shows
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;up only for qemu images.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Mirela<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_--

--_004_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_
Content-Type: image/png; name="runqemu-ifup_permission_denied.png"
Content-Description: runqemu-ifup_permission_denied.png
Content-Disposition: attachment;
	filename="runqemu-ifup_permission_denied.png"; size=79587;
	creation-date="Fri, 15 Jan 2016 12:14:48 GMT";
	modification-date="Fri, 15 Jan 2016 12:14:48 GMT"
Content-Transfer-Encoding: base64

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
Z1fUAAAAAElFTkSuQmCC

--_004_VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0VI1PR0401MB1789_--
