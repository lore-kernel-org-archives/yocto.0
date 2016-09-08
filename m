Return-Path: <jeffrey.siegel@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17219E00A07; Thu,  8 Sep 2016 15:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.245.18.28 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [135.245.18.28 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 644 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Sep 2016 15:17:33 PDT
Received: from smtp-us.alcatel-lucent.com (us-hpatc-esg-02.alcatel-lucent.com
	[135.245.18.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 803CEE009FD
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 15:17:33 -0700 (PDT)
Received: from us70tumx2.dmz.alcatel-lucent.com (unknown [135.245.18.14])
	by Websense Email Security Gateway with ESMTPS id 5F0755CB9419C
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 22:06:46 +0000 (GMT)
Received: from us70tusmtp2.zam.alcatel-lucent.com
	(us70tusmtp2.zam.alcatel-lucent.com [135.5.2.64])
	by us70tumx2.dmz.alcatel-lucent.com (GMO) with ESMTP id u88M6mAe012878
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 8 Sep 2016 22:06:48 GMT
Received: from US70TWXCHHUB04.zam.alcatel-lucent.com
	(us70twxchhub04.zam.alcatel-lucent.com [135.5.2.36])
	by us70tusmtp2.zam.alcatel-lucent.com (GMO) with ESMTP id
	u88M6mZM024949
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Sep 2016 22:06:48 GMT
Received: from US70UWXCHMBA02.zam.alcatel-lucent.com ([169.254.8.175]) by
	US70TWXCHHUB04.zam.alcatel-lucent.com ([135.5.2.36]) with mapi id
	14.03.0195.001; Thu, 8 Sep 2016 18:06:48 -0400
From: "Siegel, Jeffrey (Nokia - US)" <jeffrey.siegel@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 'bb' utility fails on attempt to import 'commands' module
Thread-Index: AdIKHUpIDlK0cGuGSY2VskoA0mvdOQ==
Date: Thu, 8 Sep 2016 22:06:46 +0000
Message-ID: <4B3F5767F3F5754FAD4E230B6B1D4F792130C338@US70UWXCHMBA02.zam.alcatel-lucent.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.5.27.18]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Sep 2016 06:40:31 -0700
Subject: 'bb' utility fails on attempt to import 'commands' module
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
X-List-Received-Date: Thu, 08 Sep 2016 22:17:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B3F5767F3F5754FAD4E230B6B1D4F792130C338US70UWXCHMBA02z_"

--_000_4B3F5767F3F5754FAD4E230B6B1D4F792130C338US70UWXCHMBA02z_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm fairly new to Yocto, several web article recommend the use of Chris Lar=
son's 'bb' utility. I understand 'bb' is not part of Yocto, but perhaps som=
eone here knows the answer to my problem. Running 'bb log' in my build dire=
ctory results in:

[siegel@xxx junk]$ bb log
Traceback (most recent call last):
  File "/home/siegel/oe/dist/bin/bb/libexec/bb-log", line 10, in <module>
    import bbcmd
  File "/home/siegel/oe/dist/bin/bb/libexec/bbcmd.py", line 18, in <module>
    import bb.cache
  File "/home/siegel/poky/bitbake/bin/../lib/bb/__init__.py", line 77, in <=
module>
    import bb.msg
  File "/home/siegel/poky/bitbake/bin/../lib/bb/msg.py", line 32, in <modul=
e>
    import bb.event
  File "/home/siegel/poky/bitbake/bin/../lib/bb/event.py", line 35, in <mod=
ule>
    import bb.utils
  File "/home/siegel/poky/bitbake/bin/../lib/bb/utils.py", line 37, in <mod=
ule>
    from commands import getstatusoutput
ImportError: No module named 'commands'

'bb' Python source contains shebang path '/usr/bin/env python3' , which mea=
ns it expects to be run by a Python 3.x interpreter. But then it imports py=
thon code from bitbake/lib, and bitbake/Yocto use Python 2.7.x.  'bb' fails=
 upon trying to import 'commands', which is a non-existent module in Python=
3.

Any suggestions? I have installed 'bb' according to its directions, put in =
my .bashrc:
eval "$(~/oe/dist/bin/bb/bin/bb init -)"

Regards,
Jeff


--_000_4B3F5767F3F5754FAD4E230B6B1D4F792130C338US70UWXCHMBA02z_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
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
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m fairly new to Yocto, several web article r=
ecommend the use of Chris Larson&#8217;s &#8216;bb&#8217; utility. I unders=
tand &#8216;bb&#8217; is not part of Yocto, but perhaps someone here knows =
the answer to my problem. Running &#8216;bb log&#8217; in my build director=
y results
 in:<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">[siegel@xxx junk]$ bb log<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Traceback (most recent call last):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/home/siegel/oe/dist/bin/bb/libexec/bb-l=
og&quot;, line 10, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; import bbcmd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/home/siegel/oe/dist/bin/bb/libexec/bbcm=
d.py&quot;, line 18, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; import bb.cache<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/home/siegel/poky/bitbake/bin/../lib/bb/=
__init__.py&quot;, line 77, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; import bb.msg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/home/siegel/poky/bitbake/bin/../lib/bb/=
msg.py&quot;, line 32, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; import bb.event<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/home/siegel/poky/bitbake/bin/../lib/bb/=
event.py&quot;, line 35, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; import bb.utils<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/home/siegel/poky/bitbake/bin/../lib/bb/=
utils.py&quot;, line 37, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; from commands import getstatusoutput<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ImportError: No module named 'commands'<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">&#8216;bb&#8217; Python source contains shebang path=
 &#8216;/usr/bin/env python3&#8217; , which means it expects to be run by a=
 Python 3.x interpreter. But then it imports python code from bitbake/lib, =
and bitbake/Yocto use Python 2.7.x. &nbsp;&#8216;bb&#8217; fails upon tryin=
g
 to import &#8216;commands&#8217;, which is a non-existent module in Python=
3.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestions? I have installed &#8216;bb&#8217; a=
ccording to its directions, put in my .bashrc:<o:p></o:p></p>
<p class=3D"MsoNormal">eval &quot;$(~/oe/dist/bin/bb/bin/bb init -)&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_4B3F5767F3F5754FAD4E230B6B1D4F792130C338US70UWXCHMBA02z_--
