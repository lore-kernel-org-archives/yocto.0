Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B13A3E00BDA; Wed, 21 May 2014 13:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ve0-f180.google.com (unknown [209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E969E00BE0
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:40:37 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id db12so3204193veb.39
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=papJU+NK0lQcqwkQgBYTLEt1RcSHmRUkQy8vhfNADQ0=;
	b=YaOwgagJ0EgLee9oIAPSCNNVeQYm4q+EmwFKmH4U1z2uuH5XmG45w+DniXRTjoOVCA
	P5Wp78blWBXeIYeYBhbwyf2I/Fb49KkuL0e2sxyXJHV6qEGgDtNgsYhfaaATF9KT+nbb
	bQZdqCYOORAQqRIiWfWcNapBXaUAqHoEQU51lkENz/kUqV3FnugeY0J9YfVbzTHiYdRU
	RGTpIesOYQWdc8DjI3JW3cPh+lKrSOGCwt5atFsslf2IEGTNI/EW0LAEv9BmGkKsIfYW
	fWt/+aaQXWK5JPxvayqIwBpaU/NXusu6IiftYfE+jE4oupNZDowxg3Oj7fZe4U0mppeZ
	6N9Q==
X-Gm-Message-State: ALoCoQn47xFxfSQxfKZ6VU6Jvdiia6m+XtAXLCiTzLLfScSEf36IyTozD5gakGJml8UbN0Iev9d6
MIME-Version: 1.0
X-Received: by 10.52.190.138 with SMTP id gq10mr2710195vdc.47.1400704836501;
	Wed, 21 May 2014 13:40:36 -0700 (PDT)
Received: by 10.52.243.73 with HTTP; Wed, 21 May 2014 13:40:36 -0700 (PDT)
In-Reply-To: <1400704210.17834.9.camel@ted>
References: <CAPhnLPAoA+z4OfO_HXVNOmbVk9cXcbOEtMZOhzYZbfMqw_9g=Q@mail.gmail.com>
	<CAJTo0La6PT=gUpvp+Fsh1QpOx1H147HgiVT4nmCrKvLFRroiEA@mail.gmail.com>
	<1400704210.17834.9.camel@ted>
Date: Wed, 21 May 2014 13:40:36 -0700
Message-ID: <CAPhnLPD0-zR5DR9d=QWwqK3ZXpcngkeBXAoWt_Q0W+_vSnenRA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing size of the weekly build
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
X-List-Received-Date: Wed, 21 May 2014 20:40:48 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 21, 2014 at 1:30 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2014-05-21 at 19:58 +0100, Burton, Ross wrote:
>> On 21 May 2014 17:22, Flanagan, Elizabeth <elizabeth.flanagan@intel.com> wrote:
>> > One thing I'm thinking of and I want some feedback here is setting the
>> > package type on the main builds to just ipk and running a special
>> > deb/rpm test being to ensure those package types are functional. This
>> > should give us a bit of a speed increase for build times, without
>> > introducing too much risk. Thoughts?
>>
>> The reduced coverage is something to consider, but if the other builds
>> were world and also built images then the reduction shouldn't be too
>> bad.  I wonder what the speed difference between ipk and ipkg+rpm is:
>> this is probably worth measuring.
>
> We do need to be careful about coverage here. We have seen bugs where
> things failed in deb or rpm but not ipk and maybe only on some
> architectures.
>
> I'm fine with being more selective about what we publish however in the
> builds it may be worth leaving this enabled.

Yeah, I can see that. If we had a world rpm/deb as Ross suggests, I'm
not sure that would actually give us a speed increase, so for now, I'm
ok with leaving what we build alone. But yeah, let's not publish the
rpm/debs.

>
> Cheers,
>
> Richard
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

