Return-Path: <haidoan@qti.qualcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C832EE00D12; Wed, 27 Mar 2019 16:02:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [199.106.114.38 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 123 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Mar 2019 16:01:58 PDT
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com
	[199.106.114.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FDB6E00CE0
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 16:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
	s=qcdkim; t=1553727718; x=1585263718;
	h=from:to:subject:date:message-id:mime-version;
	bh=yi4WUav4j7xnckJe1SoliK7Zg21Wbmv1zQiBbmeeGJc=;
	b=KJH4VGmWkRVtFZclyCW6oEiDbzBnkDZvz7H3KAcgKNM91MYdtbFsPE6D
	OGtrlS8iNdpg94hlrfbnvMqtVksMCbdA1ieAYasWjyE5RarT1V4hjyfpQ
	fqO/MncW9qbPHIJ2tPy+Lnepovh6EOO5GquVZwZWYfJWXlY3gEggG3DuN A=;
X-IronPort-AV: E=Sophos;i="5.60,277,1549958400"; d="scan'208,217";a="36838413"
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
	by alexa-out-sd-01.qualcomm.com with ESMTP; 27 Mar 2019 15:59:55 -0700
Received: from nasanexm03a.na.qualcomm.com ([10.85.0.103])
	by ironmsg02-sd.qualcomm.com with ESMTP/TLS/AES256-SHA;
	27 Mar 2019 15:59:53 -0700
Received: from nasanexm03d.na.qualcomm.com (10.85.0.91) by
	nasanexm03a.na.qualcomm.com (10.85.0.103) with Microsoft SMTP Server
	(TLS) id 15.0.1395.4; Wed, 27 Mar 2019 15:59:52 -0700
Received: from nasanexm03d.na.qualcomm.com ([10.85.0.91]) by
	nasanexm03d.na.qualcomm.com ([10.85.0.91]) with mapi id 15.00.1395.000;
	Wed, 27 Mar 2019 15:59:52 -0700
From: Hai Doan <haidoan@qti.qualcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Python 3.6 - Import numpy gives "Importing the multiarray numpy
	extension module failed" error
Thread-Index: AdTk7qcwwHygS39dTjmNkU+GCzHtoA==
Date: Wed, 27 Mar 2019 22:59:52 +0000
Message-ID: <3509857a38f748bd984b96a2f1a72819@nasanexm03d.na.qualcomm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.49.16.6]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 01 Apr 2019 09:16:00 -0700
Subject: Python 3.6 - Import numpy gives "Importing the multiarray numpy extension module failed" error
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
X-List-Received-Date: Wed, 27 Mar 2019 23:02:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3509857a38f748bd984b96a2f1a72819nasanexm03dnaqualcommco_"

--_000_3509857a38f748bd984b96a2f1a72819nasanexm03dnaqualcommco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I recently updated python from 3.5.2 to 3.6.8 for my Poky Morty - version 2=
.2.2 build and now I'm having issues with getting the numpy library to work=
. I thought it was a compatibility issue with python 3.6 and the version of=
 numpy I was using, but after trying multiple numpy versions (1.11.0, 1.13.=
1, 1.14.5, 1.14.6, 1.16.2), I'm still getting the same "cannot import 'mult=
iarray'" error show below. I checked the /usr/lib/python3.6/site-packages/n=
umpy/core/ folder, and the multiarray library seems to be there (file named=
 multiarray.cpython-36m-x86_64-linux-gnu.so), so I'm not sure why it is not=
 working.


Output when importing numpy:
Python 3.6.8 (default, Mar 26 2019, 23:27:51)
[GCC 6.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import subprocess
>>> import numpy
Traceback (most recent call last):
  File "/usr/lib/python3.6/site-packages/numpy/core/__init__.py", line 16, =
in <module>
    from . import multiarray
ImportError: cannot import name 'multiarray'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/lib/python3.6/site-packages/numpy/__init__.py", line 142, in <=
module>
    from . import add_newdocs
  File "/usr/lib/python3.6/site-packages/numpy/add_newdocs.py", line 13, in=
 <module>
    from numpy.lib import add_newdoc
  File "/usr/lib/python3.6/site-packages/numpy/lib/__init__.py", line 8, in=
 <module>
    from .type_check import *
  File "/usr/lib/python3.6/site-packages/numpy/lib/type_check.py", line 11,=
 in <module>
    import numpy.core.numeric as _nx
  File "/usr/lib/python3.6/site-packages/numpy/core/__init__.py", line 26, =
in <module>
    raise ImportError(msg)
ImportError:
Importing the multiarray numpy extension module failed.  Most
likely you are trying to import a failed build of numpy.
If you're working with a numpy git repo, try `git clean -xdf` (removes all
files not under version control).  Otherwise reinstall numpy.

Original error was: cannot import name 'multiarray'


Does anyone have an idea on how to resolve this? Any help would be greatly =
appreciated. Thank you.

--_000_3509857a38f748bd984b96a2f1a72819nasanexm03dnaqualcommco_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I recently updated python from 3.5.2 to 3.6.8 for my=
 Poky Morty &#8211; version 2.2.2 build and now I&#8217;m having issues wit=
h getting the numpy library to work. I thought it was a compatibility issue=
 with python 3.6 and the version of numpy I was
 using, but after trying multiple numpy versions (1.11.0, 1.13.1, 1.14.5, 1=
.14.6, 1.16.2), I&#8217;m still getting the same &#8220;cannot import &#821=
6;multiarray&#8217;&#8221; error show below. I checked the /usr/lib/python3=
.6/site-packages/numpy/core/ folder, and the multiarray library
 seems to be there (file named <i>multiarray.cpython-36m-x86_64-linux-gnu.s=
o</i>), so I&#8217;m not sure why it is not working.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><u>Output when importing numpy:<o:p></o:p></u></b=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Python 3.6.8 (default, Mar 26 2019, 23:27:51)<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">[GCC 6.2.0] on linux<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Type &quot;help&quot;, &quot;copyright&quot;, &quot;credit=
s&quot; or &quot;license&quot; for more information.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&gt;&gt;&gt; import subprocess<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&gt;&gt;&gt; import numpy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Traceback (most recent call last):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/usr/lib/python3.6/site-packages/numpy/c=
ore/__init__.py&quot;, line 16, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; from . import multiarray<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ImportError: cannot import name 'multiarray'<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">During handling of the above exception, another exception =
occurred:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Traceback (most recent call last):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;modu=
le&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/usr/lib/python3.6/site-packages/numpy/_=
_init__.py&quot;, line 142, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; from . import add_newdocs<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/usr/lib/python3.6/site-packages/numpy/a=
dd_newdocs.py&quot;, line 13, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; from numpy.lib import add_newdoc<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/usr/lib/python3.6/site-packages/numpy/l=
ib/__init__.py&quot;, line 8, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; from .type_check import *<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/usr/lib/python3.6/site-packages/numpy/l=
ib/type_check.py&quot;, line 11, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; import numpy.core.numeric as _nx<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp; File &quot;/usr/lib/python3.6/site-packages/numpy/c=
ore/__init__.py&quot;, line 26, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">&nbsp;&nbsp;&nbsp; raise ImportError(msg)<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">ImportError:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Importing the multiarray numpy extension module failed.&nb=
sp; Most<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">likely you are trying to import a failed build of numpy.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">If you're working with a numpy git repo, try `git clean -x=
df` (removes all<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">files not under version control).&nbsp; Otherwise reinstal=
l numpy.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">Original error was: cannot import name 'multiarray'<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Does anyone have an idea on how to resolve this? Any=
 help would be greatly appreciated. Thank you.<o:p></o:p></p>
</div>
</body>
</html>

--_000_3509857a38f748bd984b96a2f1a72819nasanexm03dnaqualcommco_--
