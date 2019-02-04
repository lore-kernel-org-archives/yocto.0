Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5CC1E009EB; Mon,  4 Feb 2019 07:50:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BC2EE0048C
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 07:50:17 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id a62so361054wmh.4
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 07:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=V6eQIP/n3lPWhjeFLFQdhogAukq0Tp38vLYlRIlPgZU=;
	b=GQhYXJ4Y2HXz0JLUS8LGGDDyLtZxBBgxKX9dbTPmXrNDLSJpRiEz9A3WWNvhp9xqHO
	lC6gwPP2EYCSu7vh8htd2CK+bLTk8bmwfsI/VF/7L6g9YgOMvndXjLVjYpzoZfiA0Qjy
	jw+nd9q4LvFEhUvkI6rCkNCUYJXF2+usaP6sj8iJfNxsZwF9VNjXe6xPVpBa2j6XRCLu
	CaNfFnlcxXy9G7mcQCvpZ5vEA3XKZeDxMeHX+G2pwYGNw2VQpxNQ2zRiB6WFs/A2XIlw
	iCLYgzjOzR1PD4Z2egTTxwa35ydKN4HqZUrkxrhSoEgnUNgH4HQOqBttijY9ysm0MlEX
	Ps7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=V6eQIP/n3lPWhjeFLFQdhogAukq0Tp38vLYlRIlPgZU=;
	b=C+vo0qksJe2YR/B2E9VSPp1G/rd/5faTrBHiEA+QMhpG/a8ohdXnbPX3mbSfnzEa9L
	H1f1RLV+Lx1TM5piOcKWN3DYsaJ73zTZ556Dh51HQRFh/BAq5ss3Ie6bfpdZ3ZDpwO6K
	jx4m35PFVwrNO+TJtH8++A3PyihW3LFaEJoi1+SeKpmkRnhhH6Lvr0zStoZSGbRxbmTH
	l83BR540zTXwrKvGOEpNZ/3+CyLmn90tbxPuYr4dowqkNBi4qHZfxD3zuc31qsJLD+Va
	D5gzAu/7kmDIFrdbO0zSDx6yzQk7sfHsnFF7U9rDS0Sk1EtHG0ZcIVl4ZZ4/LuYmba04
	r6KQ==
X-Gm-Message-State: AHQUAuYkhg5+v2o2dlT0GZZxSf/8vYdatANM3Kp/pJ03t/giJbKJPeMl
	Y1sIXh8STUvgN7dvFLguxrTZqiKa
X-Google-Smtp-Source: AHgI3IZ+aedQ7r42fBLAke+MCslwWpqgtmwarqsygwRMK7z9RwON7cASSDQzusbdgiqYvfyzZNjFQg==
X-Received: by 2002:a1c:96ce:: with SMTP id y197mr42728wmd.36.1549295416249;
	Mon, 04 Feb 2019 07:50:16 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-152-210.home.otenet.gr.
	[2.86.152.210]) by smtp.gmail.com with ESMTPSA id
	w24sm2504986wmi.46.2019.02.04.07.50.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Feb 2019 07:50:15 -0800 (PST)
To: Ken Sloat <ken.sloat@ohmlinxelectronics.com>
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <4a1f4eae-e7cc-ccb3-40ec-1ad700243455@gmail.com>
Date: Mon, 4 Feb 2019 16:50:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
Cc: yocto@yoctoproject.org, Nate Drude <nate.drude@ohmlinxelectronics.com>
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Mon, 04 Feb 2019 15:50:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Ken,

Is there any particular reason you don't use the sample[1] for an out of 
tree kernel module?

[1] 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod

Regards,

Robert

