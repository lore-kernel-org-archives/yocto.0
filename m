Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 541C0E00CEA; Fri, 28 Dec 2018 09:16:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.171 listed in list.dnswl.org]
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89ACFE00C49
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 09:16:16 -0800 (PST)
Received: by mail-pg1-f171.google.com with SMTP id m1so10287398pgq.8
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 09:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=ucsnYIZ8/pfmeIdralduEGqyZoyzpRXNFRqv5Hp8SCM=;
	b=QA6CM13u8FYNjhWTeTgvP+aytP8q9Jh09urmtP9tFBRkD3qjTy0iKGog0hqdScr7wR
	XszXDwa66KKA2gF5D6FecArm0acx+5BMAmRmx4S7IXJ00g4/+6ZP7WqlRUs0+QHkRwbT
	/9vYZPCzrUZ2QwXADur/34as1tK9hNfs9awC1dtDxVbGn+7ItISfWR29OJCXSdfEMqCS
	P9j8fJpsp/zNb2dN2Cb+DD9jS4LKa8ZY6RVOUGqRZeE/TmEis7YOS20PGv3vaZY8prrX
	t3B4GCX+bf0BKPafnlsJgMMgKgAEQiUElP+HfENSTwuP4uMN87BNt4bIzN09HlRE72GA
	eMOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=ucsnYIZ8/pfmeIdralduEGqyZoyzpRXNFRqv5Hp8SCM=;
	b=sjOj4GJYer4AS4b8tHdyhzsG88xRxb8QbMIjapud6NjlisVTnJNt73KfAw+JstGIn+
	ayRQH0oJKVabX/0oQvfeEK9YPYm999Q1WLme3NP0zSG+vag1LeFwQn9y998R/Ad36shk
	gzADwGVhUUuhFV3MUd++lZyUSV+MLIFszR6bN0WmdwLu51UfAGH2cqfBpXNNMUUst0LR
	Ddjdd33WzjKp7iccgYwQqmyAB5LrmStWUQ9xkak1TGSXZrLfIpKdxETz4uma4Zaa9Foh
	eZIo3N2O31XFHbuxnevWk0yT9SYYdNJLRPM6KNoBRHxcW2d4CRdd6AtCJqllWfCZ9EfW
	4YPg==
X-Gm-Message-State: AA+aEWYPAHJLnLsGOlv6284nZluuHcV1hqsVXGqMSb5S8CMubaj9qtEU
	jwYNVR8OEAE0kfMIX4Zo56aoajSUoL4=
X-Google-Smtp-Source: AFSGD/XEi9N2uoTx5qw2QfBQGLdsBPJdNW0/kyHc0u8As7lTw3reZGL+ZWebvy/JMJoN3ya1uumOYw==
X-Received: by 2002:a62:d701:: with SMTP id b1mr28199913pfh.34.1546017375543; 
	Fri, 28 Dec 2018 09:16:15 -0800 (PST)
Received: from hermes.local ([2601:646:877f:9499:3c66:e24:63f5:7a43])
	by smtp.gmail.com with ESMTPSA id
	19sm80140397pfs.108.2018.12.28.09.16.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Dec 2018 09:16:14 -0800 (PST)
To: John Smith <john-s-84@gmx.net>, yocto@yoctoproject.org
References: <trinity-74e80e4f-6b96-4543-b5c9-1d573d70d34b-1545997297433@3c-app-gmx-bs66>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <ed24439b-5a05-c0bc-0b38-fe7492467ef8@gmail.com>
Date: Fri, 28 Dec 2018 09:16:13 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:64.0)
	Gecko/20100101 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <trinity-74e80e4f-6b96-4543-b5c9-1d573d70d34b-1545997297433@3c-app-gmx-bs66>
Subject: Re: Switching from udev to busybox-mdev causes errors mount: mounting proc on /proc failed: Device or resource busy
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
X-List-Received-Date: Fri, 28 Dec 2018 17:16:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/28/18 3:41 AM, John Smith wrote:
> Dear list,
> 
> when using busybox mdev instead of udev, I get the following erros on startup.
> 
> [..]
> INIT: version 2.88 booting
> mount: mounting proc on /proc failed: Device or resource busy
> mount: mounting sysfs on /sys failed: Device or resource busy
> 
> 
> What further steps do I need to edit for a clean boot? I only set VIRTUAL-RUNTIME_dev_manager = "busybox-mdev" in local.conf
> 

Can you set

VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
VIRTUAL-RUNTIME_login_manager = "busybox"
VIRTUAL-RUNTIME_init_manager = "busybox"
VIRTUAL-RUNTIME_initscripts = "initscripts"
VIRTUAL-RUNTIME_keymaps = "keymaps"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"

> Best,
> John
> 

