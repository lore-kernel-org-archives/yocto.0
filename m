Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 691EDE006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 12:01:39 -0700 (PDT)
Received: from mail-qa0-f49.google.com ([209.85.216.49])
	by mga03.intel.com with ESMTP/TLS/RC4-MD5; 31 May 2012 12:01:38 -0700
Received: by qabj40 with SMTP id j40so1134204qab.15
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 12:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ZfFfTs7OaNUPjYDdKQOSkM0krKnLnf0yT+1bMLT9hbY=;
	b=BQjxmQxddTTg9ImOoZTkv7Km0bWerf3gw/U1KR9nOFfzywPcOz0yYEKyYNfoSKLEtp
	BIM9sBEcepV+ssWgw0tp0yshP7tNkIBP6napA6Rp2GHELVDjcbe2WPngz5xxsQi+wD/T
	aMoSMSwmHdlnvdmATpSmlhLkXZ4jweeV2Kch0Oxt0FEfjSWEfSEG9n7zdY3qmIWj5YBm
	wqu6gP1kiKemqfxlzXlPBA16XQz/gGxVkGgiiJbzz/XuDT9OiZu0xlLpa5Luh38yVYZg
	D5pO3UNWyYcoKfQkRNwc4bfCepbm5GR4XUQXUTJZzw68UrB9Z+KyT1GcUV75aQ2mnEoL
	ayzg==
Received: by 10.224.110.70 with SMTP id m6mr1155681qap.69.1338490897537; Thu,
	31 May 2012 12:01:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.53.212 with HTTP; Thu, 31 May 2012 12:01:17 -0700 (PDT)
In-Reply-To: <CBED6054.10464%belen.barros.pena@intel.com>
References: <CBED5FA2.10462%belen.barros.pena@intel.com>
	<CBED6054.10464%belen.barros.pena@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 May 2012 20:01:17 +0100
Message-ID: <CAJTo0LbxOrohWtdcxAz3+X0fH84BVEHup9CjxX8WOy276AVT9Q@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
X-Gm-Message-State: ALoCoQnZwUOtNlCu+fBS3Eai6bkRJB4YaJLuZYx2xCq+b4OI6Qkoculfls9szQu/KzDzxMAGLK96
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Thu, 31 May 2012 19:01:39 -0000
Content-Type: text/plain; charset=UTF-8

Hi Belen,

On 31 May 2012 17:55, Barros Pena, Belen <belen.barros.pena@intel.com> wrote:
> As part of the Hob work for the 1.3 release it looks like we need to make
> a visual design and implementation decision: do we want a 'vanilla' or a
> 'branded' look for Hob? Sorry if the choice of words is not the best.
> Neither 'vanilla' nor 'branded' are meant in any negative way.

Vanilla, definitely.  Aside from sticking out like a sore thumb on the
user's desktop, a "branded" interface in something like GTK+ is
normally trickier to implement.

Ross

