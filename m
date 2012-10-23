Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF5A4E00348
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:12:48 -0700 (PDT)
Received: from mail-ea0-f200.google.com ([209.85.215.200])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 23 Oct 2012 14:12:47 -0700
Received: by mail-ea0-f200.google.com with SMTP id i11so2960814eaa.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=edha0x80/folpCygMfDlsuxV9rCsQiYOtC8SjQyr3bY=;
	b=LFFnhoom+Cj60xGnIXLouqj3NthA0EMZY9hwqZfMEf4iqqriI28mnrSea93lkpydMw
	pL1KkBe6ws9OESieXY4iK57/BXCKSItZYVA8yWWxeoV27JHza3ukkQZ3oMJJ2svcNjqs
	mPLAr3w2Y/wJuS5+VMaQKhpPKRbzK/xxtQVqTf35B5N/XVTDj5oCbeq1bVaN3FdVdzPl
	9i+1XsueMitd2pm1PNPIJRtiMQUe3HYU29SS5uYAG9T8JhJz7MXcGQ/f0ORtBCIGVi1q
	+xFTNYgwUd4pogXXdjg4Gt6zBahHtukG0O+fvW22klTdRn4lfx9qC3AVaohc0+RQDJMj
	0KRA==
Received: by 10.216.134.145 with SMTP id s17mr8636628wei.127.1351026765977;
	Tue, 23 Oct 2012 14:12:45 -0700 (PDT)
Received: by 10.216.134.145 with SMTP id s17mr8636622wei.127.1351026765812;
	Tue, 23 Oct 2012 14:12:45 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id dm3sm812600wib.3.2012.10.23.14.12.44
	(version=SSLv3 cipher=OTHER); Tue, 23 Oct 2012 14:12:45 -0700 (PDT)
Date: Tue, 23 Oct 2012 22:12:48 +0100
From: Ross Burton <ross.burton@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <7C25CAD3D2FF4EAABCD90B26EC168705@intel.com>
In-Reply-To: <5086D81E.4030401@gmail.com>
References: <5086D81E.4030401@gmail.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnyXGT2ViTtDjPIu+/urmtnhHTiVRalPwiZFCL4STe9fK0C67B5N12rXqczNYvFU+/ciwLQU5HlGsZsDMK8YRV83/RJuhWGe23pOzQIU4r7Fj2VDqsgBHLSdPJzvhjzLWho7IxiutrUlF8c78141rBNp6QddQ==
Cc: yocto@yoctoproject.org
Subject: Re: build failures after pull
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
X-List-Received-Date: Tue, 23 Oct 2012 21:12:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 23 October 2012 at 18:47, Jim Abernathy wrote:
> I've reported this before, but it still happens. Today, I did a git 
> pull into my local while master was checked out, both on poky and 
> meta-intel. I then tried to rerun without cleaning or deleting anything 
> for chiefriver. My last build had been successfully built, but didn't 
> have audio. So when I saw patches, I thought I'd test again. I simply did
> 
> "source oe-init-build-env"
> "bitbake core-image-sato"
> 
> I got a failure in diffutils for some reason. I then did
> 
> "bitbake -c cleansstate diffutils"
> "bitbake core-image-sato".

Next time, including the log of the task that failed (do_compile in diffutils, I presume) might help identify what broke.

Ross 



