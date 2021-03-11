Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
 by mx.groups.io with SMTP id smtpd.web11.2159.1615439028514256663
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 21:03:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QHZ7VYO1;
 spf=pass (domain: gmail.com, ip: 209.85.166.173, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f173.google.com with SMTP id g9so17830547ilc.3
        for <yocto@lists.yoctoproject.org>; Wed, 10 Mar 2021 21:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=E18tuqnJIYKX3Z9/J2ap8fepDaQeTVWMLWVrUzRPYdE=;
        b=QHZ7VYO14v+arT2zA5z1dZxNuCTgGjmxQHMUwFrEQfL5NAJgepXmviZ7BFm9dhyBfs
         hyYMU1dIOGtGgUgSzNZ6Js9/4H5nG/3kkelP7JM1tcNtsCoUk5igWp/DbuEnHOOlXjHt
         13sUqwTP5LJgZ/4XazDBdfoOmwtq46+qN6MdJnXrngrCeey+JabqT9qxnpUPkEv7MiUb
         nFHCKcQkhBDaRfJ1VmKxib0ifL8pVRm2Hg9m+PoZS1tKsrGHHqAonqkAcIUfTea/sexB
         fmsdW5ACIkn0yJ6ZhvDXbRzno5gd+X4NvR1xVJzZonZ9q5fUTs55GTliYVlDJakqmHH/
         iMSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=E18tuqnJIYKX3Z9/J2ap8fepDaQeTVWMLWVrUzRPYdE=;
        b=k4kgMoFosH4FszHUEgqd/lyTEJknHovVoPf1z8eUJAvGG4fO6MLIDJAeUiUg/neq3h
         OB+F9HIJQY0KNAgVfNvsH7TDuK6x8nMj9sJ8iM3DOwvEu/ofJbW9ji08w/ELR0kvyYBo
         9RLubSymp/1j5FgIg9TNI+xvziym1wOlC0oN6MWf9uIiZQAm0x7J4Pdj46ckR1bTepLp
         yl7QDs3ahehxmD5vzaBSbDhk7EMncqgFNPz3ZhfDnDO35UwcYyWGqkOh+YNxpsaLDXMH
         UDCp+y0VZ9o9mRlbrbFz/ece6Up2fbIKJAUNUQCNtScLGdwZ0+mJ+S1UMhHkCWPUokA0
         +nZQ==
X-Gm-Message-State: AOAM531CBzCvPNpPLDh4Z/xedR4GmDNslPhG6151T0m6gzFJWLi3wBjt
	gHRlJHCnRh2gi9f6ajWVTzco5VH6UNGDA7oE/vo=
X-Google-Smtp-Source: ABdhPJxaCg1OrgSQ4EVzhODBXrABQyRhCSKW+Htq98iG/aQomdFIWxUrfWHNi8jI7nidR8ShziqIRe6+NKClPQLtR08=
X-Received: by 2002:a92:444e:: with SMTP id a14mr5460149ilm.215.1615439027692;
 Wed, 10 Mar 2021 21:03:47 -0800 (PST)
MIME-Version: 1.0
References: <2W3V.1615419137982625968.f4wK@lists.yoctoproject.org>
In-Reply-To: <2W3V.1615419137982625968.f4wK@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 11 Mar 2021 06:03:36 +0100
Message-ID: <CAGAf8Lxw9Rs2YAyemcdzsHQAEGP9aLyRGovJawAaiA_LP6dydA@mail.gmail.com>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
To: p32@tuta.io
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

BBB example:
https://www.yoctoproject.org/pipermail/yocto/2018-July/041696.html

The line:
DISTRO_FEATURES_append =3D " ram"

Should be:
DISTRO_FEATURES_append =3D " nfs"

BSP Traces for BBB (YOCTO Warrior):
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/b=
bb-warrior/target-bbb-platform-traces.txt

And the ash script in the U-Boot supporting above written:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/u-boot.=
ash#L3

Line 3 to 10.

Please, pay attention to line 1 as well!

Zee
_______

On Thu, Mar 11, 2021 at 12:32 AM p32 via lists.yoctoproject.org
<p32=3Dtuta.io@lists.yoctoproject.org> wrote:
>
> Hello everyone,
>
> I am currently using this Yocto-based build setup provided by NXP to cre=
ate a custom Linux distribution for one of the i.MX boards. My custom image=
 is based on the core-image-minimal recipe and works fine, i.e., runs on th=
e platform as expected. However, I have to following two issues:
>
> Although core-image-minimal is documented as "A small image just capable=
 of allowing a device to boot", I can tell from the running system that it =
contains a huge number of components that I think are not be strictly neces=
sary to boot the device. For instance, the boot log contains entries about =
an FPGA manager framework, Bluetooth, Ethernet, KVM, USB, and a lot of i.MX=
-specific modules such as for DMA or power management. For evaluation purpo=
ses, I want to get rid of all of these and end up with a truly minimal Linu=
x system that is able to boot, schedule its tasks, and to communicate via U=
ART. How can I achieve this without losing the i.MX support, i.e., the gene=
ration of a bootloader and suitable device tree files?
>
> Furthermore, I would like the minimal system to run entirely from RAM. M=
ore specifically: After being started from the SD card, U-Boot should start=
 the Linux distribution via initramfs. I am able to generate some kind of i=
nitramfs binary using the following changes:
> # local.conf
> INITRAMFS_IMAGE =3D "recipe-name"
> INITRAMFS_IMAGE_BUNDLE =3D "1"
> # recipe-name.bb
> IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
> PACKAGE_INSTALL =3D "${IMAGE_INSTALL}"
>
> However, this does not affect the generated U-Boot, which means that U-B=
oot still tries to boot from an SD card partition. What is the "right way" =
to make use of the Image-initramfs-board.bin or the image-board.cpio.gz fil=
es that Yocto creates in this case?
>
> Any help yould be greatly appreciated.
>
> Kind regards!
>=20
>
