Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 859DDE0077F; Thu,  9 Oct 2014 13:27:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kevinthesunwy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF92E00749
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 13:27:23 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id w7so1895036lbi.37
	for <yocto@yoctoproject.org>; Thu, 09 Oct 2014 13:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+Ay9pooxvTl+rEVrc1F/7VolsZlGDkjsqVYhVIbtb9c=;
	b=JaBABWOCWCpzpKIaNfjKG+rjoaL5SoT/RHN9E5Adu3sWwd7CpCwHyIGgbhrNwzUiPe
	+66L/YDr4uNhUOz6N8oKVzZaWbkD/lNljsko5xdvQPG4Ufe5/l38lpvbNIjWggeTWvzQ
	ADRaMlFcelxr+njyIwAi1EQDFYMRVTSTxssR7hYRXhucDG1JgmLS6Hckh3VmBeKyaxHO
	SqyyZ/ShVwO4ujAMjSr2Kd273+5nDHXocqu72FxVLi24VlV/xoiQn+PteAvxYE5uzVpw
	eFkTwHnwAvXkZnHIDZOsSPAB2kj6vH1ArbOteGJn1U91pat4duwYt0iTeyM3iNsM2X0W
	wJuA==
MIME-Version: 1.0
X-Received: by 10.152.26.137 with SMTP id l9mr7897091lag.35.1412886441908;
	Thu, 09 Oct 2014 13:27:21 -0700 (PDT)
Received: by 10.112.56.196 with HTTP; Thu, 9 Oct 2014 13:27:21 -0700 (PDT)
In-Reply-To: <CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
	<CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
Date: Thu, 9 Oct 2014 13:27:21 -0700
Message-ID: <CAG6mzON96UH=mFnrrkC3KWudoUqPdQSdT9wPH1_Vj=vgFdzTDQ@mail.gmail.com>
From: Wy kevinthesun <kevinthesunwy@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Thu, 09 Oct 2014 20:27:29 -0000
Content-Type: multipart/alternative; boundary=089e0158c9e27a60e10505034231

--089e0158c9e27a60e10505034231
Content-Type: text/plain; charset=UTF-8

It seems that Yocto 1.5.1 is built with hard float. However, the 1.51, 1.6
and  1.62 toolchains are soft float. When I tried to set
"-mfloat-abi=hardfp" in the compile option, the compiling process ran into
error. It seems these toolchains don't  support hard float? How can I solve
this problem?

These are my set in the environment file of 1.5.1 toolchain:
export CC="arm-poky-linux-gnueabi-gcc  -march=armv5te -marm
-mthumb-interwork -mfloat-abi=hardfp
--sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
export CXX="arm-poky-linux-gnueabi-g++  -march=armv5te -marm
-mthumb-interwork -mfloat-abi=hardfp
--sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
export CPP="arm-poky-linux-gnueabi-gcc -E  -march=armv5te -marm
-mthumb-interwork -mfloat-abi=hardfp
--sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"

It ran into error.

Thank you!

2014-10-09 0:10 GMT-07:00 Nicolas Dechesne <nicolas.dechesne@linaro.org>:

> On Wed, Oct 8, 2014 at 11:34 PM, Wy kevinthesun <kevinthesunwy@gmail.com>
> wrote:
> > Hi Denys, I have tried 1.5.1 and 1.3. All of them use ld-linux.so.3.
> > Actually in the /lib directory of these toolchains I only find
> > ld-linux.so.3.
>
> it's not really about the toolchain version, but the compiler options
> you are using. a given toolchain will by default use wither soft-flat
> or hard-float, but you can specify different ABI on the gcc command
> line.
>

--089e0158c9e27a60e10505034231
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It seems that Yocto 1.5.1 is built with hard float. H=
owever, the 1.51, 1.6 and=C2=A0 1.62 toolchains are soft float. When I trie=
d to set &quot;-mfloat-abi=3Dhardfp&quot; in the compile option, the compil=
ing process ran into error. It seems these toolchains don&#39;t=C2=A0 suppo=
rt hard float? How can I solve this problem?<br><br></div><div>These are my=
 set in the environment file of 1.5.1 toolchain:<br>export CC=3D&quot;arm-p=
oky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5te -marm -mthumb-interwork -mfloa=
t-abi=3Dhardfp --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnue=
abi&quot;<br>export CXX=3D&quot;arm-poky-linux-gnueabi-g++=C2=A0 -march=3Da=
rmv5te -marm -mthumb-interwork -mfloat-abi=3Dhardfp --sysroot=3D/opt/poky/1=
.5.1/sysroots/armv5te-poky-linux-gnueabi&quot;<br>export CPP=3D&quot;arm-po=
ky-linux-gnueabi-gcc -E=C2=A0 -march=3Darmv5te -marm -mthumb-interwork -mfl=
oat-abi=3Dhardfp --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gn=
ueabi&quot;<br><br></div><div>It ran into error.<br></div><div><br></div>Th=
ank you!<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2014-10-09 0:10 GMT-07:00 Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@=
linaro.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On Wed, Oct 8, 2014 at 11:34 PM, Wy kevinthesun &lt;<a href=3D"mailto:ke=
vinthesunwy@gmail.com">kevinthesunwy@gmail.com</a>&gt; wrote:<br>
&gt; Hi Denys, I have tried 1.5.1 and 1.3. All of them use ld-linux.so.3.<b=
r>
&gt; Actually in the /lib directory of these toolchains I only find<br>
&gt; ld-linux.so.3.<br>
<br>
</span>it&#39;s not really about the toolchain version, but the compiler op=
tions<br>
you are using. a given toolchain will by default use wither soft-flat<br>
or hard-float, but you can specify different ABI on the gcc command<br>
line.<br>
</blockquote></div><br></div>

--089e0158c9e27a60e10505034231--
