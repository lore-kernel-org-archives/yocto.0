Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B7F6E00831; Mon,  7 Nov 2016 04:17:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA3BFE00563
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 04:17:22 -0800 (PST)
Received: by mail-vk0-f41.google.com with SMTP id 137so71547259vkl.0
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 04:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hznGZZW1YCAP3y+hdhlN88zL0lmnqHHCMsjOtgulYB0=;
	b=hkUz0AFleUWmCfEKzLqcdjis3DubQrylJ5vCQ7N2SE1RqDFScZnQpXiJXNC6KP4401
	vupW5AqGP7o1JZl971/fCeRkOYyn5xTfeAl5DKGiLSog5SGijwo0NKLxXccyNnOonO/Z
	iQftGSGb2Mw+3nOaNVC4xY9zPtOt2VZVZsUH0RUTVEGO315aYzJHjClGYF7JmF7Bs4+B
	AQkRsCSQcmNNOtPFsChjrkuUKLoBnGR9GrvAcTJWEYIm8ZQyC/lICaHD94T6zAZnbA99
	8Ht/Rn+xeiAPQbDqRJORry7QjuPviKYkjrbVV0pnEm2ALYm10zZfL3m1kS442uo5bQFR
	IjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hznGZZW1YCAP3y+hdhlN88zL0lmnqHHCMsjOtgulYB0=;
	b=K6XbthbZsnJ/k8iahhW/qnS7KwK1kU0FTiugp9+cgSJbdhuZJ4OHM7Qr06dKWb5TwZ
	uLqR7PVn+dM1pC3EiERM5FykZe/qssLok8geMKf7IGbHT0HkaDT6shA4iW7Rl0b+6qdX
	3ai7YmnqWo/8f4Wv540esMKlPU/Xw9PwGkKnk6sU0AEaW4I21JRGJaPlYBH3ezBo6TVT
	n97L2642nHhBMu2c35B1SfMv9yR9bQtwbXnIuArJ8oRvSgGLDMENwdAdjIqdcMPMfYQ/
	VqUKW9GqaY8aFNmlNMurGFRZMymxatlkFhMnqkEBk6T/UtNKksFWG83pw8MJW4Jm3Dl8
	hH7w==
X-Gm-Message-State: ABUngvcXprAdzYjkEp1+fcgwuEMOMk0uC02RzwKrdCcKF/NwAV57HOjCUcz2bnYoAlqqAIYmZYUs6Fd2CUB3Mw==
X-Received: by 10.31.7.147 with SMTP id 141mr3477083vkh.154.1478521041759;
	Mon, 07 Nov 2016 04:17:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.4.129 with HTTP; Mon, 7 Nov 2016 04:17:21 -0800 (PST)
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 7 Nov 2016 10:17:21 -0200
Message-ID: <CAF3SDA4fnhcdaorWmgbCPd4n=LdYspY8C8bpdHpT3MdiHwjhnw@mail.gmail.com>
To: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UTF-89 support
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
X-List-Received-Date: Mon, 07 Nov 2016 12:17:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2016-11-07 9:48 GMT-02:00 Keskinarkaus, Teemu
<teemu.keskinarkaus@crosscontrol.com>:
> Hi,
>
>
>
> I tried googling this and reading the manual, but I guess this is too
> trivial or I=E2=80=99m doing something wrong.
>
>
>
> I=E2=80=99m trying to get UTF-8 support to my image. UTF-8 locale more sp=
ecific. If
> I run locale =E2=80=93a command I get these locales listed:
>
> C
>
> POSIX
>
> en_GB
>
> en_US
>
>
>
> I added this line to my local.conf:
>
> GLIBC_GENERATE_LOCALES =3D "en_GB.UTF-8 en_US.UTF-8 en_GB en_US"
>
>
>
> That didn=E2=80=99t bring UTF-8 locales although by looking at the commen=
t I would
> assume they should be already there?  I=E2=80=99m not entirely sure why t=
he UTF-8
> locales are still missing and how do I get them there?
>
>
>
>
>
> Teemu Keskinarkaus
> Software system engineer
> Cell: +358 400 330047
> Fax: +358 207 669199
> www.crosscontrol.com
>
> CrossControl
>
> making machines smart, safe and productive
>
>
>
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may contai=
n
> information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the
> recipient(s) named above. If the reader of this email is not an intended
> recipient, you have received this email in error and any review,
> dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender
> immediately by return mail and permanently delete the copy you received.
>
> Thank you.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Did you setted ENABLE_BINARY_LOCALE_GENERATION?

From http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/=
glibc/glibc-locale.inc

> # Binary locales are generated at build time if ENABLE_BINARY_LOCALE_GENE=
RATION
> # is set. The idea is to avoid running localedef on the target (at first =
boot)
> # to decrease initial boot time and avoid localedef being killed by the O=
OM
> # killer which used to effectively break i18n on machines with < 128MB RA=
M.
>
> # default to disabled
> ENABLE_BINARY_LOCALE_GENERATION ?=3D "0"

--=20
"Do or do not. There is no try"
  Yoda Master

