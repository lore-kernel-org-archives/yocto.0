Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2971E0073A; Fri,  9 May 2014 08:22:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f182.google.com (unknown [209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 323DBE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 08:22:48 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id e16so4759610qcx.27
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 08:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=prsEufr3EgwN+sstevjKrPN2VrdcZArESuARSjFnqcU=;
	b=Fcwp6w6JEe3PZPFpuRuH6eefNvoA33DvTGJOpICFIMzTz2yu3dxA7g2whgSBZg2JaP
	fanoAJPx9E42nILdzv0IJBRJ3asPuCo8XlnkIH+r4eSvVhoOQhl5RTFQ+6BRfapn+Myo
	L67sLymB7pQrSJ5kG7zstkeVBmgvzarrf1weBvuEAqVtRGHy7gon4S09oNPfEMs4QYel
	ndw/HMIZv36fRg15Gs4bLzFCBLFIY42WN+lS+y4IebSUyIA68H+50X5sE3oTcKkywFzp
	ooFoD4vjItV4rNiwia8AJSkL/82BYFALPmiRc6ewSy+JIO1yOB68bsWi0heAWqMEdNws
	gZiw==
X-Gm-Message-State: ALoCoQn/AqPlVixcI3RGbppb8RCCNUABEndiDxI+s6nl4c0yaTZFTFBYr78OmYz27P86ziX6Fmpk
X-Received: by 10.140.48.161 with SMTP id o30mr14932526qga.68.1399648968037;
	Fri, 09 May 2014 08:22:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 9 May 2014 08:22:26 -0700 (PDT)
In-Reply-To: <lkirea$jo7$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>
	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>
	<lkevco$bl6$1@ger.gmane.org>
	<CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>
	<536CADD1.1040402@gmx.de>
	<CAC+thW3_DhKGai3kRXo+HnHOJeWDYdC7_zEg4Z2-wRZhn6iTfw@mail.gmail.com>
	<lkirea$jo7$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 May 2014 16:22:26 +0100
Message-ID: <CAJTo0LabM49mYRxasAwo2wDkFbQQWKOOzLD7tV2ULSZXFRVpEw@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: replace udhcpc
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
X-List-Received-Date: Fri, 09 May 2014 15:22:53 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2014 16:15, Neuer User <auslands-kv@gmx.de> wrote:
> Do you by chance know, why it depends on the xuser-account package? I
> don't want any additional user accounts on my system. If it is not
> essential I would remove it.

If you're applications are running as root then you can remove the
dependency on that package and the patch that changes the security
policy.  The reasoning is complicated but basically so that the "user"
can manipulate the network settings.

Ross

