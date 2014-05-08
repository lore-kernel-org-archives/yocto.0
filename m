Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52531E0073A; Thu,  8 May 2014 08:55:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f41.google.com (unknown [209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A5A8E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 08:55:19 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id j5so3010963qga.28
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 08:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=XKvzXWadHq0n4/Ahidxcd3aTzNyY5GnDYWUAicC9g8I=;
	b=R0BW6lycVl7lxOIodHLB6LcLsnUA6QZPmBF524zR7eEPZKyrMu6/n3VDiw/Ub+3kVr
	wlIMnmlLPNGGuHnGBw624L/Ul/O7etObCmfh8RYOXhdoWcYMy/k3wgpIn6nxP4J5b+mR
	RFcHx97jgmNhWhkMhgeZ0zZaO5I8Fo9ePMG9AO1HnwlunMRE/1XL/9VmB9yFR0Dxixyu
	kjp2aQ8lWsf9eXjz7y1AMXmuqvglcckOjSyy+ipyI07Ypr9Z4gwlNJyVNjOYRtXH5Xpc
	vwwejnmpJIclNXMWTZnLxEDx3zGfeQgGDXjSs9cCTMalfphYmjPfmkRcy48vM5Ug4nvd
	978g==
X-Gm-Message-State: ALoCoQkWoOX6xSCYETbKP1kKowPXSZuGXhgiDE+Hi9p/oMw2vMyF3E6r2wfxn6VTWlJgw5TlxYf6
X-Received: by 10.140.104.78 with SMTP id z72mr5988944qge.60.1399564518767;
	Thu, 08 May 2014 08:55:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 8 May 2014 08:54:57 -0700 (PDT)
In-Reply-To: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 May 2014 16:54:57 +0100
Message-ID: <CAJTo0LZ_S=mNgM6gtPSfYf=AVRxdLcJ_CO31c+emmQrib80hjw@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	OE-devel <openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GStreamer 0.10's future
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
X-List-Received-Date: Thu, 08 May 2014 15:55:24 -0000
Content-Type: text/plain; charset=UTF-8

On 8 May 2014 15:48, Burton, Ross <ross.burton@intel.com> wrote:
> For the 1.7 release I want to move GStreamer 0.10 from oe-core into
> meta-multimedia, and ensure everything in oe-core has ported to
> GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
> unmaintained so we don't need to be shipping both versions anymore.

So the catch here is that Qt4 currently depends on GStreamer 0.10.

Can someone who doesn't come out in a rash when looking at C++ code
spend two minutes to tell if me Qt4 supports GStreamer 1.0 (unlikely)
and whether we can make GStreamer 0.10 support a build-time
configuration and simply disable it in oe-core.

Ross

