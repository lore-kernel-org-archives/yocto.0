Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBF90E00796; Fri, 10 Oct 2014 17:51:13 -0700 (PDT)
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
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BDF1E0076C
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 17:51:09 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id p9so3964672lbv.5
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 17:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=IBp8Xqvwdkb7aRx/cLQNZcO18DyD/iHHdoRhyzjtT/0=;
	b=erJ0f7TLV4l0x9r/VArhrr5NBSuIURPXM3Ab/GVLGQubsF+gVjFv473ZoOW2kozMSJ
	qcQfyY0RGRotBCPqetBgVThmC0E/TL+GX6Q++Uvf7LZXkX9XY5jk5JoZE2ebzk/b1eh8
	C16vb/Acv1HhsG7zVW0JUxRb/XX2zwKmnYoJcHJJhYAeltb+VI1zWVFJ8gKHdrx9P3K7
	iO1VjXyQ+NjpgWBqCjIR8wC/vONoh1YK8KSrlJ/mijsTic7bL2ZzsTY+HgA8QD484bgp
	pybZIdkx8xca3g8giNvZLFeFqNpo4H++pPSwvyJ7uz/fqvq3q56wPtvYCsabFMys981Y
	KkRA==
MIME-Version: 1.0
X-Received: by 10.152.88.43 with SMTP id bd11mr8429197lab.62.1412988668482;
	Fri, 10 Oct 2014 17:51:08 -0700 (PDT)
Received: by 10.112.56.196 with HTTP; Fri, 10 Oct 2014 17:51:08 -0700 (PDT)
In-Reply-To: <20141010232756.GR25997@denix.org>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
	<CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
	<CAG6mzON96UH=mFnrrkC3KWudoUqPdQSdT9wPH1_Vj=vgFdzTDQ@mail.gmail.com>
	<CAP71WjyH9GJ0xVbe+pO+Ww3CPAXkpTsabqn1XZumN-LR0ffSyg@mail.gmail.com>
	<CAG6mzOPvNvjcN+2kmeYkd3efkbsSa5gsG4SUF0VMT-f8_ZnB7w@mail.gmail.com>
	<20141010232756.GR25997@denix.org>
Date: Fri, 10 Oct 2014 17:51:08 -0700
Message-ID: <CAG6mzOOvZ=ENA90B2DGiCV+EvEhp6ny3Xu21TzjRmvy3PzvJKA@mail.gmail.com>
From: Wy kevinthesun <kevinthesunwy@gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
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
X-List-Received-Date: Sat, 11 Oct 2014 00:51:13 -0000
Content-Type: multipart/alternative; boundary=001a11c35452a8182505051b0fac

--001a11c35452a8182505051b0fac
Content-Type: text/plain; charset=UTF-8

These errors occur when I add "-mfloat-abi=hardfp" to the toolchain
setting. If I don't add it, no error occurs. Now I think the problem is
that 1.5.1 or 1.6.2 toolchain doesn't support hard float, which is required
by my yocto 1.5.1 system.

Thank you.

2014-10-10 16:27 GMT-07:00 Denys Dmytriyenko <denis@denix.org>:

> On Fri, Oct 10, 2014 at 04:15:42PM -0700, Wy kevinthesun wrote:
> > I tried both hard and hardfp. They both returned 3 errors:
> >
> > C compiler cannot create executables    Hello        -1    Configure
> Problem
> > in `/home/kevinthefire/workspace/Hello':    Hello        -1    Configure
> > Problem
> > make: *** No rule to make target `all'.    Hello             C/C++
> Problem
>
> That doesn't sound like a toolchain error, but rather an autotools one.
> Make
> sure you are setting up cross compilation properly.
>
>
> > 2014-10-09 23:12 GMT-07:00 Nicolas Dechesne <nicolas.dechesne@linaro.org
> >:
> >
> > > On Thu, Oct 9, 2014 at 10:27 PM, Wy kevinthesun <
> kevinthesunwy@gmail.com>
> > > wrote:
> > > > It seems that Yocto 1.5.1 is built with hard float. However, the
> 1.51,
> > > 1.6
> > > > and  1.62 toolchains are soft float. When I tried to set
> > > > "-mfloat-abi=hardfp" in the compile option, the compiling process ran
> > > into
> > > > error. It seems these toolchains don't  support hard float? How can I
> > > solve
> > > > this problem?
> > > >
> > > > These are my set in the environment file of 1.5.1 toolchain:
> > > > export CC="arm-poky-linux-gnueabi-gcc  -march=armv5te -marm
> > > > -mthumb-interwork -mfloat-abi=hardfp
> > > > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > > > export CXX="arm-poky-linux-gnueabi-g++  -march=armv5te -marm
> > > > -mthumb-interwork -mfloat-abi=hardfp
> > > > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > > > export CPP="arm-poky-linux-gnueabi-gcc -E  -march=armv5te -marm
> > > > -mthumb-interwork -mfloat-abi=hardfp
> > > > --sysroot=/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnueabi"
> > > >
> > > > It ran into error.
> > >
> > >
> > > maybe because the gcc documentation says -mfloat-abi=hard, not =hardfp
> ?
> > >
> > > in general, showing us the error you have is much preferred, otherwise
> > > it's difficult to help if we don't really know what went wrong.
> > >
> > > cheers.
> > >
>

