Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB3D5E00744; Thu, 11 Sep 2014 16:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B71A3E006DB
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 16:41:09 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id x13so8252138wgg.21
	for <yocto@yoctoproject.org>; Thu, 11 Sep 2014 16:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=e4WKGmTRiyIvzUBOS0P/nGNGuKjnedU79LwNYc7KLfs=;
	b=mHcLE6DuVBW+/1UlfsILp+feFJD+NVSHVk3gWqAd4T6hDmOIeIX3YeV6D5G2yi5Gn2
	qQIs57VHlZ5x0hIm90yLfaq3TElxmetFAUYYUDF/558eVEba9xCQEdeOIG69Vwd0gOHM
	YeVzpayy2WPwpz04IaN/aYW4cFZCbVmwPobclh4WFxxrHA2u4xhKT45vfSjued1Of4tp
	lInJynSkoTeElgRZsIXwn6/x6uyOZeoErYV1F4sA84n6ZtuKBg4XECB5Wnyp4dzDaNyV
	Y1klhFlLyRuY0ajz/P63Nfyj3hit0xk14G2qZCVhnDPiIpgWh3mZySNNOI0RSAAl72l2
	arpA==
MIME-Version: 1.0
X-Received: by 10.194.71.11 with SMTP id q11mr5722478wju.33.1410478869096;
	Thu, 11 Sep 2014 16:41:09 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Thu, 11 Sep 2014 16:41:09 -0700 (PDT)
Date: Thu, 11 Sep 2014 16:41:09 -0700
Message-ID: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
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
X-List-Received-Date: Thu, 11 Sep 2014 23:41:12 -0000
Content-Type: multipart/alternative; boundary=047d7bf0cf64f4b1140502d2b36e

--047d7bf0cf64f4b1140502d2b36e
Content-Type: text/plain; charset=UTF-8

I'm trying to set up the development environment following these
instructions:http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#adt-prepare


I'm currently trying to use a toolchain from within the Build
directory, so I'm following these instructions:

http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#using-the-toolchain-from-within-the-build-tree


I sourced the build environment script, and set MACHINE correctly,
then I did bitbake meta-ide-support.


But in Eclipse, when I try to point to the toolchain, I'm seeing this
error: Specified toolchain directory does not contain a toolchain
generated with "bitbake meta-ide-support".

 I can see from this post
<https://www.mail-archive.com/yocto%40yoctoproject.org/msg11821.html>,
that this means Poky.Env.Script.Nonexist is true:


+Poky.Env.Script.Nonexist = Specified toolchain directory does not contain a
toolchain generated with meta-ide-support.


But the scripts appears to be there. Here are the contents of my
build/tmp directory:

/oe-core/build/tmp-eglibc$ ls
abi_version  cache  deploy
*environment-setup-cortexa8hf-vfp-neon-linux-gnueabi*  log  qa.log
saved_tmpdir  sstate-control  stamps  sysroots  work


Any pointers?

--047d7bf0cf64f4b1140502d2b36e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"font-family:courier,&#39;courier new&#39;,mo=
nospace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top=
:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.600000381469727px">I=
&#39;m trying to set up the development environment following these instruc=
tions:
<a href=3D"http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#=
adt-prepare">http://www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.htm=
l#adt-prepare</a>
</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;fon=
t-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin=
-bottom:0px;color:rgb(0,0,0);line-height:19.600000381469727px"><br></pre><p=
re style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size:1=
4px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:=
0px;color:rgb(0,0,0);line-height:19.600000381469727px">I&#39;m currently tr=
ying to use a toolchain from within the Build directory, so I&#39;m followi=
ng these instructions:</pre><pre style=3D"word-wrap:break-word;margin-top:0=
px;margin-bottom:0px"><font color=3D"#000000" face=3D"courier, courier new,=
 monospace"><span style=3D"font-size:14px;line-height:19.600000381469727px;=
white-space:pre-wrap"><a href=3D"http://www.yoctoproject.org/docs/1.6/adt-m=
anual/adt-manual.html#using-the-toolchain-from-within-the-build-tree">http:=
//www.yoctoproject.org/docs/1.6/adt-manual/adt-manual.html#using-the-toolch=
ain-from-within-the-build-tree</a><br></span></font></pre><pre style=3D"wor=
d-wrap:break-word;margin-top:0px;margin-bottom:0px"><font color=3D"#000000"=
 face=3D"courier, courier new, monospace"><span style=3D"font-size:14px;lin=
e-height:19.600000381469727px;white-space:pre-wrap"><br></span></font></pre=
><pre style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px"><font=
 color=3D"#000000" face=3D"courier, courier new, monospace"><span style=3D"=
font-size:14px;line-height:19.600000381469727px;white-space:pre-wrap">I sou=
rced the build environment script, and set MACHINE correctly, then I did </=
span></font><span style=3D"color:rgb(51,51,51);font-family:Courier,monospac=
e;font-size:medium;line-height:24px">bitbake meta-ide-support.</span></pre>=
<pre style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px"><span =
style=3D"color:rgb(51,51,51);font-family:Courier,monospace;font-size:medium=
;line-height:24px"><br></span></pre><pre style=3D"word-wrap:break-word;marg=
in-top:0px;margin-bottom:0px"><span style=3D"color:rgb(51,51,51);font-famil=
y:Courier,monospace;font-size:medium;line-height:24px">But in Eclipse, when=
 I try to point to the toolchain, I&#39;m seeing this error: </span><font c=
olor=3D"#333333" face=3D"Courier, monospace" size=3D"3"><span style=3D"line=
-height:24px">Specified toolchain directory does not contain a toolchain ge=
nerated with &quot;bitbake meta-ide-support&quot;.</span></font></pre><pre =
style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px"> </pre><pre=
 style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px">I can see =
from <a href=3D"https://www.mail-archive.com/yocto%40yoctoproject.org/msg11=
821.html">this post</a>, that this means Poky.Env.Script.Nonexist is true:<=
/pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font=
-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-=
bottom:0px;color:rgb(0,0,0);line-height:19.600000381469727px"><br></pre><pr=
e style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size:14=
px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0=
px;color:rgb(0,0,0);line-height:19.600000381469727px">+Poky.Env.Script.None=
xist =3D Specified toolchain directory does not contain a=20
toolchain generated with meta-ide-support.</pre><pre style=3D"font-family:c=
ourier,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wrap;=
word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line=
-height:19.600000381469727px"><br></pre><pre style=3D"font-family:courier,&=
#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wrap;word-wra=
p:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:=
19.600000381469727px">But the scripts appears to be there. Here are the con=
tents of my build/tmp directory:=C2=A0</pre><pre style=3D"font-family:couri=
er,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wrap;word=
-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-hei=
ght:19.600000381469727px">/oe-core/build/tmp-eglibc$ ls
abi_version  cache  deploy  <b>environment-setup-cortexa8hf-vfp-neon-linux-=
gnueabi</b>  log  qa.log  saved_tmpdir  sstate-control  stamps  sysroots  w=
ork</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;=
font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;mar=
gin-bottom:0px;color:rgb(0,0,0);line-height:19.600000381469727px"><br></pre=
><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-siz=
e:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bott=
om:0px;color:rgb(0,0,0);line-height:19.600000381469727px">Any pointers?</pr=
e></div>

--047d7bf0cf64f4b1140502d2b36e--
