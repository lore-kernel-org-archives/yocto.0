Return-Path: <info@denisgottardello.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DB67E00AD8; Tue, 15 May 2018 23:49:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7273DE005A9
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 23:49:52 -0700 (PDT)
Received: from tomcat.localnet ([95.234.242.232])
	by smtpcmd02.ad.aruba.it with bizsmtp
	id mupq1x00p51ZgWP01uprtZ; Wed, 16 May 2018 08:49:51 +0200
From: Denis <info@denisgottardello.it>
To: yocto@yoctoproject.org
Date: Wed, 16 May 2018 08:49:50 +0200
Message-ID: <2170125.tjWsNxb8P6@tomcat>
User-Agent: KMail/5.2.3 (Linux/4.9.0-6-amd64; KDE/5.28.0; x86_64; ; )
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526453391; bh=g8t4GDfeC3raiT7M/UxH45dCXX2bV3QY0g9Ikvfuv24=;
	h=From:To:Subject:Date:MIME-Version:Content-Type;
	b=bMJ/vf63gcfnGR8c1Xx9gXrR6+pJPouQhU8sMikxZekai86ojOvE/JVp9A4NVoOnB
	z1z0ByG8yAF8Zc9+D7P9xrT1NJIV2I+poYm+yZ47nhRiYRryRYOT1lSZzUaYN/vqTh
	Y96gkfdHwLuKx7VbHLoQ+kW2CikM3snK+CtX3CJ9KhB+r7SOihypZZnnq2LuVn79Lo
	31zWJ3RVJDbpO/qsu+ss+fWJNxP8OMuBQr3Oq8tZBBoMvY5KsuW6Ery45eBeep77qT
	ETs0LkjOY+kHGiuY0Cn+6GgkdvHCJZFF86S3xjKc3zb5xt3Y+LtUpOuIr+Jdl31HJe
	VA6+D0qsDyQTw==
Subject: How to create img file from a working machine
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
X-List-Received-Date: Wed, 16 May 2018 06:49:55 -0000
Content-Type: multipart/alternative; boundary="nextPart2357505.tEN1IT4UvN"
Content-Transfer-Encoding: 7Bit

--nextPart2357505.tEN1IT4UvN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi. This is my first experience with Yocto.
After having create a working machine this is the machine file list

*bzImage* 
*bzImage-qemux86.bin* 
*core-image-minimal-qemux86-20180515141056.rootfs.tar.bz2* 
*core-image-minimal-qemux86.ext4* 
*core-image-minimal-qemux86.manifest* 
*core-image-minimal-qemux86.qemuboot.conf* 
*core-image-minimal-qemux86.tar.bz2* 
*core-image-minimal-qemux86.testdata.json* 
*core-image-sato-qemux86-20180515175948.rootfs.tar.bz2* 
*core-image-sato-qemux86.ext4* 
*core-image-sato-qemux86.manifest* 
*core-image-sato-qemux86.qemuboot.conf* 
*core-image-sato-qemux86.tar.bz2* 
*core-image-sato-qemux86.testdata.json* 
*modules--4.14.30+git0+ea9330894e_74f6cd2b69-r0-qemux86-20180515055407.tgz* 
*modules-qemux86.tgz*


Now how can I create a img file? I have searched on the web but I have found nothing.

Regards.



+39.347.4070897
www.labcsp.com[1] 
www.denisgottardello.it[2] 
GMT+1
Skype: mrdebug

--------
[1] http://www.labcsp.com
[2] http://www.denisgottardello.it

--nextPart2357505.tEN1IT4UvN
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="us-ascii"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-=
html40/strict.dtd">
<html><head><meta name=3D"qrichtext" content=3D"1" /><style type=3D"text/cs=
s">
p, li { white-space: pre-wrap; }
</style></head><body style=3D" font-family:'Noto Sans'; font-size:10pt; fon=
t-weight:400; font-style:normal;">
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hi. This is=
 my first experience with Yocto.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">After havin=
g create a working machine this is the machine file list</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><span style=
=3D" font-family:'monospace'; font-weight:600; color:#54ffff; background-co=
lor:#ffffff;">bzImage</span><span style=3D" font-family:'monospace'; color:=
#000000; background-color:#ffffff;"> </span><span style=3D" font-family:'mo=
nospace';"><br />bzImage--4.14.30+git0+ea9330894e_74f6cd2b69-r0-qemux86-201=
80515055407.bin <br /></span><span style=3D" font-family:'monospace'; font-=
weight:600; color:#54ffff; background-color:#ffffff;">bzImage-qemux86.bin</=
span><span style=3D" font-family:'monospace'; color:#000000; background-col=
or:#ffffff;"> </span><span style=3D" font-family:'monospace';"><br />core-i=
mage-minimal-qemux86-20180515055407.testdata.json <br />core-image-minimal-=
qemux86-20180515141056.qemuboot.conf <br />core-image-minimal-qemux86-20180=
515141056.rootfs.ext4 <br />core-image-minimal-qemux86-20180515141056.rootf=
s.manifest <br /></span><span style=3D" font-family:'monospace'; font-weigh=
t:600; color:#ff5454; background-color:#ffffff;">core-image-minimal-qemux86=
=2D20180515141056.rootfs.tar.bz2</span><span style=3D" font-family:'monospa=
ce'; color:#000000; background-color:#ffffff;"> </span><span style=3D" font=
=2Dfamily:'monospace';"><br />core-image-minimal-qemux86-20180515141056.tes=
tdata.json <br /></span><span style=3D" font-family:'monospace'; font-weigh=
t:600; color:#54ffff; background-color:#ffffff;">core-image-minimal-qemux86=
=2Eext4</span><span style=3D" font-family:'monospace'; color:#000000; backg=
round-color:#ffffff;"> </span><span style=3D" font-family:'monospace';"><br=
 /></span><span style=3D" font-family:'monospace'; font-weight:600; color:#=
