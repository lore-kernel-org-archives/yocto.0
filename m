Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E497E009A6; Thu,  8 May 2014 03:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1596 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 03:54:55 PDT
Received: from mail-qg0-f52.google.com (unknown [209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7853E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 03:54:55 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so2471041qge.25
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 03:54:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Fzudd984OGS03/AVklqJKWxkVcm5ONEQt+4F6lLbYvM=;
	b=YWNELPOi8bbTX9I4jSXY5p+3end3PFCYdZRPau3cK7HOhPpG1iB8hR43dS65BxWoft
	nKsnw2bIUDzFwQjTTA0yanZI++hxp1ZhgERKVy3pkHCv6vsOg7tOWjYuyHxmlgNDWZET
	p03Ab//FNPrL1tkbG4Au12Pk3QmtLzrn7MVE79Ap7W83JhUVLA0QPmuqz0GReybsa1XP
	kOnnDDKX5rXMhAwHYAJ6zBi4HKpo6wtfi0WoLDsJQH40U5iYZBjAtgV0mgx5WNCEYLBv
	IF5uBnuAcCuQwS/wCizmbpLpppzLwFd5vjktdGuKzoxX8OWEWdvg0U8Hn+Bms9cMY7hH
	+CRQ==
X-Gm-Message-State: ALoCoQmqFzXtol85yXzjvLiV6zCPmS7jaZprxvKNw6A7KqQePhb1uujt8bV5R1wRlgcf+XJPQKyJ
X-Received: by 10.224.121.133 with SMTP id h5mr3225972qar.79.1399544899000;
	Thu, 08 May 2014 03:28:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 8 May 2014 03:27:58 -0700 (PDT)
In-Reply-To: <lkevco$bl6$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>
	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>
	<lkevco$bl6$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 May 2014 11:27:58 +0100
Message-ID: <CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 08 May 2014 10:54:56 -0000
Content-Type: text/plain; charset=UTF-8

On 8 May 2014 04:58, Neuer User <auslands-kv@gmx.de> wrote:
> I had a brief look at connman half a year ago, but that time I was
> unable to find a good documentation about it. Do you have by chance a
> link to some tutorial or at least man entry for the configuration?

What do you need to configure?  For "when ethernet cable inserted,
bring up the interface using DHCP" this is default behaviour and won't
need any configuring.  connman is sadly under-documented but the IRC
channel is fairly responsive.

Ross

