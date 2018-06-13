Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAC5E03013; Wed, 13 Jun 2018 06:59:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDBA4E03011
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 06:59:29 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id 69-v6so5624663wmf.3
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 06:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RJP8najDD6hVs7QG/885+tOYgdXDCJCne5zluTMQCbU=;
	b=E1g8JGTQ8hTMLiPy9ZgN0yPXLeO07OPWb8qzTZ0tz1kHc/wIBSkwGj5qi4yKtDoG65
	DyDKpuCAeYIvOZEpQvGENtK9ohI6RipwfjjgnzyIlHLRLUuQHizInDRQMIS/hTLae57C
	JKEqvbI7R7bY+J1CPDcotGqWldE8mXyldMHUvKTDSQPJ8Br92Lbaqg2fU2XAjzRAN5EL
	M6+dvk/lIO5VE8huvFvgZPnqPiiAkmSlGdqEqs7MCTOm2N8jHRHj6JuZ2K29x8W3sZL/
	haXNEnp8dHu9dn8cgyoYmOaK92fLZnsaBWraBrYwznmfxKRIH8mG7j9EtfrZ27RNSJCU
	ppmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RJP8najDD6hVs7QG/885+tOYgdXDCJCne5zluTMQCbU=;
	b=fDV07jvdFuy3tz4+b4hX7TnbtB7uuWYVSgZHAC/3XzS+lDRr041RtlJDHbFK1BA5U7
	hw8O8Aqo3+5Ji1sWIWh9Vin65rIjC33nt2L524MocKeDHqQBRXibE+NhUX9tLcNqDL4Q
	Z7ZLBS7T/Q5L1sfr9/yTjHs5hQFS4MYEcipEARE1+qB2gJXLxBCnLFDQlMmImi7tmdlj
	T6Q9nQGqpejhhrEPKUaeO2bXVmX6hLrL8kAgaFMVnv3adM9x4AFfR6nwg5Ukzy2xyHm9
	EFwYKiWihp7Sc4WyepXMNYv7RM6LQaN7n0t/BBeqwiS2cfFmlzdFWjHebfw8J/gZdbfd
	JJqQ==
X-Gm-Message-State: APt69E0ASCRskIFA3eV6m12znB6stZ/iBbVMSoTLIELK84EkY1NfakZm
	evBa57dFdQBA84X4U+b68SgzmhJ2yMrzN87LCboDA+Ct
X-Google-Smtp-Source: ADUXVKJmflThcAHhJcqNCemX7Uiuug0a9AhoebKGZLeveYwGEu6+QzS2V8RXKIRyjcB+jjVvm45UjTarPAtRqTBFMcw=
X-Received: by 2002:a50:9298:: with SMTP id
	k24-v6mr4251235eda.110.1528898368766; 
	Wed, 13 Jun 2018 06:59:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:b566:0:0:0:0:0 with HTTP; Wed, 13 Jun 2018 06:59:28
	-0700 (PDT)
In-Reply-To: <CAOsp8o98NbO=55Y-8i2Ld6pv=ck2Qnxtb9rKXyKWku-kVXUSjQ@mail.gmail.com>
References: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
	<CANik3vGehMFhJZdReNZ3eJo=bp8SRFBRnP1G2ntqB8xri009eA@mail.gmail.com>
	<CAOsp8o98NbO=55Y-8i2Ld6pv=ck2Qnxtb9rKXyKWku-kVXUSjQ@mail.gmail.com>
From: Beth Flanagan <pidge@toganlabs.com>
Date: Wed, 13 Jun 2018 14:59:28 +0100
Message-ID: <CANik3vF3cOGqQDHuiYYJLcDw-=y9nHb6KNP9ipOzyz9i6Y6F4Q@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Generating license/manifest for a specific layer?
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
X-List-Received-Date: Wed, 13 Jun 2018 13:59:30 -0000
Content-Type: text/plain; charset="UTF-8"

Ok, I guess my question there then would be is how you'd determine
where a recipe "lived". Like, if meta-foo has a bbappends for
something in core, would you include it or not in your manifest?

If so, then taking the original manifest and just doing some text
manipulation in a ROOTFS_POSTPROCESS_COMMAND would be the way I'd
probably look at tackling it.

On Wed, Jun 13, 2018 at 2:42 PM, Michael Habibi <mikehabibi@gmail.com> wrote:
> Beth,
>
> This is for internal consumption. We want to be able to generate a full
> manifest, and also one that reflects how we diverged from base Yocto
> distribution.
>
> On Mon, Jun 11, 2018 at 10:55 AM Beth Flanagan <pidge@toganlabs.com> wrote:
>>
>> On Mon, Jun 11, 2018 at 2:46 PM, Michael Habibi <mikehabibi@gmail.com>
>> wrote:
>> > Our use case is to capture the license files, manifest
>> > (package/version),
>> > and download information only for packages we modify/add. We use our own
>> > layer to modify/add packages, everything coming from standard Yocto
>> > layers
>> > are untouched.
>> >
>> > Is there a way to generate this information on a layer-by-layer basis,
>> > instead of a full manifest that includes all standard, unmodified
>> > packages?
>>
>> The easy (cheating) way, would be to modify the tmp/deploy/licenses
>> artifact post build (I do it to remove -native- and -cross- from
>> things I distribute as I'm not actually distributing them) or put in a
>> post do_rootfs function that does it.
>>
>> I guess my question would be (and this is less a technical question
>> and more of a legal one) is why would you want to only include a
>> manifest for only part of what you're distributing (or am I
>> misunderstanding what you're trying to do here?)
>>
>> -b
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >

