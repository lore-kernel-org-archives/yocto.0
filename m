Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 223D5E00C9E; Fri, 20 Apr 2018 02:21:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2619AE008A2
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 02:21:15 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Apr 2018 02:21:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,300,1520924400"; 
	d="scan'208,217";a="221982155"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
	by fmsmga006.fm.intel.com with ESMTP; 20 Apr 2018 02:21:14 -0700
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.51]) by
	PGSMSX104.gar.corp.intel.com ([169.254.3.189]) with mapi id
	14.03.0319.002; Fri, 20 Apr 2018 17:21:13 +0800
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re: Linux Files needed for PXE network boot 
Thread-Index: AdPYV/6gxpRfCmtuTZ220WdLnlD73Q==
Date: Fri, 20 Apr 2018 09:21:13 +0000
Message-ID: <A05DCA0C0293664FB237A9C4B0E55E460150911C@PGSMSX107.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWEwNjRjMGYtNmE2My00MjA4LWI4NWItMjk5OTM0Yzk5MGE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJqK1J5WnhYMGxWMllBOVN2V21SZmp6VzVkS1RESGhtN3B6c0JwdGhWbTB1UlwvcWQ2S1hIa0V4Y3FpOENQR0FsMCJ9
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: Linux Files needed for PXE network boot
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
X-List-Received-Date: Fri, 20 Apr 2018 09:21:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A05DCA0C0293664FB237A9C4B0E55E460150911CPGSMSX107garcor_"

--_000_A05DCA0C0293664FB237A9C4B0E55E460150911CPGSMSX107garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Maybe grub file bootx64.efi do not have network module.  You can try to use=
 grub provided by Ubuntu http://archive.ubuntu.com/ubuntu/dists/trusty/main=
/uefi/grub2-amd64/current/grubnetx64.efi.signed

Or  build your own grub that build-in with network capability.

In your root tftp server create a grub folder with grub.cfg.
/tftpboot/grub/grub.cfg

Your grub.cfg should look like this
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Set timeout 5

menuentry "core-image-sato" {
    linux image/bzImage
    initrd image/initrd
}

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Put your image in tftp root
/tftpboot/image/bzImage
/tftpboot/image/initrd

If you want to put your rootfs in NFS. You need to include network module i=
n kernel and  extract your rootfs for example to /srv/rootfs.  Then your gr=
ub.cfg should be like this

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D grub.cfg =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Set timeout 5

menuentry "core-image-sato-NFS" {
    linux image/bzImage root=3D/dev/nfs rw nfsroot=3D192.168.1.1:/srv/rootf=
s,hard,tcp,intr ip=3Ddhcp
    initrd image/initrd
}

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Regards,
Alim Hussin


--_000_A05DCA0C0293664FB237A9C4B0E55E460150911CPGSMSX107garcor_
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
	font-size:10.0pt;
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
<p class=3D"MsoNormal"><span lang=3D"EN-MY">Maybe grub file bootx64.efi do =
not have network module. &nbsp;You can try to use grub provided by Ubuntu
<a href=3D"http://archive.ubuntu.com/ubuntu/dists/trusty/main/uefi/grub2-am=
d64/current/grubnetx64.efi.signed">
http://archive.ubuntu.com/ubuntu/dists/trusty/main/uefi/grub2-amd64/current=
/grubnetx64.efi.signed</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">Or &nbsp;build your own grub th=
at build-in with network capability.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">In your root tftp server create=
 a grub folder with grub.cfg.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">/tftpboot/grub/grub.cfg<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">Your grub.cfg should look like =
this<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">Set timeout 5<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">menuentry &#8220;core-image-sat=
o&#8221; {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">&nbsp;&nbsp;&nbsp; linux image/=
bzImage <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">&nbsp;&nbsp;&nbsp;&nbsp;initrd =
image/initrd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">Put your image in tftp root<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">/tftpboot/image/bzImage<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">/tftpboot/image/initrd<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">If you want to put your rootfs =
in NFS. You need to include network module in kernel and&nbsp; extract your=
 rootfs for example to /srv/rootfs. &nbsp;Then your grub.cfg should be like=
 this<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D grub.cfg =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">Set timeout 5<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">menuentry &#8220;core-image-sat=
o-NFS&#8221; {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">&nbsp;&nbsp;&nbsp; linux image/=
bzImage </span>root=3D/dev/nfs rw nfsroot=3D192.168.1.1:/srv/rootfs,hard,tc=
p,intr ip=3Ddhcp<span lang=3D"EN-MY"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">&nbsp;&nbsp;&nbsp; initrd image=
/initrd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Alim Hussin<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_A05DCA0C0293664FB237A9C4B0E55E460150911CPGSMSX107garcor_--
