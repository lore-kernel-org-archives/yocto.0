Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FEC0E00D14; Thu,  9 Nov 2017 06:56:04 -0800 (PST)
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
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00047E00C59
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 06:56:03 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id b189so17575085wmd.4
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 06:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NZgYgxTlhC8xed3junyCuHrF/yFW6X8h9EUdCc775u8=;
	b=stGW3f3sGKRnzUoadEESnOsEUBiELSmcuaJYX9RNOqVltNBupgwfU5HRWuCT6e8GDm
	YELr4/4wIs/fwKj2mY7rGSN1g1qXMHvsFZu3GYfqooUSoPOItcxlI6WXVXLPll75OLOH
	bfoC7wc0IXEMaMtatn1f2f8bZluG/VQQKupuIvdKqKsMFr178RWMkftdcJQsVebRuCnu
	peFq5i54FxVt+2h545TXBJiq/qaZ1ln+UvWIrrogQvq828X3W6qtEHyT4YGtc8PeJSzH
	9bqDTJZETGw5HCeuORUTyqLtJ4n3DP/cRqjLFSeKUwV5yQxn9Xb/1JbnwqoYvsv/ry5R
	hyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NZgYgxTlhC8xed3junyCuHrF/yFW6X8h9EUdCc775u8=;
	b=Hnv1v5nKo516WfYqhktPB64bC9eSkDyhZ+BjuE489E0uXRl1zpYQ+IqWd/iOTNZEN+
	NSM4Y/bt8ACSyDgfCzQhqv1uLeLbkDU1zcTr9OPfhceJVWjaM3c23ruXmhRncBUWldFh
	xSkvJL1J1cB8cxQoWWpt6bvR3pKI368OhO8Ens8t9y/AFfP3LXiV7xdL4M890OjVbwX6
	uAEHLzqo4vy+9q5Q0bMIa4zkb9Bx0uxYmEVvuFGnrFLqYyQzhHY1kJ3PtWkqvoxbF4mk
	HK5jFiKSo9T5XkLwvGE1H7ujZi6BnQ6PLDH6a2wSIWTfFKiQkvXD4ayQ96ik2nZQWUGX
	09uQ==
X-Gm-Message-State: AJaThX4w53RtlG4DDaQKmqhNzou114YsU8j8tLaxB0jH5xORvQ2LdeUF
	NAyLVQFslFFFNnYZzgMNKjjg/I7PJzR1n2W2whI=
X-Google-Smtp-Source: ABhQp+Sgi+qvPAhuF1VQL4HR4FlolDtsk5zGsZ6QiunFPTY4iHVRh/a9/JH9eaNmLUv6+Ypg4Q5oYNsRWOS+cEPVFiw=
X-Received: by 10.80.243.21 with SMTP id p21mr1051138edm.38.1510239362893;
	Thu, 09 Nov 2017 06:56:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.137.18 with HTTP; Thu, 9 Nov 2017 06:56:02 -0800 (PST)
In-Reply-To: <CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
	<CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
	<CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
	<CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Thu, 9 Nov 2017 16:56:02 +0200
Message-ID: <CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
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
X-List-Received-Date: Thu, 09 Nov 2017 14:56:04 -0000
Content-Type: text/plain; charset="UTF-8"

I've added in local.conf both:
PACKAGE_CLASSES = "package_rpm"
IMAGE_FEATURES += "package-management"

Yet, I don't have yum command, only rpm command.

Regards,
Ran

On Thu, Nov 9, 2017 at 1:25 PM, Burton, Ross <ross.burton@intel.com> wrote:
> (adding yocto@ back to CC)
>
> I don't know where you saw that but that is very wrong.
>
> Set PACKAGE_CLASSES to the package manager that you want to use.  If you
> want to use opkg, then PACKAGE_CLASSES should be package_ipk (historical
> naming).  If you want opkg to be present in the images ensure IMAGE_FEATURES
> contains package-management.
>
> PACKAGE_CLASSES controls what package formats are generated, and multiple
> are supported for flexibility and testing purposes.  For real world use
> there's no need to have more than one.  The first entry is the package type
> that is actually used in the rootfs generation.
>
> package-management needs to be in IMAGE_FEATURES to both get the tools
> installed (opkg in your case, apt-get for dpkg, yum for rpm) and to keep the
> package management database on the disk.  By removing package-management
> from IMAGE_FEATURES all traces of the package manager will be removed from
> the rootfs, which is useful if you don't want to support on-target use of
> the package manager.
>
> Ross
>
> On 9 November 2017 at 06:45, Ran Shalit <ranshalit@gmail.com> wrote:
>>
>> Hi,
>>
>> We also consider using opkg.
>>
>> Now, I have some confusion as to how to install opkg.
>> I see in some documentation that it should be installed as following:
>>
>> PACKAGE_CLASSES ?= "package_rpm package_ipk"
>> IMAGE_INSTALL_append = " opkg "
>>
>> Does it mean there are 2 package managers active ?
>> How can we know which of them is active ?
>>
>>
>> If "?=" means that it shall be defined only if not defined previously,
>> so if it is already defined as  package_rpm , it might not install
>> package_ipk?
>> Doesn't it mean that "opkg" might be installed without the required
>> package_ipk ?
>>
>> Thank you,
>> Ran
>>
>> On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>> > Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES
>> > includes
>> > package-management.
>> >
>> > Ross
>> >
>> > On 8 November 2017 at 19:16, Ran Shalit <ranshalit@gmail.com> wrote:
>> >>
>> >> Hello,
>> >>
>> >> Is there a way to add "apt-get" command (and package manager) in yocto
>> >> ?
>> >>
>> >> Thank you,
>> >> Ran
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>
>