--001a11c35452a8182505051b0fac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>These errors occur when I add &quot;-mfloat-abi=3Dhar=
dfp&quot; to the toolchain setting. If I don&#39;t add it, no error occurs.=
 Now I think the problem is that 1.5.1 or 1.6.2 toolchain doesn&#39;t suppo=
rt hard float, which is required by my yocto 1.5.1 system.<br><br></div>Tha=
nk you.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2014-10-10 16:27 GMT-07:00 Denys Dmytriyenko <span dir=3D"ltr">&lt;<a href=
=3D"mailto:denis@denix.org" target=3D"_blank">denis@denix.org</a>&gt;</span=
>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><span class=3D"">On Fri, Oct 10, 2014 =
at 04:15:42PM -0700, Wy kevinthesun wrote:<br>
&gt; I tried both hard and hardfp. They both returned 3 errors:<br>
&gt;<br>
&gt; C compiler cannot create executables=C2=A0 =C2=A0 Hello=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 -1=C2=A0 =C2=A0 Configure Problem<br>
&gt; in `/home/kevinthefire/workspace/Hello&#39;:=C2=A0 =C2=A0 Hello=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 -1=C2=A0 =C2=A0 Configure<br>
&gt; Problem<br>
&gt; make: *** No rule to make target `all&#39;.=C2=A0 =C2=A0 Hello=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0C/C++ Problem<br>
<br>
</span>That doesn&#39;t sound like a toolchain error, but rather an autotoo=
ls one. Make<br>
sure you are setting up cross compilation properly.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; 2014-10-09 23:12 GMT-07:00 Nicolas Dechesne &lt;<a href=3D"mailto:nico=
las.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt;:<br>
&gt;<br>
&gt; &gt; On Thu, Oct 9, 2014 at 10:27 PM, Wy kevinthesun &lt;<a href=3D"ma=
ilto:kevinthesunwy@gmail.com">kevinthesunwy@gmail.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; It seems that Yocto 1.5.1 is built with hard float. However,=
 the 1.51,<br>
&gt; &gt; 1.6<br>
&gt; &gt; &gt; and=C2=A0 1.62 toolchains are soft float. When I tried to se=
t<br>
&gt; &gt; &gt; &quot;-mfloat-abi=3Dhardfp&quot; in the compile option, the =
compiling process ran<br>
&gt; &gt; into<br>
&gt; &gt; &gt; error. It seems these toolchains don&#39;t=C2=A0 support har=
d float? How can I<br>
&gt; &gt; solve<br>
&gt; &gt; &gt; this problem?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; These are my set in the environment file of 1.5.1 toolchain:=
<br>
&gt; &gt; &gt; export CC=3D&quot;arm-poky-linux-gnueabi-gcc=C2=A0 -march=3D=
armv5te -marm<br>
&gt; &gt; &gt; -mthumb-interwork -mfloat-abi=3Dhardfp<br>
&gt; &gt; &gt; --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnue=
abi&quot;<br>
&gt; &gt; &gt; export CXX=3D&quot;arm-poky-linux-gnueabi-g++=C2=A0 -march=
=3Darmv5te -marm<br>
&gt; &gt; &gt; -mthumb-interwork -mfloat-abi=3Dhardfp<br>
&gt; &gt; &gt; --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnue=
abi&quot;<br>
&gt; &gt; &gt; export CPP=3D&quot;arm-poky-linux-gnueabi-gcc -E=C2=A0 -marc=
h=3Darmv5te -marm<br>
&gt; &gt; &gt; -mthumb-interwork -mfloat-abi=3Dhardfp<br>
&gt; &gt; &gt; --sysroot=3D/opt/poky/1.5.1/sysroots/armv5te-poky-linux-gnue=
abi&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; It ran into error.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; maybe because the gcc documentation says -mfloat-abi=3Dhard, not =
=3Dhardfp ?<br>
&gt; &gt;<br>
&gt; &gt; in general, showing us the error you have is much preferred, othe=
rwise<br>
&gt; &gt; it&#39;s difficult to help if we don&#39;t really know what went =
wrong.<br>
&gt; &gt;<br>
&gt; &gt; cheers.<br>
&gt; &gt;<br>
</div></div></blockquote></div><br></div>

--001a11c35452a8182505051b0fac--
