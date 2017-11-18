Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63791E00D42; Sat, 18 Nov 2017 01:19:52 -0800 (PST)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C268FE00CFF
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 01:19:51 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id s11so3738028pgc.5
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 01:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d+1YnGJgez0Q93yzd3Tx8LuPyUswfWoPqTgpsAYdOFA=;
	b=tyiAHji8D1/EMFA63ww+j/JS2AVuzAInkZ+kCTYU7k5kc06K9Y9gtGIOkFPwMvKDjR
	/SUEryzTDIUIybtFp6Up4Mro03cXT8tqqXF3DKz35e35ePMBQ0tbQphUyN4QvTZlRWoE
	omA+wEcFBz0dea8a9eUaWNb0OMi9XzAcEo+fgxGT0iRjG3BA3ZLZCcXxGmjUww7Wor91
	yPlWM0cD1dr94r1ZVDbhwZgX2L/lgTMn9EA9vhBtDDxp+D+aQkfduixDB0hU2mGZDCd8
	iLVvNPrDuECfeJNnJUbrsNfgR8eUXodUDIQyofuhmHww3kyXkcaEOMYx2Q5DFCNCmL8L
	A6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d+1YnGJgez0Q93yzd3Tx8LuPyUswfWoPqTgpsAYdOFA=;
	b=LFS9sRRjSd/h7Rl6epCWbh2v4QXRlt0Sf19CjJtv2E6RieCwFj5Luk6poLUgL/Jroy
	7hGpS0jRxtwLl2jLaPFh03nkp8E9e1LRQWhOMQhz/mOBBTYvV0UI8BPn89ubsyT5Lt8I
	vOaD4lM5Zdq1GYo/TrbW42P7Nx3ZuBn7GV2DUvAqAYcrVnLYdJ1xcdGB0wnSQUsBXNQp
	YJW1xqSv9sWvE5sLsJhxXDBh3hVh6K0Oc6gDfZf+UFsh4nnXLn6dnBAt6QfhZtg4Va5Q
	YfUhXPlCc3QPMmfT9/KW4bwPcLphSxfbKy4wt+NKJxGSpK9YEq51m2RJYvV1AYZ7sXCg
	8lPQ==
X-Gm-Message-State: AJaThX5PUjt1wvuxMkp6oAv7SmSTOlbcHtYQ5c1dBmHjLJz9AGVxu87K
	BP9JeWbf+ChEZnvC6aSegOxYBaSDHbfkoJF9SDE=
X-Google-Smtp-Source: AGs4zMZlbv8T6eS63jZjOpNx+uF+C0lMmIvsd0xKdY9fzVL9OsNN6w83GxqdfqEXiITqqkhrLPB0W7u7pWxYT93gcEU=
X-Received: by 10.99.109.2 with SMTP id i2mr7782592pgc.269.1510996790717; Sat,
	18 Nov 2017 01:19:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Sat, 18 Nov 2017 01:19:20 -0800 (PST)
In-Reply-To: <CALXw4G7YnNn=2ZmCAbUUNrvrvcii0_7tqB4-DAix+meh_SxFyQ@mail.gmail.com>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
	<CALXw4G7YnNn=2ZmCAbUUNrvrvcii0_7tqB4-DAix+meh_SxFyQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 18 Nov 2017 01:19:20 -0800
Message-ID: <CAMKF1srRXBQOPNxOUqSF=HjgRj6wO8i5pNKecFNqSyEXEtU4Aw@mail.gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Sat, 18 Nov 2017 09:19:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 17, 2017 at 5:34 PM, Michael Gloff <mgloff@emacinc.com> wrote:
> This looks to be because poky-tiny.conf does not allow overriding of the
> kernel provider. You could try the below patch to use a different kernel.
>
> Michael Gloff
>
> diff --git a/meta-poky/conf/distro/poky-tiny.conf
> b/meta-poky/conf/distro/poky-tiny.conf
> index 2032bfde32..acafd9fef4 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -37,7 +37,7 @@ TCLIBC = "musl"
>
>  # Distro config is evaluated after the machine config, so we have to
> explicitly
>  # set the kernel provider to override a machine config.
> -PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-tiny"
>  PREFERRED_VERSION_linux-yocto-tiny ?= "4.12%"
>

please submit this patch with sign off and git format, its good for
inclusion upstream

>  # We can use packagegroup-core-boot, but in the future we may need a new
> packagegroup-core-tiny
>
>
> On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>>
>> hi
>>
>> i am trying to compile the yocto-tiny for raspberry pi by adding the
>> distro to my local.conf
>>
>> DISTRO = "poky-tiny"  and i  get the following
>>
>>
>> ERROR: nothing provides 'virtual/kernel'
>> ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
>> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
>> ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:
>> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
>> ERROR: linux-yocto Provides virtual/kernel but was skipped: incompatible
>> with machine raspberrypi0-wifi (not in compatible_machine)
>> ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
>> incompatible with machine raspberrypi0-wifi (not in compatible_machine)
>> ERROR: required build target 'rpi-basic-image' has no buildable providers.
>> Missing or unbuildable depency chain was: 'rpi-basic-image',
>> 'virtual/kernel'
>>
>>
>> any body has a clue to solve it?
>>
>> thanks
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