54ffff; background-color:#ffffff;">core-image-minimal-qemux86.manifest</spa=
n><span style=3D" font-family:'monospace'; color:#000000; background-color:=
#ffffff;"> </span><span style=3D" font-family:'monospace';"><br /></span><s=
pan style=3D" font-family:'monospace'; font-weight:600; color:#54ffff; back=
ground-color:#ffffff;">core-image-minimal-qemux86.qemuboot.conf</span><span=
 style=3D" font-family:'monospace'; color:#000000; background-color:#ffffff=
;"> </span><span style=3D" font-family:'monospace';"><br /></span><span sty=
le=3D" font-family:'monospace'; font-weight:600; color:#54ffff; background-=
color:#ffffff;">core-image-minimal-qemux86.tar.bz2</span><span style=3D" fo=
nt-family:'monospace'; color:#000000; background-color:#ffffff;"> </span><s=
pan style=3D" font-family:'monospace';"><br /></span><span style=3D" font-f=
amily:'monospace'; font-weight:600; color:#54ffff; background-color:#ffffff=
;">core-image-minimal-qemux86.testdata.json</span><span style=3D" font-fami=
ly:'monospace'; color:#000000; background-color:#ffffff;"> </span><span sty=
le=3D" font-family:'monospace';"><br />core-image-sato-qemux86-201805151759=
48.qemuboot.conf <br />core-image-sato-qemux86-20180515175948.rootfs.ext4 <=
br />core-image-sato-qemux86-20180515175948.rootfs.manifest <br /></span><s=
pan style=3D" font-family:'monospace'; font-weight:600; color:#ff5454; back=
ground-color:#ffffff;">core-image-sato-qemux86-20180515175948.rootfs.tar.bz=
2</span><span style=3D" font-family:'monospace'; color:#000000; background-=
color:#ffffff;"> </span><span style=3D" font-family:'monospace';"><br />cor=
e-image-sato-qemux86-20180515175948.testdata.json <br /></span><span style=
=3D" font-family:'monospace'; font-weight:600; color:#54ffff; background-co=
lor:#ffffff;">core-image-sato-qemux86.ext4</span><span style=3D" font-famil=
y:'monospace'; color:#000000; background-color:#ffffff;"> </span><span styl=
e=3D" font-family:'monospace';"><br /></span><span style=3D" font-family:'m=
onospace'; font-weight:600; color:#54ffff; background-color:#ffffff;">core-=
image-sato-qemux86.manifest</span><span style=3D" font-family:'monospace'; =
color:#000000; background-color:#ffffff;"> </span><span style=3D" font-fami=
ly:'monospace';"><br /></span><span style=3D" font-family:'monospace'; font=
=2Dweight:600; color:#54ffff; background-color:#ffffff;">core-image-sato-qe=
mux86.qemuboot.conf</span><span style=3D" font-family:'monospace'; color:#0=
00000; background-color:#ffffff;"> </span><span style=3D" font-family:'mono=
space';"><br /></span><span style=3D" font-family:'monospace'; font-weight:=
600; color:#54ffff; background-color:#ffffff;">core-image-sato-qemux86.tar.=
bz2</span><span style=3D" font-family:'monospace'; color:#000000; backgroun=
d-color:#ffffff;"> </span><span style=3D" font-family:'monospace';"><br /><=
/span><span style=3D" font-family:'monospace'; font-weight:600; color:#54ff=
ff; background-color:#ffffff;">core-image-sato-qemux86.testdata.json</span>=
<span style=3D" font-family:'monospace'; color:#000000; background-color:#f=
fffff;"> </span><span style=3D" font-family:'monospace';"><br /></span><spa=
n style=3D" font-family:'monospace'; font-weight:600; color:#ff5454; backgr=
ound-color:#ffffff;">modules--4.14.30+git0+ea9330894e_74f6cd2b69-r0-qemux86=
=2D20180515055407.tgz</span><span style=3D" font-family:'monospace'; color:=
#000000; background-color:#ffffff;"> </span><span style=3D" font-family:'mo=
nospace';"><br /></span><span style=3D" font-family:'monospace'; font-weigh=
t:600; color:#54ffff; background-color:#ffffff;">modules-qemux86.tgz</span>=
<span style=3D" font-family:'monospace';"><br /><br /></span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><span style=
=3D" font-family:'monospace';">Now how can I create a img file? I have sear=
ched on the web but I have found nothing.</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><span style=
=3D" font-family:'monospace';">Regards.</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><br />-- </=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">+39.347.407=
0897</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><a href=3D"=
http://www.labcsp.com"><span style=3D" text-decoration: underline; color:#2=
980b9;">www.labcsp.com</span></a> </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><a href=3D"=
http://www.denisgottardello.it"><span style=3D" text-decoration: underline;=
 color:#2980b9;">www.denisgottardello.it</span></a> </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">GMT+1</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Skype: mrde=
bug</p></body></html>

--nextPart2357505.tEN1IT4UvN--
