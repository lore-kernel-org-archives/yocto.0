Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A565E00837; Tue, 23 Dec 2014 16:45:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04EDDE003AB
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 16:45:46 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id le20so2757164vcb.12
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 16:45:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Oh8iHTTaLLdNQrRpfEdFlvt0unzWt7KW2oQv6MVh1D0=;
	b=VPmlzZyNXj5qDU5TupsH7VRXVmEUOhFY6Heze0W7Sdu9iIKOfi8WUUmN4YppbOaAvO
	XA3h2L65no0tPWQ9rhitGB09gcgL3ohI9MigXJS6HTSl5ttA0j2Kx7u2Me4Rgip8G/xT
	TnnaBlhGdAa0QBqWanDaOH8MwsNCRs7w4UEjie5gsdT/ySk7Z036XjN5q1ypR1z92Tru
	SiGkZ8YLTX51xfiJbdknqZeqTlh9FKwj/Z0PYmh3frGXXYQynlKOAS1KuQw7ppuJJAsv
	Nka/GBvvgeICeDq7N6Beo4JaXzJigw78jF5f1+DPk6rOSf2floxJgbKIh8neYHK9pg8H
	jsAQ==
X-Gm-Message-State: ALoCoQn1s8IqcNrfOOcwXOJHJED5B4jY8WL06ZcdZRh4Xfon2SwiPFDouhbX54br4ad1qyREgUJP
MIME-Version: 1.0
X-Received: by 10.220.9.81 with SMTP id k17mr12181211vck.9.1419381946088; Tue,
	23 Dec 2014 16:45:46 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Tue, 23 Dec 2014 16:45:46 -0800 (PST)
In-Reply-To: <CAJ2CSBsA1D0aDWpmHgjkhwYxkY8G-FVY61b9Z-kuRoy9h6eaGA@mail.gmail.com>
References: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
	<CAPhnLPAJhemtHnbRQcfQrJc--xjgqS47MkA96YPKFwaBueYM0w@mail.gmail.com>
	<CAJ2CSBsau7yx2LCnw4nOu5c0vTRayJgZcfNEiMXKqm6U59anEg@mail.gmail.com>
	<CAJ2CSBsA1D0aDWpmHgjkhwYxkY8G-FVY61b9Z-kuRoy9h6eaGA@mail.gmail.com>
Date: Tue, 23 Dec 2014 16:45:46 -0800
Message-ID: <CAPhnLPC3Uf2jnc4jkB7rWHLqiZbw0CffEoeD2TbzMBoRz6iVXA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Damian, Alexandru" <alexandru.damian@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: RFC - enable toaster on the autobuilder
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
X-List-Received-Date: Wed, 24 Dec 2014 00:45:47 -0000
Content-Type: text/plain; charset=UTF-8

On 23 December 2014 at 07:20, Damian, Alexandru
<alexandru.damian@intel.com> wrote:
> Hi Beth,
>
> The bitbake patchset was merged last week, and I've made the requested
> changes to the autobuilder patchset.

Sure, this will probably not be until during the holidays (26thish or so).

>
> Can you please review and pull poky-contrib:
> adamian/autobuilder-enable-toaster at your convenience ?
>
> Thanks,
> Alex
>
> On Wed, Dec 10, 2014 at 11:13 AM, Damian, Alexandru
> <alexandru.damian@intel.com> wrote:
>>
>> Hi,
>>
>> Thanks for the quick reply -
>>
>> yes, Toaster needs buildhistory; it also needs the "toaster" bbclass in
>> the INHERIT list.
>>
>> I'll make the changes and re-submit.
>>
>> Cheers,
>> Alex
>>
>> On Tue, Dec 9, 2014 at 6:07 PM, Flanagan, Elizabeth
>> <elizabeth.flanagan@intel.com> wrote:
>>>
>>> A few initial comments.
>>>
>>> TOASTER_UPLOADURL needs to be added to
>>> config/autobuilder.conf.example. It would also be nice if it was added
>>> to docs. Please set it to a localhost URL and comment it out for the
>>> time being.
>>>
>>> Also, can we make it TOASTER_UPLOAD_URL. It matches my naming
>>> convention for config strings a bit closer.
>>>
>>> If toaster needs buildhistory, I'm going to have to do some work on
>>> getting buildhistory to setup automatically on an autobuilder install
>>> (or at least document how to do it).
>>>
>>> -b
>>>
>>> On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru
>>> <alexandru.damian@intel.com> wrote:
>>> > Hello,
>>> >
>>> > I'm sending a patchset to enable Toaster logging for the autobuilder -
>>> > can
>>> > you please review and comment ?
>>> >
>>> > I have pending Bitbake patchset (poky-contrib:adamian/devel-settings)
>>> > Bitbake that adds two toaster-on-autobuilder related features:
>>> > 1. build event logging flag (-w) will write an UI event log file
>>> > 2. toaster end point that receives a log file over a HTTP POST request
>>> > and
>>> > loads the data in the toaster database
>>> >
>>> > Based on this approach, I've created an autobuilder patchset that
>>> > enables 1.
>>> > at all times, and 2. uploads the data to a Toaster server if such
>>> > server is
>>> > specified in the build configuration
>>> >
>>> > Can you please review:
>>> >
>>> > poky-contrib: adamian/autobuilder-enable-toaster
>>> >
>>> >
>>> > Thanks,
>>> > Alex
>>> >
>>> > --
>>> > Alex Damian
>>> > Yocto Project
>>> > SSG / OTC
>>> >
>>> > ---------------------------------------------------------------------
>>> > Intel Corporation (UK) Limited
>>> > Registered No. 1134945 (England)
>>> > Registered Office: Pipers Way, Swindon SN3 1RJ
>>> > VAT No: 860 2173 47
>>> >
>>> > This e-mail and any attachments may contain confidential material for
>>> > the sole use of the intended recipient(s). Any review or distribution
>>> > by others is strictly prohibited. If you are not the intended
>>> > recipient, please contact the sender and delete all copies.
>>>
>>>
>>>
>>> --
>>> Elizabeth Flanagan
>>> Yocto Project
>>> Build and Release
>>
>>
>>
>>
>> --
>> Alex Damian
>> Yocto Project
>> SSG / OTC
>
>
>
>
> --
> Alex Damian
> Yocto Project
> SSG / OTC
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

