Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2426E006D5; Tue, 20 Oct 2015 09:21:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37D12E0048C
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:21:17 -0700 (PDT)
Received: by lffv3 with SMTP id v3so8479205lff.0
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yGMj2z8YTofy57sYCefrEacvg4ovimd+0oJCFIsNftI=;
	b=VqIrDTFGG+M6mxe4HePe1Ss6LhYDfURAC6nP1/oAxz550fUUGPyqqqWEQ0hW8NiraY
	aH4aB1+FjWlHH79pd5o4odDssnjC1XDCpcKKb8Ez/cj1cEeUlZUtewCbrdVueyw7+R7k
	ksMmGAMU4LYurgE627w3hO6Qy5atAwRnQgyvtXWFPwc7C4113Sjx84kFlZ7A0h3xKLkD
	splfTkmToOVrSoTM5zE5BKa4BOWIUBU19sR2lrp0nIjsv/1J4lTfhTcGxsupRT148iFY
	XKirwNU5KS+rhZQdxtgP9LoEuyLMGR8v5E/etExjFWKmHueaYxif+HxzZQM7t+ihohB0
	rPnQ==
MIME-Version: 1.0
X-Received: by 10.25.26.146 with SMTP id a140mr1616955lfa.31.1445358075660;
	Tue, 20 Oct 2015 09:21:15 -0700 (PDT)
Received: by 10.112.43.68 with HTTP; Tue, 20 Oct 2015 09:21:15 -0700 (PDT)
In-Reply-To: <28948725-D204-4011-89DF-BDAB9EB4FE12@gmail.com>
References: <CA+KKcbkVBYfsE7fuJ+g1nmS9TdhL2wheObcCgyuf-LCiC7SOew@mail.gmail.com>
	<28948725-D204-4011-89DF-BDAB9EB4FE12@gmail.com>
Date: Tue, 20 Oct 2015 18:21:15 +0200
Message-ID: <CA+KKcbkb=qdkAdfuUkekUGB_wt045WxQGJkk+KWQs8ND5BWNrw@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-java] can zero shark be enabled again?
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
X-List-Received-Date: Tue, 20 Oct 2015 16:21:23 -0000
Content-Type: multipart/alternative; boundary=001a11401a46ac4ea505228ba695

--001a11401a46ac4ea505228ba695
Content-Type: text/plain; charset=UTF-8

2015-10-16 17:14 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:

>
> While IcedTea maintains the ARMJIT within hotspot ported from OpenJDK6,
> ZeroShark uses LLVM's JIT.
>
> Since ARM support in LLVM's JIT was utterly broken, MCJIT support is
> required for ZeroShark.
> I was working on that but my ARMv7 and my ARMv5 are still crashing - even
> when I can realize some progress (how quick does it crash ^^).
>
>
Hi
I'm trying to compare performance of openjdk 7 with Oracle ejdk 8

# java -version
java version "1.7.0_85"
OpenJDK Runtime Environment (IcedTea 2.6.1) (85b01-2.6.1)
OpenJDK Zero VM (build 24.85-b03, mixed mode)
# java Linpack
Mflops/s: 13.205  Time: 0.05 secs  Norm Res: 1.43  Precision:
2.220446049250313E-16


# /usr/local/java.oracle/bin/java -version
java version "1.8.0_06"
Java(TM) SE Embedded Runtime Environment (build 1.8.0_06-b23)
Java HotSpot(TM) Embedded Client VM (build 25.6-b23, mixed mode)
# /usr/local/java.oracle/bin/java Linpack
Mflops/s: 22.151  Time: 0.03 secs  Norm Res: 1.43  Precision:
2.220446049250313E-16


As I prefer stay free and avoid commercial solution, anyone can confirm me that
I didn't forgot some optimization in my OpenJDK or something it's still
improved?

thanks and regards
federico

--001a11401a46ac4ea505228ba695
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2015-10-16 17:14 GMT+02:00 Jens Rehsack <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"=
"><br>
</span>While IcedTea maintains the ARMJIT within hotspot ported from OpenJD=
K6, ZeroShark uses LLVM&#39;s JIT.<br>
<br>
Since ARM support in LLVM&#39;s JIT was utterly broken, MCJIT support is re=
quired for ZeroShark.<br>
I was working on that but my ARMv7 and my ARMv5 are still crashing - even w=
hen I can realize some progress (how quick does it crash ^^).<br>
<br>
</blockquote><div><br>Hi<br>I&#39;m trying to compare performance of openjd=
k 7 with Oracle ejdk 8<br><br># java -version<br>java version &quot;1.7.0_8=
5&quot;<br>OpenJDK Runtime Environment (IcedTea 2.6.1) (85b01-2.6.1)<br>Ope=
nJDK Zero VM (build 24.85-b03, mixed mode)<br># java Linpack<br>Mflops/s: 1=
3.205=C2=A0 Time: 0.05 secs=C2=A0 Norm Res: 1.43=C2=A0 Precision: 2.2204460=
49250313E-16 <br></div></div><br></div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra"># /usr/local/java.oracle/bin/java -version<br>j=
ava version &quot;1.8.0_06&quot;<br>Java(TM) SE Embedded Runtime Environmen=
t (build 1.8.0_06-b23)<br>Java HotSpot(TM) Embedded Client VM (build 25.6-b=
23, mixed mode)<br># /usr/local/java.oracle/bin/java Linpack<br>Mflops/s: 2=
2.151=C2=A0 Time: 0.03 secs=C2=A0 Norm Res: 1.43=C2=A0 Precision: 2.2204460=
49250313E-16<br><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D""></span><span class=3D""></span></span><br><br>As I prefer stay free a=
nd avoid commercial solution, a<span id=3D"result_box" class=3D"" lang=3D"e=
n"><span class=3D"">nyone can confirm</span> me <span class=3D"">that I did=
n&#39;t=C2=A0</span><span class=3D"">forgot</span> <span class=3D"">some op=
timization</span><span class=3D""> in my OpenJDK or something it&#39;s stil=
l improved?<br><br></span></span></div><div class=3D"gmail_extra"><span id=
=3D"result_box" class=3D"" lang=3D"en"><span class=3D"">thanks and regards<=
br></span></span></div><div class=3D"gmail_extra"><span id=3D"result_box" c=
lass=3D"" lang=3D"en"><span class=3D"">federico<br></span></span></div></di=
v>

--001a11401a46ac4ea505228ba695--
