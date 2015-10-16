Return-Path: <Noor_Ahsan@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D606E00AAB; Fri, 16 Oct 2015 11:54:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 597B7E0048C
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 11:54:46 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1ZnA9N-0006dO-At from Noor_Ahsan@mentor.com ;
	Fri, 16 Oct 2015 11:54:45 -0700
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.18]) by
	SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) with mapi id
	14.03.0224.002; Fri, 16 Oct 2015 19:54:44 +0100
From: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] opkg 0.3.0 or rootfs task
Thread-Index: AdEID/YXvvJYRC9ARjGu9IDwO4ksRQAGvNuAAAZJplA=
Date: Fri, 16 Oct 2015 18:54:43 +0000
Message-ID: <365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
In-Reply-To: <BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Fri, 16 Oct 2015 18:54:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_365E1805BC95084CBE82381A0B86999401095F8E08EUMBX01mgcmen_"

--_000_365E1805BC95084CBE82381A0B86999401095F8E08EUMBX01mgcmen_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: Friday, October 16, 2015 9:54 PM
To: Ahsan, Noor
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] opkg 0.3.0 or rootfs task


On Oct 16, 2015, at 5:47 AM, Ahsan, Noor <Noor_Ahsan@mentor.com<mailto:Noor=
_Ahsan@mentor.com>> wrote:

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

what does

getconf PATH_MAX /

show ?


jenkins@amd-ubu14-32-3:~$ getconf -a | grep  PATH_MAX
PATH_MAX                           4096
_POSIX_PATH_MAX                    4096

Noor
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_365E1805BC95084CBE82381A0B86999401095F8E08EUMBX01mgcmen_
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
	{font-family:HelveticaNeue;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"> Khem R=
aj [mailto:raj.khem@gmail.com]
<br>
<b>Sent:</b> Friday, October 16, 2015 9:54 PM<br>
<b>To:</b> Ahsan, Noor<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] opkg 0.3.0 or rootfs task<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">On Oct 16, 2015, at 5:47 AM, Ahsan, Noor &lt;<a href=
=3D"mailto:Noor_Ahsan@mentor.com">Noor_Ahsan@mentor.com</a>&gt; wrote:<o:p>=
</o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Hello,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">I noticed that at the time of rootfs cr=
eation symbolic links of the ipk files present in deploy/ipk. The problem w=
hat have it while creation of symbolic link it take the
 full path till that ipk and remove slashes and convert them into underscor=
es. Use that as the name of the symbolic link. This make a very long file n=
ames. If we have very long path then name of the symlink exceed from max fi=
lename limits. And we get following
 error<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Collected errors:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">* file_link: unable to stat `/var/jenki=
ns/workspace/mel_cedar-main/buildhost/amd-ubuntu14-32b/buildtype/iot/machin=
e/mel-dra7xx-evm/build_mel-dra7xx-evm/tmp/work/mel_dra7xx_evm-mel-linux-gnu=
eabi/console-image/1.0-r0/rootfs//var/cache/opkg/volatile/file:_var_jenkins=
_workspace_mel_cedar-main_buildhost_amd-ubuntu14-32b_buildtype_iot_machine_=
mel-dra7xx-evm_build_mel-dra7xx-evm_tmp_deploy_ipk_mel_dra7xx_evm_kernel-mo=
dule-lttng-ring-buffer-client-mmap-overwrite_2.6.2&#43;git0&#43;7a88f8b506-=
r0.0_mel_dra7xx_evm.ipk':
 File name too long.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Can anyone tell me why the addition of =
full path was added to the symlink name and can we remove it cause it is ca=
use issues?<o:p></o:p></span></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">what does<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">getconf PATH_MAX /<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">show ?<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">jenkins@amd-ubu14-32-3:~$=
 getconf -a | grep&nbsp; PATH_MAX<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">PATH_MAX&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4096<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">_POSIX_PATH_MAX&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4096<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Noor<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;He=
lveticaNeue&quot;,&quot;serif&quot;">--<span class=3D"apple-converted-space=
">&nbsp;</span><br>
_______________________________________________<br>
yocto mailing list<br>
</span><a href=3D"mailto:yocto@yoctoproject.org"><span style=3D"font-size:1=
0.0pt;font-family:&quot;HelveticaNeue&quot;,&quot;serif&quot;;color:#954F72=
">yocto@yoctoproject.org</span></a><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;HelveticaNeue&quot;,&quot;serif&quot;"><br>
</span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"><span styl=
e=3D"font-size:10.0pt;font-family:&quot;HelveticaNeue&quot;,&quot;serif&quo=
t;;color:#954F72">https://lists.yoctoproject.org/listinfo/yocto</span></a><=
o:p></o:p></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_365E1805BC95084CBE82381A0B86999401095F8E08EUMBX01mgcmen_--
