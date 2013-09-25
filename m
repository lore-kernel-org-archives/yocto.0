Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A014E015BD
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 18:05:40 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hz10so3842196vcb.40
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 18:05:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Mh4dbjeZsyfq+4rNHbW6Y6QIkwg/ZibbiMP9ComT4mU=;
	b=Tqro1DEW+2OqLfuAMaNiizKhmbom5gcxzXJHaQKOVmrHDkOloc1d0+k+WAJy+3N4y9
	fL+pn0Hct4L0j0Y+vbnNUqoQuSRyTnL4eDL0TenNafyaidnHcscSoanYKFFgI1aGvh5+
	dItQ42elsS6BgdgdxFK8XM8eUPko4GDVNZ7HFKh8wDYhmsuInMtpeXs+n2qZJFighaXv
	Ro20f78ZWgYqENGihfylN+8gX5n54thU9ZxLZHt9omKpwq8PH8s92mHoeW68ZzvdPiFm
	NPeuTYrG3Wyh/7V4K9jfKyldj/06n2w2AIxprK35Ttx08zZEOXZKiKWcMVjs97MTdeNt
	1PkQ==
X-Gm-Message-State: ALoCoQl3wu97fncKFZ9kpF5DUzRyQibmji55Q3gH0a62ZtmFCejMtMt6KfEIKi7yELM+6e//+PvV
MIME-Version: 1.0
X-Received: by 10.58.118.130 with SMTP id km2mr30099729veb.0.1380071140103;
	Tue, 24 Sep 2013 18:05:40 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Tue, 24 Sep 2013 18:05:40 -0700 (PDT)
Date: Tue, 24 Sep 2013 18:05:40 -0700
Message-ID: <CAPhnLPAoka8_e3fhLEpUzTo4FbmKFngjmvu=u7q3k3RZ0WiMMQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Project 1.5_M5.rc5 availability
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
X-List-Received-Date: Wed, 25 Sep 2013 01:05:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

The rc5 build for the upcoming 1.5 release should be available in a
few hours at:

http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc5

Please being testing as soon as it is available.

poky 4d8ab87d25ea6e59dc88375813ef88ee0ac813d0
meta-fsl-arm 561842ac3e1e9f59536dbbbc4a81876f9e0df97b
meta-fsl-ppc 28b7ac5a37a9705d090d7303a024d84efef61b89
meta-intel 67b58a79279ad1beaf8dc0c68fb411f1d440abe4
meta-minnow ad469d78a1f56abd3b7d5103f1e0344cb10684b1
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
eclipse-poky-juno 2fa1c58940141a3c547c8790b8a6832167e8eb66
eclipse-poky-kepler ad74249895f882a8f00bdeef7a0f7c18998cc43e


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

