Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB4CFE009AA; Wed,  7 Nov 2018 03:59:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB55EE00720
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 03:59:35 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id b203-v6so15541794wme.5
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 03:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nDOwhsR4/tl1RNdJWieJQvabPlx2BC+xe45aK8eBoy8=;
	b=moFzAMBnhdFk0WWk4PtkKgXGK2oE7gPsT+DNu50Joo+c4BxVjQsql7H+4xAQTc5bYG
	zc5ExAGA1jHahVZ0qYVKaINZ6IzrPZJMwvsXwIsLmdOUgkAp7NoXX+1Bej9RHO6iq1z+
	b+HML34us2/8gkCiTiaeUqhs/UUEJIRvGVmM+K+EBPilJnqLUeG2+j6KbiKZxcy91Hf3
	gKTLdu+437pJgQcAvFnvQ0QuO4T8I7MWSHZL+d5qLdwz+bvPZTtKZr/Nc41WXpHZYoVV
	k5OWv/XfyYPWmMtnOCk0GotF8Ux/8Igyg7z8Q0x2PardPHMpLp/olG3JL5lheIUw+wxL
	XUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nDOwhsR4/tl1RNdJWieJQvabPlx2BC+xe45aK8eBoy8=;
	b=OtXJy4C1SdjyUNGSAyU3+esZV1FJhC19/glurqXT09M/XptlOFsunocSzEH9bioHRC
	TY8lQZXN7PjErAQZiOdwXx1hgKs8nc7vrgZ5+nujoWznMofSmzrF1n4GZSfzqBU3VfTB
	DrdWl7Sm5yP1klRKxP2PqFDKA+kE6v7h9uzAsI5/lMwuWCCvKUzcjIu2FJ27PjODGxnM
	5qtBT0gDq9VoPNkTqR90nQOESoUO4NN4dipBPjvGvGTHBFcoDdqLnaYpzr+do2hcolXK
	KP7RuCGTwOXuG54xmU+UpB/0ubsQ0CjiIQkM+Yw1scvbWO3lxN1tUgYT4TSeC2Rkdhnt
	W8Zg==
X-Gm-Message-State: AGRZ1gIRuEPh2j+RfnH+YuObxyg8LqhpfSoNdwv83p9AAmX5hUQep4va
	QEXnVwq2Rs35nqBI90CdmgFZUSqZX7e9C+SZXlQ=
X-Google-Smtp-Source: AJdET5d+HWUuewv0OpuJrEznSgpKPW7dnnkf8lqHnIP1iRjb3zL2S3SaYseYU+Zfh1uOzAdDTXLOF6bFS4sXlxzDCQg=
X-Received: by 2002:a7b:c0cc:: with SMTP id
	s12-v6mr1864486wmh.39.1541591974628; 
	Wed, 07 Nov 2018 03:59:34 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
	<CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
	<CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
	<CAFd=ocgqbG=_Ff49BPHMFG=wxKt+TcdKQy1hY3CgzHJPYan3nQ@mail.gmail.com>
	<CAKYr3zw7aPNR0KvD+Ym5JPG6b3+GRhZm0R==eSu410y2zpA8hA@mail.gmail.com>
	<CAKYr3zzDbGptzGwWe5nrZ__+C-XdjEAUTVAqyvVU0tgythzO7w@mail.gmail.com>
	<CAFd=ociMVxtmLLJe3rpxpVnqOXkaVRXzstzSoOsnUqz-MBXUrQ@mail.gmail.com>
In-Reply-To: <CAFd=ociMVxtmLLJe3rpxpVnqOXkaVRXzstzSoOsnUqz-MBXUrQ@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Wed, 7 Nov 2018 18:58:58 +0700
Message-ID: <CAKYr3zyntyR6-sVaMaJjoxECSfmW4Oh75QsXuV8imdGRHRWw3w@mail.gmail.com>
To: markus4dev@gmail.com
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
X-List-Received-Date: Wed, 07 Nov 2018 11:59:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

couldnt this have been a udev_append.bb

