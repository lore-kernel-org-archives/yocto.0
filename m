Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 025EFE006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:45:17 -0700 (PDT)
Received: from mail-ey0-f180.google.com ([209.85.215.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 13 Jun 2012 13:44:57 -0700
Received: by eaai12 with SMTP id i12so310108eaa.25
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:44:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:message-id:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=0j4z9J9qhuW7pnir9LLfX3+2c9GqxUceiEIVVTwMAd0=;
	b=aV3oNJNw9/dQa8huZ2x0RI3M6zz2Umfg30YZS553WU8BjwwU7z1JWegtBGw/ApGEqN
	TliVBTfnsAMP4WV0fhc3bzXAUt94z54vg5g5w221B3LaqAHBeoDeZ4i3ZkJVCblAnJs4
	Bm+2IzmT8/tHGIMSLQwlC87ocVT/hGk4fsZBVRdsHhF+hpVvBcQBWGYy2ube2Elktw4Z
	S8J67fF+XcCXJqm5lqAI+leQB9pRll/wRVSOQJHgYGnnLlIMsi6Uh63SouMLpEJSZww4
	H5aqkFTUq4FVYNKnKosw2uDSnPYa+o2CzAB2iXxv0OauLPxHAZnyJ5lAE+Eg9Ynw0Lak
	8o6w==
Received: by 10.14.101.78 with SMTP id a54mr8506683eeg.92.1339620295366;
	Wed, 13 Jun 2012 13:44:55 -0700 (PDT)
Received: from elizabeth.local (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id u16sm11505476eeb.16.2012.06.13.13.44.52
	(version=SSLv3 cipher=OTHER); Wed, 13 Jun 2012 13:44:54 -0700 (PDT)
Date: Wed, 13 Jun 2012 21:44:50 +0100
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Message-ID: <21DFE0D0610B43B982449CB678019727@intel.com>
X-Mailer: sparrow 1.4.2 (build 959.4)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnokMwFHfpqGa1rnN/ly9ogPQjbazPMP3k0HUItdsQoTm1k46mOGZJdXeD9eIyhMij4XURA
Subject: More useful generic-x86 machine
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
X-List-Received-Date: Wed, 13 Jun 2012 20:45:18 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi,

My current test hardware for Yocto work is a Celeron-class Sandy Bridge-based micro PC. As is to be expected for a machine like this, it's got modern Intel graphics and wireless. Neither of which are supported by atom-pc, as it's nominally a "generic netbook" image.

Let's face it -- it's a really bad generic netbook image, it's really a Asus eeePC701-and-similar image. Specifically, only one wifi driver, only i915 GPU driver, and so on.

I'm not arguing for a true generic kernel such as Fedora maintains which boots on almost everything, just a new machine with more flexibility. Including both i915 and i965 GPU drivers covers everything Intel-driven from the earliest netbook to the latest Ivy Bridge[1].  Including the iwl wifi drivers at least covers a good proportion of devices out there.  There are probably a few more drivers that are common and give big gains in support.  Not exactly boot on everything, but certainly boot on many.

Thoughts?

Ross

[1] Ignoring Cedar Trail, but that's already in meta-intel

