Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BACDAE00CDF; Sun,  7 Apr 2019 23:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14A0E00942
	for <yocto@yoctoproject.org>; Sun,  7 Apr 2019 23:08:54 -0700 (PDT)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x3863otW032047
	for <yocto@yoctoproject.org>; Mon, 8 Apr 2019 08:08:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=DtxRSmXuXhyhCBu7SxCAZOpZIdQQHgGZL6CNag/hYrw=;
	b=R+VOcSnpPwQQXLiZHn1q3RKjBNxKDzRXC37CJe8T/1Ja8cfhitujWcDIStDaNoSBD890
	dOh+Krc0Q2SxBba4x9qk2YlgGXeKEbiahiiE0S8iY+5aGHydxH83DvcH2dygjowll4J4
	F9pym58SK/mjwjK7ID/3Lu3HoSwc/fz6yDjplMg+v1kW02cni+LE6Bb06cqEvbZg6maH
	weqi9GYbyT2Az5j0Kx8gAGZi+TUpm9eITceuGWuEJFno2EEOchsp6SRd3sK3kZGLLJgQ
	qG240EziZiBReOckZg8TFpmfYawYzqUXJZ6Zmt0jOqTfjKlqLObJaYvb83STfJtJQA74
	tw== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2023.ppsmtp.net with ESMTP id 2rpj69aueq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 08:08:53 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 6141870383D
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 08:08:52 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FileExistsError: [Errorno 17] File Exists
Thread-Index: AdTt0EKnTj86w06aSk6HXjiGsomzIg==
Date: Mon, 8 Apr 2019 06:08:51 +0000
Message-ID: <5677a277a1a9466c96062287a1754c8f@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.151]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24538.002
X-TM-AS-Result: No-22.484100-5.000000-10
X-TMASE-MatchedRID: U+eWXepkWJCvhOOX3csmVxIRh9wkXSlFIqmf+IJXHPwL/50zj0KL7MY5
	EkxuDx2Ii3JgCz8o45epKt810hIw5WX3SpdG0+lW/4ToWehCRQWscK/K2Dlvjrm9DnSAgf6KgPG
	ayJ0+nsu8sB+LOrappQdAvjibU7wC6PwQRgw0dlNDiv1vEl2xWzul9KNGwPY6mF2l5zXitMpoi6
	xWQvHeSTba6gSbbjl+WBQVNPtj1ClhNnaZf6fHDBuurbgYp+HQ6r+5bPPauHf5N0o2THGRZKgFX
	2xz5NjH4j4lr4Wn4RisEFKef8ZUxqf50/sZyNUdb/5HBZ6dvRh3Bf9JIqsoeEbaqUVvLFsi2s92
	sh0zjZvZfQx3B5aMuJJTzjwz+GzorhAB5C8gZ6o00dkxYNMRt/8JYSFP1dhVsstO9qYbwEmjxYy
	RBa/qJR8AKgKWeNGhjoczmuoPCq39LaiEL6Z6eLUJKDYg3xVjOZEK+rymsMg0lt3vr1f4oeK38o
	cfIXN3
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--22.484100-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24538.002
x-tm-snts-smtp: EEAEF9281B7DA373C957849EC2A2BD2E6FEEC9B349B3F4C91FB57F0AEF49B7A52002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190408060852Z
X-Proofpoint-ID: SID=2rpj69aueq QID=2rpj69aueq-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-04-08_04:, , signatures=0
Subject: FileExistsError: [Errorno 17] File Exists
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
X-List-Received-Date: Mon, 08 Apr 2019 06:10:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5677a277a1a9466c96062287a1754c8fifmcom_"

--_000_5677a277a1a9466c96062287a1754c8fifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi I was trying to compile Weston-6.0 using yocto recipe. For this I backpo=
rted some of the packages from master branch of poky to my own layer. Durin=
g this process, there was one package xorgproto which was used in master br=
anch of poky but in rocko branch this package is not there. However a simil=
ar package is there called xproto. Now there is a conflict between these tw=
o packages for installing the same headers. I appended xorgproto recipe and=
 removed the installation of similar header files. But after this I am gett=
ing this error. However If I continue to compile these errors are ignored.
Is there any way by which I can correct these errors. Why is there no check=
 in staging.bbclass if the file exists or not.
The error is shown below:


ERROR: gstreamer1.0-plugins-base-1.12.2-r0 do_prepare_recipe_sysroot: Error=
 executing a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
*** 0002:extend_recipe_sysroot(d)
     0003:
File: '/home/iepl007/yocto_build/poky/meta/classes/staging.bbclass', lineno=
: 565, function: extend_recipe_sysroot
     0561:                    dest =3D newmanifest[l]
     0562:                    if l.endswith("/"):
     0563:                        staging_copydir(l, targetdir, dest, seend=
irs)
     0564:                        continue
*** 0565:                    staging_copyfile(l, targetdir, dest, postinsts=
, seendirs)
     0566:
     0567:    bb.note("Installed into sysroot: %s" % str(msg_adding))
     0568:    bb.note("Skipping as already exists in sysroot: %s" % str(msg=
_exists))
     0569:
File: '/home/iepl007/yocto_build/poky/meta/classes/staging.bbclass', lineno=
: 151, function: staging_copyfile
     0147:        os.symlink(linkto, dest)
     0148:        #bb.warn(c)
     0149:    else:
     0150:        try:
