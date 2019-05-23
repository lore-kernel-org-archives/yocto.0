Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0773EE00D50; Thu, 23 May 2019 03:04:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D261E00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 03:04:06 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id t5so5131245wmh.3
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 03:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/DTAx3aBNn9KQECroOEcs/rwmllQhxE1jGB/W6JhbDI=;
	b=B6DIiWzNK0XKhgE/9a4kK9B7kGEl5MplZupQ8DnTv3aPchpPIrClEH9QdvhTSdaNDo
	4w+21OAKdQ3DMXLXDbhYcZHYC7q1SkMlf5aOszqqJ8pPtBuXALEjW3BEu2YS90l+WfqA
	EPjalqGlp6wETFraITRrCPuXm3zm20nA3MVnZ0eKnrLS/wSS9ZENNEvaViKMsrk7/OOt
	l0ZccMXg/x9l7AIE6XmqAMio4RbL3TxERlCqQMmV22JCblxOPRNy9sy0tckNvYne/cyq
	8DsRZWfuFbUeRDe3ABwlfE9dYrwNnpgh/CVOMpkTemHidYhuSA8vNzWKim4NUoWJsrrv
	SOZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/DTAx3aBNn9KQECroOEcs/rwmllQhxE1jGB/W6JhbDI=;
	b=Piu/hhQqhjnA/Lx1ArZHpuSBXigT2KL0Yw2TTdgzhkKngPmw4lCkIJHNZsJUTKaQgV
	o2/LrBgGHFygnYEtLd1MBS9SRWAJmaHD8ItedJSjyScrozQC0+GJXm6A0DnRlSZkKOoq
	aa76ZFg1MTJcXMzivAo5Dh4R/z5y3tdGpyldmiTE8Rihz8PPlf92XyzV5/+4mZMdHPLA
	OSiEq5KRwMd0s0AXj6OPdyTPoVKeFkOWsc2PkFFH7QukkS6Ym9P8gGePpFV5yMNM5Pam
	yW4KCrKaMSBe0oV/xcym0jENV66PdY1h0UMo1/zCNz8VAUnF2i7aGCucRQ/pN5XmCJoo
	5NQA==
X-Gm-Message-State: APjAAAWmQYLd84t5/Br3Fu3Fe7LcJLNQAW5UXZLov9AW5nHg1mDkVULM
	G5DXy405bDnE4w7N/pE4JnDzuvq6MVPvTLXloE0=
X-Google-Smtp-Source: APXvYqy1nfNbEktEF5PRVk3ElaKuoNAo+iCLIw1d9ojiYHfBk9R8HDRu9CPsBJo/CoXs1BYHERrNz9vdIJiY8kyg8HM=
X-Received: by 2002:a1c:9a8c:: with SMTP id c134mr10962816wme.20.1558605845667;
	Thu, 23 May 2019 03:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAKpuFdc42Q4e=nu7EbQGOFuOtEwN0EVaKwdSkB-o8dE+tZ+VoQ@mail.gmail.com>
In-Reply-To: <CAKpuFdc42Q4e=nu7EbQGOFuOtEwN0EVaKwdSkB-o8dE+tZ+VoQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 23 May 2019 12:03:54 +0200
Message-ID: <CAAfyv37dbhcWDxQvVX+A0cqvXMmtxzTzWNzJpC7vdKzpCh8Vag@mail.gmail.com>
To: Jonas Andersson <jonaskgandersson@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: RPI WiFi not loading module
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
X-List-Received-Date: Thu, 23 May 2019 10:04:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, May 23, 2019 at 11:15 AM Jonas Andersson
<jonaskgandersson@gmail.com> wrote:
>
> Hi
>
> I have problem to get my WiFi working on boot on Raspberry Pi 3.
for rpi issues I would suggest to open ticket on meta-raspberrypi
github with stated which yocto branch and other details. Thanks.
>
> The problem is that wlan0 interface not showing up, if I manually run modprobe brcmfmac it works.
>
> To try to "force" the load of brcmfmac i added it to KERNEL_MODULE_AUTOLOAD and that generated an file in /etc/modules-load.d/ -> brcmfmac.conf but it is still not loaded.
>
> I use systemd an to my understanding systemd-modules-load.service is handling module auto load, but that file is missing and I cant see how to include it in my build.
>
> Building thud version and I have added the following to my image recipe:
>
> DISTRO_FEATURES_append = " wifi"
>
> IMAGE_INSTALL_append = " iw wpa-supplicant packagegroup-base module-init-tools"
>
> IMAGE_INSTALL_append = "\
>     linux-firmware-rpidistro-bcm43430 \
>     linux-firmware-rpidistro-bcm43455 \
>     bluez-firmware-rpidistro-bcm43430a1-hcd \
>     bluez-firmware-rpidistro-bcm4345c0-hcd \
>  "
> Then i have symlinked wpa-supplicant service to load wpa-supplicant.conf file and that work when I manually loads the module.
>
> Best regards
> Jonas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

