Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34946E00BB6; Thu, 11 Feb 2016 02:58:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F04E00B9C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 02:58:19 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id y8so2962426igp.1
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 02:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jlbdJh1hHkY9Sbd6uemE7CVPusqGBlr/Ak3IE7nQ7rs=;
	b=AAXS//XJu5aBJYh4fM/hkUeVSyU6YNzDQVGZOCvRtA8AXmrUqQAR6R1liazyyuVOxo
	Uh1U79l5vZPBKtOob+nodFZtpGyJrVcs3mOhQ+Cq6jG8qbc+IhyDJCD6LmF9f3NCDQBY
	tvesSH8TSb5aF+r4C2aDWCawm2jiIJ7nF24odfKpxnbyhlIZ0lfw/CVF3ghbnYZ9zMgf
	0sl5rop2ITD+ZF4P8SS/o0Dv4cVWSCDjnED2eYxQ+Cv8KTHdFRvIsR4apr5lILOQ5GWq
	p61LEeppDD8C3CB9XiyiMMGZ8OErV7kiPv8SvkYg5tyWY0rI6nda3nr2T/6zOF09MvgG
	L5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jlbdJh1hHkY9Sbd6uemE7CVPusqGBlr/Ak3IE7nQ7rs=;
	b=BhzDPnqisn3ALmJoX4UjOjkmv/ZdOFJ7ISaxP9Xz90QS+RuMz4FUUu5rtwaCfLgQEP
	Fk/g2eYNy0QgpknmHt2iHbu8pqYc5RN5GqBzvMM+Jf1jLuP5c8JB3w2NAR2UyuFS5KLp
	nWUXaGTEEiyT6Mio2PspTATQvBiEkEfexT65lKxzDaba5wmciMfvNDd4pbiMAet9ng8y
	A4w/x9kIOXjkyazVDIB78HNW/M1Gvgc0byZ3TmL+GTmNcq+JIvnnI3RshGeQ0S4nqom4
	0Bpzj8VQ/XTW/2KAIap16tG6odNZK+zFuNmIB8IPfTpklB6xCy78JZPP+w7AS65QRp3a
	uQ4g==
X-Gm-Message-State: AG10YOQJJ0aGL6a92pcyao4XKI6KdtsZ853iRfa+jR3aU5YN1hiAtJwPK8mSxhnZbfnXeY5ELvbpb/TiXqSpmfUk
X-Received: by 10.50.43.133 with SMTP id w5mr14826356igl.52.1455188299120;
	Thu, 11 Feb 2016 02:58:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 11 Feb 2016 02:57:59 -0800 (PST)
In-Reply-To: <56BC6621.6000809@nokia.com>
References: <56BC6621.6000809@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Feb 2016 10:57:59 +0000
Message-ID: <CAJTo0Lan0mShTsA7ybk0OZH3qFmtvWpOv113Wv6V=m7BannUeg@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: valgrind-native
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
X-List-Received-Date: Thu, 11 Feb 2016 10:58:23 -0000
Content-Type: multipart/alternative; boundary=089e01175f2ba69d27052b7c6dc5

--089e01175f2ba69d27052b7c6dc5
Content-Type: text/plain; charset=UTF-8

Hi,

On 11 February 2016 at 10:44, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> Any ideas why I cannot build native valgrind ?
> http://pastebin.com/e2h6AWxN
> "Missing or unbuildable dependency chain was: ['valgrind-native',
> 'glibc-dbg-native']"
>
> Also tried bitbake glibc-dbg . nothing provides that, but it is required
> in recipe
>

The short answer is because valgrind doesn't have a native form yet.
Presumably you added BBCLASSEXTEND=native yourself, so you get to fix it. :)

valgrind RRECOMMENDS $(TCLIBC)-dbg as without debugging symbols it's fairly
useless, and TCLIBC is the variable for the libc being used (in your case,
glibc).  As a recommends, it will be built.

However, native recipes don't usually depend on the C library (base.bbclass
handles the addition of those core dependencies, and doesn't run on native
builds) so you've hit a new corner case.

The easy fix would be to remove the recommends in the native build case:

RRECOMMENDS_${PN}_class-native = ""

Surprisingly enough it then builds!

Also remember that we strip the native sysroot, so if you want a native
valgrind to be useful in any way you'll have to disable that too
(INHIBIT_SYSROOT_STRIP).

(it would probably be easier to use the host valgrind, to be honest)

Ross

--089e01175f2ba69d27052b7c6dc5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On 11 February 2016 at 10:44, Woronicz,=
 Bartosz ( NSN - PL/Wroclaw) <span dir=3D"ltr">&lt;<a href=3D"mailto:bartos=
z.woronicz@nokia.com" target=3D"_blank">bartosz.woronicz@nokia.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":n3" class=3D"a3=
s" style=3D"overflow:hidden">Any ideas why I cannot build native valgrind ?=
 <a href=3D"http://pastebin.com/e2h6AWxN" rel=3D"noreferrer" target=3D"_bla=
nk">http://pastebin.com/e2h6AWxN</a><br>
&quot;Missing or unbuildable dependency chain was: [&#39;valgrind-native&#3=
9;, &#39;glibc-dbg-native&#39;]&quot;<br>
<br>
Also tried bitbake glibc-dbg . nothing provides that, but it is required in=
 recipe</div></blockquote></div><br>The short answer is because valgrind do=
esn&#39;t have a native form yet.=C2=A0 Presumably you added BBCLASSEXTEND=
=3Dnative yourself, so you get to fix it. :)</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">valgrind RRECOMMENDS $(TCLIBC)-dbg a=
s without debugging symbols it&#39;s fairly useless, and TCLIBC is the vari=
able for the libc being used (in your case, glibc).=C2=A0 As a recommends, =
it will be built.</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">However, native recipes don&#39;t usually depend on the C libra=
ry (base.bbclass handles the addition of those core dependencies, and doesn=
&#39;t run on native builds) so you&#39;ve hit a new corner case.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">The easy fix wo=
uld be to remove the recommends in the native build case:</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">RRECOMMENDS_${PN}_cla=
ss-native =3D &quot;&quot;</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Surprisingly enough it then builds!</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Also remember that we st=
rip the native sysroot, so if you want a native valgrind to be useful in an=
y way you&#39;ll have to disable that too (INHIBIT_SYSROOT_STRIP).</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(it would prob=
ably be easier to use the host valgrind, to be honest)</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e01175f2ba69d27052b7c6dc5--
