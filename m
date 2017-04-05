Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60650E006CD; Tue,  4 Apr 2017 22:54:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1E0BE00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 22:54:49 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id y16so216333vky.1
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 22:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jkQrlxn155wZNOZNqk69fiYEYrHJKL+bW06RSExbKHE=;
	b=i+FFVyyjm1Lj0BD4JvGbycyjyYvRBUKhali5a2Zj+Ty4XS49Goh6wdJmfemxc/xLV0
	Bn8fUWhd5zGr3BInw+QcafVSguouaeRrO8+QXVO0pvF4UdDd4Yc0AHT0zdlE8CXmqSES
	z4Xtyrn74gJIGeDDijUeUs0ezxwNX9WeBg+Bpy3c0qHBBLFxvKdfLzB3b05BTysgQUue
	P9rPPv8PcQgOM3jKTd6GV5He2ewyAVnVqSX3hmHHby1HtdGyZ0ynjUAN1kUgvwNpspLz
	/gXBw5oMaU06EqouyGtYywV3v1wZe2Le9fzdZ+I23cuD7pXlfP6LqsNvl2UI1DB+sZS7
	oLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jkQrlxn155wZNOZNqk69fiYEYrHJKL+bW06RSExbKHE=;
	b=koLLz6L4QMcz2UJEKFZtnpu4LSFHaSNklbmXEbQVVuaRO7uWSBNawvhuFRi2ws5YL/
	JoNVVQIfsDvjB2jcuYg1dX4NDYj4iLXzzkoTPDS47Q6LAZkBMOWXccUIpgHb8mMgc3YJ
	gAIJamxlgDfVLYMlaSgSVYNX/kh7M44nD2glftORZneUbteKe1IQk96NQrfoXtE9BXYv
	CkJBMmsBDg3uXxl+G1ssg4dXbJhHkUw07wCPGfjtxXQek+slpu1TcnvQSc1qPkKBi1c9
	DGoJ02owQdQGmy7vU5+2RIOVHCLiXf5NoTqSKjSXqR/Uk68vpqYmGc2beGz5ZWQT8FPx
	wgdA==
X-Gm-Message-State: AFeK/H3rra8zrVMknsEGHYFQEP9o93J4x6GC9/7wJAxeBoKOCcI3i8nifKgeTNNyp7tyMjDqG/mukHMC49n0TQ==
X-Received: by 10.31.124.134 with SMTP id x128mr10689005vkc.120.1491371688560; 
	Tue, 04 Apr 2017 22:54:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Tue, 4 Apr 2017 22:54:48 -0700 (PDT)
From: Life Life <sadlife1990@gmail.com>
Date: Wed, 5 Apr 2017 08:54:48 +0300
Message-ID: <CAAHuHfwiL_Uep8oSh1yEV7an2hoYStfsztFE+LZcPVLAedaL4A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding Static Library Support to the SDK or Rootfs
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
X-List-Received-Date: Wed, 05 Apr 2017 05:54:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c14badab99524054c650752

--94eb2c14badab99524054c650752
Content-Type: text/plain; charset=UTF-8

Hello,

I'm try to build static library for SDK.

Update the *build*/local.conf file with the following information

SDKIMAGE_FEATURES = "staticdev-pkgs dev-pkgs"

*INHERIT += "buildhistory"
BUILDHISTORY_COMMIT = "0"
 BUILDHISTORY_FEATURES = "sdk"*

*But cannot create static library for SDK. *


*Thanks.*

--94eb2c14badab99524054c650752
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m try to build static libr=
ary for SDK.</div><div><br></div><div><span style=3D"color:rgb(51,51,51);fo=
nt-family:arial,sans-serif,verdana,tahoma;font-size:14px">Update the <i>bui=
ld</i></span><span class=3D"gmail-ph gmail-filepath" style=3D"border:0px;ma=
rgin:0px;padding:0px;font-size:14px;font-weight:bold;color:rgb(51,51,51);fo=
nt-family:arial,sans-serif,verdana,tahoma">/local.conf</span><span style=3D=
"color:rgb(51,51,51);font-family:arial,sans-serif,verdana,tahoma;font-size:=
14px">=C2=A0file with the following information</span><br></div><div><pre c=
lass=3D"gmail-pre gmail-codeblock gmail-cli" style=3D"margin-top:0px;margin=
-bottom:10px;margin-left:0pt;padding:0.5em 1em 0px 0em;border:none;font-siz=
e:8pt;color:black;font-family:&quot;courier new&quot;,courier,monospace;lin=
e-height:12pt;background-color:rgb(238,238,238);word-wrap:normal;overflow:a=
uto"><code class=3D"gmail-ph gmail-userinput" style=3D"font-weight:bold;lin=
e-height:inherit;border:0px;margin:inherit;padding:inherit;font-size:inheri=
t;font-family:inherit">SDKIMAGE_FEATURES =3D &quot;staticdev-pkgs dev-pkgs&=
quot;</code></pre></div><div><pre class=3D"gmail-pre gmail-codeblock gmail-=
cli" style=3D"margin-top:0px;margin-bottom:10px;margin-left:0pt;padding:0.5=
em 1em 0px 0em;border:none;line-height:12pt;background-color:rgb(238,238,23=
8);word-wrap:normal;overflow:auto"><font color=3D"#000000" face=3D"courier =
new, courier, monospace"><span style=3D"font-size:10.6667px"><b>INHERIT +=
=3D &quot;buildhistory&quot;
BUILDHISTORY_COMMIT =3D &quot;0&quot;
 BUILDHISTORY_FEATURES =3D &quot;sdk&quot;</b></span><span style=3D"font-si=
ze:8pt"><br></span></font></pre><pre class=3D"gmail-pre gmail-codeblock gma=
il-cli" style=3D"margin-top:0px;margin-bottom:10px;margin-left:0pt;padding:=
0.5em 1em 0px 0em;border:none;line-height:12pt;background-color:rgb(238,238=
,238);word-wrap:normal;overflow:auto"><font color=3D"#000000" face=3D"couri=
er new, courier, monospace"><span style=3D"font-size:10.6667px"><b>But cann=
ot create static library for SDK. </b></span></font></pre><pre class=3D"gma=
il-pre gmail-codeblock gmail-cli" style=3D"margin-top:0px;margin-bottom:10p=
x;margin-left:0pt;padding:0.5em 1em 0px 0em;border:none;line-height:12pt;ba=
ckground-color:rgb(238,238,238);word-wrap:normal;overflow:auto"><font color=
=3D"#000000" face=3D"courier new, courier, monospace"><span style=3D"font-s=
ize:10.6667px"><b><br></b></span></font></pre><pre class=3D"gmail-pre gmail=
-codeblock gmail-cli" style=3D"margin-top:0px;margin-bottom:10px;margin-lef=
t:0pt;padding:0.5em 1em 0px 0em;border:none;line-height:12pt;background-col=
or:rgb(238,238,238);word-wrap:normal;overflow:auto"><font color=3D"#000000"=
 face=3D"courier new, courier, monospace"><span style=3D"font-size:10.6667p=
x"><b>Thanks.</b></span></font></pre></div></div>

--94eb2c14badab99524054c650752--
