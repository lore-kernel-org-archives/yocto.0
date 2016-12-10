Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4487E00955; Sat, 10 Dec 2016 13:01:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08E6AE0083D
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:01:25 -0800 (PST)
Received: by mail-ua0-f180.google.com with SMTP id 20so49300776uak.0
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=BYDxXbFu35bB/Apuv6dbtJVvKoJUorplYQjEnykedxo=;
	b=FBPs4qiL59MA7koLaDZuXLRvuxo05bN2zX87gNFmeQUzkPb8Jgt2HAYE9nhjcc1cGL
	yE7Lh86gXpIji4oCcGU/iaKQTY76RaARNzI1Kw+N06XbheaoRleZM+ZO9UW7l/iNJlYw
	KVkBzN9oDJJ1yytyiN4+WLuEl150blfxDjT1kydORRp09xpj1WUXSndbjOqv53P4SpnR
	B48M2aS4oFR9HrWX7kMDGiVeBClRQUnS9J5Y+ZneVz695gk/u+z6Sclj1Kr3KOPzV3Tz
	jSiqxWLZ+fkgh7UKbiE2ssYU2bRVnkjPdDxrSmViC/mnbOlpnGei8plRDjq7b8vIXOJY
	g8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=BYDxXbFu35bB/Apuv6dbtJVvKoJUorplYQjEnykedxo=;
	b=S2ucvTwuHrxlpSsDVHFMPQBw3aT7Mjd5utmtqQhWsJ/MNgL4g7d5yvwDgVuAbual/B
	kbfWvY7J8/Z+zdepGllaM6oqtwtXgV5UUVLHcsKRPT9u8y4aSxcbGN9rA8XZScLgXS6a
	+9ZnTumG8J2exfjLCFx5qQUC7PmWUFQsXonF5SnPaayrDsG6+p/beYL2RLEjFC46v6zw
	lwQagyecGez0QVUMCGN0okkAMeMkZvawTiq47nZ9t0kRdghSwqALz2s+9P49yMAWfC6m
	Ak2pAXDkYK8GyhNLJ7iILQlYIQ/36NxsZOGz4hwwpOx/gWx72sycKNCbhRFYEtzw+MEG
	3ktw==
X-Gm-Message-State: AKaTC004UJqERP+xli/j4gq5/LvPL/WeyHCDun8Eeyvh84aiITqTpWZH3o+GNPpelnjVN7W+fPKKLvnAVeVcdw==
X-Received: by 10.176.84.8 with SMTP id n8mr31913883uaa.29.1481403684979; Sat,
	10 Dec 2016 13:01:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sat, 10 Dec 2016 13:00:54 -0800 (PST)
In-Reply-To: <BC774F321B0EF24DBF41FE7457B2B7862D16A580@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D16A580@wcosexch01k.cos.is.keysight.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Dec 2016 13:00:54 -0800
Message-ID: <CAMKF1srBf3mqSgRHL_MQFnTcV8vxPCapq5b2ZzSpHMmNugCjUA@mail.gmail.com>
To: richard_allen@keysight.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox and images, how to change busybox based on image component added
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
X-List-Received-Date: Sat, 10 Dec 2016 21:01:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 10, 2016 at 9:48 AM,  <richard_allen@keysight.com> wrote:
> I am trying to remove the udhcp( client / server) components in busybox w=
hen
> I include =E2=80=98connman=E2=80=99 in my image.
>

usually busybox applets are used as fallbacks to fill in the blanks
and if there is
other package providing a given utility then its chosen to provide defaults=
.

look into meta/classes/update-alternatives.bbclass for setting
priorities which are
not default.


> I have a busybox_%.bbappend which will
> SRC_URI_append =3D " file://no-uhdpc.cfg"
>
> no-uhdcpc.cfg
>
> CONFIG_UDHCPD=3Dn
> CONFIG_UDHCPC=3Dn
>
> Hitting serval issues:
> -) need to do a bitbake -c cleanall busybox for busybox to be recompiled
> with new configuration
> -) need to do a bitbake -c clean core-image-minimal so a new rootfs will =
be
> generated with the busybox ( new compile of busybox does not appear to
> trigger a new rootfs creation)
>
> Note: I tried just using
>
> PACKAGE_EXCLUDE +=3D  " busybox-udhcpd busybox-udhcpc "
>
> to keep from having to change busybox configuration , but still end up wi=
th
> some of the udpc in the final image.
>
> ./sbin/udhcpc -> /bin/busybox.nosuid
> ./usr/lib/opkg/alternatives/udhcpc
>
> grep: image-files: Is a directory
> image-info.txt:PACKAGE_EXCLUDE =3D busybox-udhcpd busybox-udhcpc
>
> Appears that busybox does some installation based on the actually setting=
 of
> CONFIG_UDHCPC and CONFIG_UDHCPD
>
>
> FInally, I would like the busybox append to only change if =E2=80=98connm=
an=E2=80=99 is
> present
> In local.conf, add =E2=80=98example
>
> IMAGE_INSTALL_append =3D " example"
>
> In example.bb have
> RDEPENDS_example =3D " connman"
>
> So in busybox_*.bbappend
>
> I thought this would work (but seems to be ignored)
>
> SRC_URI_append_connman =3D " file://no-uhdpc.cfg"
> #SRC_URI_append =3D " file://no-uhdpc.cfg"
>
> But need to use
> SRC_URI_append =3D " file://no-uhdpc.cfg"
>
> to have the cfg added.
> also tried
> SRC_URI_append_pn-connman =3D " file://no-uhdpc.cfg"
>
> How best to get a busybox configuration changed based on installation of =
a
> package?
>
> Thanks
>
> Richard C. Allen
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

