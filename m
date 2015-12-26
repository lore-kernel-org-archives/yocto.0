Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60710E00C88; Fri, 25 Dec 2015 18:00:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5E13E00C2F
	for <yocto@yoctoproject.org>; Fri, 25 Dec 2015 18:00:13 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id to4so117097412igc.0
	for <yocto@yoctoproject.org>; Fri, 25 Dec 2015 18:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=SLM1alIbrrGT/x6ILkD+4Whgq9a5ikKBqTcH0oo4qqQ=;
	b=ava02P6tHUXKM+x/JONDnb+zPl6CC3aHb4vlRMdPYxCJGXBHkLQTpcVlYfONKIF+DI
	F/tMe9mo6oTc7ji3pq54EFU2OUmWYWHPx8r1U+vgNCk6CQUXb6TTyKvQjll1Qp851kO3
	oprUGkqfdA6WInXZep0mw1HH+WBQtvy84oUS5bxQ/zSLVWBe8u7h1KiKS3PiMFmCF/AL
	dLwqFEu8i6hojT18pMm8R5hqBK3E/5v5k7WJnhjYAb2RpIU7jVoiziUc5h4AP1Jpm7l5
	w1ghUhj6NJrgth21bHLjHUJ/DZv0te62CryY/ex6dhntxnWFO19hGGP1+n3aKRGaYO2I
	450A==
MIME-Version: 1.0
X-Received: by 10.50.155.65 with SMTP id vu1mr43623130igb.11.1451095213093;
	Fri, 25 Dec 2015 18:00:13 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Fri, 25 Dec 2015 18:00:12 -0800 (PST)
Received: by 10.107.16.74 with HTTP; Fri, 25 Dec 2015 18:00:12 -0800 (PST)
In-Reply-To: <567DF401.50902@huawei.com>
References: <567CA2F0.5000201@huawei.com>
	<CAMKF1sr6o=oNsA9gKP9g3jWQqqDcqr8oXsZE5eqg2Dj=gX+J1A@mail.gmail.com>
	<567DF401.50902@huawei.com>
Date: Fri, 25 Dec 2015 18:00:12 -0800
Message-ID: <CAMKF1srXQG15zoZmFWso=8SKH81bLePAP23067+F4EMCu+pPJQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Jin Li <lijin14@huawei.com>
Cc: yocto@yoctoproject.org
Subject: Re: how to use systemd as system init manager
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
X-List-Received-Date: Sat, 26 Dec 2015 02:00:15 -0000
Content-Type: multipart/alternative; boundary=001a11346410b63abb0527c36efa

--001a11346410b63abb0527c36efa
Content-Type: text/plain; charset=UTF-8

Put that in local.conf not in image recipe
On Dec 25, 2015 5:57 PM, "Jin Li" <lijin14@huawei.com> wrote:

> On 2015/12/25 13:55, Khem Raj wrote:
> > On Thu, Dec 24, 2015 at 5:59 PM, Jin Li <lijin14@huawei.com> wrote:
> >> Hi,
> >>
> >> I am trying to build yocto project which use systemd as system init
> manager.
> >> But the qemu boot up and still use INIT as usual. The rootfs even fail
> to install systemd.
> >>
> >> I refers to yocto docs
> http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-distro
> >> I use meta/recipes-extended/images/core-image-full-cmdline.bb and add
> the following part
> >> to support systemd:
> >>
> >> DISTRO_FEATURES_append = "systemd"
> >
> > space after first "
> >
> >> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> >>
> >> Did I miss somethings ?
> >>
> >
> > DISTRO_FEATURES_append = " systemd"
> > DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> > VIRTUAL-RUNTIME_init_manager = "systemd"
> > VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> >
>
> Hi Raj
>
> I used add the above code in meta/recipes-extended/images/
> core-image-full-cmdline.bb to
> build image with systemd, but still get the same result - get no systemd
> installed in rootfs image and
> system use "INIT" as usual as follows:
>
> $ runqemu qemuarm64
> ...
>
> root@qemuarm64:~# systemctl
> -sh: systemctl: command not found
> root@qemuarm64:~#
> root@qemuarm64:~# ps aux | grep init
> root         1  5.1  0.2   1764  1176 ?        Ss   01:57   0:04 init [5]
>
> Regards,
>
> Jin
>
> >
> >> Any help would be appreciated.
> >>
> >> Jin
> >>
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
>
>

--001a11346410b63abb0527c36efa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Put that in local.conf not in image recipe</p>
<div class=3D"gmail_quote">On Dec 25, 2015 5:57 PM, &quot;Jin Li&quot; &lt;=
<a href=3D"mailto:lijin14@huawei.com">lijin14@huawei.com</a>&gt; wrote:<br =
type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 2015/12/25 13:55, Kh=
em Raj wrote:<br>
&gt; On Thu, Dec 24, 2015 at 5:59 PM, Jin Li &lt;<a href=3D"mailto:lijin14@=
huawei.com">lijin14@huawei.com</a>&gt; wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I am trying to build yocto project which use systemd as system ini=
t manager.<br>
&gt;&gt; But the qemu boot up and still use INIT as usual. The rootfs even =
fail to install systemd.<br>
&gt;&gt;<br>
&gt;&gt; I refers to yocto docs <a href=3D"http://www.yoctoproject.org/docs=
/1.8/ref-manual/ref-manual.html#ref-features-distro" rel=3D"noreferrer" tar=
get=3D"_blank">http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.h=
tml#ref-features-distro</a><br>
&gt;&gt; I use meta/recipes-extended/images/<a href=3D"http://core-image-fu=
ll-cmdline.bb" rel=3D"noreferrer" target=3D"_blank">core-image-full-cmdline=
.bb</a> and add the following part<br>
&gt;&gt; to support systemd:<br>
&gt;&gt;<br>
&gt;&gt; DISTRO_FEATURES_append =3D &quot;systemd&quot;<br>
&gt;<br>
&gt; space after first &quot;<br>
&gt;<br>
&gt;&gt; DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;<br>
&gt;&gt;<br>
&gt;&gt; Did I miss somethings ?<br>
&gt;&gt;<br>
&gt;<br>
&gt; DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>
&gt; DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D &quot;sysvinit&quot;<br>
&gt; VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
&gt; VIRTUAL-RUNTIME_initscripts =3D &quot;systemd-compat-units&quot;<br>
&gt;<br>
<br>
Hi Raj<br>
<br>
I used add the above code in meta/recipes-extended/images/<a href=3D"http:/=
/core-image-full-cmdline.bb" rel=3D"noreferrer" target=3D"_blank">core-imag=
e-full-cmdline.bb</a> to<br>
build image with systemd, but still get the same result - get no systemd in=
stalled in rootfs image and<br>
system use &quot;INIT&quot; as usual as follows:<br>
<br>
$ runqemu qemuarm64<br>
...<br>
<br>
root@qemuarm64:~# systemctl<br>
-sh: systemctl: command not found<br>
root@qemuarm64:~#<br>
root@qemuarm64:~# ps aux | grep init<br>
root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01=C2=A0 5.1=C2=A0 0.2=C2=A0 =C2=A0176=
4=C2=A0 1176 ?=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ss=C2=A0 =C2=A001:57=C2=A0 =C2=A0=
0:04 init [5]<br>
<br>
Regards,<br>
<br>
Jin<br>
<br>
&gt;<br>
&gt;&gt; Any help would be appreciated.<br>
&gt;&gt;<br>
&gt;&gt; Jin<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;<br>
&gt;<br>
<br>
<br>
</blockquote></div>

--001a11346410b63abb0527c36efa--
