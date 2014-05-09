Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F3DE0073A; Fri,  9 May 2014 11:38:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qa0-f50.google.com (unknown [209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A558E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 11:38:02 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id j15so4484953qaq.9
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 11:38:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FV1CxGcETzgzb/LWYA2R7gteilvgYpakGgQDKmhq+YA=;
	b=inebn4AVlIewAffoQ3LBJjbRq/6soAOMKBCjlUd8tBz008NGJyVC23L9GPOIm8dqFB
	BP1cR0WrdWM5EVnDiQuzU6BckpD/YN7aWv+YvxjU3GxIWuEA1B2QvyXMlJU/4cvR+IoH
	sVz15zE9wOQjOce9FK11YdSpdvOANhH4Az/MOfA2uJ/5bTh33caLLQ9toW2DfQMJSUMC
	TRWNVkcUhuzNE4Yh8agYaTDLOamUY3gIW3pk8N7fTjehUu+56WEs722QalRzjuCGiSW5
	Hy3/GViHzaPNVJUjV19L/K6nNeeusL3rNImC9MKGgg4sxg8p+5BCpgmIOJG1NgWh96WF
	IMRQ==
X-Gm-Message-State: ALoCoQnz6faI1jdoz9KUyUkxphd45MasDtGzuk2qrVk/eSUlaE8HBRWiu/8dqoWxmf7B6bx1bK9g
X-Received: by 10.140.91.161 with SMTP id z30mr16289230qgd.65.1399660681487;
	Fri, 09 May 2014 11:38:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 9 May 2014 11:37:41 -0700 (PDT)
In-Reply-To: <lkj1d5$s27$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>
	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>
	<lkevco$bl6$1@ger.gmane.org>
	<CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>
	<536CADD1.1040402@gmx.de>
	<CAC+thW3_DhKGai3kRXo+HnHOJeWDYdC7_zEg4Z2-wRZhn6iTfw@mail.gmail.com>
	<536CD642.70700@gmx.de>
	<CAC+thW39rt=BEuo3SVa2mvFx0hHXGk=VW9rxUymR-i4jDNJpyw@mail.gmail.com>
	<lkj12c$mij$1@ger.gmane.org> <lkj1d5$s27$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 May 2014 19:37:41 +0100
Message-ID: <CAJTo0LbvSFTR7_=fbbqJVc_NeMU7Kj8jTCs2-dt5h61q25n0QQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 May 2014 18:38:07 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2014 17:57, Neuer User <auslands-kv@gmx.de> wrote:
> Seems, I am not the only one wondering why connman phones home:

The "ask the author" approach works quite well.  The hostname it's
looking up is connman.net.  This is the captive portal detection:
pretty much every major platform does something similar and it's to
detect the situation that you have something that looks like a network
connection, but actually you're not routed anywhere (i.e. you're in a
hotel and need to pay for connectivity).  ConnMan makes a trivial
request to it's home page and if it gets back the response it was
expecting you have internet, captive portals tend to include
machine-readable links in the response that ConnMan will tell the UI
to open.  If you've ever joined an iOS (and probably Android, but I've
not got one) device to a hotel's wifi and seen a login page open
immediately the same you've seen this behaviour in action.

The response also includes some basic geo-ip so your machine knows
roughly where it is, useful for automatic timezone updating.

Ross

