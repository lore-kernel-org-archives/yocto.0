Return-Path: <lukas@dramiel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C6C9E00B7B; Wed, 11 Jun 2014 11:18:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,URI_HEX
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.3 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09DF4E0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 11:18:00 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id us18so266665veb.19
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 11:18:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=kbRpltOa0n3KMI+jgXhP0ma8j3/DnQNoAY+ueF76mZo=;
	b=GLrrXk6571u5WBJF85CJ/GjrQgtgRDmWqs1Beibut2IaIa17h7s4AN3X8zK6CA7C2K
	8ryVnx2MTjKu5TlZNNxAXpPZuHpmhr+izzW7phcOcvpAIYNLZnu+nKFp2OhLX7dp3kuG
	lJ8376/qLatVbNo9uGjTc1jDMdQMTvE8wRv8t8c08ERWv7HVZJpnxRm98yFbUjyUFFir
	HqDmiJ7sVtBmojA9G92lA3u7nn7EvI/pWQ7PZv99kXS+aT3jDfZVrInEjHUrjZYyNQ1Z
	PR2ZS6mLESng938Sgt74lWlTedZEu9hkbc0aCDw2A9RoQp6Akfafl+uny+Drd9ygDDo1
	PYWg==
X-Gm-Message-State: ALoCoQkZ1IDcdWCFpyMu/5rcULjnUPCxmTDL4zy13KY6GmmHxw6Sfh9VmKyb40TrKm3HqR28wWFC
MIME-Version: 1.0
X-Received: by 10.52.94.47 with SMTP id cz15mr4317442vdb.0.1402510679813; Wed,
	11 Jun 2014 11:17:59 -0700 (PDT)
Received: by 10.52.34.178 with HTTP; Wed, 11 Jun 2014 11:17:59 -0700 (PDT)
X-Originating-IP: [46.16.120.77]
Date: Wed, 11 Jun 2014 20:17:59 +0200
Message-ID: <CACwkBCTTVA7YCaxZ7UdTB6dDEjr+96PCzYsSHkJ+k-QC7MvMPw@mail.gmail.com>
From: =?UTF-8?B?THVrw6HFoSBOb3ZvdG7DvQ==?= <lukas@dramiel.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Nothing RPROVIDES 'liborc-0.4'
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
X-List-Received-Date: Wed, 11 Jun 2014 18:18:08 -0000
Content-Type: text/plain; charset=UTF-8

Hello everyone,

I'm trying to build raspberry pi image that includes gstreamer1.0 and
it's plugins. Packages built successfully, however when trying to
build the image itself I get error:

Nothing RPROVIDES 'liborc-0.4' (but
/home/lukas/opt/yocto-daisy/poky/build-raspberrypi/recipes/images/rpi-retail-player-edited-20140611-195509.bb
RDEPENDS on or otherwise requires it)

Full output when using bitbake directly: http://pastebin.com/2mcUwzAm

Searching for "liborc*" within tmp/deploy returns:

./rpm/armv6_vfp/liborc-test-0.4-0-0.4.18-r2.0.armv6_vfp.rpm
./rpm/armv6_vfp/liborc-0.4-0-0.4.18-r2.0.armv6_vfp.rpm

I have tried also building from 'master' branch of both poky and
meta-raspberrypi and I'm getting the same error. Any idea on what's
going on and how to fix it?

Thank you,
Lukas Novotny

