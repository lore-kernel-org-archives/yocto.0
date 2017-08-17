Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93271E00D64; Wed, 16 Aug 2017 20:22:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448DEE00A39
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 20:22:57 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id v189so33585068pgd.2
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 20:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=Mcq88duuA18H4XhHYDarMJ1sIyD+qcArlte83Sq5ZuY=;
	b=Jndkw2EYMRzLyyp4fX5vd9fs9bkNy/1kYDnHXMfjnLDDV6nG1E4ZSXTDAzNRYh+Y6Q
	SsBwDMlfLthCKaaalDj/eQOcVJM70/FOswMTsXtfguH2We3ZMLxB7Ut2fkr6byfg28To
	yINiyORsCsUcuKuQG+VAr8rZiQBUT6Y3hMq2MFikXat/EDNJBstWjq1gtOlUvxDAxmXe
	UU5RwcMfUb5yhLVKSoiR5rZ+aoerF5U3KlNUA38AS4d9cP6GL4GqoWNqj+uP+gwF+zNW
	DCfGHZ12oags2hKj73kNmSnobp33J0dqZwMmHAOVp7UBENJcWIV9aUGZWin9LBu3E/+0
	/Zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Mcq88duuA18H4XhHYDarMJ1sIyD+qcArlte83Sq5ZuY=;
	b=N9US8myp+XG9ytw0JXPZZihF73ZeiqYRVJcFibGTZ1oq7wU0MlZbviy+shOt2YDxZe
	njIaXKeq5t48XN6NTugRbyqBXK+RQgsEth3g19726ONl8pgXnMcRnCoD8tCggQgRb/O6
	45gSHWbV60D0zuuM8yfzEFYLK2EOf1yssf9gf2ezov5N4IjEti+b8rNsjAcvVmruB+4m
	7XuT367mFXHhZwZXW1V6++qnLRl7f6ulyWEWyvnyZfIWWXS21SfIze9wpdaEh+4X61Oe
	Y1c69GSnv1A1ohoYRHlJ1XYrAFVSOwB7rpH66WVS6xbamumJ/HShB8w3wOcPaGmq4EP/
	L7Jw==
X-Gm-Message-State: AHYfb5ivrNh96cDtlld4k+CpVndZEQuYi+HqwKGiABp3F5JX//zVVund
	Fv+7b0Ky3fPb8K1m5jI=
X-Received: by 10.98.217.27 with SMTP id s27mr3823608pfg.293.1502940176710;
	Wed, 16 Aug 2017 20:22:56 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	g25sm4548253pfg.91.2017.08.16.20.22.55 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Aug 2017 20:22:56 -0700 (PDT)
To: "N:" <yocto@yoctoproject.org>
From: Riko <antonius.riko@gmail.com>
Message-ID: <c969bc1a-2bf6-a194-a413-711c1b6917bf@gmail.com>
Date: Thu, 17 Aug 2017 11:22:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: Machine definition ?
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
X-List-Received-Date: Thu, 17 Aug 2017 03:22:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dear Yocto Members,

I have a question related with machine,

If I want to use Orange Pi, how can I define my machine on local.conf ?

Related with :

https://github.com/linux-sunxi/meta-sunxi/tree/morty/conf/machine


/*****

Sent By

Ubuntu 16.04 LTS

Regards,

Riko H

*****/


