Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5EC0E0030B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 10:03:13 -0800 (PST)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Tue, 4 Feb 2014 13:03:06 -0500
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Tue, 4 Feb 2014 13:03:05 -0500
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Tue, 4 Feb 2014 13:03:05 -0500
From: Brian Karcz <briank@RUSSOUND.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Parallel builds with common shared state cache
Thread-Index: Ac8hz87nxbjCIzVqQQeZCw+gouI1MQ==
Date: Tue, 4 Feb 2014 18:03:05 +0000
Message-ID: <1ebdbe80eed846bea559f9b0988acd37@HERMES.RUSSOUND.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.60]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrMqsTGxcLFwMCnG6n9Mchgyd2OL2wWE5a2MjkwBjBEsWbmJeVXJLBmNM/ayVTw37Jiy7xG1gbGmWZdjFwcQgJLGSXWXbvN2sXICeTsYJSY9UoMxGYWMJW48rWRBcJWlLhwrwHMZhNQl3ixdwpYvQhQzYtjX9hAbGEBc4lbS+ZDxW0kVt6YxQRh60lM2TOTGcRmEVCRmPloC9gcXgEnieb1S8FqGAXEJL6fWsMEsUtc4taT+WC2hICAxJI955khbCWJ3tvvoOI+Epe6L7BCzBGUODnzCQtE3Exi74MlUDW6Eg//LGaHsAMlvkx8BzSHA8g2lbj6PhgibCuxZ8ZEJoiws8S8G/UQYSuJa+enskLY2hLbX+2DsnUkNl1bBbVJXuL/vfssMGMmXF4GdaWsxOlri9gg7ACJZYuvsUCM95K4e1MDIpwnMf/fTrYJjCqzkMJ5FlI4z0IKh1lIflzAyLKKUdjDNcjXNVgvKDQ42D/Uz0UvOT93EyM0Aexg/HvD/hCjJAeTkijvPJWPQUJ8SfkplRmJxRnxRaU5qcWHGCU4eJREeLdqAuV4iwsSc4sz02FSMhwcShK880FSgkWp6akVaZk5JalFEOlTjJJS4rylIEkBkL6M0jy43CVGUSlh3mVqQDmegtSi3MwSiPgtRmGOh0xCLHn5ealSQCcyAIEG4ytGcQ5GJWHeWSCzeDLzSuBOeAV0HRPQdetc34NcV5KIkJJqYNSa/fltfs2Hz/+YZ9xNn+xT1f1v+cFbP6xrF7xPKrdSucI5P7H+D5OQx4uuuunTE2taf00N2HbpTNlqbouH2mohLCtmf86UEuVYqy207GVdU+YhVaeU2kkTHnxpPbWtkSEh5JNOm8KHA16J8XdqWP8fuPf7/6xTetx/v62s9zhTt/Df1j0p4RJKLMUZiYZazEXFiQBpGaQvdgMAAA==
MIME-Version: 1.0
Subject: Parallel builds with common shared state cache
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
X-List-Received-Date: Tue, 04 Feb 2014 18:03:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1ebdbe80eed846bea559f9b0988acd37HERMESRUSSOUNDcom_"

--_000_1ebdbe80eed846bea559f9b0988acd37HERMESRUSSOUNDcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm curious is there are any issues with using a common shared state cache =
directory, outside the build directory, for multiple different image builds=
 that also might be running in parallel to each other? I'm in the process o=
f setting up a new build server and wanted to make sure this wasn't an inva=
lid configuration before proceeding.

We generally build three different images that are all based on the same ma=
chine type. Our existing builds, which are still based on Edison, all have =
their shared state cache dir set to /opt/sstate-cache. While I'm pretty con=
fident there are no issues having the three projects point at the same dire=
ctory from a content perspective, are there any problems with parallel buil=
ds in separate build trees referencing the same shared state cache area at =
potentially the same time? Are there any general restrictions to using a co=
mmon shared state cache directory?

Thanks,
Brian

--_000_1ebdbe80eed846bea559f9b0988acd37HERMESRUSSOUNDcom_
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
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	font-family:"Lucida Console";
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">I&#8217;m curious is there are any issues with using a =
common shared state cache directory, outside the build directory, for multi=
ple different image builds that also might be running
 in parallel to each other? I&#8217;m in the process of setting up a new bu=
ild server and wanted to make sure this wasn&#8217;t an invalid configurati=
on before proceeding.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">We generally build three different images that are all =
based on the same machine type. Our existing builds, which are still based =
on Edison, all have their shared state cache dir
 set to /opt/sstate-cache. While I&#8217;m pretty confident there are no is=
sues having the three projects point at the same directory from a content p=
erspective, are there any problems with parallel builds in separate build t=
rees referencing the same shared state
 cache area at potentially the same time? Are there any general restriction=
s to using a common shared state cache directory?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Brian<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_1ebdbe80eed846bea559f9b0988acd37HERMESRUSSOUNDcom_--
