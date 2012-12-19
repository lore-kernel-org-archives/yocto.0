Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9391AE0045D
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 15:54:49 -0800 (PST)
Received: from mail-gg0-f198.google.com ([209.85.161.198])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 19 Dec 2012 15:54:48 -0800
Received: by mail-gg0-f198.google.com with SMTP id f4so3915068ggn.5
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 15:54:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=6LrK4mzj7SLhnH98BKl7Ux0/AFxbaXJOSlQs4JZ8Ncg=;
	b=d5FBay5yl7+oHF1jeVvdJncR/p1HtfID64BU0PPfmu+Fr2o3oirtYhFvcGGsaN4s8K
	LgSMRW6blr4bogrkHkwYPVwBvOpG+yIvUozj4rWAYE4Uc1URRqlIFPcfSgGldxC11oJb
	jeAx5QNgBEZpWRltDVwnrlxurSCUss1QgMerlVuqDSk8kH6FQcGrebx1iJTjU++EDRi2
	/5A8m+mj6bZYPaniukafCczQKHM4DVzqFKCiq89/Ay6yS/8Xmmlz8Kbp9XTX6h9f74uv
	ntA0vrIRjTlHVTeGyOgkB67/6IA6IsfNlyDjjAy46oX2lKcjLAinc5eGzRK7X+itobTk
	vQuw==
X-Received: by 10.224.30.203 with SMTP id v11mr3940976qac.31.1355961287745;
	Wed, 19 Dec 2012 15:54:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.30.203 with SMTP id v11mr3940970qac.31.1355961287522; Wed,
	19 Dec 2012 15:54:47 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Wed, 19 Dec 2012 15:54:47 -0800 (PST)
Date: Wed, 19 Dec 2012 15:54:47 -0800
Message-ID: <CAPhnLPAPfR=pnk67N024-7x_zo6t-+ZAU11Nkd_LDMxaui2fvA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmlGBgT9WFCa0hErGbgploHDBm+4XM8yYhhuSbvSDd1fwAVk2KeUj5/kY6/c/2/HrJEsk71w7hyfll5+9DKC+AYU71cuv7nM7xDjBLcJPuQQs61+7GoEBgjKUzHnKItquLVh9CxAvd58izWmeExFrN09Vh7xA==
Subject: Weekly build availability.
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
X-List-Received-Date: Wed, 19 Dec 2012 23:54:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20121219-5

One known issue is that the eclipse plugin needs to be built alone and
moved manually. I'll do this when it is finished building. This is due
to some autobuilder issues I'll be fixing tonight.

I *will* be producing weekly builds over the holidays in case we have
anyone who wants them.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

