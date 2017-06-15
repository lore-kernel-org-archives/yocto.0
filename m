Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B5AFE00B97; Wed, 14 Jun 2017 22:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E0C3E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 22:53:34 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id m47so12175838iti.1
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 22:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=DmJEEIYxrxRaWSXNcDNvnpeTOodUc9yfFbFeXkCWdrY=;
	b=VjMg5SGJpFICshA20nQSr0KjCpWrJViwrQhseA5j9pUs/P33uFAOZxK2pmbrj4PTlc
	wuocVH984gSemwYgfBRSrhh7yviB08JMMuAOsp/HnpxEDe8XI8c3hrCYSghKJyH1YWJw
	nGDP5/UIxKuU74tdkZRmdo4NuUFKDEjIVSle2CQebdEtqwZxbVktB+XnFBDnlZO1AYmS
	JMqn6J4N2l7+c7Y7xKc24K0PNC05dUUkFpWvHBf3ZoOu+RbYs3nM0KrkMy+yWJpDxJL+
	YE5NDTq1fTCs8kestqrCG7mrWv4cpZA62gR9rfk4G0+e0AX7GSVGkhVempcevG3elm2S
	2gkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DmJEEIYxrxRaWSXNcDNvnpeTOodUc9yfFbFeXkCWdrY=;
	b=rB5BdyJ3xAfTh5qWX5x67W+mW1ViZWQgEMJD1dxMRiZbP6Wfp6y0L0S/4zDfwqVxjW
	+7f3IMSs/FqOYgcCCg5qGIeop4V6Li+jDfUOI0DCeCwDVWeEhaEH0dhzx6uc2ojBVzWb
	fKRmZLqzCPKNAIoBkFhY9DcHNnK4v9a1kyiQjd/X2Z2BoMF7ZSbbeJlkgcxaEvuoRerv
	WLPMz8mcXQJHgm3gMye36W6CrDG2e8C/E/NZC+fnjErVxYTVGJ3QHvk+ZU5nRqftX1Mn
	1j4pSKGmKgE9DHMYohurWKJjQtMAWAMCKlPviQ72CZzG8ksKJ4i41PYu6aWN0s//tx/c
	mEBA==
X-Gm-Message-State: AKS2vOyIZZijbD3L7emNVjPPdqNO2Kb5EcVN7o8Wl8NGbs+w3PcXkpzb
	5167ife5GWQee67e
X-Received: by 10.36.173.69 with SMTP id a5mr3499424itj.41.1497506014484;
	Wed, 14 Jun 2017 22:53:34 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113])
	by smtp.gmail.com with ESMTPSA id 11sm1162676itk.27.2017.06.14.22.53.32
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Jun 2017 22:53:34 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
Date: Thu, 15 Jun 2017 13:53:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
Subject: FriendlyArm Mini6410 ?
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
X-List-Received-Date: Thu, 15 Jun 2017 05:53:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello Everyone,

I want to use Yocto for my FriendlyArm Mini6410,
Where should I begin to start ?

Thanks

