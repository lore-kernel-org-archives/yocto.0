Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35C2DE009DA; Wed,  8 Feb 2017 23:49:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3C9E00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 23:49:11 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id z134so96365208lff.3
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 23:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=KeCP0/9Fiogjo7EO5RJkWIoIPk+oLahM1JRbBHjELF4=;
	b=jJ33JjMfzSziwvm7yIAPKVOV53vsFC918NL0xBPXWqKGOBFGSXIdl7NqTOB6Qr0fq3
	u2U5ZVEoact44UXJGDewVTtysrxFH6Cy31bgRX5F6Tn0vMyhOKsz3acIl2Nq9Bv2Ns2m
	PoKNVWlK6Vj02Xuh1VVVMBR/eLMP+JhlBQ99O1iyKFocYTj3mhNXWetixCspIavxbDgr
	SnhKJic5lNCv66Ds2xl1GWDbHkDFeKsUH8aL57H4z0LidJLhEziQn/uJjIOxTHM+CjY+
	2rKXaBgDgWHm4dHetM83LqmE2SyYAOEc3ZxxLqZHegKCevYp9xkfrgug2+iVWSZaXwN+
	mySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=KeCP0/9Fiogjo7EO5RJkWIoIPk+oLahM1JRbBHjELF4=;
	b=sE6Q4EcrafowzvJSD0v9AZDjPQIgoZpjI6HxD/ll5P7m0gxoaa18J+DPbc9y71B4DO
	JeFevDTxkPMd+qQqfUjs0TtveKs+Wf2I+YnIW+maGx1Hzs30q+G+MG7U4UMGS6X7iUOu
	PLO4XMP5oWC11L/6UgfIQy1c1tWWrcfeRcbTDPzvmrm/jkwizTceE4+OhNVAFGPcObwL
	ztEMSjI3QyD8PzYTkDbHRHudtehnkAM/SrkF4B3ANME6GDhbeLs+haPIMbKpnYCjshf3
	HqyNugF3wu0VscI3yNdrljcmw5N3+Z1rSxysz1BHIzgnZoHdwS9HKIVxA98LYSUdaDvi
	a0Yw==
X-Gm-Message-State: AMke39kj73bKtuVYCiBLSOi0ofTQFlLHf3LZ4UZIrKCOkeH3yoAVm8d1XyLy+YIu+gV+EQ==
X-Received: by 10.46.77.9 with SMTP id a9mr644149ljb.25.1486626549785;
	Wed, 08 Feb 2017 23:49:09 -0800 (PST)
Received: from ad.chargestorm.se (h83-209-191-235.cust.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	a71sm3211072lfe.36.2017.02.08.23.49.08 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 08 Feb 2017 23:49:08 -0800 (PST)
Date: Thu, 9 Feb 2017 08:49:07 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170209074907.u2ghryme4xzxopi7@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
	<89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
	<15650683.oLyvIqKQ2l@peggleto-mobl.ger.corp.intel.com>
	<31b81d5d-a30a-3a1a-bdcd-9a91b03d7b85@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <31b81d5d-a30a-3a1a-bdcd-9a91b03d7b85@mlbassoc.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: sysroot question
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
X-List-Received-Date: Thu, 09 Feb 2017 07:49:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Gary Thomas <gary@mlbassoc.com> [170209 05:25]:
> On 2017-02-08 20:36, Paul Eggleton wrote:
> > I think the problem is that the task that prepares the sysroot
> > (do_prepare_recipe_sysroot) isn't a dependency of your task. module.bbclass
> > uses this:

> > addtask make_scripts after do_prepare_recipe_sysroot before do_compile

> > BTW you say you patterned your recipe after the skeleton example, except
> > hello-mod at least currently inherits module rather than module-base + kernel-
> > module-split - is there a compelling reason not to inherit module?

> I may have been mistaken about the original source - it looks like I
> used a similar module strategy from meta-freescale.  I did [just now]
> try using "inherit module" and the build dies a horrible death with
> this error
> | make: *** No rule to make target 'modules_install'.  Stop.

Well, that is simple to solve. module.bbclasses sets

MODULES_INSTALL_TARGET ?= "modules_install"

just override that with your own install target. (Or fix the module's
Makefile). The last option is to simply override do_install in your
recipe.

> I changed my [task] dependencies to match what you've quoted and everything
> works as before.  !Thanks!

I'd still recommend doing as little as possible in each recipe, and
leverage the standard modules.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

