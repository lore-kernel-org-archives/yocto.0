Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73405E00B1E; Thu, 15 May 2014 09:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ve0-f176.google.com (unknown [209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC5DE00975
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 09:01:35 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id jz11so1544531veb.21
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 09:01:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=2/FvMc2GewlXIO+mVhSaTUvQZ6zdi1i6P//ss9ddXmA=;
	b=AnGslpT2uD08yxMbiGRYqpo6TW8QU5UOYgCeHOK/7Ze4UjyKfGHk157NcE4NZbzHiG
	Q4ZmDRjoK/46oOcW8ecXWTT1xBGUWqCyecdRsNTRQ+1tG00umAoh+6uB+cJgkABuCGVz
	Raa3i2VTcd49Bw2Dd55AyEXK9EDEnTQBuWCnzqnM8tVhuRY4FNfiRF0HBuRq7FV36/YP
	wFcmTgBHo8i5qoYcH+6rxkzzb0J/JZR/2RAoUPEP8OYrsd33Vw+sFhQ72nbjt/7YSYza
	NmIIvn5sfK24GbOsWq23ySpHNfWcq6cfdF+E4yBh+UzQu6xFO4a72n1nwXpxN0NsQMZ7
	OcIA==
X-Gm-Message-State: ALoCoQk7hEDk65UIwZE5xqksytTSn3rx/Vd2+hyG8X8am0JwkhsJUTsRglFP8srl1PqyJlXTf0L1
MIME-Version: 1.0
X-Received: by 10.220.196.82 with SMTP id ef18mr25823vcb.78.1400167976682;
	Thu, 15 May 2014 08:32:56 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Thu, 15 May 2014 08:32:56 -0700 (PDT)
In-Reply-To: <31cd125eb073f74ce6383396ad8df696@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
	<31cd125eb073f74ce6383396ad8df696@agner.ch>
Date: Thu, 15 May 2014 08:32:56 -0700
Message-ID: <CAPhnLPCBpvCwzqAue_qakxbbZQRiRxeDTqY-D6UPDmrEn78S-Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Agner <stefan@agner.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH v1 0/4] fixes for use with Angstrom
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
X-List-Received-Date: Thu, 15 May 2014 16:01:41 -0000
Content-Type: text/plain; charset=UTF-8

Hey Stefan,

Sorry, this got caught somewhere in my email

On Thu, May 15, 2014 at 6:03 AM, Stefan Agner <stefan@agner.ch> wrote:
> Am 2014-05-08 18:44, schrieb stefan@agner.ch:
>> From: Stefan Agner <stefan@agner.ch>
>>
>> Hi folks,
>>
>> We plan to make use of the Yocto Autobuilder at Toradex. I successfully
>> deployed an installation, however since we distribute an Anstrom based
>> BSP I had to adjust some files. With those patches and a custom layer
>> configuration (not included since quite ugly) I'm able to build our BSP.
>>

if you want, we could include it in buildset-config.examples.

>> Would be good to have those changes upstream. Especially the new way to
>> preserve the order of builders is more generic, however maybe not yet
>> perfect. I needed this especially since I build some other stuff using
>> POBBC (plain old build bot configuration :-)).
>>
>> Just as a general question: What is planned with the autobuilder in
>> general? Is there an integration planned with Toaster?

At the time, no.

>> As far as I can
>> see, since the build directory is recreated each time, this is not
>> really possible right now. It would need adjustment to the autobuilder
>> to start the toaster web interface for each builder, and clean/restart
>> builds in a way that doesn't interfere with Toaster. Any thoughts on
>> this?

I've honestly not looked into it too much. What would be interesting
is utilizing buildbot slaves and the toaster front end.

>
> Any thoughts on this Patchset?
>
> Today I had troubles with our builder. After removing the whole source
> directory and restart the build, the autobuilder somehow checked out and
> resetted the autobuilder git! (the dora branch was checked out, which I
> tried to checkout from a source branch). So far I could not reconstruct
> what exactly happend, but the builder must have been in the wrong
> directory when issuing some commands... Ugly. Calls for sandboxes :-)
>

Ah. Please switch to master. There was a VERY VERY nasty bug that is
probably still in dora caused by the yoctogit fetcher. I'll look at
dora today and backport the patch.

> Anyway, I lost my custom master.cfg since git restored the version from
> the dora branch (always remember to backup!)...

Yeah, when I was debugging it, I ended up scripting my setup just to
figure out what was wrong.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

