Return-Path: <k4230r6@gmail.com>
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5100EE00716
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 20:55:54 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id uy17so421129igb.15
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 20:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WvRUsWmLc5JxogLrzSZqWc9qUQOQHO1/lJ5kTrALgms=;
	b=PAIDsr2kTYiWf1BVYwuekUPdOPrRyfz3AttP81GWGNa8awLUzSGc4CaIG0rFsiFleP
	OEllMF1KlvexzGyf5YZ02l2k41LfhCblTXjpdrRYfCuKnsssUTVLPo88ldBTzCzCT3d1
	E+98cMeqjuShS7EbAzSbxeRslIls0OCJe8GZOjz0nXBPSdNw43qJAAbZqAvKdKr73fbl
	9sTS8K9Cqd1QtYVX01yLJ6EbDd5PTClOB5gP/kMedrPvo8qf7s43cXuf1YiUaOKHH0Jb
	sbxRGQKNGoZiqrBYGRYsJtOCm/OwY8bS1LDOBAHuZv8jAdTcTJGKUzHQm7LsNOyxvjqL
	Jc2g==
MIME-Version: 1.0
X-Received: by 10.50.47.12 with SMTP id z12mr6679585igm.37.1398311753980; Wed,
	23 Apr 2014 20:55:53 -0700 (PDT)
Received: by 10.64.252.166 with HTTP; Wed, 23 Apr 2014 20:55:52 -0700 (PDT)
Received: by 10.64.252.166 with HTTP; Wed, 23 Apr 2014 20:55:52 -0700 (PDT)
In-Reply-To: <CAPTvksA3s+7SVVqjJ1Vu7U-VcFYmxQYKk0V0UV78po86CCwyeA@mail.gmail.com>
References: <CAPTvksA3s+7SVVqjJ1Vu7U-VcFYmxQYKk0V0UV78po86CCwyeA@mail.gmail.com>
Date: Thu, 24 Apr 2014 05:55:52 +0200
Message-ID: <CAALGJZZu6ZrYdPGzxJ0jhxdDWciqzs1S0SUiy8eUVB15_0xb=w@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Rich Wilson <richaw@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to run c++ programs?
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
X-List-Received-Date: Thu, 24 Apr 2014 03:55:55 -0000
Content-Type: multipart/alternative; boundary=089e013cc63e61a05e04f7c1d3f7

--089e013cc63e61a05e04f7c1d3f7
Content-Type: text/plain; charset=UTF-8

Am 24.04.2014 04:46 schrieb "Rich Wilson" <richaw@gmail.com>:
>
> I have my core-image-minimal distribution working.
> Now, I would like to compile and run c++ programs.
> How do get there from here?
>

I think bitbake -c populate_sdk is what you are looking for. This creates
an SDK with the required headers and libs to compile your c++ code against.

> I'm a newbie here, so please be gentle :-)
>
> (I'm hoping I can use the Xilinx SDK for the compiler and
> debugger; I think I just need the libraries)
>
The approach above generates a complete SDK.
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "openSUSE-project-12.3"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard-zynq7"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5.1"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "<unknown>:<unknown>"
> meta-xilinx       = "dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d"
>
> --
> Rich Wilson
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e013cc63e61a05e04f7c1d3f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 24.04.2014 04:46 schrieb &quot;Rich Wilson&quot; &lt;<a href=3D"mailto:r=
ichaw@gmail.com">richaw@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; I have my core-image-minimal distribution working.<br>
&gt; Now, I would like to compile and run c++ programs.<br>
&gt; How do get there from here?<br>
&gt;</p>
<p dir=3D"ltr">I think bitbake -c populate_sdk is what you are looking for.=
 This creates an SDK with the required headers and libs to compile your c++=
 code against.</p>
<p dir=3D"ltr">&gt; I&#39;m a newbie here, so please be gentle :-)<br>
&gt;<br>
&gt; (I&#39;m hoping I can use the Xilinx SDK for the compiler and<br>
&gt; debugger; I think I just need the libraries)<br>
&gt;<br>
The approach above generates a complete SDK.<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.20.0&quot;<br>
&gt; BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =C2=A0 =3D &quot;openSUSE-project-12.3&quot;<br>
&gt; TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi=
&quot;<br>
&gt; MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zedboard-zynq7&qu=
ot;<br>
&gt; DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<b=
r>
&gt; DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5.1&quot;<br>
&gt; TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot; armv7a vfp neon zynq&quot;<br>
&gt; TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;<br>
&gt; meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&=
quot;<br>
&gt; meta-xilinx =C2=A0 =C2=A0 =C2=A0 =3D &quot;dora:aa7d677515ab7d45bbd3bd=
d6c5383f4143147c6d&quot;<br>
&gt;<br>
&gt; -- <br>
&gt; Rich Wilson<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--089e013cc63e61a05e04f7c1d3f7--
