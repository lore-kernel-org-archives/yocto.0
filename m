Received: from outbound.soverin.net (outbound.soverin.net [116.202.65.218])
 by mx.groups.io with SMTP id smtpd.web12.29209.1623673969329430236
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 05:32:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@embed.me.uk header.s=soverin header.b=mcohbW9v;
 spf=pass (domain: embed.me.uk, ip: 116.202.65.218, mailfrom: ml@embed.me.uk)
Received: from smtp.soverin.net (unknown [10.10.3.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id B1B516004F
	for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 12:32:46 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.138]) by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embed.me.uk;
	s=soverin; t=1623673966;
	bh=zt+OEgAXSBl2pZbBmKAVbEzTSaqBgYqnhKgk4hsnooY=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=mcohbW9vsKfWBjDOFEnOIg4269jXTlywKxkxZ8noZ/mdgFAsWmcEKG3mkmMLmHsLb
	 4kt1vUHrf56749TOYEmSTsS3ZlGrib7Sz4DsSbZx6TPZVJjmG0L1r5P7MMS5yCz+Eq
	 tyOxORqndypu8XfRDl8mf7mJTrW6nf+r5swp2V5sOj0DVoFQNKqkPI8XO3RyXV+30K
	 MVzGYIsZN7QKxicHHeqSDeOl/ZJFbvmY910LxGq0uOZLXCjxnsLQmaKyUXTK/VodHg
	 oL+o9qp88Fs8LgdI09EnioaFYife8bW2dgL/jd8GJqRmTdIpHcFSp9FE2PqokIKRZa
	 W/OHOA0EdI3Cg==
Subject: Re: [yocto] thoughts on YP-friendly developer laptop?
To: yocto@lists.yoctoproject.org
References: <72e88753-bee4-a983-1c1-359ecc9855f1@crashcourse.ca>
From: "Jack Mitchell" <ml@embed.me.uk>
Message-ID: <06f480ae-63b2-991c-4ca6-fac3b5b0aa1d@embed.me.uk>
Date: Mon, 14 Jun 2021 13:32:44 +0100
MIME-Version: 1.0
In-Reply-To: <72e88753-bee4-a983-1c1-359ecc9855f1@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

- Ryzen based for core count
- No dedicated GPU as more wattage available for CPU + less heat for cpu
boosting
- Dual NVMe slots, or at least on-board emmc + NVMe slot, hold tmp in
NVMe, replace if it dies. Probably not going to be an issue, I have a
1TB NVMe drive which I've been doing multiple daily builds on for 2
years which is still at 99% health.

For a decent manufacturer? Dell aren't recommended at the moment as the
QA due to pandemic conditions is lacking and machines are arriving
broken. HP do some decent Ryzen based laptops, as do Lenovo. For a wild
card you can also check out System76 but they're just OEM rebrands.

Good luck, it's a minefield out there.

Regards,
Jack


On 14/06/2021 12:58, Robert P. J. Day wrote:
> 
>   starting to think about a new laptop that will, among other things,
> do lots of OE/YP builds, and i'll start with this as the basis for a
> few questions about hard drives:
> 
> https://www.dell.com/en-ca/shop/gaming-laptops/g15-ryzen-edition-gaming-laptop/spd/g-series-15-5515-laptop/ng155515_sb_ps25e
> 
> while an SSD would be delightful, i'm concerned about how doing
> frequent 40-50G builds would wear out an SSD. so i was considering
> looking for something with a fast regular HD for the actual build
> directories, but room to put in an M.2 NVMe that would hold fairly
> static content, like the OS itself, all the layers, a local source
> mirror and so on.
> 
>   am i overthinking this? anyone have a laptop setup that is smokin'
> fast (yeah, 8 core AMD ryzen :-), and a dual drive layout that seems
> to work well with lots and lots of OE builds?
> 
> rday
> 
> 
> 
> 
> 

-- 
Jack Mitchell, Consultant
https://www.tuxable.co.uk
