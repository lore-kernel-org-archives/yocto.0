Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D13E00D23; Thu,  9 Nov 2017 07:11:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC7A4E00C59
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 07:11:30 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id z3so18387995wme.5
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 07:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mgQNZ+0YST4Z4Uiy7vCeSJt9eZNYvggxsyHYfkzk5uk=;
	b=oOTSEXvlGq/L11EqOY1/OOZx82coTtW0K9lZSwZzgePtMJUaoADu7eqLvWF/jTrOET
	Ch+hA+p1FLr4TRRK8KrD7PGDoy6cqt0VokU4hsykCrRiuqRibw+pYoaBzD1389XXymh3
	+X91nNZQ8MQ6s2u7XU43W6qTMmo55g9CsfzlwuKXlc0kuAyqsOFT7CsFtqShdefrkTsU
	V2nWmgQ1MATBxzLAyyqPrcmIMY9Vrvel/Qn+ztVqv+2saQcVa/MsI9klFjvzpgFEzmuA
	UdivUUrskwfTX4TT2jdQ0mfzGb+kG3LrP6UammzSkvcNBJUriIrrv42CR3oE7utTKq4Z
	MzXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mgQNZ+0YST4Z4Uiy7vCeSJt9eZNYvggxsyHYfkzk5uk=;
	b=Glhj0V2Ej1M7684Q07dtn6CZCF2r21weh8tJTQ26gASpedhfaIaJNibdra1PP6oNrW
	tWSt2F2YEmvQU6ODqFeA5I5fZUN71YbbQq3HClOGUi/x3e9bwdlsdlfnj6gcSaW3/LH8
	2CdclK5UI8ZhrN9HlWRScsF26vkTUaRpy/P7QNgfiD8+J/b0yvs5B7NjMqAkEfasLhmS
	+FpsgpBdAc8xOtL+6/1VKudgx+LlP/ti5jFJLaJrCH9amzfi87th5DbM9SnbD6s2JHyc
	7sr4Bqnnq6XuZlcvGcR/kKeNYve7PPTP6ft0Z0Cop9Dl1aZcYFDpFcJ2Kgm+JmQn2P9j
	wTsg==
X-Gm-Message-State: AJaThX505SiZS8csQfeTme2L2LUDUU2AAfaA6ZYDcbvbWOJb+ae2oOiu
	ekZrjYuIFIkFc2lcHsdnNWFNhJNZip6RnsKM49qSpg==
X-Google-Smtp-Source: ABhQp+T+ff2ELn8pO5U79iqIrzgxNzlm8yG5xh2+A3/1t7xisfXRnkC+Ls5xeXU3DmBkoaywCBZSEw25FLTGofZ0Snk=
X-Received: by 10.80.170.28 with SMTP id o28mr1045081edc.93.1510240289592;
	Thu, 09 Nov 2017 07:11:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.185.69 with HTTP; Thu, 9 Nov 2017 07:11:28 -0800 (PST)
In-Reply-To: <CAJTo0LZvizhPiiOA5jxsoYPRRDZcoKq601gkk6APHwmCUg0HdQ@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
	<CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
	<CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
	<CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
	<CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
	<CAJTo0LZvizhPiiOA5jxsoYPRRDZcoKq601gkk6APHwmCUg0HdQ@mail.gmail.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Thu, 9 Nov 2017 17:11:28 +0200
Message-ID: <CAJ2oMhLuRMSvyZkjcdek6AUVHLw81semMer1+=nmZPQ8eQOP0w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: apt-get
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
X-List-Received-Date: Thu, 09 Nov 2017 15:11:31 -0000
Content-Type: text/plain; charset="UTF-8"

I now see that I have smart:
root@lec-imx6:~# smart
Usage: smart command [options] [arguments]

I was not familiar with "smart" command before, so that is good enough.

The image is based on fsl-image-qt5 image  (lec-imx6 from adlink)

Thanks,
Ran

On Thu, Nov 9, 2017 at 5:01 PM, Burton, Ross <ross.burton@intel.com> wrote:
> What release?  Until recently we used smart not yum.
>
> Ross
>
> On 9 November 2017 at 14:56, Ran Shalit <ranshalit@gmail.com> wrote:
>>
>> I've added in local.conf both:
>> PACKAGE_CLASSES = "package_rpm"
>> IMAGE_FEATURES += "package-management"
>>
>> Yet, I don't have yum command, only rpm command.
>>
>> Regards,
>> Ran
>>
>> On Thu, Nov 9, 2017 at 1:25 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>> > (adding yocto@ back to CC)
>> >
>> > I don't know where you saw that but that is very wrong.
>> >
>> > Set PACKAGE_CLASSES to the package manager that you want to use.  If you
>> > want to use opkg, then PACKAGE_CLASSES should be package_ipk (historical
>> > naming).  If you want opkg to be present in the images ensure
>> > IMAGE_FEATURES
>> > contains package-management.
>> >
>> > PACKAGE_CLASSES controls what package formats are generated, and
>> > multiple
>> > are supported for flexibility and testing purposes.  For real world use
>> > there's no need to have more than one.  The first entry is the package
>> > type
>> > that is actually used in the rootfs generation.
>> >
>> > package-management needs to be in IMAGE_FEATURES to both get the tools
>> > installed (opkg in your case, apt-get for dpkg, yum for rpm) and to keep
>> > the
>> > package management database on the disk.  By removing package-management
>> > from IMAGE_FEATURES all traces of the package manager will be removed
>> > from
>> > the rootfs, which is useful if you don't want to support on-target use
>> > of
>> > the package manager.
>> >
>> > Ross
>> >
>> > On 9 November 2017 at 06:45, Ran Shalit <ranshalit@gmail.com> wrote:
>> >>
>> >> Hi,
>> >>
>> >> We also consider using opkg.
>> >>
>> >> Now, I have some confusion as to how to install opkg.
>> >> I see in some documentation that it should be installed as following:
>> >>
>> >> PACKAGE_CLASSES ?= "package_rpm package_ipk"
>> >> IMAGE_INSTALL_append = " opkg "
>> >>
>> >> Does it mean there are 2 package managers active ?
>> >> How can we know which of them is active ?
>> >>
>> >>
>> >> If "?=" means that it shall be defined only if not defined previously,
>> >> so if it is already defined as  package_rpm , it might not install
>> >> package_ipk?
>> >> Doesn't it mean that "opkg" might be installed without the required
>> >> package_ipk ?
>> >>
>> >> Thank you,
>> >> Ran
>> >>
>> >> On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross <ross.burton@intel.com>
>> >> wrote:
>> >> > Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES
>> >> > includes
>> >> > package-management.
>> >> >
>> >> > Ross
>> >> >
>> >> > On 8 November 2017 at 19:16, Ran Shalit <ranshalit@gmail.com> wrote:
>> >> >>
>> >> >> Hello,
>> >> >>
>> >> >> Is there a way to add "apt-get" command (and package manager) in
>> >> >> yocto
>> >> >> ?
>> >> >>
>> >> >> Thank you,
>> >> >> Ran
>> >> >> --
>> >> >> _______________________________________________
>> >> >> yocto mailing list
>> >> >> yocto@yoctoproject.org
>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>> >> >
>> >> >
>> >
>> >
>
>

