Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FA97E00B5E; Sun,  4 Nov 2018 02:10:04 -0800 (PST)
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
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7DA2E00AB3
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 02:10:03 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id w7-v6so5469542wmc.1
	for <yocto@yoctoproject.org>; Sun, 04 Nov 2018 02:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=qh0SRINQOInnHNu2bgCpTctH2oz3lIUw4l1+HAaBz3s=;
	b=BfOkOVSRMC9ZAGIXQKVZoGHt/c3Ed7Uy7l7S37mUDXpWnJRX22FZMa3h4PkGiXjNqZ
	o0uI1UdxZeYPzc45SPYljywReHXFm3ZDApMvITCzAd8bevZDRtlD1W1NCXh7txUjwy3k
	WmbpTWEkyf+HfEaN/XVdiYfTSZQW2ytKeDkAorbjYPdY6HwY0SGo3+qSYU2oYHTHXNdp
	K3C/GaTsF89zqF+8+gaI8OOI9PZ8Cw0iXWwhKtPXrdkx0ot5WsJstcPQwVZBwgjFgIGd
	LNfCrIT25RhgNsqNJLSfUXPQ7aq85kRAF24Qe0PNuZwLaBe3iN6I1FBmRX6a/6y7sB4P
	lylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=qh0SRINQOInnHNu2bgCpTctH2oz3lIUw4l1+HAaBz3s=;
	b=gGO5um6hp3g5c/SCWNwgwbg/LqW3sveLw22QdPYMhaqn/AMdfS7+VTmeeVFiTzp7U/
	jccYn8Z0Mz5l1vpMxVVNKZXsoVwRYDtmVYjoIW+oRSTHyPwVpPxTkmtOWbXpVNgACMjv
	FT41G24CxWjdHwR55ouEnrN1kQKa1AdqZvTrX/hCuEpPfgmtsxMsn/DxaAyvkXCU++RZ
	V4/ExQUKhfUiO8HlrvPzdLOgfwZcSZqrWTqy0LAvcF9z0MhlA8/wQsKi5A5zfdZmGqF7
	p0AsQNcwSY3KvXcpXoaovn6bbYdFQ+5ZaP2Nm21kH3KKM2jo/ZGffW+oBQrXTuaUNSay
	xfZQ==
X-Gm-Message-State: AGRZ1gL8sgjA2T22Wo5MnGujxSmaL0ezMINvW5dmEvXczlXTPrFpBK9E
	YjRuQozndC82ftMi7ASv71E=
X-Google-Smtp-Source: AJdET5dvIanq9Nb78gyvTDE2kyh6KMLW2RENlF28L+/AErc5VJCeVh4NwfEQ9J/fh0M103Tu5YKe9w==
X-Received: by 2002:a1c:cb89:: with SMTP id
	b131-v6mr2941974wmg.115.1541326202764; 
	Sun, 04 Nov 2018 02:10:02 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-134-137.home.otenet.gr.
	[2.86.134.137]) by smtp.gmail.com with ESMTPSA id
	66-v6sm1644949wmp.28.2018.11.04.02.10.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 04 Nov 2018 02:10:02 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>, Kevin Hao <kexin.hao@windriver.com>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
	<CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <de1a10ff-5d08-191d-3452-e548929affee@gmail.com>
Date: Sun, 4 Nov 2018 12:10:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
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
X-List-Received-Date: Sun, 04 Nov 2018 10:10:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 02.11.18 16:27, Khem Raj wrote:
> 
> omap serial is obsolete why does linux-yocto keeps using it.
> seondly, machine config should enable both consoles ttyO0 and ttyS0 if
> you know that at least one kernel is using ttyO0
> 
How about picking whatever works for you in the kernel conf and in 
machine conf?

SERIAL_CONSOLES = "115200;ttyS0 115200;ttyO0"
SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"

Like this on the first boot either ttyO0 or ttyS0 should be picked 
automatically.

Regards,
Robert

