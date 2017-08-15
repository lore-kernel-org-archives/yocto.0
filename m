Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14B94E00D26; Tue, 15 Aug 2017 10:27:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.48 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8708E00CC3
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 10:27:39 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id i12so9455077pgr.3
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 10:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:organization:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=DB4t2iJUWAkyob3XRbIQVFgru6yI9yRYIAPpGN2iWGY=;
	b=ejsWVFYO1TX61ppPpnDYY8rZDrbZuZYI2TQtsP32ZR3tDbCVA8s0kbsRNSddhejRcG
	metBFkCRTAeQGFK017DXPPfA6mNieG6d4TotfuAFFXoUdYbBC265Q3dYcV2zzBI9REnv
	m6bzkzY7avzpaV094vcccFdqyGWFWfhCwkedE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:organization:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=DB4t2iJUWAkyob3XRbIQVFgru6yI9yRYIAPpGN2iWGY=;
	b=eGlwKcQBLJg/PcFpALVRdAugnW0d8hUIf7EKi67oXYZhMTzat5hsoZnZN+OORsnmBT
	q/t9Zk2BqKQ3RpK1MNwSk5Ia2LcigpNxuWIoQ/uYVrlAC90dD0+Y2TkyK0/EK5fJkwm3
	lbYWObeyIfD1k//rTvrtkxRtPI35eAbPZs9smafy6y/dTYQn0cWnq9FrWPQBwjuH/KT4
	drqrO0x2y3lYLnkVJL2Oiz1AqEsQAZTaWTuMXbQd8sAr+qQqK/EouIQEJJILWnNV9FdS
	8MLlSBbTBCba1K8Suc7NhcrSYz5ZNGy5eigJnbhBGhOxsSfGtj6wSKB7Vm4vXfdM2dTX
	CEHg==
X-Gm-Message-State: AHYfb5iD5Cw4CmKlRYOnfsVpFVwP/dPn12fULeSR7kfFypkriS6xuOxo
	v+/S3lwEssV9ozrP9S8gCQ==
X-Received: by 10.99.3.197 with SMTP id 188mr29090888pgd.288.1502818058429;
	Tue, 15 Aug 2017 10:27:38 -0700 (PDT)
Received: from yct-lpt.lan (50-39-170-83.bvtn.or.frontiernet.net.
	[50.39.170.83]) by smtp.gmail.com with ESMTPSA id
	t14sm16981380pgr.94.2017.08.15.10.27.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Aug 2017 10:27:37 -0700 (PDT)
To: yocto@yoctoproject.org, yocto-infrastructure@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <2ab681f7-5e7c-ee28-ca13-9fdb1e8d4a78@linuxfoundation.org>
Date: Tue, 15 Aug 2017 10:27:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: downloads.yoctoproject.org timeouts and service interruptions
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
X-List-Received-Date: Tue, 15 Aug 2017 17:27:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On Wednesday August 9th we upgraded the backend storage for
downloads.yoctoproject.org and related sites. The new hardware is much
faster but it is also depended on by more systems.

August 12th connections began timing out due to contention. I'm working
on tuning to keep downloads available right now. Over the next day we
will work to provision new decided resources for these important services.

Expect timeouts and service interruptions for the next 24 hours.

I will update the lists or you can follow the incident at
https://status.linuxfoundation.org/incidents/hxz2f2kvbn88.

-- 
Michael Halstead
Linux Foundation / SysAdmin

