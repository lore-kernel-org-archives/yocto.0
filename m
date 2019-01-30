Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 391E0E00D11; Tue, 29 Jan 2019 22:59:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336D3E00CE5
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 22:59:28 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id t18-v6so19755560ljd.4
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 22:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=NqvSUoZhq+aEosZ+8f7f9zaDJ7HhdHngnUChgRCDGHU=;
	b=o14KqAHZEvL0qD3CJraZQm0WxMLAnd5xqmp+WxNCtvYRkhmCe171vOOWjVs3FlKrDf
	ZP9Uu3hUow4tTvvCm7KrW4SRSBhKssvlEVdHJBXwthegGzwzXffMP9AmkU+RYzNHaxNj
	IshXpGAoxa6/CYaUvhT0Jb7h2wG3PegKLPzkCoM/pudDksuWrvObcRGkXPQlFFL9zEIj
	zZrkHhpRftlUOAAxtpF1yN6X6V931ZKpbE4wP+l7cxUe5uGlzRZhKu3HQuBvXuQv5f1b
	N6eLLK7xu/OS3ClL3wvxqgeKn6RX5CzgZrsFYeelMKEv3H56T6pPzgte+H1jqFCbeqx/
	i+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NqvSUoZhq+aEosZ+8f7f9zaDJ7HhdHngnUChgRCDGHU=;
	b=EpaeSPdr1urKMW4uAO3t+hvopTL7rxV4hJKd1JnC+zeF3TfqcjbLERO2sdDOELjHUL
	yf1j/tu9mNMH+y7iEHnJlWVeLs54+8GwdREtudG+kmGeUDEPWkVPrPyXFLHK0k4AT/K3
	92+y2+3EvoKc6Tz08alZFOQOSI2GsGCpyKeAHejXtGQsIHMnhObqma5H3fVIHQ/g/VE4
	R8aSKZLKf+yMzWAO60LDibRcaOF2c8j4+AM8LuuK7K/LH0sQMlBzHfK5y8HG5M4ROJrN
	R9JR+wj0T7Joy/e7GWzf9QtcpyACBA9jyX6mSfQ90oUutXb7K8QycpGQeEBdG278qdIy
	QczQ==
X-Gm-Message-State: AJcUukfo0k/Vz7QWIUt08CXz0hAGR3yXTXmz+N4AxYRgik+9DXigqqx2
	2FUOdyMz3XiCxaeflKs7WNAd8OPSwaiLM6r0BDE=
X-Google-Smtp-Source: ALg8bN5R+zQByJgvIg9mcgk6d7aSnmYMUIqMqd6Rmju2ZvYVvyVKKUJGV1SWQFGt0libfFhPVcVVqBzjjPTEs2Rvuck=
X-Received: by 2002:a2e:8554:: with SMTP id
	u20-v6mr22927241ljj.193.1548831566775; 
	Tue, 29 Jan 2019 22:59:26 -0800 (PST)
MIME-Version: 1.0
References: <CAB=6tBTimsTsxDDfsK9Jn56SODmeOsYk1UdjYm=VnKupY8yGJA@mail.gmail.com>
In-Reply-To: <CAB=6tBTimsTsxDDfsK9Jn56SODmeOsYk1UdjYm=VnKupY8yGJA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 30 Jan 2019 01:59:13 -0500
Message-ID: <CADkTA4PZm4ZBSFm6Lz7+BvxSe27mqj_=G+iL08=pc2ASD9Pm3g@mail.gmail.com>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Deactivating KERNEL_FEATURES
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
X-List-Received-Date: Wed, 30 Jan 2019 06:59:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 29, 2019 at 9:50 PM Chuck Wolber <chuckwolber@gmail.com> wrote:
>
> This question is with respect to the Yocto thud (2.6.x) branch. I have al=
so reviewed section 2.3.3 and 2.3.4 of the Kernel Development document.
>
>
> My kernel configuration (cfg) seems to be overridden by KERNEL_FEATURES a=
nd it is not clear how to stop this behavior. To take one specific example,=
 nothing I have tried seems to successfully deactivate the sound configurat=
ion kernel options.
>
> My linux-yocto_4.18.%.bbappend file has the following contents:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI_append +=3D "file://0001-kernel-config.cfg"
>
> The following line appears in 0001-kernel-config.cfg:
>
> # CONFIG_SOUND is not set
>
> And yet when I configure the kernel (bitbake -c configure linux-yocto) th=
e resultant .config in the linux-yocto ${WORKDIR} contains "CONFIG_SOUND=3D=
m" and a plethora of other sound related options that should be turned off.=
 I did the full kernel build and verified that the .config reflects the fin=
al result in the kernel.
>
> "bitbake -e linux-yocto" contains the following, which seems to explain a=
 bit:
>
> KERNEL_FEATURES=3D" features/nfsd/nfsd-enable.scc features/debug/printk.s=
cc  features/kernel-sample/kernel-sample.scc features/netfilter/netfilter.s=
cc cfg/virtio.scc cfg/sound.scc cfg/paravirt_kvm.scc "
>
> I should also add that our configuration includes:
>
> DISTRO_FEATURES_remove =3D " alsa pulseaudio" DISTRO_FEATURES_BACKFILL_CO=
NSIDERED =3D " alsa pulseaudio".
>
>
> How do I ensure that my kernel config gets the last say and is not overri=
dden?

KERNEL_FEATURES is a variable like any other. Have you tried using
KERNEL_FEATURES_remove to pull the sound configs out ? We've also only
enabled those features for the qemux86* machines, so it shouldn't be
leaking into other configs .. but as you mentioned, perhaps the sound
configs are just something you picked as an example.

Bruce

>
> Thank you,
>
> ..Ch:W..
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

