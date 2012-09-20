Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F756E0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 17:25:20 -0700 (PDT)
Received: from mail-qa0-f41.google.com ([209.85.216.41])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 19 Sep 2012 17:25:15 -0700
Received: by qafk30 with SMTP id k30so4697607qaf.14
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 17:25:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=DLRAmrqPeVVje7QNUz7RF0IozNP+tlD2JKj1Y0DZRy4=;
	b=BgJm0CH2D3F0KUcJvnAA6w645tIPjtvSXaYrTq/5QH8FzKSdLbcHdQsKEqWmLF58Ki
	A7mc6czr9kt9+Az1p3UxIyv2h7NkO4CHeSGOHbPh/QoB3kJhF8l9ehTcrs1zIkMqJ07M
	Vr+KF+TYD0+SG4jQ8aMfDhQ892v74GNsZoNzLJ2k0r5SmehhAn9wFrePfQytEu8RpsAx
	ZXyTnGsyAWZV4wyqw+ZIHollF1VmO03JnvnLCEzIM71JXpaM/QO6Zzv8RLGTnL9Jfaca
	F6SUwUw92C7ER+v2bWxsaYwGGftfuT0YZKlNaBG0R3Q6gV2BWP6EFOvYW9V9VxvrLOXQ
	9jFw==
MIME-Version: 1.0
Received: by 10.224.199.132 with SMTP id es4mr991710qab.43.1348100714709; Wed,
	19 Sep 2012 17:25:14 -0700 (PDT)
Received: by 10.229.63.1 with HTTP; Wed, 19 Sep 2012 17:25:14 -0700 (PDT)
Date: Wed, 19 Sep 2012 17:25:14 -0700
Message-ID: <CAPhnLPBN=4TEGCuHPzVA5ZsgdFEQYMShPtxtgB+RCz8naWtx0A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQksYbfFd4IQTk2CYRR0n8fnZcl346A9yGLZe6hpqMok0RsLOqh6RNoXenxtPVKD2KJOxpEi
Subject: 1.3_M5.rc1 branched
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
X-List-Received-Date: Thu, 20 Sep 2012 00:25:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

1.3_M5 has been branched and rc1 is close to complete. There were a
few minor issues which have caused a targeted regeneration of build
artifacts. Specifically, we are regenerating the build appliance and
the eclipse plugin. Those build artifacts will be moved to the release
cadidate directory when they are complete (a few hours from now.). I
will send out a note when they are finished but if people wish to
begin testing as soon as they are done, I've included the links to
where they're being built out to:

Download: autobuilder.yoctoproject.org/pub/nightly/20120919-2
poky: 52850f0fc6f801298413ee779834b346ef7f48d6
meta-qt3: 8730326c902e6fb256b5dea77a6dde28d813c424
eclipse-poky: 7b86e48a504f79871cdfdabd4995aa64352fdeed

Rebuilds:
Build-appliance:
http://autobuilder.yoctoproject.org/pub/build-appliance/20120919-1
Eclipse-poky: http://autobuilder.yoctoproject.org/pub/eclipse-plugin/20120919-2

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

