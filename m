Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9DF2E0088C; Mon,  9 Nov 2015 11:22:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D05AE007C9
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 11:22:23 -0800 (PST)
Received: by lfs39 with SMTP id 39so73529000lfs.3
	for <yocto@yoctoproject.org>; Mon, 09 Nov 2015 11:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ujFJRa9uwfkIpl7nTzS+Ua0nJiFjKql7Cst7tuwQ1z0=;
	b=yy5sP+bKAJfzSml1NJzg4J30UIF1ob3p2ImNNK0LoSVo0JViNG/3in1/jophpUM7QY
	Yn83FJVgog/KIVL85cMueH6PjWKk0KsRCfaU6G1Qv7oKtWPMQZ5xdcx5lkP5P4W8LILH
	dxhzm1lxI+i9AKHHSVSM13K5QffpbJNtuuEg0agGmVvgTZd66cnxMZihORkfLisHFZkV
	JmzNPpD/DDdejnCCDbsjGjcxqpaWBU2cZc6gmokfnXmFLE5ss/uAEWdfSHim5htMLZpa
	1civIcOSRxR/mjefvGNoXjZ0EyesQWUZ1pjBoneSOCWKKMYUgzhWjdJNtx4QkNYcjdiX
	UyoA==
MIME-Version: 1.0
X-Received: by 10.25.43.149 with SMTP id r143mr9485677lfr.45.1447096942380;
	Mon, 09 Nov 2015 11:22:22 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Mon, 9 Nov 2015 11:22:22 -0800 (PST)
In-Reply-To: <CAMKF1squtQKgLmwTQNBykLx5LK=2dwsnWO594yJ+V2b1GjErXg@mail.gmail.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<CAMKF1squtQKgLmwTQNBykLx5LK=2dwsnWO594yJ+V2b1GjErXg@mail.gmail.com>
Date: Mon, 9 Nov 2015 19:22:22 +0000
Message-ID: <CABatt_yn1RkC9j490mUwm=GzzBEb1WXxrR_BOwJJgMD+68SKrg@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: binutils failing in FIDO branch
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
X-List-Received-Date: Mon, 09 Nov 2015 19:22:26 -0000
Content-Type: multipart/alternative; boundary=001a1140294034d35d05242083cf

--001a1140294034d35d05242083cf
Content-Type: text/plain; charset=UTF-8

Hi,

I'm running Ubuntu 14.04 LTS.

Could this be the problem?

Cheers,
Martin.


On Mon, Nov 9, 2015 at 5:56 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend <mtownsend1973@gmail.com>
> wrote:
> > Hi,
> >
> > binutils is failing to compile.  I'm using tip of fido branch.  Error
> > message is:
> >
> > |
> >
> /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:
> > In function 'fibheap_replace_key_data':
> > |
> >
> /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortexa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/fibheap.c:38:24:
> > error: 'LONG_MIN' undeclared (first use in this function)
> > |  #define FIBHEAPKEY_MIN LONG_MIN
> >
> > I've tracked it down to the fact that libiberty is the only component
> that
> > doesn't define HAVE_LIMITS in config.h, so I assume this part of the
> > configure is failing for some reason.
> >
> > Anyone else seen this, or have an idea on how to fix this?
>
> whats your host distro ?
>
> >
> > Cheers,
> > Martin.
> >
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a1140294034d35d05242083cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br>I&#39;m running Ubuntu 14.04 LTS=
.<br><br></div>Could this be the problem?<br><br></div>Cheers,<br></div>Mar=
tin.=C2=A0 <br><div><div><div><div><div><br></div></div></div></div></div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Nov =
9, 2015 at 5:56 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><span class=3D"">On Mon, Nov 9, 2015 at 4:3=
6 AM, Martin Townsend &lt;<a href=3D"mailto:mtownsend1973@gmail.com">mtowns=
end1973@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; binutils is failing to compile.=C2=A0 I&#39;m using tip of fido branch=
.=C2=A0 Error<br>
&gt; message is:<br>
&gt;<br>
&gt; |<br>
&gt; /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cort=
exa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/f=
ibheap.c:<br>
&gt; In function &#39;fibheap_replace_key_data&#39;:<br>
&gt; |<br>
&gt; /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cort=
exa9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/f=
ibheap.c:38:24:<br>
&gt; error: &#39;LONG_MIN&#39; undeclared (first use in this function)<br>
&gt; |=C2=A0 #define FIBHEAPKEY_MIN LONG_MIN<br>
&gt;<br>
&gt; I&#39;ve tracked it down to the fact that libiberty is the only compon=
ent that<br>
&gt; doesn&#39;t define HAVE_LIMITS in config.h, so I assume this part of t=
he<br>
&gt; configure is failing for some reason.<br>
&gt;<br>
&gt; Anyone else seen this, or have an idea on how to fix this?<br>
<br>
</span>whats your host distro ?<br>
<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Martin.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1140294034d35d05242083cf--
