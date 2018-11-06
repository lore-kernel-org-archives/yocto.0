Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A984CE00AD1; Tue,  6 Nov 2018 05:06:35 -0800 (PST)
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
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DACE00A9B
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 05:06:34 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id 74-v6so13394441wrb.13
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 05:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=77j5Lch9tZSFU50ALF5Xj39+awcyUj0jJuezcTZXNXs=;
	b=PEwny2wJNEU71Pat6jiQ9wLgKO9svySb2RlDAA75/VPwC7BKWOX4d/A0x0GN+sDzDO
	Y39d28A34ZimtwZOsRt2c4jO/yHWAXz0ieqVupoRHSpn3F/FGZJJ6D9PSW+m8gCrrE6l
	zF9QuIB8ziNCUUpSy1RSYqMcy6U78VAfPVpTT1s9Lgi2wxF/aTDUQsyc4ZpBI+gi5j8z
	yUC8iWhqkZYOJdkICj5ETFKZyI9HGnaeoyjl+q/j+acI5DvSz12xW/078WjmXjUPUkiS
	xhj6fq/4J91p33OozlDRBusu/I9/qg/YylA2Ch0Qp03vGJ9cxL5nR3aN3YeUWK9pkv/4
	BEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=77j5Lch9tZSFU50ALF5Xj39+awcyUj0jJuezcTZXNXs=;
	b=SVb9tgOo/YWwXK8/3GnxF0cGkF12MSyORAZNUaQpET8zaw/Vg3AWvDwk4zY38xSq4b
	90vscwZHGlQGAYjUE3Z3MvpZiIp8RKwIljjMPyiAKLej9QxyVsjRYUnAiqSHBBIs1mHi
	WB1Ogv8jfzTjHlyV27rLt8nMnDaHhOPRGitNHbZFUndDF6GtMW+XZ9gxML/NBIjI1LcL
	5luYY92qmi2zVJCSk3zW+ii+c+oJ1YKtTa/V0B7B3PPcycoOhHENPRR8RPp98zsMMP9g
	Me2eTj6KcOOxl4421HcyIkN0dG60Sv4PbjQF7hIejOwubxFVzrcth1eRojAzdYhlWw/5
	uSDg==
X-Gm-Message-State: AGRZ1gJCXO4deKY2QX76yb3eAVtY2ZfMXMEtI6UoSXc1hlsv6315er6g
	VGNmdBrh0/ARjLo0A0hWeAg1RuvnzGod5TaSS1A=
X-Google-Smtp-Source: AJdET5cgeqSoUUgUAJbF1+ZL43E9Jiz3DaoM07uV7N19v2jAcBl46+qaazSoRG1s8oQ72vEQ6/5YKPiL5+nWKxB5If4=
X-Received: by 2002:adf:b6a8:: with SMTP id
	j40-v6mr21823678wre.55.1541509593191; 
	Tue, 06 Nov 2018 05:06:33 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
	<CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
In-Reply-To: <CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Tue, 6 Nov 2018 20:05:56 +0700
Message-ID: <CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
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
X-List-Received-Date: Tue, 06 Nov 2018 13:06:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 6, 2018 at 11:57 AM Markus W <markus4dev@gmail.com> wrote:
>
> Hi!
>
> I want to append the rules in the
> recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below from
> within my own recipe. I can=C2=B4t figure out how to do that.
>
> I have tried to add those rules as separate rules file in a recipe in
> my own layer. After the build I can see that the rules file is in the
> correct directory /etc/udev/rules.d (next to 99-com.rules) but the
> rules didn't get applied. The groups below I have created by
> inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi; -r i2c;
> -r gpio") in a different layer with a higher priority than the layer
> with the rules recipe.
>
> Not sure why this is not working. Any suggestions?
>
> 90-interfaces.rules file:
>
> SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
> SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
> SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
> SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"
>
> SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
> SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
> chown -R root:gpio /sys/class/gpio && chmod -R 770 /sys/class/gpio;\
> chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
> /sys/devices/virtual/gpio;\
> chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
> '"
>

might help to post the recipe used.....


> Regards,
> Markus
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

