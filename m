Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7ED7E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:34:45 -0700 (PDT)
Received: from mail-la0-f72.google.com ([209.85.215.72])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 23 Oct 2012 14:34:44 -0700
Received: by mail-la0-f72.google.com with SMTP id s15so2960192lag.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:34:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=9XfGSYsBxSvwRsMR7EIk8jHXqEx41m7F3yk70Pwlt00=;
	b=dm6agCiybOrXmFQHDOfxjv0LbSqyDePzgP9sn7csFewlUxk/UkMUcXuv+DSHqpgqMX
	vZRFBGFH7Rc2jIMt9SN8emb4B3D2v5Ny4/A6np5HLem7HCA+gbuF5GbY+3cEw9oYhs8X
	Nz8M6jOl7R4dJ1h9Go0q2ZLQeh8mqWW1ukv7wePbFL+TIaR5LLy/zN8wfaVfxryFqP7N
	T2qULcfYoqEJm/dEeuDvlPjnboB2Ykxr8eH3kMpiCXSzfl+L+CgIo38Z9M1I9CwPYEW5
	9t/VziJMxvKjfmYXyk8ymIiJMxQ4JNNYyHEwcfNXPTU20pAk4vc6g9WcTmV1L52HFE9+
	Mjiw==
Received: by 10.180.108.38 with SMTP id hh6mr834829wib.0.1351026631234;
	Tue, 23 Oct 2012 14:10:31 -0700 (PDT)
Received: by 10.180.108.38 with SMTP id hh6mr834816wib.0.1351026631067;
	Tue, 23 Oct 2012 14:10:31 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id hv8sm713370wib.0.2012.10.23.14.10.25
	(version=SSLv3 cipher=OTHER); Tue, 23 Oct 2012 14:10:27 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:10:29 +0100
From: Ross Burton <ross.burton@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <DB45BBA447A24160B0D5C2B8B88CCA6E@intel.com>
In-Reply-To: <CAHUNapT+Tf-1uTXJo9CXB=2CT7D4A2GYd9O+MmvGLit46wogWw@mail.gmail.com>
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
	<37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
	<CAJTo0LYi3s9Dp33ORf4VvQFrFY4v0ib9vzRqFOWaKy5sMjex7Q@mail.gmail.com>
	<CAHUNapT+Tf-1uTXJo9CXB=2CT7D4A2GYd9O+MmvGLit46wogWw@mail.gmail.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQmJzZuMsAn5oU4z7nZLIu+F0vfxQOVuugnuPxEHigGtjLtzSTnJPvGfycH0QTjoUEvA8Tigu2V04WHFmgqTZzWcW578HjDP3gYPNfDiJy0v3X3HojgvVfGAKGQNUHadjDgCVA3zkePE7jZoi70XyCRwnvyBWw==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Oct 2012 21:34:46 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 23 October 2012 at 22:03, Trevor Woerner wrote:
> Just out of curiosity...
> 
> On Tue, Oct 23, 2012 at 3:53 PM, Burton, Ross <ross.burton@intel.com (mailto:ross.burton@intel.com)> wrote:
> > An alternative (and less intrusive) is to increase the commit timeout
> > on the build partition
> 
> 
> How does one go about adjusting the commit timeout on a partition/disk? 
commit=[duration in seconds] in fstab.  See the fstab man page for more examples. 

Ross

