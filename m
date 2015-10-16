Return-Path: <Noor_Ahsan@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C292BE00BB5; Fri, 16 Oct 2015 05:47:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E3CFE00B23
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 05:47:12 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-03.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1Zn4Pf-0004Sc-Qe from Noor_Ahsan@mentor.com 
	for yocto@yoctoproject.org; Fri, 16 Oct 2015 05:47:12 -0700
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.18]) by
	SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) with mapi id
	14.03.0224.002; Fri, 16 Oct 2015 13:47:11 +0100
From: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: opkg 0.3.0 or rootfs task
Thread-Index: AdEID/YXvvJYRC9ARjGu9IDwO4ksRQ==
Date: Fri, 16 Oct 2015 12:47:10 +0000
Message-ID: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
Subject: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Fri, 16 Oct 2015 12:47:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_365E1805BC95084CBE82381A0B86999401095F873EEUMBX01mgcmen_"

--_000_365E1805BC95084CBE82381A0B86999401095F873EEUMBX01mgcmen_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I noticed that at the time of rootfs creation symbolic links of the ipk fil=
es present in deploy/ipk. The problem what have it while creation of symbol=
ic link it take the full path till that ipk and remove slashes and convert =
them into underscores. Use that as the name of the symbolic link. This make=
 a very long file names. If we have very long path then name of the symlink=
 exceed from max filename limits. And we get following error

Collected errors:
* file_link: unable to stat `/var/jenkins/workspace/mel_cedar-main/buildhos=
t/amd-ubuntu14-32b/buildtype/iot/machine/mel-dra7xx-evm/build_mel-dra7xx-ev=
m/tmp/work/mel_dra7xx_evm-mel-linux-gnueabi/console-image/1.0-r0/rootfs//va=
r/cache/opkg/volatile/file:_var_jenkins_workspace_mel_cedar-main_buildhost_=
amd-ubuntu14-32b_buildtype_iot_machine_mel-dra7xx-evm_build_mel-dra7xx-evm_=
tmp_deploy_ipk_mel_dra7xx_evm_kernel-module-lttng-ring-buffer-client-mmap-o=
verwrite_2.6.2+git0+7a88f8b506-r0.0_mel_dra7xx_evm.ipk': File name too long=
.

Can anyone tell me why the addition of full path was added to the symlink n=
ame and can we remove it cause it is cause issues?

Noor

--_000_365E1805BC95084CBE82381A0B86999401095F873EEUMBX01mgcmen_
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I noticed that at the time of rootfs creation symbol=
ic links of the ipk files present in deploy/ipk. The problem what have it w=
hile creation of symbolic link it take the full path till that ipk and remo=
ve slashes and convert them into underscores.
 Use that as the name of the symbolic link. This make a very long file name=
s. If we have very long path then name of the symlink exceed from max filen=
ame limits. And we get following error
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Collected errors:<o:p></o:p></p>
<p class=3D"MsoNormal">* file_link: unable to stat `/var/jenkins/workspace/=
mel_cedar-main/buildhost/amd-ubuntu14-32b/buildtype/iot/machine/mel-dra7xx-=
evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm-mel-linux-gnueabi/console-=
image/1.0-r0/rootfs//var/cache/opkg/volatile/file:_var_jenkins_workspace_me=
l_cedar-main_buildhost_amd-ubuntu14-32b_buildtype_iot_machine_mel-dra7xx-ev=
m_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7xx_evm_kernel-module-lttng-ri=
ng-buffer-client-mmap-overwrite_2.6.2&#43;git0&#43;7a88f8b506-r0.0_mel_dra7=
xx_evm.ipk':
 File name too long.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone tell me why the addition of full path was=
 added to the symlink name and can we remove it cause it is cause issues?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Noor<o:p></o:p></p>
</div>
</body>
</html>

--_000_365E1805BC95084CBE82381A0B86999401095F873EEUMBX01mgcmen_--
