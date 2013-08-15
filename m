Return-Path: <lschwab@xeralux.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C608E0144E
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 12:02:28 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id b45so549739eek.15
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 12:02:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=mP/s7OrvNjQCtEt1nvj8TjTz6ZrOSoU8Lr0Q2WJfQ/8=;
	b=bUHljoJSCnRsIJuttb/bXyo2SU7O6negRIB/WUEm3SHmj930Rb+sl/S7X1YBrnWetC
	rwePoTaAus92ocxZ/NTl3flekDpHfQxRFTxi6MPX59osY7yuZtAGp97zJooXhv1UwKti
	gbNA7HPXWNr6odenn12clQ4Fl/i6WK7hSoYwf57F7q9iem9K6c7T+aeKTO4fx5WAxIiG
	PQM+kaJlQwyuzY/drzJ3Bbw7S+JR6sH6m9VDId0v1MDw85YnYEQCQYW/L1oLpajI5FeU
	e/nrQyYexJsc+MeoawHbe4XCA4YfqR6wsCOzcoMkVvWJXU3I4Kft/A6f1rFOGG3D9Ooi
	yPpg==
X-Gm-Message-State: ALoCoQl/f1gmZzM/bnboEUZ6xqJ2WyGy3Udcn9Ov914mHl4iCJLuddYViuNVsI62z5t29RoH9CnR
MIME-Version: 1.0
X-Received: by 10.15.23.129 with SMTP id h1mr550766eeu.127.1376593347845; Thu,
	15 Aug 2013 12:02:27 -0700 (PDT)
Received: by 10.14.139.65 with HTTP; Thu, 15 Aug 2013 12:02:27 -0700 (PDT)
In-Reply-To: <520D205C.2060105@linux.intel.com>
References: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
	<520D205C.2060105@linux.intel.com>
Date: Thu, 15 Aug 2013 12:02:27 -0700
Message-ID: <CALb224-nFp88Eq_NqoPUo9pcDJ7KS6ysQbgcKuORPqDH2nUP7w@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
Subject: Re: How Does Yocto Fill In UBOOT_MACHINE?
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
X-List-Received-Date: Thu, 15 Aug 2013 19:02:31 -0000
Content-Type: text/plain; charset=UTF-8

Thank you for replying:

On Thu, Aug 15, 2013 at 11:39 AM, Saul Wold <sgw@linux.intel.com> wrote:
> On 08/15/2013 11:15 AM, Leo Schwab wrote:
>> ...Except I never told it to build 'ourboard'; I haven't modified
>> conf/machine/ourboard.conf yet.  It should still be building
>> mx6dl_sabresd_config.  So UBOOT_MACHINE is magically picking up a
>> different value.  If I remove my .bbappend file, then it resumes using
>> the target mx6dl_sabresd_config.
>>
> But you did indirectly, I have to assume that your default MACHINE is set
> for "ourboard"

Correct.

> and what's happened here is when the bbappend was added, your
> setting of UBOOT_MACHINE_ourboard is an override so it built using that
> setting.
> [ ... ]
> You can see this in action by running a bitbake -e (prints the variable
> contents and how they were determined).
>
Umm...  Actually, no I dont:

---
$ bitbake -e
[ ...blah, blah, blah...]
# $UBOOT_MACHINE
#   set /home/ewhac/devel/iMX6/fsl-community-bsp/sources/meta-belis3/conf/machine/ourboard.conf:12
#     "mx6dl_sabresd_config"
UBOOT_MACHINE="mx6dl_sabresd_config"
[ ... ]

Which is what I expected.

Meanwhile, in the build log
tmp/work/..../u-boot-imx/2009.08-r16/temp/run.do_compile.29091:

----
do_compile() {
	if [ "" = "ld-is-gold" ] ; then
		sed -i 's/$(CROSS_COMPILE)ld/$(CROSS_COMPILE)ld.bfd/g' config.mk
	fi
	if [ "" = "ld-is-gold" ] ; then
		sed -i 's/$(CROSS_COMPILE)ld$/$(CROSS_COMPILE)ld.bfd/g' config.mk
	fi

	unset LDFLAGS
	unset CFLAGS
	unset CPPFLAGS
	oe_runmake mx6_ournode_config   # <---- ?!?!?!
	oe_runmake u-boot.bin

}
----

In the process of reproducing this output, some stuff happened that
makes me think that bitbake's cache is mildly confused.  I'll try
scrubbing it and see if things become more consistent.  I will also
look into the OVERRIDES mechanism.

Schwab

