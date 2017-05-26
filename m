Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC42AE00B01; Fri, 26 May 2017 09:20:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E07F7E00826
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 09:19:59 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id e127so25345610wmg.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 09:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NL2so0VN8UYxdBbbt8gl5izy4IshhKYcK9TqcFlUqlk=;
	b=endzpQG/ohge6l8cWez1QnFAXVr0zWD4MecsgtylOTvM8fM2XkfpH+tSH9R1mRrM4+
	CmgnBrOENIvwGnRrCXstofsGtzBhtkk5U/Das1VWNp8ljkbprYQtxpyu5xD8kjbB7Uon
	0aYu6K2dUOHfIiPVZ9lInO+KKqRoBtffpKB1iNs7N3WAcI7MfxO2lgMWFQZwSF++YVVE
	RpmkS9MNA3RV+d8AzLrtPLMmC+iZOoBtgZAYPfc4Ckqt3Oas5dJPlvAWZM0rmhae2C33
	uTOCBMPNgppDrDsIN+ZyM3bd7pBGw/hasTHFnktBVwnSpjcWVOOF3MXkJLLFhiAurSsT
	Fv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NL2so0VN8UYxdBbbt8gl5izy4IshhKYcK9TqcFlUqlk=;
	b=EP3JO8DrBDJvPxdhLoceGEQgW306fW9lwhv3mOm275Tjck5ID3vFtX5EUWNdarg9hV
	yY5HkhBQaFiEtMlVbq1S4NbzyC+PjH13M6fTAq3wLmk0noQy+ivd94uqj0IpjJJNCira
	TpST9MYq0okYbhEjrr7KoamDL88tEmYpaZCp6Oq4hchegRpQoQZa6Cp6qqVlDSr6nqsF
	F/Pcp8y6bXJ4oMvOCiJlZg2+t8CrvnxpGTdpdgm9feGNFjaXc9wvmrjfGq5Ltzu8BVSS
	jJfKVNn+LwyJxTdO5ndG3SFKXYHobyi8d/+4sssjS9YWvNU0KtGPTDy8NceZGOze7qjn
	22BQ==
X-Gm-Message-State: AODbwcDgBa5FJGYg1h2XD6MWdUN+6VsaWuMGZVjzWi42liyfDU4RyfB6
	/XSEY+XrVJWPwvAVBeyGaAhmfA2fiA==
X-Received: by 10.80.180.155 with SMTP id w27mr2976728edd.42.1495815598617;
	Fri, 26 May 2017 09:19:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Fri, 26 May 2017 09:19:28 -0700 (PDT)
In-Reply-To: <CAK18fxHPsQ9XUZq1v3cZ0MymeNA9t+dUhcvtV==XTHF-i6RFnQ@mail.gmail.com>
References: <CAK18fxHPsQ9XUZq1v3cZ0MymeNA9t+dUhcvtV==XTHF-i6RFnQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 26 May 2017 09:19:28 -0700
Message-ID: <CAMKF1sreUL-JNJ7jR-1enGtwyNQU0y+W2sCx1JWBs5E7kgT+8Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Very strange issue where bitbake hangs at do_rootfs
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
X-List-Received-Date: Fri, 26 May 2017 16:20:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 26, 2017 at 5:52 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hello all,
>
> I moved recently on a new arch linux host and everything works fine with one
> exception: when I build a custom distribution based on morty with many
> packages including kernel-modules (beaglebone), the build system hangs
> without any details. I hooked into package_manager.py RPM install and
> streamed output from `process = subprocess.Popen(cmd.split(),
> stderr=subprocess.STDOUT, stdout=subprocess.PIPE)` and it seems that it
> hangs in different places every time. Output example:
>
> ---
>
> Result of kernel-module-industrialio-sw-trigger postinst: 0
> debug: Processing
> kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone in
> /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/beaglebone/kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
> 1428:Installing kernel-module.. ######################################## [
> 55%]
> Output from kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone:
> Executing kernel-module-lm8333 postinst with: /bin/sh
> /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp.76459
> 1
>
> # kernel-module-lm8333 - postinst
> #!/bin/sh
> if [ -z "$D" ]; then
>         depmod -a 4.4.55+
> else
>         # image.bbclass will call depmodwrapper after everything is
> installed,
>         # no need to do it here as well
>         :
> fi
> Result of kernel-module-lm8333 postinst: 0
> debug: Processing
> kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone in
> /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/beaglebone/kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
> 1429:Installing kernel-module.. ######################################## [
> 55%]
> Output from
> kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone:
> Executing kernel-module-tca8418-keypad postinst with: /bin/sh
> /work/resin/resinos/resin-beaglebone/build/tmp/work/beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///oe_install/tmp/rpm-tmp.76459
> 1
>
> ---
>
> If I don't install kernel-modules build succeeds.
>
> Any hints on how to debug this further? I can't seem to find anything
> relevant in smart output.
>

yeah rolling ditros are always intesting when you want to build fixed
releases from past.
one of things that helped me in past was to pin python3 to 3.5 but a
clean reinstall of arch
I got that problem solved automagically

