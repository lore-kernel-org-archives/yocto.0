Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC6CE0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 18:00:11 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Mar 2012 18:00:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="123969193"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2012 18:00:10 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 1 Mar 2012 18:00:10 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.90]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.102]) with mapi id
	14.01.0355.002; Thu, 1 Mar 2012 18:00:10 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_qa_cofigure error message:  host include and/or library
	paths while determining system capabilities
Thread-Index: Acz4GDKSiZONAE4MQ3yuMU/ovZEF4Q==
Date: Fri, 2 Mar 2012 02:00:10 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C4900AC948@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: do_qa_cofigure error message: host include and/or library paths while determining system capabilities
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Mar 2012 02:00:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C4900AC948ORSMSX103amrcorpi_"

--_000_63ECFF2A2302B44093D7CE9E9962C4900AC948ORSMSX103amrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Can someone explain the meaning of the following error:

| ERROR: This autoconf log indicates errors, it looked at host include and/=
or library paths while determining system capabilities.
| Rerun configure task after fixing this. The path was '/home/rsaxena/Yocto=
Work3x/cedarmplayer2/tmp/work/core2-poky-linux/mplayer-0.4+git1+99eddc30c8c=
388b81ea040b7c75d144d4e908092-r0/git'
| ERROR: Function 'do_qa_configure' failed


The text of the error message seems to indicate that the build used a host =
include/library path  for something.
However the supposed wrong path is not really a host path as it is pointing=
 to dir inside the build dir.

So why is a error being flagged ?

Thanks
Rahul

--_000_63ECFF2A2302B44093D7CE9E9962C4900AC948ORSMSX103amrcorpi_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">Can someone explain the meaning of the following err=
or:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">| ERROR: This autoconf log indicates errors, it look=
ed at host include and/or library paths while determining system capabiliti=
es.<o:p></o:p></p>
<p class=3D"MsoNormal">| Rerun configure task after fixing this. The path w=
as '/home/rsaxena/YoctoWork3x/cedarmplayer2/tmp/work/core2-poky-linux/mplay=
er-0.4&#43;git1&#43;99eddc30c8c388b81ea040b7c75d144d4e908092-r0/git'<o:p></=
o:p></p>
<p class=3D"MsoNormal">| ERROR: Function 'do_qa_configure' failed<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The text of the error message seems to indicate that=
 the build used a host include/library path&nbsp; for something.<o:p></o:p>=
</p>
<p class=3D"MsoNormal">However the supposed wrong path is not really a host=
 path as it is pointing to dir inside the build dir.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So why is a error being flagged ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Rahul<o:p></o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C4900AC948ORSMSX103amrcorpi_--
