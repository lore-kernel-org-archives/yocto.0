Return-Path: <grant.b.edwards@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7013AE00CD8; Fri, 11 Jan 2019 09:32:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (grant.b.edwards[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB56BE00BE8
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 09:32:55 -0800 (PST)
Received: by mail-io1-f43.google.com with SMTP id f4so12782637ion.2
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 09:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:content-transfer-encoding:user-agent;
	bh=BpOa8zAF0ojBeg1Hhi7B4FHIAgbgHxwXlvXyVpGCYKo=;
	b=gFi1Gprc5eklNNm6iozUZMnKlF4xO/TZp3F4576TjHFWjGHq4jF8XBCfvX0r5ORQWC
	pFM7CGbqVtBj7Qrr348VEjzRIUIW5NRvYEOvEElHsRABzUsjMM0Y8sPsr43MTII2LPZO
	W+WgfVo2D/4mvh5ZzfISb4OBMcqH+gcMOsM31ywf/S1+25NSnypI92UoUJ0JHm9UdIr2
	JPIqxi6hYb8AXb1iEpoGwiXtGkikgbizdshLtUA7mYFJavt9zdMQeNZpNSKVFy8YMl8s
	psaU7FM0L1813rt1MG5MnJeulKSSCZ8dCK+Iedfk1oetRl3FeKctOX3Pl+WuWLdpueFP
	sFNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:content-transfer-encoding:user-agent;
	bh=BpOa8zAF0ojBeg1Hhi7B4FHIAgbgHxwXlvXyVpGCYKo=;
	b=j/XF9i8+J1aYFNXk7W3Ecrd+aHbHD4srrQeX68URDJIKOPM7C7ec5mRktbcwr4vT3Y
	toR/WFsHOU9CISNQWo96A7jmyqB+JB/5aYv4q4UUmeQ5O67Ix3W56i1nhQrhCAtoSFhe
	H9Fjugwx2cTpf1Pl/0ZQvCZlkXSarx0BlipPQ4/rq9a2xdSleRYRk4BdvMsBYhNSToNh
	1+2Sk1/UroIpF03HONwzP0NvGoPZ7xerkNNwXn2X3gG8BkE8t/kMPghGe0heUHou8E2C
	1mJbhzwQPsq+JO1OmmboxBGP/5PIcbb5zX2rob/zgcj1B8AGqCBY77flhqDU2M2GInN1
	LMbw==
X-Gm-Message-State: AJcUukc0+UHnDjcnNHPY0bzj/vWNDxrotLCAFINmNNCwzRF0VjTfQj03
	T7q5op1vd36wz5W1kX8kb036pyfp
X-Google-Smtp-Source: ALg8bN7YvXj7Nt41UQeMRj/gBNJ91VclckeRX6oyDETOPLDlQ35AS3A3s2vAOVZWSKE2X5ogcFX9mg==
X-Received: by 2002:a6b:e00e:: with SMTP id z14mr9403015iog.264.1547227974836; 
	Fri, 11 Jan 2019 09:32:54 -0800 (PST)
Received: from grante (67-130-15-94.dia.static.qwest.net. [67.130.15.94])
	by smtp.gmail.com with ESMTPSA id
	t69sm1161774itb.26.2019.01.11.09.32.54 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 09:32:54 -0800 (PST)
Date: Fri, 11 Jan 2019 11:32:52 -0600
From: Grant Edwards <grant.b.edwards@gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <20190111173252.GA6455@grante>
MIME-Version: 1.0
User-Agent: Mutt/1.11.2 (2019-01-07)
Subject: Is there a good "getting started" tutorial?
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
X-List-Received-Date: Fri, 11 Jan 2019 17:32:56 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit


I'm new to Yocto and looking for a good "getting started"
tutorial. I've tried

https://www.yoctoproject.org/docs/2.6/brief-yoctoprojectqs/brief-yoctoprojectqs.html

and immediately ran into mistakes on the very first step:

    Use Git to Clone Poky¶
    Once you complete the setup instructions for your machine, you need to get a copy of the Poky repository on your build host. Use the following commands to clone the Poky repository and then checkout the yocto-2.6 release:
    
         $ git clone git://git.yoctoproject.org/poky
         Cloning into 'poky'...
         remote: Counting objects: 361782, done.
         remote: Compressing objects: 100% (87100/87100), done.
         remote: Total 361782 (delta 268619), reused 361439 (delta 268277)
         Receiving objects: 100% (361782/361782), 131.94 MiB | 6.88 MiB/s, done.
         Resolving deltas: 100% (268619/268619), done.
         Checking connectivity... done.
         $ git checkout tags/yocto-2.5 -b my-yocto-2.5
                
    The previous Git checkout command creates a local branch named
    my-yocto-2.6. [...]

It does? The 'git clone' command seems to be OK, but the second command fails:

    $ git clone git://git.yoctoproject.org/poky
    Cloning into 'poky'...
    remote: Counting objects: 428632, done.
    remote: Compressing objects: 100% (101203/101203), done.
    remote: Total 428632 (delta 320463), reused 428532 (delta 320363)
    Receiving objects: 100% (428632/428632), 153.01 MiB | 1.33 MiB/s, done.
    Resolving deltas: 100% (320463/320463), done.
    $ git checkout tags/yocto-2.5 -b my-yocto-2.5
    fatal: not a git repository (or any parent up to mount point /)
    Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).

I re-tried the second command, changing the version from 2.5 to 2.6,
and that didn't work either:

    $ git checkout tags/yocto-2.6 -b my-yocto-2.6
    fatal: not a git repository (or any parent up to mount point /)
    Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).

It looks like there's a missing 'cd poky' command that needs to be
inserted before the 'git checkout', and the checkout command needs to
be changed from 2.5 to 2.6.

Has anybody tried this tutorial recently to see if it actually works?

Is there a better getting started doc?

--
Grant

