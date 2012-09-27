Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4675E00717
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 04:31:37 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 27 Sep 2012 04:31:37 -0700
Received: by oagh2 with SMTP id h2so2161564oag.35
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 04:31:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=BNgaC1jvghzdHkpoD5ZatzCgyj1bSQAmaoPcmXcm5TU=;
	b=onw0fVf63DhOhV3keEUUt02QpmatN3nltRaCUVDiLEe3G+xqxZy2p4xLvoR30FqVym
	5gV2G04tmDglId6R9a+ygoxYgUWnjhCMXRspXdG8UOG/kpd0HC30/z/DAW0zk8aL+1Ot
	F6uVSQLaF5OFqUd8nxCJQ9Jse+9Zg6ODWofcDMAXuw2aBKGwm+RMU2r088dDoTN9D1Ii
	ltOxNTmU4WsQ07+rhKnBXTnh2FHtL0kMmKl9VJrx9y2C/WeNdjUn5VZlSvC5Z7BOQfa5
	JQBCWUBiHOCRD/oTilhCBvrmMVHwTsC+iA4He/XPYKwmVdNLGSBoGdhJWUOlvLdVgFS3
	46Uw==
Received: by 10.60.29.72 with SMTP id i8mr2853724oeh.26.1348745495918; Thu, 27
	Sep 2012 04:31:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Thu, 27 Sep 2012 04:31:15 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 27 Sep 2012 12:31:15 +0100
Message-ID: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkXIRVTpJmddT082PomCEgS4jQhGc3hh0ZNeI17bw4T2ZL9vY7pcNGGxfwcbzPcsVR09y1/
Subject: Cannot do atom-pc build with meta-cedartrail
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
X-List-Received-Date: Thu, 27 Sep 2012 11:31:38 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

If I add meta-intel and meta-cedartrail to my bblayers, when I try and
do an atom-pc build (which I thought should still work, right?) I get
the following error:

NOTE: Error during finalise of
/home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb
ERROR: ExpansionError during parsing
/home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb:
Failure expanding variable SRCPV, expression was
${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
Fetcher failure for URL:
'git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=yocto/standard/common-pc/atom-pc,meta,yocto/pvr;name=machine,meta,pvr'.
Please set SRCREV to a valid value

That's a bug, right?

Ross

