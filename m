Return-Path: <rickard.gustafson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C06E00BC2; Mon, 10 Jul 2017 07:22:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B66EEE00B8B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 07:22:15 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id 77so140875729wrb.1
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 07:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=UtAhza4fQyar2rVuUuylWpZSdaqF/2dUGiJ6IWT/7hc=;
	b=L31dz4LvT39kT/YB1kMc/c7494Ew2STKM3MxmVXs8I7N61252GB+aIaR3yj/ADDsAf
	URibyMghYKGEW7kpATTdyogjazoVtE6Wy5YSjTcEQBFw0pUMf5T2Kea58qPMJWkHLEdJ
	LOwYveRRuzLZh9mRohxWeydNk2fp3LYzikmLAOkFF1fsjfraMaEG/MalmsdLTrTQqK4f
	fGdf6KyW219bWiwTXHZsjEP56+IbwjGnAMkMglP5UMUlN8/VRW2p1shm6F4NGXzoWxYn
	1IlKH1BLYst6xNl3Z48Y/TMfX2lp9YnwUIonBZXL82GuMhNnH4aB+g7KECCdiILHEGTw
	tkbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mime-version:content-disposition:user-agent;
	bh=UtAhza4fQyar2rVuUuylWpZSdaqF/2dUGiJ6IWT/7hc=;
	b=GlzBPgB8AuW/a2G/FiIGwxFpvieMIkgpM5CILuS+Eflg2AO/aMzKxU0gz3oxPLIkgd
	SXWOJKFCK8ECILWLO7KxC33teVk+dH0yjF53D3znsz9ueDKwkJfOlv9F979mkgu9t2H9
	VOKwk/PRddYrQ/uPoDWl6ZxSPKLu5LVMgc8cUeK0Cx7kS9pBY+kpVRllvniHI9ofp9oz
	WpXU1O081fi1jnysn586AxnzKKCEtX8UuQIy4+nDQOiDe+e2Rc1x+SmMdtq+QX9ArKSI
	6hxj7iH47MxUpCvaJb00hiLCmzOQMyyXCRHzRuwQe2/rknnCVKZreiyyeFKFRpvQ1v2H
	6tzQ==
X-Gm-Message-State: AIVw110WquCfK3E3NttP/44hcOCPq3wJ/SR6hooe3p4lrtK0XY31kD9O
	bzJZ+cv86KuxwrlGJFw=
X-Received: by 10.28.94.13 with SMTP id s13mr7970226wmb.33.1499696534210;
	Mon, 10 Jul 2017 07:22:14 -0700 (PDT)
Received: from localhost ([163.172.169.36])
	by smtp.gmail.com with ESMTPSA id y76sm4728453wmh.2.2017.07.10.07.22.13
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jul 2017 07:22:13 -0700 (PDT)
Sender: Rickard Gustafsson <rickard.gustafson@gmail.com>
Date: Mon, 10 Jul 2017 10:20:06 -0400
From: Rickard Gustafsson <rickard@allyourbase.se>
To: yocto@yoctoproject.org
Message-ID: <20170710142006.GA29306@scw-780cb7>
MIME-Version: 1.0
User-Agent: Mutt/1.6.1 (2016-04-27)
Subject: locale failure during do_rootfs
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
X-List-Received-Date: Mon, 10 Jul 2017 14:22:19 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

I just want to share a solution to a problem.
tl;dr use a supported system to build.

I got the same error as mentioned here: 
https://lists.yoctoproject.org/pipermail/yocto/2017-June/036622.html

[log_check] Failed to set locale, defaulting to C

This is an error that occurs for RPM based systems built with yocto.
It raises from dnf-native when i18n.py is run due to an unfortunate 
error message when an exception is raised when there is a locale 
exception from the line:
dnf.pycomp.setlocale(locale.LC_ALL, '')
which prints:
print('Failed to set locale, defaulting to C', file=sys.stderr)

On some systems this will raise an exception even if locales are 
configured properly, which they should otherwise bitbake would fail 
earlier.

So I found out that problem has to do with that python cannot find the 
build systems locales. I use slackware 14.2 to build and there the 
locales are located in /usr/lib64/locale which seems to not be used by 
python3-native during do_rootfs. On systems supported by yocto they are 
located in /usr/lib/locale. 
Adding locales to /usr/lib/locale and do_rootfs completes without any 
problems.

