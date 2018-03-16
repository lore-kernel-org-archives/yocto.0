Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E7BAE00A39; Fri, 16 Mar 2018 11:56:02 -0700 (PDT)
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
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2539E007DA
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:56:00 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id x1so4494864pfh.7
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lgCNJRFAAop/WV8pm+42XzsBVnNUsq5zN6p2Sj/1YXQ=;
	b=of7I/eTDhls8wHV764YZEfP41IYIM3vpQezoLlIlaAunIGJr0yXVtrBvaZU4gnyHn5
	PgfU/jZ/xeMzRjK02uFaA7emCNJzbP/pTwpANT+mBesMMj0eKqR+IJ+NqGEDLJzUickv
	jOH4E5O5H/F3ecfuTEZmWJr/wZzDbkWoENzk+IeNwmCHFn5Tcs0yJ5rGAXsUDJSlrJSk
	5Zjj1oyYc8U3qrKZj8oR+GJFHfGrlPbpb0U0j7EOYJso4B5y8rdblK3k2IEAP2Ra8FTN
	SeNvdLkDfe2xBgnIrDnXDw3janWesxm0M3MiSnxpxXDd5SdXjnOPI08/ecg9bTtAwB4S
	8CaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lgCNJRFAAop/WV8pm+42XzsBVnNUsq5zN6p2Sj/1YXQ=;
	b=LZN+vbdA6fklI/eqq8NkUFYZ1u0PJXaks0xmMtj4rfxW2znN9KzRBaLektqxAjBN/R
	EM1vcJ2o+hlEUaUp+sN/H6ShnqydOPPGNWF5CfJzux9Xxv4mOCmvCNSPGPwpdhg50jPk
	jFdGX+XtA6uP2KA9pf1GALRaDjHRFXzoCz+3Nol/lYUGIShdo4eEMP1svukyAaQyKR1G
	xWPFN5jRm7Ru9EJCnzfa9Y/dtE6ZHpHvAe33+IpqmfpH0XGvUEtzeQUYmd+XnLvqa4A4
	M3+xdAAq3w96od2rDMZhTJmovqcNqi9/YNGfr7y8IVW1nAif8jX3YTtVAYwmeo5cwXLW
	QwUQ==
X-Gm-Message-State: AElRT7Gx54D4/w3nqmxOSxRyNMF14t4s+DvgjzOfM2YFcocu7T6iCf0s
	ol1ycW2kknk0dwbhG8P3A6g3ShUDML1rWVvSSF0=
X-Google-Smtp-Source: AG47ELsmkJP4rdfnORmk9sczwoZrRrvO2hjzZfvDdeUz6Zm8fIhZDwcwiIVXhvwiAXu7SO+VAizvhBwtsGQO00OpEug=
X-Received: by 10.98.229.21 with SMTP id n21mr2443036pff.158.1521226559607;
	Fri, 16 Mar 2018 11:55:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.182.197 with HTTP; Fri, 16 Mar 2018 11:55:29 -0700 (PDT)
In-Reply-To: <e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
	<e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 Mar 2018 11:55:29 -0700
Message-ID: <CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Fri, 16 Mar 2018 18:56:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 16, 2018 at 8:58 AM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>> From: Greg Wilson-Lindberg
>> Sent: Thursday, March 15, 2018 02:16 PM
>> To: Khem Raj <raj.khem@gmail.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>
>>
>
>> > From: Khem Raj <raj.khem@gmail.com>
>
>> > Sent: Thursday, March 15, 2018 1:54 PM
>> > To: Greg Wilson-Lindberg
>> > Cc: yocto@yoctoproject.org
>> > Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>
>> >
>
>> > > On Thu, Mar 15, 2018 at 1:38 PM, Greg Wilson-Lindberg
>> > <GWilson@sakuraus.com> wrote:
>> > > I'm building an RPi3 system that is going to use mysql/mariadb. I've
>> > > got
>> > > everything installed, but mysqld is not starting. install_db.service
>> > > does
>> > > run on startup, but the mysqld.service file never gets triggered.
>> > >
>> > >
>> > > Is there something that I'm missing to get it to run? I've search
>> > > online,
>> > > but can't find anything that pertains to yocto.
>> > >
>> >
>> > poke on the system with systemctl/journalctl to see whats going on
>
>>
>
>> journalctl -u mysqld.service says no entries
>
>> systemctl status mysqld.service shows:
>
>>    Loaded: loaded (/lib/systemd/system/mysqld.service; disabled; vendor
>> preset: enabled)
>
>>    Active: inactive (dead)
>
>>
>
>> I've rebooted the system a couple of times to see if install_db needed to
>> be run before mysql would run, no luck.
>
>>
>
> It's seems that maybe I need to add a bit about my understanding of the
> yocto system. I was assuming that if I included mysql in the build, that it
> would be started when the system powered up. If mysql is not normally
> started automatically that I can do what is necessary to start it, I just
> thought that I shouldn't need to do anything.

Yes you are right. We try to do runtime testing as much as possible and you will
see more and more focus on runtime testing in coming days and months. So far
we have had lot of build related features and stability problems to
work on so chances
of runtime bugs are still a bit higher. You can help in fixing this
issue if you can root
cause it. eg. check in system logs using journalctl for possible
causes of this service
not starting up. Often times you will get a decent hint and we can
help as well on
that information

