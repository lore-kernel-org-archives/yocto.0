Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91E3DE00C1C; Wed,  7 Nov 2018 01:44:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB81E00C19
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:44:03 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id b203-v6so15130445wme.5
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 01:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=k/WVmgand38ecMnxNCKAkbX7QE/+eoW5yZEQnkZ/V0w=;
	b=EeZur8z5SQ89xnLXoD+cbnaAVdH8qwMWsW4Kvn0OkRNNe0xvLII9PEXNOFkzWaldg0
	e3rwHyc5Bmv/gm5+hVkSzSKNb2BPkax2mX2uHw+qooUt5m4QlByeZdiXBJWjCzw78cB7
	IjMzEE+bgP5OBd8jMxbgQuRIJyQJfwMEyGIXgUw2wTWfxidzzVdVQdNj1iDrN3rIfa9J
	G5600yONbw9gFRI7NujeAKYP/AbcZndBQxi3vKhR9cEzyV4KU5OYiDC6L8Er6WjKjNId
	pYJHxucnUmtJ9QYgte6C+8d2ueMmof49j2E3mgMrj0ZDgov8WCuEsjFSWmNUL7Oy9GAV
	YGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=k/WVmgand38ecMnxNCKAkbX7QE/+eoW5yZEQnkZ/V0w=;
	b=MePgVHrC90HVspYRvQdhsnhK1z6WJ6cxZBNi03f/7yLNdH2Z8x29W6yM9+i9MfujZh
	ilgJiMnqAgxtZ3WRwVemdrCVlzGu3GqDXEUk8c2rURR18LVVQWkOckNTZeaNKWUD4hgs
	snGQYPfe+C6czeFAqYdT6PgTWNaC/4nRJXL4yh2al4w1cZGDS4aGpZkODYRJ+Ut9GuYo
	KF0WCT5CsH73WnNgpbs4xIaeBmLPgSvIwjE7tXWlwbEr2yEOSoaVdOve1QBJXCYwgbud
	cbK1/DibQcADAgr3VBvyQiBVyQxj8ykD85TvhqUN5gNW2/N1BsaruyRXcD4EVz0iwGbc
	VVlw==
X-Gm-Message-State: AGRZ1gIZPyfNAPhIztNYwvvNryJDklT5C8XGqn6A5Fv056SJCUGTM9k+
	aMvLmaITt96tga9CjZXzZUMmU5JNbaR2WUnZi38=
X-Google-Smtp-Source: AJdET5cwNFNGjacCwPRGsn4/6shmgubqQAx55x+pnHIqg0EmzOUTAMZEZFE0I4EWumXWfOLNYh5Y6o9O1TuZGqiDzyc=
X-Received: by 2002:a1c:1792:: with SMTP id
	140-v6mr870265wmx.117.1541583842701; 
	Wed, 07 Nov 2018 01:44:02 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
	<CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
	<CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
In-Reply-To: <CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Wed, 7 Nov 2018 10:44:01 +0100
Message-ID: <CAFd=ocgqbG=_Ff49BPHMFG=wxKt+TcdKQy1hY3CgzHJPYan3nQ@mail.gmail.com>
To: outbackdingo@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Problem with adding udev rules
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
X-List-Received-Date: Wed, 07 Nov 2018 09:44:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have resolved this issue. My problem was that in my layer I have a
recipe-core and within that I had the following structure
udev/udev-extra-rules and udev-extra-rules.bb file and a files dir on
the same level.

By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules it
suddenly worked.

Regards,
Markus

On Tue, 6 Nov 2018 at 14:06, Outback Dingo <outbackdingo@gmail.com> wrote:
>
> On Tue, Nov 6, 2018 at 11:57 AM Markus W <markus4dev@gmail.com> wrote:
> >
> > Hi!
> >
> > I want to append the rules in the
> > recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below from
> > within my own recipe. I can=C2=B4t figure out how to do that.
> >
> > I have tried to add those rules as separate rules file in a recipe in
> > my own layer. After the build I can see that the rules file is in the
> > correct directory /etc/udev/rules.d (next to 99-com.rules) but the
> > rules didn't get applied. The groups below I have created by
> > inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi; -r i2c;
> > -r gpio") in a different layer with a higher priority than the layer
> > with the rules recipe.
> >
> > Not sure why this is not working. Any suggestions?
> >
> > 90-interfaces.rules file:
> >
> > SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
> > SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
> > SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
> > SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"
> >
> > SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
> > SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
> > chown -R root:gpio /sys/class/gpio && chmod -R 770 /sys/class/gpio;\
> > chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
> > /sys/devices/virtual/gpio;\
> > chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
> > '"
> >
>
> might help to post the recipe used.....
>
>
> > Regards,
> > Markus
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

