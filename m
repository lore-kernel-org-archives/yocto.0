Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 729CDE00BC4; Wed, 21 Jun 2017 01:30:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E43B6E00BBF
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:30:50 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id c11so69062994wrc.3
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=yg4rmA7+ZUY5rSNbnWivZFaEiEZv/fPdhbjJcBdCucw=;
	b=ewSQu72qNieBPG1xJdVT1vfFZ0XyG1wvRTM769Mah7EkLaKyb8+PsbGxV7kyWi6xMW
	ZkK3NM3Jg8NpmqSvUVUNTyLc18CET2rJFIHQ8oDAI4TVlViVU3m+Uo0OSX0rgO3Et3Wz
	ElmWOHmMybn+QEIK2UXdpZLcQognotz8ZABRmWFARKnbPFanXp7xIChJ+o/EvRLsb+tu
	WS4NOkrYEdO2ydO+7wCi+EGlx9/3RpkvugKkeedXBZyxOJEmAFXnb2yUhN5jQnsmxjWa
	nFUELRrIpAj/ozhv0oIZK7WayqZioOWqCPAST2DeALne94ZUcnO5LAO7n3xejUd7WQlA
	qphQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=yg4rmA7+ZUY5rSNbnWivZFaEiEZv/fPdhbjJcBdCucw=;
	b=a1HkONdXajSZgsDnxSIvrf/76X5vADfZvi3OlWKMaX+LcSN9KQ4Nx3HWBvD0BulJbD
	lDvMvTcxRQEYLDT1PhT0N7MMUnS1mBueArdgFF/OgUd/T7q4caRvXvs+dv/zp3REL/Qz
	kAu5yA8PNfB0lfGk7u7utOu1/1YHqSK3xBuOs/+t3YmKnlRIRc8A/vd380+BAvqOoz8a
	+u8ZeCAYjeY6EY4SVl0OD7AwpB+8QO1UCemK+vaWS/yvNagrOnd+cHLz/oCRzF8pOt1L
	/H2N1Tvfkfk3w1dwKVDnTXj6swbBeePBkFf3MmTBPsqMu2hTb+r+kNE17WBk2/pD7lT6
	6dlg==
X-Gm-Message-State: AKS2vOxYluJkpWYdDpe2DeXKbAeSX8Q9U5lxzn6yZhkuXHncM4ObADE6
	yhBPwdSo7ksnU2h2P15CFw==
X-Received: by 10.28.129.149 with SMTP id c143mr5462880wmd.47.1498033849329;
	Wed, 21 Jun 2017 01:30:49 -0700 (PDT)
Received: from [192.168.2.129] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	q24sm12173846wra.16.2017.06.21.01.30.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Jun 2017 01:30:48 -0700 (PDT)
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, yocto@yoctoproject.org
References: <C7A527053D6D42FAAF5008EACBF96624@PAULD>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <95e8c80b-98bd-c234-7744-7f70b64bf11a@elfin.de>
Date: Wed, 21 Jun 2017 10:30:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <C7A527053D6D42FAAF5008EACBF96624@PAULD>
Subject: Re: Raspberry Pi: how do I change cmdline.txt?
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
X-List-Received-Date: Wed, 21 Jun 2017 08:30:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

You need to create a bbappend for the linux recipe (i.e. 
"linux-raspberrypi_%.bbappend") and later override the variable "CMDLINE".

For the original content of this variable see 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-kernel/linux/linux-raspberrypi.inc


---

Piotr


On 21.06.2017 10:08, Paul D. DeRocco wrote:
> I found cmdline.txt in a folder called bcm2835-bootfiles, so I thought
> this was related to the bcm2835-bootfiles.bb recipe. I created my own
> cmdline.txt and a .bbappend saying where I put it, but it didn't work.
> Looking at the recipe, it doesn't mention cmdline.txt. What recipe deals
> with that file? I'm just trying to specify tty1 as the console.
>


