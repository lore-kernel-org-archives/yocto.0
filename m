Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CF5DE00E05; Tue, 12 Nov 2019 16:38:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 065D4E00571
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 16:38:19 -0800 (PST)
Received: by mail-qv1-f53.google.com with SMTP id q19so118548qvs.5
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 16:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=dE/ymaz4/6FJQa5EzAPdRvdcGBob814Nws4gTw2ibwg=;
	b=CbQ4ooBDNG8Ht2g9szjK+gyuesR85JUqoH0zUulaZiPs9pOa85Md/xXdsFh70FePEG
	wN8Kyv/TyjqGoOXyBAXqS970hBz8cFZUXOGIzg4p85hHhtWZ6Ah9r3GJ3hX3rk3KTMM6
	wId5qCuzp71T832vwYG4UYBcfP954cqyEXbqHM3VTYoN1az7xTPNYtFLAWdRrkMEzyKh
	Js/U3vofqLSLEuMHdwKCiwogbYOmMM3HrDGbC1yuegxX3hOV21DARtl1Gxjzenpunloz
	sNymGBQgY96ZWcNi4xE5hgn243p9Mi7RaRPM2XFfmjAMmQPfVDpLLf6QPf+Wd1e0qPSh
	Q24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=dE/ymaz4/6FJQa5EzAPdRvdcGBob814Nws4gTw2ibwg=;
	b=jsp6YsO9gHB27Xq/sPdnhQ62QqtGjlBdHjWKyXhzHJbNmXByjyzHdLGQ7bYk+wfn2M
	DHbLRCEoRg/N9OLJj1vW0P7sg21oQCohW1oXjGgKtvzdHhsWtF9ftgtARXZXOTdssvcU
	2jyHuOgUe4gJAmTy7LKJcI9BUFe6CKGXa9Gh3fGUjChwiCjqYmXQ1zE5/j838aafzTz8
	HEMM50QeNZME5sBdQBfmG+xbVbXvd0r9MlQZvEnnIDFbV1gcFxahsRN1GBFyPsvWalTs
	l68LeQrau00nYSV0ElXZDm6702KO8BzsOTdZd/OE3UNhm7JsDiHd0YL20eHAdOsi6Hlq
	li1w==
X-Gm-Message-State: APjAAAXXUhHBvM+hpU+notqJtMwYGmEwYcqm5mF/Uh4SpxhaPYdz1FLf
	s652ikyW3XQsv096KPPHj54htxMtVuQp9h4W/3M=
X-Google-Smtp-Source: APXvYqwLDDeTAaJnUUaVIztSwzscMJBKDtiVTopRC4eOXElnQt4hRcMhbdupM/bcttyhbGCIeyxeXL3F5jLPj4ogCjQ=
X-Received: by 2002:a0c:c211:: with SMTP id l17mr431059qvh.55.1573605498898;
	Tue, 12 Nov 2019 16:38:18 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
	<CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
	<CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
	<CAEEV9O0jF==rmOmaOrOqtURghUyFZPnoSFgs7daeAhfKU2ohGg@mail.gmail.com>
In-Reply-To: <CAEEV9O0jF==rmOmaOrOqtURghUyFZPnoSFgs7daeAhfKU2ohGg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Nov 2019 16:37:52 -0800
Message-ID: <CAMKF1sqOqNxrC_SXnzPHY_Uxs1esvWWT97XifVpke6ni5ckh=A@mail.gmail.com>
To: Mark Hawthorne <markhawthorne172@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: pkg-config not found
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
X-List-Received-Date: Wed, 13 Nov 2019 00:38:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2019 at 4:29 PM Mark Hawthorne
<markhawthorne172@gmail.com> wrote:
>
> Khem,
>
> I found a recipe that you made a few years ago where you addressed this p=
roblem:
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-exten=
ded/boinc/boinc-client_7.12.bb
>
> You solved it by exporting PKG_CONFIG
>
> export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"
>
> This seems like it may be the incorrect way to do it and there needs to b=
e an update in the configure.ac file instead?

in configure.ac you can add something like this

PKG_PROG_PKG_CONFIG
if test -z "$PKG_CONFIG"; then
  AC_MSG_WARN([Cannot find pkg-config, make sure it is installed in your PA=
TH])
fi

>
> On Tue, Nov 12, 2019 at 4:44 PM Mark Hawthorne <markhawthorne172@gmail.co=
m> wrote:
>>
>> No, it did not help
>>
>> It appears from the config.log file that the PKG_CONFIG variable never g=
ets set. I'm sorting through the bbclass files to figure out why this is no=
t getting set...
>>
>> PKG_CONFIG=3D''
>> PKG_CONFIG_LIBDIR=3D'/home/mark/Documents/tisdk/build/arago-tmp-external=
-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-s=
ysroot/usr/lib/pkgconfig'
>> PKG_CONFIG_PATH=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-a=
rm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sys=
root/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-tmp-external-=
arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sy=
sroot/usr/share/pkgconfig'
>>
>> On Tue, Nov 12, 2019 at 4:22 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
>>> <markhawthorne172@gmail.com> wrote:
>>> >
>>> > Thank you. I have fixed this issue but the original pkg-config error =
still persists.
>>> >
>>>
>>> do a clean build after above change
>>>
>>> bitbake -ccleanall <your-recipe>
>>> bitbake <your-recipe>
>>>
>>> does that help ?
>>>
>>> > On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote:
>>> >>
>>> >> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
>>> >> >...
>>> >> > DEPENDS_${PN} =3D "libpng freetype glm libegl libgles2 libspatiali=
te"
>>> >> >...
>>> >>
>>> >> DEPENDS, not DEPENDS_${PN}
>>> >>
>>> >> cu
>>> >> Adrian
>>> >>
>>> >> --
>>> >>
>>> >>        "Is there not promise of rain?" Ling Tan asked suddenly out
>>> >>         of the darkness. There had been need of rain for many days.
>>> >>        "Only a promise," Lao Er said.
>>> >>                                        Pearl S. Buck - Dragon Seed
>>> >>
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

