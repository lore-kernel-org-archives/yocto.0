Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F10E00A93; Sat, 17 Jun 2017 16:42:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF10E0076C
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 16:41:58 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id l89so37830976pfi.2
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 16:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=oypnuVOi50fc0h4qHzKiOrVnrgeIoN2kbHbii+UmrMg=;
	b=VNquk+6PyGoH6Exp2rJRbt/nm9H+4OZNwjWiJkzXix5cghoUOqNQ/gbwqgAn0+cHdR
	aX7usx18OjR0VHlnmHDsEBSOJyUucJPrryN2cHzPwktMpGzT6/g3UL4u/wD+MCrcRvQb
	mPy2iXHA8jkoMQCz3D9388V3wqcj9V+FtWunV3RpEq73/2xJkYqlb4hMQ9h/5wJ2CiqJ
	yi/e7VO70XTEfj39l07X/xAHr9Oba0fqaxQNvVgGeqvXeG4zEpW88UgVQRJF7XcmpQDG
	TAfuMRvQ0kzcVuS1LHU+IY9eNg44vP3ySmiEEA+oTipO001Z5yEQzJztnHN1zgYLsZhu
	owRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oypnuVOi50fc0h4qHzKiOrVnrgeIoN2kbHbii+UmrMg=;
	b=FSttRniT6r0juwOV2F7fyDzIW/T5y1tB+cLmTR40vpExKXzQD19hcWotkON4+JD7aG
	IVmHvANn5ZusYv5qa9EVeuogoKkbsYDAAl8eTeqopnD+RFThno2ECdK3aTNLPXzNMiTL
	N0CYxpdl3NBSon8vwLgjE593qXKbxQU5ifqmKpjA0Rs+vcqPhR2Hy3kI5i5QEEcvaoQV
	YlUiHqWkkM5VnRducU2w7XoggPFEvMYs/u80mbyEgk7d6p82O4183iUWotniytUqF01H
	FHUDaL2uc0OzfK8b415nnPpCKLfZDJAPjIOUThnFjEQz6A8NYsvrtf/OFGwbBXgcNEDn
	BSpA==
X-Gm-Message-State: AKS2vOy7gxQ+GoLAyY3STmc7ZVaS/j/QEzfiJ9UUE7SQF/Rmd7PH1jK2
	idiiW6hsUckQ58Os
X-Received: by 10.84.236.4 with SMTP id q4mr20720742plk.70.1497742917528;
	Sat, 17 Jun 2017 16:41:57 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113])
	by smtp.gmail.com with ESMTPSA id 17sm8890430pfn.84.2017.06.17.16.41.55
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 17 Jun 2017 16:41:56 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
Date: Sun, 18 Jun 2017 07:41:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
Subject: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Sat, 17 Jun 2017 23:42:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello Everyone,

I tried to compile chromium but never succeeded, took me already 12 
hours and stopped on 99%,
I used bitbake for doing it,

Is chromium not compatible with arm CPU ? it was working with X86_64 
before.
And how can I clean after building it ? It took about 70Gb of my drive

Thanks

