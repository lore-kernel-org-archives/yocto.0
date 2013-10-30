Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D026BE017AF
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 05:27:19 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id u14so1154339lbd.29
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 05:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=55FgURuYsYtvbVHqt0b7yWE5x4HrPAfLiz38U+aK4No=;
	b=0JEsiRviNzL7J4rFrtUBsiJlepsitzOkDVa2ARMBLyth7oKPS2Y/CLkSSj4G9Mokr+
	F4u5iYDe808PwjGDK5Mc2kh2cpq/S71oavJcKwxAIS9bwY68XSFd9k59/qWMnpoY0SKL
	TCBh2c7kIhel753kv6KoSBVq1w7p5T/uqoX1eYn3ljyc4v3dtyZ8cclh0WLcKZaJwvMK
	NCgou2pJhyKnEu2qeGKkfy8Zts7cNAQqX4R7VI6mKkZn7mqK29AoG8UgqGhBVfSNeXzP
	dX0MnDbR/+TuLH08PsuO9eLGC40qkNm1+33uje9hlD9z3AsEbRd/dk+3QThexJRfivv9
	kyxQ==
MIME-Version: 1.0
X-Received: by 10.112.130.6 with SMTP id oa6mr23398lbb.62.1383136038486; Wed,
	30 Oct 2013 05:27:18 -0700 (PDT)
Received: by 10.112.14.200 with HTTP; Wed, 30 Oct 2013 05:27:18 -0700 (PDT)
In-Reply-To: <5270BBDF.8040905@linux.intel.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<5270BBDF.8040905@linux.intel.com>
Date: Wed, 30 Oct 2013 08:27:18 -0400
Message-ID: <CADkTA4OtaOs-D_hOXL7UrjDaeaSW_sWANdLWSMW+2CjRd=5ubw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
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
X-List-Received-Date: Wed, 30 Oct 2013 12:27:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 30, 2013 at 3:57 AM, Jukka Rissanen
<jukka.rissanen@linux.intel.com> wrote:
> Hi Diego,
>
>
> On 16.10.2013 00:07, Diego Sueiro wrote:
>>
>> Folks,
>>
>> I created the following bbapend recipe for linux-mainline_3.8.bb
>> <http://linux-mainline_3.8.bb> (from meta-beagleboard on dylan branch)
>>
>> for beaglebone.
>> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>>
>>     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>     SRC_URI += " file://0019-mine.patch \
>>                   file://defconfig \
>>                   "
>>
>> But the defconfig and .config files on ${S} and ${WORKDIR} used are from
>> meta-beagleboad, not from my bbappend.
>
>
> I did this like this in
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/meta-eca-bsp/recipes-kernel/linux/linux-mainline_3.8.bbappend
>
>
> FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"
>
> # netfilter stuff is missing from beaglebone kernel
> SRC_URI_append_beaglebone += "file://netfilter.cfg"
>
> do_configure_append_beaglebone () {
>         for i in ${S}/../*.cfg; do
>                 echo "Adding ${i} to ${S}/.config"
>                 cat ${i} >> ${S}/.config
>         done
>
>         yes '' | oe_runmake oldconfig
> }
>
>
> Seems to work just fine for me.
>

But that's *really* not the point.

Having configuration fragments applied and managed is more than a brute force
concatenation of the contents, letting lkc do what it wants to them,
without reporting
and control is what

There's something in place, that already does this and more, which has
the ability
to scale to more complex cases.

What I'm trying to understand is what exactly is different in Diego's
setup, since
the exact cases reported here work fine for me, Andrea and any number of other
people. Something strange is going on.

We need to be patient and work through this, so if there's a bug in the already
available infrastructure, we can flush it out :)

Bruce

>
> --
> Cheers,
> Jukka
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

