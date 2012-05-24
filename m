Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F22E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 17:35:49 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 23 May 2012 17:35:48 -0700
Received: by lahj13 with SMTP id j13so5024439lah.25
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 17:35:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=iMFxtwsaUEbYfrEoGbCNJ4Qadk6r9YQaakp9rgYzDHc=;
	b=ITm4scJZRYCdpxHiZrGo6wBZdj3XMFI8j4U0eK73WErmcx7mkzWNSJLHTTkEhlRDcT
	COCHF0+szfb4Y+YKq4CiLoNXvffaKz2ge0fpl1rVVp5Qaw0ig3rqtDB9DqNSdP9FY44S
	9fLcXE4lXiF/7yDgT8MB5Tq26QHQtJpwyIEU7uJpXAab7zarCkmFyKOhMOvFc8Cy7gXo
	1TUdln02LeW1Uy68UEuaPVTOfvB/Jqji/44U5jyNvXrmXg7UKuJdWCGxx5J/t2+va95v
	1DafVryGyAuUp36Jzarwz0Mqqm3x3/xln2ZdcEQEeTY0dFAM+DH7+PU+xMyytKpCGEPl
	xRHg==
MIME-Version: 1.0
Received: by 10.112.42.228 with SMTP id r4mr9621150lbl.4.1337819746789; Wed,
	23 May 2012 17:35:46 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 23 May 2012 17:35:46 -0700 (PDT)
Date: Wed, 23 May 2012 17:35:46 -0700
Message-ID: <CAPhnLPA_m59_8fkbD5vU1cti9+-nW_hh9PMazD8QsF1FrxzbhA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQl5gbcV0j8dx8O5OL+jdSHYKieH+i4lqFgJEx+pmhA6LeIYQ4GukTlFKE7w7QzwvkljdOKu
Subject: Planned Autobuilder Downtime
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
X-List-Received-Date: Thu, 24 May 2012 00:35:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I'll be upgrading the autobuilder servers on Friday afternoon, US west
coast time and conducting a test build of master and edison over the
weekend to verify that everything is working correctly. This will not
effect downloads, however the autobuilders will not be available for
builds for about 24 hours while final testing is completed. This
upgrade is mostly configuration related and has been delayed for some
time now due to autobuilder lockout periods. This upgrade will be
fixing the following bugs:

2029 Add a core-image-rt DISTRO target
2028 Add a poky-tiny DISTRO target
1850 Add new nightly-misc target to test other combinations
2191 i686-x86_64 toolchain is copied to the incorrect sharing directory

This upgrade also will allow for the autobuilder software to be more
flexible. The code has been cleaned up a bit more and some new
features added. One of the things I've wanted to add for a while now
is the ability to due pure OE-Core builds. The basic support for that
is in this upgrade. Also, this upgrade handles BSP builds more
smoothly than before, allowing us to utilize multiple bsp providers
(meta-ti, meta-intel, meta-fsl for example) in creating bblayers.conf.
And finally, this will also bring the production autobuilder entirely
in line with the git tree, something that has been planned for some
time. As the config file is now entirely controlled via the
autobuilder.conf file, it allows us to have a single generic
yoctoABConfig.py.

Lastly, I'll be updating credentials on the server. If you have build
permission on the server and have not sent me updated credentials,
please do so before Friday, as all prior credentials will be revoked
Friday afternoon.

Thanks,

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

