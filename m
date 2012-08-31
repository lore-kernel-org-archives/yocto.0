Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BD7E00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 16:11:54 -0700 (PDT)
Received: from mail-pb0-f48.google.com ([209.85.160.48])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 31 Aug 2012 16:11:54 -0700
Received: by pbbrq13 with SMTP id rq13so6631046pbb.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 16:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=F5CSlG9yr8bu4/WDMWepCL9TI8AjO6Z80u89Ie9TbWo=;
	b=NmULfKZJzlIe5CczM5yH60J48EN2KJi0sVTVkDoOwyHK+BmxVw1F3qA9MstGMMukm6
	bHBhJXOGX67uQWt+NhuZqSQYuXyW1KqCe06Udf5USRKJQ6w/mBD9uUegtagpuMvNBKLI
	LdYVercOwuLIEcV+64Poz668S9EHRFBGwEMh4VrpIJ4QhDYGLL1hWJR+ft0aWKYvs7rq
	fPbZzf6+z33niyoXqAstYFBvY+e+tX8QH4zjke3BYV+VtfY54yTBZcN2Ee9bdFAnR437
	Pp3L2mys3cm4i4nrB/MQPraAFG3w34JvJL2SWMv068gfzGawXB6QfU9wafdsUUIc8gE3
	/e1w==
Received: by 10.66.85.4 with SMTP id d4mr18068156paz.11.1346454713605;
	Fri, 31 Aug 2012 16:11:53 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id pn4sm4330026pbb.50.2012.08.31.16.11.52
	(version=SSLv3 cipher=OTHER); Fri, 31 Aug 2012 16:11:53 -0700 (PDT)
Message-ID: <504144D8.40605@intel.com>
Date: Fri, 31 Aug 2012 16:12:24 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlULHFhGm2w3AYJueaAM9p3ZC7TA4A8UL1qgElhoe2bIS3cXvuugWhVd6mdPQxWG+liC8/R
Subject: Beaglebone BSP for denzil?
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
X-List-Received-Date: Fri, 31 Aug 2012 23:11:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Am I correct in understanding that the TI Beagleboard BSP from 
yoctoproject.org should work with the Beaglebone, or do I need meta-ti? 
I'm not looking for accelerated graphics or anything - this will just be 
used in a classroom setting where there will be Beaglebones I'd like to 
boot up to a minimal console image.

I'll be doing this with the denzil release.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

