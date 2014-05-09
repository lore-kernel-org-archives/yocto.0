Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B413CE0073A; Fri,  9 May 2014 12:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qa0-f53.google.com (unknown [209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BC74E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 12:22:59 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id ih12so4472573qab.12
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 12:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZwQ4m/9n4M9aQ+ARiE7ItycNiBCWhT3YKR1EV9ZOHXQ=;
	b=ae3nNV8xe7ECVmpZBXUBh1F9jG6DxcVqjsTy7rue5cDZLdeLm/JPWIUSFe9dFMm/3f
	grrywz6stLSZrow0tOCCh+A8eu3o1j+bdDlUQSCCtn/uLAuWDQlNDUAcZvaL0DNLF7wU
	kBQMuOAjrAql22++tj9F3dLmjnP9BIDeSUsEwg4bRFXYkmVbUQ/HqcwE+yUFSIWo2BkA
	0RAThkrBHCnOmEes6wPZWfRdGtP6nTBi4IGtssIzxgBda1NoFO6abnQRkexHSJEQtHva
	b0ef6DWOtoR3icCjmhk8QQTqdVRvntwC8H03JP0y7qGyXS+ROG8WnNZWuAEUvyrV8If/
	f2oA==
X-Gm-Message-State: ALoCoQmLjDXsdBaVEU3rdmsjl5jvEAHpB8M3eenJl9OlFKZAS3K8cRKetA4brVjJlOg84HqpcWgf
X-Received: by 10.140.48.161 with SMTP id o30mr16953829qga.68.1399663368341;
	Fri, 09 May 2014 12:22:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 9 May 2014 12:22:27 -0700 (PDT)
In-Reply-To: <536CF208.3000400@gmx.de>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
	<CAJTo0LZ_S=mNgM6gtPSfYf=AVRxdLcJ_CO31c+emmQrib80hjw@mail.gmail.com>
	<536CF208.3000400@gmx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 May 2014 20:22:27 +0100
Message-ID: <CAJTo0LZJ-cLjvGH5YZA1Tu-Wz6biKn=A2mVp5rrkwzkFB-ggTg@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>
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
X-List-Received-Date: Fri, 09 May 2014 19:23:02 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2014 16:19, Neuer User <auslands-kv@gmx.de> wrote:
> Yes, it does, as long as you need QtMultimedia. Same applies to Qt5.
> There was a discussion on the Qt mailing list about moving to
> gstreamer1.0, but this seems to be rather some time in the future was my
> impression.

So Qt 5.3 won't have GStreamer 1.0 support.  The port is being done in
a branch so it's possible that it will land in Qt 5.4, which is due to
be released in the September/October timeframe.

One option would be to move GStreamer 0.10 into another layer, give
Qt4/Qt5 disabled-by-default GStreamer 0.10 options and hope that by
the time Yocto 1.7 is released, Qt5.4 with GStreamer 1.0 is also
released.  Even as someone who's rather keen on removing cruft from
oe-core that's a bit too eager for my liking.

Revised plan unless anyone has a better idea: in 1.7 we'll move
everything possible away from GStreamer 0.10 but keep 0.10 around
until the 1.8 cycle, and then revisit the Qt situation.

Ross

