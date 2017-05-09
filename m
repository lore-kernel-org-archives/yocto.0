Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6915DE00B28; Tue,  9 May 2017 07:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C791E00B3E
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:53:08 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id l9so2430565wre.1
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=LTz/pH99CkiMXyZSNK9uUZ6zq2UoZEk0JXwXne8XEJM=;
	b=UQOIIdGh2HJSuFv4u0moHa0t7yqXx0qH88+AxX71xRW26aZBY0EHkJ2CPWokJDKw3O
	2y5ipElXhoBklNahNinA81Yiqq7kWY5v3Ec2Odc35PFHIalwGn8aGkf+psPBUlChd3j1
	/SkQsPr2LECvgBFiFTW43Mb5exzlDTh9+nQAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=LTz/pH99CkiMXyZSNK9uUZ6zq2UoZEk0JXwXne8XEJM=;
	b=pSa8WApQWohRZCpXi4X1n9xIY32n1U0SKYPKawC4X2l/jSRjpqWnkDRj2S2pvlFGah
	da/vtISeSJxdh9sFS7vLy1saKu4kdvelmGA/zaMvPlmYREI+qH7zCNTT6pIRBmuMscO/
	sy/VScc6r2mwgujfIOwkpEISDaLBzvVN/tahOzHC9hYOuHnsn1bGUBBxNpvZPCqC4cJ6
	MucnFUX0GpYG2tUCvTfLVCH0DmtipWn9w7vGoqlPU81oHM4cDjUy1Kl4CBzaBLL/kBCG
	fGrdqgxNHFTRUrvgtNxfrTKR71lut3kf1bpS264VmXIvyGf3yLLFRmgnXm7HZZTJ68rP
	rVew==
X-Gm-Message-State: AODbwcDxU/YDtdjUb4Pc9uOLS8Trqo1HNmO0ZQHT11BHMxwg55uFSTT1
	OhAP+Cqe8SD4IDMGxJc=
X-Received: by 10.223.174.209 with SMTP id y75mr348931wrc.82.1494341587045;
	Tue, 09 May 2017 07:53:07 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-175-27.w92-135.abo.wanadoo.fr.
	[92.135.46.27])
	by smtp.gmail.com with ESMTPSA id g21sm149332wrg.22.2017.05.09.07.53.05
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 May 2017 07:53:05 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <e3af2882-a15f-56b0-9da1-d76063da64e6@fridu.net>
Date: Tue, 9 May 2017 16:53:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: meta-security does not set the right ACL to trouser config file (/etc/tsdc.conf)
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
X-List-Received-Date: Tue, 09 May 2017 14:53:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

meta-security requires to predefine a user and group tss ibn order for
bitbake to build an image.
But it fails to set the correct ownership to the trouser conf file
(/etc/tsdc.conf)


Tspi_Context_Connect failed: 0x00003011 - layer=tsp, code=0011 (17),
Communication failure
root@intel-corei7-64:~# tcsd -f
TCSD ERROR: TCSD config file (/etc/tcsd.conf) must be user/group tss/tss

-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre


