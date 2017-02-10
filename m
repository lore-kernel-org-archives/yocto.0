Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE909E00546; Fri, 10 Feb 2017 09:48:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CCECE004D8
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 09:48:48 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id v184so12214482pgv.3
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 09:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=Vb+QiTox20oyGWNWUEIkODhbIgL7LV3Gad+Oo9Q+4RU=;
	b=SYdoO6gDa9YFBUAcetm+TeShgZdBXyX2HVJJMgEBntWjW6hrdlFhTh3YZtClyY71s+
	wNpoAnYGiAbwsUgQBvz/ayDY0n3QfeD5yC/VGNtRkPT8JoRMsVChZ0dA1+HUSoROVHYp
	slZRwHn3h0T07mgdPGMxwSiKWHZ4XC+J+Alioe2FjiMwJyLXrI5DCjS++Jr9XSTH9+kz
	cuwq5mfLjhUdwWoAEXZNJiWN5VGND9AV7UR0FOQ2JfJRyIjj6h0FkPTe7hdXHvrOhyS4
	kv5Nm8oouc/YuwLcmMcdxQqRbxm2yepCq7E+kycnouqk1ymNjKYOXg4T8LETtvK+qom4
	CYwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Vb+QiTox20oyGWNWUEIkODhbIgL7LV3Gad+Oo9Q+4RU=;
	b=W1EbYovUNXi5IiBplt8MbkWBKrsee3mjRfzZvESRMpEuvGBJtUWyc2RYMuf0Q/77bA
	BMu73IiH737Oo3gwLVhht8qoWFGgWchnQw43wYUC66WpNQu6oBnbYl9Gdsdhsw7arTKn
	A69G+tS32ik4vZtp2pCF/pt7Z7wfRgLLY2GhlONSUHdCRphuXpDnL0y+s/XiSFSWhqEk
	0RFyruaEE2GZLHGKTbtueEsNbsHhteay90C21V1EWTNVZdFULYrq9LLxRAS9MwZo5vPG
	WUWvQBUQuvQBQM4juMtPB/Zxt/NjATPGT2DtKw+7oR049m5zjbKdH/PYy+DEeq7Wqn/p
	0C3g==
X-Gm-Message-State: AMke39kxFpHUnDNsPg0ZFNtuhzLrIztzNghaG8k0qCNcNkmD4P1T/2MNgaSvon2ailMsBQ==
X-Received: by 10.98.159.141 with SMTP id v13mr11716458pfk.50.1486748928006;
	Fri, 10 Feb 2017 09:48:48 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:9075:bc4c:9a92:4854])
	by smtp.gmail.com with ESMTPSA id
	x2sm6902168pfa.71.2017.02.10.09.48.47 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Feb 2017 09:48:47 -0800 (PST)
To: yocto@yoctoproject.org
References: <CA+XG-x6LtEj4NDzju4VqL+g_K=7rR14RHbdY--VE410vTwO5Yw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <b2760294-de87-00cf-3427-20cdaf782801@gmail.com>
Date: Fri, 10 Feb 2017 09:49:28 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CA+XG-x6LtEj4NDzju4VqL+g_K=7rR14RHbdY--VE410vTwO5Yw@mail.gmail.com>
Subject: Re: poky: core-image-minimal cannot login
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
X-List-Received-Date: Fri, 10 Feb 2017 17:48:51 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/9/17 4:23 AM, Belal Hassan wrote:
> 
> Hi,
> 
> I have error when i try to login as root this message is appear login
> can't set groups: operation not permitted. Could you help me.
> 
> I target zynq7 zc702 and i use master meta-xilinx
> 

what kernel version are you on. and what release are you building.
I think you are an old kernel which needs certain backports from upstream

> Thanks,
> Belal Mohamed
> 
> 

