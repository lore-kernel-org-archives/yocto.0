Return-Path: <andrea.adami@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AE4CE0170D
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:55:07 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id y6so37047lbh.21
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Tc4s+DBKIQ2chMc4QsUH/t8uV0rxTnY9rhsYgr4GKHE=;
	b=QXZ1+CrE8GbFlVb60XK7yr8xud0V+HAkpxhV4pvEncIsHqnLUMknnxxk62jT0dbjb8
	0+HpA5l4g8AEtdwu0/f/NlQCVB6OVyjBocFKoQ0FM0Z4N5nl37q5rwWNkVm6lMNdMOSk
	a/Oh9KnktkcoErO6HXQ4/f+RcDOsGIdbBOWBQj5863klxpWokBnx9M8c7DQP7MzuhId6
	lsDQoEBwSO63YsNPZmhP/NvA/QZowjsViL4hNHGti6RznGN/wEOkh+MX3lf6UqDizMkC
	yAIyEhD+iFk3D8tpcWm5nX9yNKoD2zs7KC7Hj4AqMf6N0EqWJg96EdehaNqocmljtUJg
	J4eQ==
MIME-Version: 1.0
X-Received: by 10.112.51.166 with SMTP id l6mr34658lbo.5.1381874105950; Tue,
	15 Oct 2013 14:55:05 -0700 (PDT)
Received: by 10.112.52.74 with HTTP; Tue, 15 Oct 2013 14:55:05 -0700 (PDT)
In-Reply-To: <CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
Date: Tue, 15 Oct 2013 23:55:05 +0200
Message-ID: <CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Tue, 15 Oct 2013 21:55:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I guess you're setting a wrong FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

See this example, using simple defconfig for some devices and an
experimental configuration (WIP ;) fo others using fragments.

http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/linux-yocto_3.10.bbappend

Cheers

Andrea


On Tue, Oct 15, 2013 at 11:49 PM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> Diego,
>
> You are appending a kernel recipe that uses the Linux Yocto tooling. The
> defconfig is essentially comprised of many different pieces from the meta
> branch of the Yocto kernel repository and optional configuration fragments
> that you provide. This tooling will not recognize a defconfig file you
> provide but it does recognize configuration fragments to be added to
> .config.
>
> You need to put
>
> CONFIG_WATCHDOG_NOWAYOUT=y
>
> into a file that ends with .cfg eg. watchdog.cfg and then modify your
> bbappend to
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI += " file://0019-mine.patch \
>              file://watchdog.cfg \
>              "
>
> Rudi
>
>
>
> On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro <diego.sueiro@gmail.com>
> wrote:
>>
>> Folks,
>>
>> I created the following bbapend recipe for linux-mainline_3.8.bb (from
>> meta-beagleboard on dylan branch) for beaglebone.
>> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>> SRC_URI += " file://0019-mine.patch \
>>              file://defconfig \
>>              "
>>
>> But the defconfig and .config files on ${S} and ${WORKDIR} used are from
>> meta-beagleboad, not from my bbappend.
>>
>> I tried to follow the instructions to add config fragments on the page
>> below but it did not worked too.
>>
>> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configuration
>>
>> The strange thing is: My patch is applied but my defconfig, or config
>> fragment is not used.
>> I just want to add CONFIG_WATCHDOG_NOWAYOUT=y.
>>
>> I already did a cleasstate but no success.
>>
>> Any hints?
>>
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> /*long live rock 'n roll*/
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

