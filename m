Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF9B7E00B18; Sat,  1 Jun 2019 08:43:38 -0700 (PDT)
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
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B6AE00A96
	for <yocto@yoctoproject.org>; Sat,  1 Jun 2019 08:43:38 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id m6so2708345wrj.10
	for <yocto@yoctoproject.org>; Sat, 01 Jun 2019 08:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bahi5IS5kKSKTeHIP7q1ubuZxeemm/Qk+UjyRVYb6yI=;
	b=BrE4HmNObFrczAb4xNm0RCgLzlZhH8TgZZsiaEl6VGtmYxQX440J/5Pg6UoM/0nHZI
	XtSKb3sN5z5e3pVwn7Uiu/LR/aTzyDZRXjEihWn9gD6MJ59lqV8hKHEggZQm7ETRuXQl
	ArIJKmilVWsiv9F8JR2ZggaTp5XKrFpmDQfV5F/JoIbZdHP9zQ5wKPkfj1a6kZj9zahL
	iBlXJ6/lMUQ0QkEI9ooWl/HemDoEfMT4X0B+VqrooAIv9He3noiJrkF29xuroG7OaBm0
	p8pmE4qmLeHf+9pN9h3T5GAm8DbODCgJsX6otBankCsZ5CmSkGI8ZXOwmBm1ZTmJ2JW5
	TD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bahi5IS5kKSKTeHIP7q1ubuZxeemm/Qk+UjyRVYb6yI=;
	b=hA/cKeW2YxnsVXqGDYr1UvhQ1NycWjq88lz1NtVO4G1l1O7Cr5Rw8KuJK1/fMTf1X1
	oMtAsuN5vgA5zNmmIKb8RaSEQTvHT3cw2801mhLx64eWyzglJ139NrXf2mJuDuRwUl3X
	gCpAVvuPitk0l2+ZMphPLCnkleqTtk8ePCHGXoVwEyRxCSa5bMN12kjzlNBjwCZLYGn9
	otPwGkljt6vFCIyhRrhDkfNoKSOUPs+MUR4T2QYH9x9ZjoCGWKaRJiL9LT4DxeUKMt1A
	KkGAKr6QC6QY4Jfxir8Vh4/KDQxQA8D+bdTEnSJlpJJqnsu1CxfoOfP+3FPva9gxSyVa
	EeQw==
X-Gm-Message-State: APjAAAV5vLPhl+w2NtZ36gBI1TkAXxL1juEUzCADHd3msKUULDAlQq61
	R1RcBeaLhvD+/zMlULEdyhReaCNfBgdc/wV59YE=
X-Google-Smtp-Source: APXvYqwV8FI1QCQwRMxRRDugHQJFCOC68AJTJCn/boWrJlv6TbTJqPZ0Ad9eqZGB3Z0DDKyugoAjT3uzDX2xKjlwIKg=
X-Received: by 2002:a5d:6144:: with SMTP id y4mr10591294wrt.84.1559403817196; 
	Sat, 01 Jun 2019 08:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190601144016.GA19383@archworkstation>
In-Reply-To: <20190601144016.GA19383@archworkstation>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Sat, 1 Jun 2019 17:43:25 +0200
Message-ID: <CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
To: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne@linux.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Sat, 01 Jun 2019 15:43:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jun 1, 2019 at 4:41 PM Morn=C3=A9 Lamprecht <morne@linux.com> wrote=
:
>
> Hi
>
> I created a new custom distribution and
> everything seems to work fine until the do_rootfs
> task is executed. It fails specifically when
> trying to install the hostapd package, with the
> error below (snippet from log.do_rootfs):
I would check run.do_rootfs and check it maybe there will be some more info=
.
Do you have some custom extension for hostapd? Thanks.
>
> > Running scriptlet: hostapd-2.6-r0.aarch64
> >
> > usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove update-rc.d
> > [-n] [-r <root>] [-s] <basename> defaults [NN | sNN kNN]
> > update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN runlvl [runl=
vl]
> >
> > error: %prein(hostapd-2.6-r0.aarch64) scriptlet failed, exit status 1
>
> > error: hostapd-2.6-r0.aarch64: install failed
>
> The hostapd package itself builds fine, it is
> just the installation to the rootfs that fails.
>
> The hostapd package is specified in
> MACHINE_EXTRA_DEPENDS, if I remove it, then the
> build succeeds without any issues.
>
> If I interpret the error correctly, it is the
> preinstall scriptlet that fails...but I am not
> sure where to start debugging this.
>
> Any suggestions ?
>
>                 - Morn=C3=A9
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

marek