instead of writing your own my-rules
On Wed, Nov 7, 2018 at 6:46 PM Markus W <markus4dev@gmail.com> wrote:
>
> This my bb file and than I have added the following to local.conf IMAGE_I=
NSTALL_append =3D " my-rules ...".
>
> SUMMARY =3D "My rules"
> LICENSE =3D "CLOSED"
> PR =3D "r1"
>
> SRC_URI =3D "file://90-interfaces.rules"
>
> do_install[nostamp] =3D "1"
> do_unpack[nostamp] =3D "1"
>
> do_install () {
>     install -d ${D}${sysconfdir}/udev/rules.d
>     install -m 0666 ${WORKDIR}/90-interfaces.rules ${D}/etc/udev/rules.d/=
90-interfaces.rules
>
> }
>
> FILES_${PN} +=3D " /etc/udev/rules.d/90-interfaces.rules"
>
> PACKAGES =3D "${PN}"
> PROVIDES =3D "my-rules"
>
> Hope this helps
>
> /Markus
>
> On Wed, 7 Nov 2018 at 12:41, Outback Dingo <outbackdingo@gmail.com> wrote=
:
>>
>> so curious, as im trying to add 2 udev rules also that i require in my
>> build, so how was your recipe configured?
>>
>> mine keeps telling me i have a conflict between packages as they both
>> install files to the same name and same place
>> On Wed, Nov 7, 2018 at 4:53 PM Outback Dingo <outbackdingo@gmail.com> wr=
ote:
>> >
>> >
>> >
>> > On Wed, Nov 7, 2018, 16:44 Markus W <markus4dev@gmail.com wrote:
>> >>
>> >> I have resolved this issue. My problem was that in my layer I have a
>> >> recipe-core and within that I had the following structure
>> >> udev/udev-extra-rules and udev-extra-rules.bb file and a files dir on
>> >> the same level.
>> >>
>> >> By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules it
>> >> suddenly worked.
>> >>
>> >> Cool
>> >>
>> >>
>> >> Regards,
>> >> Markus
>> >>
>> >> On Tue, 6 Nov 2018 at 14:06, Outback Dingo <outbackdingo@gmail.com> w=
rote:
>> >> >
>> >> > On Tue, Nov 6, 2018 at 11:57 AM Markus W <markus4dev@gmail.com> wro=
te:
>> >> > >
>> >> > > Hi!
>> >> > >
>> >> > > I want to append the rules in the
>> >> > > recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below=
 from
>> >> > > within my own recipe. I can=C2=B4t figure out how to do that.
>> >> > >
>> >> > > I have tried to add those rules as separate rules file in a recip=
e in
>> >> > > my own layer. After the build I can see that the rules file is in=
 the
>> >> > > correct directory /etc/udev/rules.d (next to 99-com.rules) but th=
e
>> >> > > rules didn't get applied. The groups below I have created by
>> >> > > inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi; -=
r i2c;
>> >> > > -r gpio") in a different layer with a higher priority than the la=
yer
>> >> > > with the rules recipe.
>> >> > >
>> >> > > Not sure why this is not working. Any suggestions?
>> >> > >
>> >> > > 90-interfaces.rules file:
>> >> > >
>> >> > > SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
>> >> > > SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
>> >> > > SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
>> >> > > SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"
>> >> > >
>> >> > > SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
>> >> > > SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
>> >> > > chown -R root:gpio /sys/class/gpio && chmod -R 770 /sys/class/gpi=
o;\
>> >> > > chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
>> >> > > /sys/devices/virtual/gpio;\
>> >> > > chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
>> >> > > '"
>> >> > >
>> >> >
>> >> > might help to post the recipe used.....
>> >> >
>> >> >
>> >> > > Regards,
>> >> > > Markus
>> >> > > --
>> >> > > _______________________________________________
>> >> > > yocto mailing list
>> >> > > yocto@yoctoproject.org
>> >> > > https://lists.yoctoproject.org/listinfo/yocto

