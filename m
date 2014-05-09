Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92938E0073A; Fri,  9 May 2014 11:47:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f178.google.com (unknown [209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0936DE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 11:47:40 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id l6so5109089qcy.9
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 11:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eKALMzdwTdlxzitL0AXMTaJWc/sainlucUYb+ZvnRd0=;
	b=B/P9bPoImezHylHsJP86pwbqLk+73Iiy6Oa+LEal0WCMlsQA1L+oq61l2gRv1nXyZJ
	ZzpHxV6STskVVL6GGiDjK6E/HG3iTBhzgp7D4eNaivax4vcdqLdlZ2+47VH0CWmEwJi6
	q6Jogv2SEjrM6VCMroc90jUW+X6HKz7t04NViPoRJEG7gvVdmbqVlXVtJSvc0IPDbNpI
	IeV+/IzjAJu5GbwQVFKpC6fL1Wwg+8VrW/n9pTYah3U80Ump7gVcavJX9hQnluEvoA7w
	V9Wgb8SBplm9NrbuDtsy+E642Wa6tTjbUu6coBvUajG+6UazlidOP+i8nESta8XISyxW
	xq4g==
X-Gm-Message-State: ALoCoQmFcgXHtA2ihi+1GQ1FxYELRV/uVvP7IiLulwNsocViHbXBHp2ml55s7kz7qBI+wBizgWHk
X-Received: by 10.140.28.3 with SMTP id 3mr16575259qgy.71.1399661259694; Fri,
	09 May 2014 11:47:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 9 May 2014 11:47:19 -0700 (PDT)
In-Reply-To: <536CF208.3000400@gmx.de>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
	<CAJTo0LZ_S=mNgM6gtPSfYf=AVRxdLcJ_CO31c+emmQrib80hjw@mail.gmail.com>
	<536CF208.3000400@gmx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 May 2014 19:47:19 +0100
Message-ID: <CAJTo0Lagpg4G20WJbXr1r_L4ypOMjU+1iCOD8cRwZ86fFJGM-A@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [oe] GStreamer 0.10's future
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
X-List-Received-Date: Fri, 09 May 2014 18:47:41 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2014 16:19, Neuer User <auslands-kv@gmx.de> wrote:
>> So the catch here is that Qt4 currently depends on GStreamer 0.10.
>>
> Yes, it does, as long as you need QtMultimedia. Same applies to Qt5.
> There was a discussion on the Qt mailing list about moving to
> gstreamer1.0, but this seems to be rather some time in the future was my
> impression.

Oh, even Qt5 needs 0.10?  That's disappointing.

Ross

