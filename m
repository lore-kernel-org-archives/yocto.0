Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED22AE002A5
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:28:09 -0700 (PDT)
Received: by bkty5 with SMTP id y5so356382bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=t5oNZlAdgI3einyAb2DbebSRLybJDjYVuqYXn1XkQkg=;
	b=qN8jgypjemdBvcxyiBXf86RP/yvtSA9ANfx7BwER0y0zJ2h6gNBvvuWrGAPXMoIfhJ
	97PRDUUAwl1qCpXJ+WElL1jO7w4lZHXBsqcQZ1FKfarsBNE56BdMAncDCyOIeueQNrhw
	BbaOapd6WeIREr12bCz8GJsGn+yr+LTBLwDGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=t5oNZlAdgI3einyAb2DbebSRLybJDjYVuqYXn1XkQkg=;
	b=EvWw6tmTAyM6sHjDx9RrPYA2pWGdc1bTOtd8cPAR3Zx+MTqP4RKWZgAiRnHtd/PQVv
	HgY/0+mkijGnm3YyQvIMCsN/2SBG3EjxvJDNXlLEro3fxy0do6zXjYoF4AG9j5+iANHp
	jF+uIb1gF2XdyaFX6ODVpYHkaJRZYNCFds+4YYas+IJdZzwPz6KxQEhc6n15Y6gKWgM+
	xqoVdvb1KuNilhrdBUWj3g8NnpALWKnkp9DfRcoA5OeYjmjgds69es7JqFN+P52PHtaZ
	unyoCayeMWQpjnFYXCaXQotP1HPFZR3LTUFCnPMHnBCSkbDgKwjTmAJf+B5f1i1uqjvL
	wpyg==
Received: by 10.204.154.214 with SMTP id p22mr909473bkw.111.1345742888758;
	Thu, 23 Aug 2012 10:28:08 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id ht18sm5079273bkc.16.2012.08.23.10.28.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 10:28:07 -0700 (PDT)
Date: Thu, 23 Aug 2012 19:28:04 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120823192343.a92af96b-a5ee-491b-80de-fb8ba16871e6.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
	<503630A3.90606@windriver.com>
	<20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
	<503659B6.6090207@windriver.com>
MIME-Version: 1.0
In-Reply-To: <503659B6.6090207@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQk+6DkKQXYQUIV9hJqJowZ6DE/5yOgIJK3/PvmwfgnjpMiBp76PhULS6RAhx1hsAptwFN9e
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
X-List-Received-Date: Thu, 23 Aug 2012 17:28:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 23, 2012 at 12:26:30PM -0400, Bruce Ashfield wrote:
> On 12-08-23 12:18 PM, Markus Hubig wrote:
> >On Thu, Aug 23, 2012 at 09:31:15AM -0400, Bruce Ashfield wrote:
> >>On 12-08-23 09:24 AM, Markus Hubig wrote:

<snipp>

> >Surprisingly if I remove the *.cfg files from the SRC_URI
> >
> >| SRC_URI_append_portuxg20 = "\
> >|         file://portuxg20-standard.scc   \
> >|         file://portuxg20-preempt-rt.scc \
> >|         file://portuxg20.scc            \
> >|         "
> >|
> >| SRC_URI_append_stamp9g20 = "
> >|         file://stamp9g20-standard.scc   \
> >|         file://stamp9g20-preempt-rt.scc \
> >|         file://stamp9g20.scc            \
> >
> >it also works ...
> 
> Yes, and I can explain this part. When a .scc file is detected, the
> entire directory contents are propagated to the kernel build, since
> .scc files can refer to patches, configs, etc, and some elements are
> optional, they are all made available.
> 
> So if you reference .cfgs and patches in your .scc files, you don't
> need them in the SRC_URI, just the .scc file.

Is it possible that if I remove the *.cfg files, bitbake no longer tracks
changes inside this files and will not rebuild the related packages from
scratch with:

| bitbake -fc clean linux-yocto
| bitbake linux-yocto
 
Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

