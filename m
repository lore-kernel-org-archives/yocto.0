Return-Path: <paul.goulpie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F75CE00DFE; Wed, 11 Sep 2019 00:15:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED136E00DE4
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 00:15:24 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id k6so11071988wrn.11
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 00:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=ylyNf3qb8PmvMsJXSDSxrSdylpjaEyD3tWIqxQei3Uc=;
	b=EPGIUQG9hYw4buSWSX6ZLLsszXq6SRFxGxiqPVTuFcIXyvFFQoI2MOf/KvlwZpHmjB
	AM4Mq3V5koqrIXm1nLx8QmiyqjPTiR39opeHpRGwGeQ/DxhSo3MvIObAIiT3iswoSeLy
	IEqEHFOj+zizPbO+HY3PKuurwD3YF62Ji2dqn9WXhfV5Ul5DYcf8Z7XnWEomWHtN09xk
	cKcv/QKW/8yoxitYNKRxqrZZKEGl+PNEgzbK2YE8tM/pf//p6qbZ5IbDoVSljlguJ1Po
	bAtbUkAJOfWZ9nZANt69CHaiYeClowIdcwbYDVSLC/OVicWUjsYo/LUO4yi6+7O1Y1Do
	HvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:to:from:subject:message-id:date
	:user-agent:mime-version:content-transfer-encoding:content-language;
	bh=ylyNf3qb8PmvMsJXSDSxrSdylpjaEyD3tWIqxQei3Uc=;
	b=r7VGHkaJQmLZu9tqQCkZ+KfSg9Oi85RsQRpWTDzUgy954SKKdwFjsrAKK3UiKkBCNj
	uZAXn8Y/eaQK1eCB4stsSTdVApN9IISqVfWf5tXv4XASy4HPPI50yNPZ8FOwSb4Uyv5c
	i0/JdyEAVTQ3nIw6yMh5HvpXgvRPHbGq//sWffRifNgsETScEwpV/Mg2ed8sZ2diapS8
	+ygMQN5cnLPxQTO+Bm9GwO6oTO1pBs7AHk6aL5zcS1HhCV5au5f+B3El09yHxW6QkAXx
	YgcdUR3vNaN/AkEEyd60BiSdkrO9EsD6346d921EDoJb4n7xYqnpxc1ZEhoCD0i1QRwz
	O6sg==
X-Gm-Message-State: APjAAAWBzd9qvFDUyL6tTyJUf+G1/S/2gQJLf18L4Yu9o2NayZAfIf02
	Hrck0dRpw8vT4k1ENLbeu2tTfz8+
X-Google-Smtp-Source: APXvYqw072an+BC3Cz67+YJl6uE6zQnoOksj2p1fxoQn/FnPMTvAbkr+bl0rVqiK3G89+8UFsezv3w==
X-Received: by 2002:adf:e352:: with SMTP id n18mr18433647wrj.89.1568186123665; 
	Wed, 11 Sep 2019 00:15:23 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:8bc3:3910:6a78:a27e:d78d:9d6b])
	by smtp.gmail.com with ESMTPSA id
	g24sm31602953wrb.35.2019.09.11.00.15.22 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 11 Sep 2019 00:15:23 -0700 (PDT)
Sender: =?UTF-8?Q?Paul_Goulpi=C3=A9?= <paul.goulpie@gmail.com>
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Paul_Goulpi=c3=a9?= <paul@goulpie.com>
Message-ID: <382ab3af-f6e2-45c9-1abe-329b54714bdf@goulpie.com>
Date: Wed, 11 Sep 2019 09:15:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Subject: bbclass and recipe environnement
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
X-List-Received-Date: Wed, 11 Sep 2019 07:15:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr-classic

Hello,
I am creating a bbclass of type image_types. The purpose of this class 
is to generate an archive that contains among others ipk packages that 
are created by the recipes that compose my rootfs.
My question is: how can I get the path of the IPK file for a given 
recipe from the bbclass that is being created.
More generally: how to access the environment of an application recipe 
from a bbclass.

Thanking you.


