Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D260E00CD5; Thu, 26 Jul 2018 02:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26EEE00C82
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 02:16:08 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id s9-v6so1218933wmh.3
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 02:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=uVvFuHWBiZqpXF9Z2b/7RpR4OllVP9hsoCFtFJ3llqo=;
	b=YhBo74irHQ37/t0DkEVZ082VaGyQlkS/X/gyggocWlO0OPCI9JJl4JszoYw1+ancpx
	6H4OQiWZghgKOXjLS7yarRZKp2gbE2WH8FYQ2et/9nbp+b4XdKUHtvVS3mtCWTKPBgSh
	Iw+Y08clV/qB6SZnoQhpG8jaFe8896Fyua+qcN6Jk+mLxyi8qmKXoAng/lHWWpmsBepX
	rSR7xPcHI5nzTyiQ0BxZTedKqW9Rfj3QE3fdhCsz9yKlVumWH8otWD+lKSoTgo+9UjKT
	YmoN+6PjhNP2fp55f0KWgHrwXzBO972e694GAn2Xi2LDStk0w8S1aDMdGJ1KFePc/kmU
	vF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=uVvFuHWBiZqpXF9Z2b/7RpR4OllVP9hsoCFtFJ3llqo=;
	b=nHlG2ltxl2UJmifW3GioAWRkXMqlgvKKj1VXCOWzjoF5yV8aMMJCmMluQytrMp0DP4
	vaBnF0o56G8ewRHxyniJEdcpqXAiLb7/D0+6zt4ACkddrYfRhY6GR/i6lAYAV1a9cUsO
	YaL+DhAUQ2ZXHt7IzGv5tzi/1EaDpuaj0shDunTPtODd3Z/ma6UrrIB+VcaLtVO47sks
	V7mRobHvVSf5Y5cFGINN8HnQ9wg+wlqpVm27Ktywcjd4mApP2bquExFqe4YM4CuEqrT0
	3RrDw1rpmQaz188E6iFsgRBUlTADv0nYxtlnOQ68mvcPZsQMfmmpOFbyjtcOp967mzuS
	uGvQ==
X-Gm-Message-State: AOUpUlG/t+HDXZb8Nbifqed0u7KCbI03Q7uxQH4poyvZ7Um19PDXX8vb
	C6UE33qVNfs4dbPkuCQA22jDugeopEs=
X-Google-Smtp-Source: AAOMgpcGc997ayo+Em02vHwgc4vBqQXoG5Li9wuK7ErCAtNG51dCxxnuLHb9HNBwU+nyA7fVrVupZg==
X-Received: by 2002:a7b:c017:: with SMTP id
	c23-v6mr1020989wmb.136.1532596567422; 
	Thu, 26 Jul 2018 02:16:07 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.59])
	by smtp.gmail.com with ESMTPSA id
	v23-v6sm620698wrd.11.2018.07.26.02.16.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jul 2018 02:16:06 -0700 (PDT)
To: yocto@yoctoproject.org
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
Date: Thu, 26 Jul 2018 12:16:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: How to force build of a blacklisted recipe?
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
X-List-Received-Date: Thu, 26 Jul 2018 09:16:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Hi,

I'm trying to build dvb-apps recipe which is blacklisted and was removed 
from the newer openembedded releases, but it exist in the release I work 
with

Now when I try to build the recipe I get this error:

 >ERROR: 
/home/oealliancebuilder/openpli-oe-core/meta-openembedded/meta-multimedia/recipes-dvb/dvb-apps/dvb-apps_1.1.1.bb 
was skipped: Recipe is blacklisted: Fails to build with RSS 
http://errors.yoctoproject.org/Errors/Details/130603/ - the recipe will 
be removed on 2017-09-01 unless the issue is fixed

But I want to tell openembedded to override the blacklisting and build 
the recipe anyway so I can investigate and hopefully fix the recipe. How 
can I do that ?

Thanks


