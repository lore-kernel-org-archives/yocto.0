Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1B90AE00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:58:40 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 7so1164457qea.37
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:58:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=xSVr0thV3kpa5q1mp9eCfYj4R6U8dAgLEGv8CKkMd9g=;
	b=RXEoaWt2oSp7V3n5t2c6LnTD3np5pEnlGylqUp04ZWMdKZjx8GYNeSDTBCFwJsiMKy
	bOoFU1Ksjby1UW4EhrNDF4wU+5lPcDUhAIHIhS5oMoG6wC73W+NnJ7FCzgy+jmIBk7UU
	GvYpdkM1tPJwP21Ynh0HBcFHfscZlS37noSTo8Vh2QHx7P6RgTI/t6uOIHrkPzI+zazM
	/m65fOn3TXvJDyaCohpeVpyIEfhwh7UV30BigbphjTi7zNjAmVMBYjmkyYP+Wx5xlzLU
	4kszCQoyCbyxSMeqSH0auewLrBOms2OEi66u3lQAI5ijOqFDWMBYROpBGFmoBuaO3YzZ
	YtPQ==
MIME-Version: 1.0
X-Received: by 10.224.216.65 with SMTP id hh1mr839698qab.43.1360861120137;
	Thu, 14 Feb 2013 08:58:40 -0800 (PST)
Received: by 10.49.62.168 with HTTP; Thu, 14 Feb 2013 08:58:39 -0800 (PST)
Date: Thu, 14 Feb 2013 08:58:39 -0800
Message-ID: <CAPhnLPAxb7MyM7jqTaUJnCLw4HYUGPYpddM78yxgZjhiD7SKOA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnk59D7FXBDANwjdvUgI8o+4VrDj3WcUXV8s1qJJaIcDdNb0IvD7a5rzTvNwEBWvjrIAF3d
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build availability
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
X-List-Received-Date: Thu, 14 Feb 2013 16:58:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is now available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130213-3

Known issues:
---------------------
- adt-installer failed to build due to a macro error in configuring of
kconfig-frontends-native
- build appliance failed due to genext2fs error during rootfs
- nightly-fsl-arm* both failed due to  no recipes for mesa-dri

--
Elizabeth Flanagan
Yocto Project
Build and Release

