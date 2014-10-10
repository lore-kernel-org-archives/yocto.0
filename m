Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 629B6E0078E; Fri, 10 Oct 2014 16:15:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kevinthesunwy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E28C6E0076C
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 16:15:43 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id mc6so4189317lab.30
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 16:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=isacKneLNxUW3mCMTZSdSSwFBkhsOWdNIJrPsbLb04E=;
	b=kzu0LVKUEkmhb4TH8HSmgTp3hcrkEioZT5AbqYE1JDOiBdpkboKMBCPbgMahXOGi2J
	0BWVaoNJEvE6LVa8TbKa4YsfboDHvWUExcP3rgDBvlGthkjDMHthDWO4SA14fT/pZv+p
	tA/osI/X5O8GRh7dsnRRnU5LYZ2B0GWBrZufDvdMBzqb2CNzklbb3fDlC0QoQpi8/7ze
	lDjUe1UnB3dFxpGy6IW57hnByq3aLZFCqB0PbXZtIskc0Lue3KHHjalPVz/LzZufHEtj
	3TvFhLdkbysD+jpauF5CndlCGlakRpzkJjza6R9s3EUZ2PQgLz4DSNXjtDAe4h83PzAI
	PJRA==
MIME-Version: 1.0
X-Received: by 10.152.29.100 with SMTP id j4mr7787664lah.47.1412982942630;
	Fri, 10 Oct 2014 16:15:42 -0700 (PDT)
Received: by 10.112.56.196 with HTTP; Fri, 10 Oct 2014 16:15:42 -0700 (PDT)
In-Reply-To: <CAP71WjyH9GJ0xVbe+pO+Ww3CPAXkpTsabqn1XZumN-LR0ffSyg@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
	<CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
	<CAG6mzON96UH=mFnrrkC3KWudoUqPdQSdT9wPH1_Vj=vgFdzTDQ@mail.gmail.com>
	<CAP71WjyH9GJ0xVbe+pO+Ww3CPAXkpTsabqn1XZumN-LR0ffSyg@mail.gmail.com>
Date: Fri, 10 Oct 2014 16:15:42 -0700
Message-ID: <CAG6mzOPvNvjcN+2kmeYkd3efkbsSa5gsG4SUF0VMT-f8_ZnB7w@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Oct 2014 23:15:51 -0000
Content-Type: multipart/alternative; boundary=089e0158c8505e895a050519ba48

--089e0158c8505e895a050519ba48
Content-Type: text/plain; charset=UTF-8

I tried both hard and hardfp. They both returned 3 errors:

C compiler cannot create executables    Hello        -1    Configure Problem
in `/home/kevinthefire/workspace/Hello':    Hello        -1    Configure
Problem
make: *** No rule to make target `all'.    Hello             C/C++ Problem




2014-10-09 23:12 GMT-07:00 Nicolas Dechesne <nicolas.dechesne@linaro.org>:

> On Thu, Oct 9, 2014 at 10:27 PM, Wy kevinthesun <kevinthesunwy@gmail.com>
> wrote:
> > It seems that Yocto 1.5.1 is built with hard float. However, the 1.51,
> 1.6
> > and  1.62 toolchains are soft float. When I tried to set
> > "-mfloat-abi=hardfp" in the compile option, the compiling process ran
> into
> > error. It seems these toolchains don't  support hard float? How can I
> solve
> > this problem?
> >
> > These are my set in the environment file of 1.5.1 toolchain:
> > export CC="arm-poky-linux-gnueabi-gcc  -march=armv5te -marm
> > -mthumb-interwork -mfloat-abi=hardfp
> > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > export CXX="arm-poky-linux-gnueabi-g++  -march=armv5te -marm
> > -mthumb-interwork -mfloat-abi=hardfp
> > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > export CPP="arm-poky-linux-gnueabi-gcc -E  -march=armv5te -marm
> > -mthumb-interwork -mfloat-abi=hardfp
> > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> >
> > It ran into error.
>
>
> maybe because the gcc documentation says -mfloat-abi=hard, not =hardfp ?
>
> in general, showing us the error you have is much preferred, otherwise
> it's difficult to help if we don't really know what went wrong.
>
> cheers.
>

--089e0158c8505e895a050519ba48
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried both hard and hardfp. They both returned 3 errors:=
<br><br>C compiler cannot create executables=C2=A0=C2=A0=C2=A0 Hello=C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -1=C2=A0=C2=A0=C2=A0 Configure Problem<br>i=
n `/home/kevinthefire/workspace/Hello&#39;:=C2=A0=C2=A0=C2=A0 Hello=C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -1=C2=A0=C2=A0=C2=A0 Configure Problem<br>m=
ake: *** No rule to make target `all&#39;.=C2=A0=C2=A0=C2=A0 Hello=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 C/C++ Problem<br><br>=
<br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">201=
4-10-09 23:12 GMT-07:00 Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@linar=
o.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On=
 Thu, Oct 9, 2014 at 10:27 PM, Wy kevinthesun &lt;<a href=3D"mailto:kevinth=
esunwy@gmail.com">kevinthesunwy@gmail.com</a>&gt; wrote:<br>
&gt; It seems that Yocto 1.5.1 is built with hard float. However, the 1.51,=
 1.6<br>
&gt; and=C2=A0 1.62 toolchains are soft float. When I tried to set<br>
&gt; &quot;-mfloat-abi=3Dhardfp&quot; in the compile option, the compiling =
process ran into<br>
&gt; error. It seems these toolchains don&#39;t=C2=A0 support hard float? H=
ow can I solve<br>
&gt; this problem?<br>
&gt;<br>
&gt; These are my set in the environment file of 1.5.1 toolchain:<br>
&gt; export CC=3D&quot;arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5te -m=
arm<br>
&gt; -mthumb-interwork -mfloat-abi=3Dhardfp<br>
&gt; --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi&quot;<=
br>
&gt; export CXX=3D&quot;arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5te -=
marm<br>
&gt; -mthumb-interwork -mfloat-abi=3Dhardfp<br>
&gt; --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi&quot;<=
br>
&gt; export CPP=3D&quot;arm-poky-linux-gnueabi-gcc -E=C2=A0 -march=3Darmv5t=
e -marm<br>
&gt; -mthumb-interwork -mfloat-abi=3Dhardfp<br>
&gt; --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi&quot;<=
br>
&gt;<br>
&gt; It ran into error.<br>
<br>
<br>
</span>maybe because the gcc documentation says -mfloat-abi=3Dhard, not =3D=
hardfp ?<br>
<br>
in general, showing us the error you have is much preferred, otherwise<br>
it&#39;s difficult to help if we don&#39;t really know what went wrong.<br>
<br>
cheers.<br>
</blockquote></div><br></div>

--089e0158c8505e895a050519ba48--
