Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34746E002A5
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:22:48 -0700 (PDT)
Received: by bkty5 with SMTP id y5so331061bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=GDjPdxjst+DhspH+u7EOycbNxP7+wFQjDRK3s146KSc=;
	b=e+5gvKOwR+5QtS5md6b2Ff+PyHeXP9W3r+rkMJz49/lcInwdWS18IE9DkXtFmwqvN5
	wZg2eg12MM6KlkOJxgbzuVMeJIdR2CYRfQE41QHobmrfMnma+aeJTDi0QNrDoukraJl4
	dM/zNrEiApR0cSLh9tN/J5suh6su8KTYixgEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent:x-gm-message-state;
	bh=GDjPdxjst+DhspH+u7EOycbNxP7+wFQjDRK3s146KSc=;
	b=Xl6Ve6jaThST/m09hfsCIw7eYxXXknjCuO32As1FvkV1y/zNaTShaMl1sAuZIp6JHb
	1k5mlRda2aIwRR87lI3v/ulgJZDnfTECJGmH5gdrXJlchhH4rXMKHxhv74XdgWWMddtF
	h9Fz3cBqS5AnYzMiXlmlYtH6cfPn1hdJ7LOpt0cav7G9ZS7ixS3RUnh1V/LrNjPwAZ+T
	YgpuFej7cEFLai7dOm3jCNwL0+fLQyMBZ48P8yE24x/h3ckmSHYGg9AZPQQ8Bo8aVGbU
	tUOJxyD4oCeToVFqLrxnVqxmoKzWxmZyWy9E8s7p2HI0y2GhZIRf6n46xe9mhEXHIcjW
	G1Aw==
Received: by 10.205.118.14 with SMTP id fo14mr811951bkc.130.1345738967150;
	Thu, 23 Aug 2012 09:22:47 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id g6sm4990558bkg.2.2012.08.23.09.22.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 09:22:46 -0700 (PDT)
Date: Thu, 23 Aug 2012 18:22:42 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120823181926.a85942e8-5d79-48cd-a7a7-678b3e7b93f4.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
	<503630A3.90606@windriver.com>
	<20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
MIME-Version: 1.0
In-Reply-To: <20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQkZV7bMsuHzDXphAQxr/Rn39pOwwG5emA63fvN9cqZhCWWY8luLndKt6Cxs0+mELO/vGd/O
Subject: Re: 1.3_M3 do_kernel_config failes, config_frag.txt is crippled.
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
X-List-Received-Date: Thu, 23 Aug 2012 16:22:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Aug 23, 2012 at 06:18:22PM +0200, Markus Hubig wrote:
> On Thu, Aug 23, 2012 at 09:31:15AM -0400, Bruce Ashfield wrote:
> > On 12-08-23 09:24 AM, Markus Hubig wrote:

<snipp>

> | ▾ recipes-kernel/
> |   ▾ linux/
> |     ▾ files/
> |         hardware.cfg
> |         non-hardware.cfg
> |         portuxg20-preempt-rt.scc
> |         portuxg20-standard.scc
> |         portuxg20.cfg
> |         portuxg20.scc
> |         stamp9g20-preempt-rt.scc
> |         stamp9g20-standard.scc
> |         stamp9g20.cfg
> |         stamp9g20.scc

<snipp>

> To summarize my expirience a bit:
> 
> All files in "FILESEXTRAPATHS_prepend" get copied to "meta/cfg/files",
> but only the *.scc files I include into "SRC_URI" will be used to make
> the kernel config file.

One tiny addition:

A non-flat file layout eg. like this:

| ▾ recipes-kernel/
|   ▾ linux/
|       hardware.cfg
|       non-hardware.cfg
|     ▾ files/
|         portuxg20-preempt-rt.scc
|         portuxg20-standard.scc
|         portuxg20.cfg
|         portuxg20.scc

doesn't work!

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

