Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9642E00DFE; Wed,  6 Nov 2019 13:24:17 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FCFE00E07
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 13:24:16 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id p59so58882edp.7
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 13:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/21BI/Te/kDPYsCIc594Hp1Uh3XqjkOW2PrZ2o0IdB4=;
	b=luWQ7omkca+1scFlTupGT/in1uquSVQrsi1YBrCiRTfE9V4N9prHeKQMJ2PTgBwQNm
	rk4gHltqJUIG51n/h9nkEUuiTvAeWMnTokHBU/4+DtTEhanKU/H4bU8fYiYR/ACPlM/O
	xT5ZcpxPj5DlI1jhl5GrtoW/zZRqc5C5T3Byygeto7IcMNh6fglSQvocIfqEH0XEVJNk
	9l0aE08kNDvrtSnGBDa5GOVmj+YYTG4UBFVQ8ERjk0iSOO6w2Zkg3n+uRj4CUx2N+O7a
	83hK7tsGpJVn+9/c7rn9ZqRn2qMyaUkHo6pAnJzsO69XkPo5JoZ8Rnq4LDxiZfDg2bbf
	TAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/21BI/Te/kDPYsCIc594Hp1Uh3XqjkOW2PrZ2o0IdB4=;
	b=IvKhQvn/YH2Hz1ysApW0gyceNkAo+E6tDtczVaVWxLy1SETdpGBFkRQtRFntTj6IrX
	yns9WazbdKibaOPG3YFhDJef7wN1BHNmTaxiwcY+FaeN+WI1eTn64shJivEGwIwrV8Ki
	SGvVRn/4Bv53PN+ih0U/6N8TK+R5uMFutnAKIV+m3tIGZ7By7CYQyjbcuWd0rNvzQJbQ
	Do/0UkQFw4hqxBZ78UH/ls9Gw2uib3zirVRzMt2oYdaWcGdvMeuudCF89JSO5Ns7ykJr
	GOi/eq7MeO+vege/xhvWIFltVkUwRgbSvf23P/qokadCVVww9uDx6DP6AvM9xQbD7eQ2
	fe/w==
X-Gm-Message-State: APjAAAWM0SLYfBUq2JBBkoCWNwJi2P5PrhaXjGZVSZjuB/1IE437zSU+
	7X1ZyKi+jf6jXwgO4kAq9RZIE6eKtMiOnMkMtZ4=
X-Google-Smtp-Source: APXvYqwwEP+xGyrhkIdeMc4P2OJanyZKcR0ZvlJxCvG7K8UcQ7hksaLJlzf31G4V5q5EEfzF7AIIx3kuinI8/9gq/+w=
X-Received: by 2002:a17:906:a457:: with SMTP id
	cb23mr23634426ejb.191.1573075455170; 
	Wed, 06 Nov 2019 13:24:15 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN0f4eSrq8zjcOU1gdvv9QfMNCx=d2AXHdheCJq1se8SOg@mail.gmail.com>
	<CADkTA4MWsXbFPbu2FKN5noOGijuepkde7R6nQtbOUJve6DQR8w@mail.gmail.com>
	<CACKFPN12283c=hvC8dkf-Rx4ZLbhpUgKU03EwRRA+khHEBJg3g@mail.gmail.com>
In-Reply-To: <CACKFPN12283c=hvC8dkf-Rx4ZLbhpUgKU03EwRRA+khHEBJg3g@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Nov 2019 16:24:04 -0500
Message-ID: <CADkTA4N2ek34q2daowjjFNiS84QFcCa5Tg9xxT3AxKbsX4OgOA@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Kernel modules packaged but not installed
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
X-List-Received-Date: Wed, 06 Nov 2019 21:24:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 6, 2019 at 1:40 PM Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> Hi Bruce,
>
> I've also tried adding the `kernel-modules` in the IMAGE_INSTALL,
> but that doesn't help either, because as I've mentioned this package
> is empty.
>
> The individual module packages are indeed populated and adding each
> one individually in the IMAGE_INSTALL makes them install in the final
> image.
>
> So the problem is that the `kernel-modules` doesn't add all the module
> packages in one package and it's empty. Therefore, when it's installed
> it installs nothing.

The kernel-modules package is a meta-package. It is supposed to be
empty. It has RDEPENDS on all of the other modules that were built. So
if you install it, it pulls in all of the build and packaged modules.

That works for rpm/ipk, or whatever package format you are using.

Bruce

>
> Regards,
> Dimitris
>
> Bruce Ashfield <bruce.ashfield@gmail.com> schrieb am Mi., 6. Nov. 2019, 17:20:
>>
>> On Wed, Nov 6, 2019 at 11:06 AM Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>> >
>> > Hi all. I have a weird issue with the kernel modules not being installed in the image and also not packaged.
>> > I see the packages for individual "kernel-module-*.ipk" modules but the "kernel-modules_*.ipk" is always
>> > empty.
>> >
>> > I'm also able to see the "modules-${MACHINE}.tgz" in DEPLOYDIR which has all the modules in there, just fine.
>> >
>> > In my image file I've also set this:
>> > MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>>
>> Have you tried something stronger than the RRECOMMENDS ? i.e. either
>> adding one of the modules, or the kernel-modules meta package to
>> IMAGE_INSTALL ?
>>
>> Bruce
>>
>> >
>> > This is the kernel recipe:
>> > https://gitlab.com/dimtass/meta-allwinner-hx/blob/master/recipes-kernel/linux/linux-stable_4.19.bb
>> >
>> > And this is the conf folder
>> > https://gitlab.com/dimtass/meta-allwinner-hx/tree/master/conf
>> >
>> > For some reason I can't figure out why modules are not ending up in the image.
>> >
>> > If I do it manually in a do_install_append like this:
>> > do_install_append() {
>> >     # Install kernel-modules
>> > install -d ${D}${nonarch_base_libdir}
>> >     oe_runmake INSTALL_MOD_PATH=${D} modules_install
>> > }
>> >
>> > then it works, but I guess that shouldn't be the right way.
>> >
>> > Any suggestions or ideas?
>> >
>> > Thanks!
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