*** 0151:            os.link(c, dest)
     0152:        except OSError as err:
     0153:            if err.errno =3D=3D errno.EXDEV:
     0154:                bb.utils.copyfile(c, dest)
     0155:            else:
Exception: FileExistsError: [Errno 17] File exists: '/home/iepl007/yocto_bu=
ild/build_weston/tmp/sysroots-components/aarch64/xorgproto/usr/include/X11/=
Xwindows.h' -> '/home/iepl007/yocto_build/build_weston/tmp/work/aarch64-pdm=
3-linux/gstreamer1.0-plugins-base/1.12.2-r0/recipe-sysroot/usr/include/X11/=
Xwindows.h'

ERROR: gstreamer1.0-plugins-base-1.12.2-r0 do_prepare_recipe_sysroot: Funct=
ion failed: extend_recipe_sysroot
ERROR: Logfile of failure stored in: /home/iepl007/yocto_build/build_weston=
/tmp/work/aarch64-pdm3-linux/gstreamer1.0-plugins-base/1.12.2-r0/temp/log.d=
o_prepare_recipe_sysroot.27414
ERROR: Task (/home/iepl007/yocto_build/poky/meta/recipes-multimedia/gstream=
er/gstreamer1.0-plugins-base_1.12.2.bb:do_prepare_recipe_sysroot) failed wi=
th exit code '1'

Best Regards
Kamal Pandey


--_000_5677a277a1a9466c96062287a1754c8fifmcom_
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
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi I was trying to compile <b>Weston-6.0 using yocto=
 recipe</b>. For this I backported some of the packages from master branch =
of poky to my own layer. During this process, there was one package
<b>xorgproto</b> which was used in master branch of poky but in rocko branc=
h this package is not there. However a similar package is there called xpro=
to. Now there is a conflict between these two packages for installing the s=
ame headers. I appended xorgproto
 recipe and removed the installation of similar header files. But after thi=
s I am getting this error. However If I continue to compile these errors ar=
e ignored.<o:p></o:p></p>
<p class=3D"MsoNormal">Is there any way by which I can correct these errors=
. Why is there no check in staging.bbclass if the file exists or not.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">The error is shown below: &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>ERROR: gstreamer1.0-plugins-base-1.12.2-r0 do_pre=
pare_recipe_sysroot: Error executing a python function in exec_python_func(=
) autogenerated:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal"><i>The stack trace of python calls that resulted in =
this exception/failure was:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>File: 'exec_python_func() autogenerated', lineno:=
 2, function: &lt;module&gt;<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0001:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>*** 0002:extend_recipe_sysroot(d)<o:p></o:p></i><=
/p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0003:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>File: '/home/iepl007/yocto_build/poky/meta/classe=
s/staging.bbclass', lineno: 565, function: extend_recipe_sysroot<o:p></o:p>=
</i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0561:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; dest =3D newmanifest[l]<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0562:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if l.endswith(&quot;/&quot;):<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0563:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; staging_copydir(l, targetdir, =
dest, seendirs)<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0564:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>*** 0565:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
staging_copyfile(l, targetdir, dest, postinsts, seendirs)<o:p></o:p></i></p=
>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0566:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0567:&nbsp;&nbsp;&nbsp; =
bb.note(&quot;Installed into sysroot: %s&quot; % str(msg_adding))<o:p></o:p=
></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0568:&nbsp;&nbsp;&nbsp; =
bb.note(&quot;Skipping as already exists in sysroot: %s&quot; % str(msg_exi=
sts))<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0569:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>File: '/home/iepl007/yocto_build/poky/meta/classe=
s/staging.bbclass', lineno: 151, function: staging_copyfile<o:p></o:p></i><=
/p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0147:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; os.symlink(linkto, dest)<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0148:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; #bb.warn(c)<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0149:&nbsp;&nbsp;&nbsp; =
else:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0150:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; try:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>*** 0151:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; os.link(c, dest)<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0152:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; except OSError as err:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0153:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if err.errno =3D=3D errno.E=
XDEV:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0154:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.=
utils.copyfile(c, dest)<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp;&nbsp;&nbsp;&nbsp; 0155:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Exception: FileExistsError: [Errno 17] File exist=
s: '/home/iepl007/yocto_build/build_weston/tmp/sysroots-components/aarch64/=
xorgproto/usr/include/X11/Xwindows.h' -&gt; '/home/iepl007/yocto_build/buil=
d_weston/tmp/work/aarch64-pdm3-linux/gstreamer1.0-plugins-base/1.12.2-r0/re=
cipe-sysroot/usr/include/X11/Xwindows.h'<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal"><i>ERROR: gstreamer1.0-plugins-base-1.12.2-r0 do_pre=
pare_recipe_sysroot: Function failed: extend_recipe_sysroot<o:p></o:p></i><=
/p>
<p class=3D"MsoNormal"><i>ERROR: Logfile of failure stored in: /home/iepl00=
7/yocto_build/build_weston/tmp/work/aarch64-pdm3-linux/gstreamer1.0-plugins=
-base/1.12.2-r0/temp/log.do_prepare_recipe_sysroot.27414<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>ERROR: Task (/home/iepl007/yocto_build/poky/meta/=
recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.12.2.bb:do_prepare=
_recipe_sysroot) failed with exit code '1'<o:p></o:p></i></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Best Regards
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Kamal Pandey<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_5677a277a1a9466c96062287a1754c8fifmcom_--
