Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14D50E00726; Thu,  6 Jul 2017 23:27:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A45C7E00349
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 23:27:35 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id z45so5376342wrb.2
	for <yocto@yoctoproject.org>; Thu, 06 Jul 2017 23:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=2o1pC5XoCZ7PnWhG4YgAa/MCJCvFM/SaCSoHUnf1sL0=;
	b=RmCxSit7ivm55WQ2DsqjYycqsXQRTye4AUu+rSZHFYtqOqe2xA3Tz5rG46GcV2plee
	Uce7sFxdS7IbNtEjkS6AjME/r1a0scnLCth4su5RtwGQHXbUwxpetMNGh+/pXvejTgxc
	saue4ewoZGhnJDUnHxuyXaHFZQv/rqJvVv3mgDp/WgLETkQQl8LB8I3zKKhWnuR5fqaq
	vxun+/enS8Kndgo3WvDVFautecEBFE0uz9zQ1X2Tvxs/jLdVfNiwJb3vBdi2aGvjtFlG
	wp4BDYREMdVK/KSZFYQybq6KUfIIU6JGqUhBHVmdf9TXCsepxDGH80VZc84o4p8Urqsx
	KbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=2o1pC5XoCZ7PnWhG4YgAa/MCJCvFM/SaCSoHUnf1sL0=;
	b=Hc0+9PGpa/KBoTRr2G2OQVdlhFr//TaWUnQfzJufvicirfUYAvad6rvVUOXDmfPlKY
	ZdtLVAuAcTQO8an+VfuZW2xDKUIznQW6JdNmbNMYr7xA6DbfqV/A4IVwfDLWtu1QzgpW
	AHs0Ob0kKjD9Kl64zdYgtDGcbujw3TSviluOk0Na8vus9TL3OwaSTiKU1nKdKJVebOYY
	nv24cBQOM+LdYNkpLWo3AobIrZH/njsen5ZZXFiLFjza41u5PrgTF87YLDk58KFV2FXh
	PIyaox8LV5F0kyziwVELu3NgLVUluPq4zkngHInwAhspOa7WBVRZ4+yHleTBICxeRB/l
	lRVQ==
X-Gm-Message-State: AIVw110p65kZgM3L820RFeWJsT70trUbI9XE6hZJGzacan7QBaVdE83c
	99Tb/TKZ5vxCJw02qjQ=
X-Received: by 10.80.153.153 with SMTP id m25mr1180727edb.35.1499408854757;
	Thu, 06 Jul 2017 23:27:34 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-164-233.home.otenet.gr.
	[2.86.164.233]) by smtp.gmail.com with ESMTPSA id
	z58sm1425397edb.50.2017.07.06.23.27.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Jul 2017 23:27:34 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>, sourabh banerjee <droid.baner@gmail.com>
References: <CANmFEgtrdWTZYa1=pU0gBCiD1AP+gGNvviYkj1DmELJAkwUnWg@mail.gmail.com>
	<CAMKF1sqOet8Zto2frKvsyLPSThBjFRJo3MMw1q9aNBC3cFHm0A@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <ccfd902d-a68a-c50d-8d60-3b49808b600c@gmail.com>
Date: Fri, 7 Jul 2017 09:27:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqOet8Zto2frKvsyLPSThBjFRJo3MMw1q9aNBC3cFHm0A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting groups and users other than root
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
X-List-Received-Date: Fri, 07 Jul 2017 06:27:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 2017-07-06 08:01, Khem Raj wrote:
> 
> you can achieve it via already defined abstraction. Please read
> http://www.yoctoproject.org/docs/2.3/ref-manual/ref-manual.html#ref-classes-useradd

You might want to read[1] "user and group configuration to be applied at 
the image level" as well

[1] 
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-extrausers

Regards,

Robert

