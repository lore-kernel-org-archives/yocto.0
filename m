Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7EDDE00902; Fri,  2 Jan 2015 13:38:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Jan 2015 13:38:45 PST
Received: from mx-ut.atk.com (mx-ut.atk.com [192.107.250.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A375E008EA
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 13:38:45 -0800 (PST)
Received: from unknown (HELO UT40SVEH3.atk.com) ([146.168.70.140])
	by mx-ut.atk.com with ESMTP; 02 Jan 2015 15:33:19 -0600
Received: from UT40SVCWEM002.atk.com ([169.254.5.155]) by UT40SVEH3.atk.com
	([146.168.78.8]) with mapi id 14.03.0174.001;
	Fri, 2 Jan 2015 14:37:41 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: =?windows-1256?Q?Yocto_Project_=FD=5Byocto=40yoctoproject=2Eorg=5D=FD?=
	<yocto@yoctoproject.org>
Thread-Topic: Selective append
Thread-Index: AdAm01ET9tMyJ4IXRnWFrgCxFLcD2A==
Date: Fri, 2 Jan 2015 21:37:40 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FE@ut40svcwem002.atk.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.20.11]
MIME-Version: 1.0
Subject: Selective append
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
X-List-Received-Date: Fri, 02 Jan 2015 21:38:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FEut40svcwem002at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FEut40svcwem002at_
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Hello,

I've got a device that has an expansion card whose driver conflicts with a =
driver that is native in the Linux kernel. In order to address the situatio=
n, I've created a new layer that appends the kernel with a patch to remove =
the conflicting driver and also contains a recipe for the new driver (which=
 is an out-of-tree kernel module). As it currently stands, by simply includ=
ing this new layer in my build, the kernel is patched even if I do not incl=
ude the recipe for the new module in the build.

My question is this: is there a way to only apply the kernel patch when the=
 out-of-tree kernel module recipe is included in an image?

Thanks,

Thomas Moore

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FEut40svcwem002at_
Content-Type: text/html; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
256">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello,
<div><br>
</div>
<div>I've got a device that has an expansion card whose driver conflicts wi=
th a driver that is native in the Linux kernel. In order to address the sit=
uation, I've created a new layer that appends the kernel with a patch to re=
move the conflicting driver and
 also contains a recipe for the new driver (which is an out-of-tree kernel =
module). As it currently stands, by simply including this new layer in my b=
uild, the kernel is patched even if I do not include the recipe for the new=
 module in the build.<br>
<div><br>
</div>
<div>My question is this: is there a way to only apply the kernel patch whe=
n the out-of-tree kernel module recipe is included in an image?</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt;=
">
<div class=3D"PlainText">Thomas Moore<br>
</div>
</span></font></div>
</div>
</div>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FEut40svcwem002at_--
