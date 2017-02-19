Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36CB6E00A18; Sat, 18 Feb 2017 18:37:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE46E009F6
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:37:33 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id e137so7391092itc.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=opu4qzXPqYt/RjctuPJqz5hA66GSwVw9bzlTZgeQmrg=;
	b=onixvb8qyCLORT/45qN+utHcGVK+rOAQVb/Sg4Vt50JzDuL8ItprDSHnuxBQf1urcL
	uM8ITY2iVuNYYdqy2ODIoUigmsQdcJQqs8HIP/86bKs8WX0BpRi1rRfI61ZODbQx/c8/
	6V9wPmyrJOBudbIBGVw1kWX+p2kMZiu7EeQFbH2CcKyjzrOfTIYdIyujwBpMtTOd8nrK
	pWP/cxFx1ReYx1dCIRwzcxn06sPBqz+vHD1MSvZPvlnwIEF1UEGDUIbG/xjgIuIpt7y2
	LGPZXDn61nWaYdphIUfOf9hCwKVZmWYIgncVH8eVAjs2ye5M0ayfznDfVwtQHjeYevyN
	zieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=opu4qzXPqYt/RjctuPJqz5hA66GSwVw9bzlTZgeQmrg=;
	b=TIFTvY7HW+kAICO9qn2ouYCyfXv2OpzSjfoWg0tjyH9lkBhTgqeeyJE5G6uql/nQ6j
	x9QXRATy1Fj7G23rC5Ms8sFTY6aAKmoC6iOQkdTABPkf+QtKYL6lqlLz37K7ERWZAU4Q
	LRQGs6S+XQClmp6LwpqZr2no2TqeaGsqI+2GJhtPD2FQdbIrcWPhWRFLZPniZs4QGt2o
	aojc/CJ3Q/IHoMvl1xnzxXNcFSKrackjpLvmB0y50VrzCpiIcTS530BUfqxBYNh3Pu8M
	pMgiTO18oA9UF2+VtRpIaRzIvPpORm18rbAfRKwlwWUad04G8NwUkWgd+5LBnktc3wSk
	SynQ==
X-Gm-Message-State: AMke39k7ToZy17OvViej6kbbFlTREjUW8xV/sG7/fASlU86BkOGySJsYWS9C1lVn5U+mnw==
X-Received: by 10.36.53.78 with SMTP id k75mr14222286ita.45.1487471853099;
	Sat, 18 Feb 2017 18:37:33 -0800 (PST)
Received: from linux-uys3 ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id j4sm3217794ita.29.2017.02.18.18.37.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Feb 2017 18:37:32 -0800 (PST)
Date: Sat, 18 Feb 2017 21:37:30 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Message-ID: <20170219023730.GA18681@linux-uys3>
References: <20170217180748.28796-1-twoerner@gmail.com>
	<20170217180748.28796-4-twoerner@gmail.com>
	<CABgxDo+N34NQhr7s+5oU7Kg_=omN49PVAit7PZ_UuoBG8wdHUg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABgxDo+N34NQhr7s+5oU7Kg_=omN49PVAit7PZ_UuoBG8wdHUg@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH 3/3] rockchip-next-img: add image for rockchip next-dev u-boot
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
X-List-Received-Date: Sun, 19 Feb 2017 02:37:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat 2017-02-18 @ 06:50:05 PM, Romain Perier wrote:
> 1 patch per feature or per different component. So  I should get a patch
> for rk3288.inc and another one for the class :)

I could argue that this is one patch since the only way to flash (for example)
the Firefly is to use the image this class generates so now that this bbclass
exists, rk3288 builds should be using it.

In any case I've split them up and taken the opportunity to rename and re-work
the commit.

> Suppose I am a user of meta-rockchip. I want to use a class for generating
> a image. The name "rockchip-img-next" is not clear at all for me.
> If that's for the sdcard call it rockchip-img-sdmmc if later you plan to
> add a class for emmc call it rockchip-img-emmc :)

Agreed, it is too vague. A v2 is on its way! :-)

