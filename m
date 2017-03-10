Return-Path: <Javier.Viguera@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 101C0E00A1E; Fri, 10 Mar 2017 11:41:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1205]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.243.198 listed in list.dnswl.org]
X-Greylist: delayed 370 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 11:41:28 PST
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B93FAE00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 11:41:28 -0800 (PST)
Received: from [216.82.242.35] by server-6.bemta-8.messagelabs.com id
	FB/E5-29357-5FFF2C85; Fri, 10 Mar 2017 19:35:17 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRWlGSWpSXmKPExsXi5LtOQPfL/0M
	RBq17zCwmvVzD5sDo0X6ijy2AMYo1My8pvyKBNePBratMBe3mFW/eXGBqYOw06mLk4hASWM0o
	ceL/FhYIZw2jxOaDb5ghnCWMEst7NrJ2MXJysAkYSkz49IkNxBYRMJV4cewLmC0sYCax5VQrO
	0TcWmJ6Uz+UrSexbeMLJhCbRUBV4satBmYQm1fAV2LDlX4wm1FAVuJL42owm1lAXOLWk/lg9R
	ICAhJL9pxnhrBFJV4+/scKYctLTPlwkRHCNpRYNe0AC4QtLfGmZx0bxJw8iS+7vzBB7BKUODn
	zCViNkICKxIYbv5kmMIrMQrJuFpKWWUhaIOI6Egt2f2KDsLUlli18zQxjnznwmAlZfAEj+ypG
	jeLUorLUIl1DM72kosz0jJLcxMwcXUMDC73c1OLixPTUnMSkYr3k/NxNjMAYq2dgYNzBOGG3+
	yFGSQ4mJVFeCaWDEUJ8SfkplRmJxRnxRaU5qcWHGGU4OJQkePWbgHKCRanpqRVpmTnAaIdJS3
	DwKInwKoKkeYsLEnOLM9MhUqcYFaXEeZc0AiUEQBIZpXlwbbAEc4lRVkqYl5GBgUGIpyC1KDe
	zBFX+FaM4B6OSMO8LkCk8mXklcNNfAS1mAlo8jQ9scUkiQkqqgVEz+Nqj/4n+neVqFz+2rZzu
	mVAn3uJQJ5t+KrjrnbZhh+4RlcsuRhZXrl46tbhv/9em1+88e/dYCyds3O1ptPLkIlaVUw6+2
	ySfx36cwXL5+Oydr56Y7DgS9XbKjA1NvIcq9xkx/z/xZVvaCsFV9lmLen9qHW+50DL/zpupbO
	W/aviTP26+F7xEiaU4I9FQi7moOBEAVl05CSsDAAA=
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-6.tower-75.messagelabs.com!1489174516!42572790!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.2.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 32453 invoked from network); 10 Mar 2017 19:35:16 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-6.tower-75.messagelabs.com with SMTP;
	10 Mar 2017 19:35:16 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 10 Mar 2017 13:35:13 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH02.digi.com
	(10.10.8.196) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 10 Mar 2017 13:35:12 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0319.002;
	Fri, 10 Mar 2017 20:35:11 +0100
From: "Viguera, Javier" <Javier.Viguera@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Literal curly braces inside python expression
Thread-Index: AdKZ1WpN56tmVCM0QAOA70Ie4GvJfA==
Date: Fri, 10 Mar 2017 19:35:10 +0000
Message-ID: <DA8287CC96892A4EB4FCF4FB3FBDA1AB01457141@dor-sms-xch01.digi.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.55]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Literal curly braces inside python expression
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
X-List-Received-Date: Fri, 10 Mar 2017 19:41:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB01457141dorsmsxch01digi_"

--_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB01457141dorsmsxch01digi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm having a hard time trying to put some literal curly braces in a python =
expression and I need a bit of help to solve this problem.

I minimal example to reproduce this. If in my recipe i have:

VAR1 =3D "1"
VAR2 =3D "${@base_conditional('VAR1', '1', '{ONE}', '{TWO}', d)}"

do_install() {
      echo "${VAR2}"
}

Getting the recipe environment I get:

# bitbake -e myrecipe | less

do_install() {
      ...
      echo "${@base_conditional('VAR1', '1', '{ONE}', '{TWO}', d)}"
      ...
}

So bitbake is not resolving the python expression.

If on the other hand I remove the curly braces:

VAR1 =3D "1"
VAR2 =3D "${@base_conditional('VAR1', '1', 'ONE', 'TWO', d)}"

then bitbake solves the expression correctly:

# bitbake -e myrecipe | less

do_install() {
      ...
      echo "ONE"
      ...
}

But I do need to put those curly braces. Is there a way?

Thanks in advance.

--
Javier Viguera



--_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB01457141dorsmsxch01digi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 85.05pt 70.85pt 85.05pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm having a hard time trying to put some literal cu=
rly braces in a python expression and I need a bit of help to solve this pr=
oblem.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I minimal example to reproduce this. If in my recipe=
 i have:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"ES" style=3D"font-family:Consolas">VAR=
1 =3D &quot;1&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES" style=3D"font-family:Consolas">VAR=
2 =3D &quot;${@base_conditional('VAR1', '1', '{ONE}', '{TWO}', d)}&quot;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES" style=3D"font-family:Consolas"><o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">do_install() {<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; echo &quot;${VAR2}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">}<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Getting the recipe environment I get:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"># bitbake -e my=
recipe | less<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">do_install() {<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; echo &quot;${@base_conditional('VAR1', '1', '{ONE}', '{TWO}=
', d)}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">}<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So bitbake is not resolving the python expression.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If on the other hand I remove the curly braces:<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">VAR1 =3D &quot;=
1&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">VAR2 =3D &quot;=
${@base_conditional('VAR1', '1', 'ONE', 'TWO', d)}&quot;<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">then bitbake solves the expression correctly:<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"># bitbake -e my=
recipe | less<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas"><o:p>&nbsp;</o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">do_install() {<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; echo &quot;ONE&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">}<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But I do need to put those curly braces. Is there a =
way?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">Javier Viguera<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB01457141dorsmsxch01digi_--
