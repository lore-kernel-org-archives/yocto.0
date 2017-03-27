Return-Path: <sebastien@iot.bzh>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BE87E00A9A; Mon, 27 Mar 2017 03:00:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A9B9E00524
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 03:00:13 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id u1so48340829wra.2
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 03:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=iot-bzh.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:organization:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=rT02HaL1zeE49iFNi37M1oBpEuLJ6e090KK4DH9wQbU=;
	b=tdVzvaE25W8+2hN/VlcLNB8IzxGwhjOAfz8FvSb0JCgx0woz9/Jfuu6VapQk8GxgeW
	elZmhtLNUbCqIlXuGw9M0wt9s73WqJa+7VJyZLmR5MGUEiH6P/J/gzro9nVmbLunTSgg
	6eoWllPQOxWW+XfVMRvLl7nCBBcXVBiSgnIjSRKEdhNn17JsNrE3FUfgUymabyHAkUPn
	hgRE7QMuF25/LHJ1KpfaTmnSTAVV5KU+vXT2PZs1gOtXgVemaVJWeLdiZErLpAO/BPKY
	V4ObtSEcAclAWma6PYs5dJ9j3wid4xEgBRysTjSDyiuyTWMUesqJJVosh1xYPZLmSaLK
	fqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:organization:message-id:date
	:user-agent:mime-version:content-transfer-encoding;
	bh=rT02HaL1zeE49iFNi37M1oBpEuLJ6e090KK4DH9wQbU=;
	b=GaRg1OR82UBbpqsakxvNG5TiQUtJnpHfkChXTVvJnqkFlGtMPIXm0JsjbKohVL0KSp
	chr9ui/lOgaTExZ28Fxl1ro9oDEsSO7I6tBBaD0aYn2CDCigGY8x9K8jS5MbOGerMit0
	S2NkxwfYv0fyRXNJd8c3oQBxfV7GWTNyW6DKceOd5FjWL4S+ilkE35sRdMcoOPJmdNtu
	0QEBoDL1LjCAAaSpnL0n9E0j1yDG1B7zTpBy0CdmFlPvl1XgwKz1MoxOlbabuRXbI30f
	DFXG9Hmmd5Nh7q81oAcMRl2lK8pdznMjcSSWtC1OsJ3k/3aSDJeV6xoIlIGCJjh6a+k2
	Y++A==
X-Gm-Message-State: AFeK/H1PV5NrR/NDqm8Z5tamEMGXtTPz6x4D/lSXgbHGuMcvCybIr1UL45lHpuuRNQ3JsQ==
X-Received: by 10.28.198.134 with SMTP id w128mr8752514wmf.80.1490608812568;
	Mon, 27 Mar 2017 03:00:12 -0700 (PDT)
Received: from [192.168.1.17] (ARennes-651-1-208-148.w90-32.abo.wanadoo.fr.
	[90.32.15.148])
	by smtp.gmail.com with ESMTPSA id 186sm207311wml.2.2017.03.27.03.00.11
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Mar 2017 03:00:11 -0700 (PDT)
To: yocto@yoctoproject.org
From: Sebastien D <sebastien@iot.bzh>
Organization: IoT.bzh
Message-ID: <9f434631-d18d-5582-dd86-13d9f5187af8@iot.bzh>
Date: Mon, 27 Mar 2017 12:00:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: Is CROPS the right option for Automotive Grade Linux SDK ?
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
X-List-Received-Date: Mon, 27 Mar 2017 10:00:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

  Hi,

I'm working on Automotive Grade Linux (AGL) project [1] that is based on 
Yocto and OpenEmbedded and I'm wondering if CROPS [2] is the right tool 
to cross-build an AGL application ?
I'm looking for a framework which allows developers to easily 
cross-compile application whatever is the host architecture (Windows, 
Linux, Mac).

So Crops project seems to match my needs but this project is no longer 
active. At least the communication mechanism seems to be superseded by 
an eclipse plugin [3] that communicates directly with the containers.
But this solution (from my point of view) is too restrictive compared to 
the initial one.

Any comments are appreciated.

Regards,
Sebastien.


[1] : https://www.automotivelinux.org/
[2] : https://github.com/crops/crops
[3] : https://github.com/crops/eclipse-crops


