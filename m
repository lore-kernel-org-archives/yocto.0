Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6ABEE00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 12:07:23 -0700 (PDT)
Received: by lboi15 with SMTP id i15so218039lbo.35
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 12:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=kD+8GMAujn760HReZTrqcQXUDK0kfRur2ByVHgIHtj4=;
	b=c4ZFQykWwvaQwd7Vnumbvco2rLbHrKBK0IGrxNetqPcG4mwdHbz1U80uYFf9f0PtpV
	68rD5YHhFo7th79HseHI4SziAuCMlVLcgefX9DM0DOXFygFrbXSMsGpFvzOKbGjK3A9x
	fGCN9hJDXI4rWTxm8J76yL/XTegH4R4q6ra5iokGR+lzgvWZqQ0eEBUt6+g9QqdzOjR7
	YaRMeQ3bSMwiUQ41isAtvWT1TZcnAfJKxi8Myz3OLsgcNbAvaIA1lsT9lBtWCzp4xTH0
	YymOV9vvD6anlcKX0CelAcKvoC+AFbO1HooA8EcE3gpmaVAnK0nRSFJFKLElqk2TL3+z
	PT6A==
Received: by 10.112.86.169 with SMTP id q9mr8069120lbz.65.1345576041701; Tue,
	21 Aug 2012 12:07:21 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Tue, 21 Aug 2012 12:07:01 -0700 (PDT)
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003313948@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
	<CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003313948@ORSMSX103.amr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 21 Aug 2012 12:07:01 -0700
X-Google-Sender-Auth: XzoL12Eo2Xj1cllIs3qph72l-aM
Message-ID: <CABcZANmPJRyXSh0H7GD3Gr7Yn4GbPQYmPNLpO5vQNHGAuZ=t8w@mail.gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Tue, 21 Aug 2012 19:07:24 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 21, 2012 at 12:05 PM, Saxena, Rahul <rahul.saxena@intel.com> wrote:
> You are right, these are regular files and not symlinks and are ending up in usr/lib in packagename-dev package
> However I want them to be in the regular package.
>
> I do have the following statement in my recipe:
>
> FILES_${PN} += "${libdir}/lib*.so"
>
> and nothing in my recipe has statements such as FILES_${PN)-dev = ...


Read oe-core/meta/conf/bitbake.conf.
-- 
Christopher Larson

