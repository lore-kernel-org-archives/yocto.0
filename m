Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81E10E00D03; Wed, 29 Nov 2017 11:24:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC045E00CC4
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 11:24:43 -0800 (PST)
Received: by mail-pg0-f51.google.com with SMTP id e14so1919532pgr.9
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 11:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NOr30BH0rjfyeTq1PvkBPJ8b4FmK1Fy/x4/3W/xrRNo=;
	b=pcOt059KShr1Oui1D5HVIMThABMQS6GJ1bb7dDw+O0vw8pAmPxLlbCPB6zAt/ppOMz
	hHCzgWXNjs7K61QDJyOTHYtyMHYc/lzYyb0upJTCzZVFmrJwz40JZnw7/ntnPXao2zp6
	mK5/ZydD1axeeMLuWYgdQ75lRf8Gy2g5JX3y5AgA8wVwfozchJbku8TgKB0CQGhBtql6
	94rdhT9puQ2Jk4fJEqH7/HRSK6GEkX0BLdt59lHNOlhnKS+K14k6QEU+xi/5EtjXj1pP
	dakYW0pqtlyhs0FVwXtBkFYz5kkPZj8t6hUzHrJl1V6UzyTI3wGRKy/CQv44kRYq5eU3
	g7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NOr30BH0rjfyeTq1PvkBPJ8b4FmK1Fy/x4/3W/xrRNo=;
	b=CRdsxhkfYaFuAPVkVyLLgYHU46L9XHjuZTbEIn9iXXu9l8WSf4Es5HEC5PWjpwpT5F
	N/Uz4tsxvoDP1W929UVOJHY90umUC0BJUS7uBHBvMP7nBkk6vGAasSv7jMMSbmjrnkjA
	tRkx+bRn1+BxKVSJAOTwB1Yt/JUmDkp9qA0xSOVhs8FIDr/ioYrCYf4wxmEftvTAj2Rv
	aMjYodQ/UvA43KopMJLeZMmJbio5eglsQVEVQUE+y3t79vTotn1oTJOf9G4u7IeUmpyB
	hfe25SB/7zGufog7X4ofpClgBU5HC5mpZFtNmR69gbDU1o8oxxGTJ4/AR1Q5l0/pz/wX
	JeQg==
X-Gm-Message-State: AJaThX7Xkfoj575SJ4RqzmbRXWXipwkX3heBOxJEsJyw5ryt4jpSJsle
	Svmr1Cy3sQJJeB2sExPneMA1Yvg29CM+uxXLt/A=
X-Google-Smtp-Source: AGs4zMYdlHaiQKolqjG0ZpiYtBGWgwKS50kA979smOnuHfxEekSdYA4hRycRAWIPecdrkMNurIkM22Da5pAGCOGSsvk=
X-Received: by 10.101.73.203 with SMTP id t11mr3800541pgs.446.1511983483102;
	Wed, 29 Nov 2017 11:24:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Wed, 29 Nov 2017 11:24:12 -0800 (PST)
In-Reply-To: <c4fabc4627a75ef428c39d1686eb2565@mail.mxes.net>
References: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
	<cbe07fed-c51d-d663-4914-6a247171b86e@linux.intel.com>
	<68140500-7b0d-e7e2-8a6b-7317fb4a082b@advancedtelematic.com>
	<c4fabc4627a75ef428c39d1686eb2565@mail.mxes.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 29 Nov 2017 11:24:12 -0800
Message-ID: <CAMKF1sqqa9fNPVyG81Lb6LKCZoW-WgmdKFQAKX7CadxhjG3Zyw@mail.gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Security upgrade stategy
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
X-List-Received-Date: Wed, 29 Nov 2017 19:24:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 29, 2017 at 11:06 AM, Brian Smucker <bds@bsmucker.eu.org> wrote:
> Hello,
>
> I have an older yocto-based image built with Danny.
>
> We have a need to update two components, php and dropbear, to the most
> modern versions for security purposes.
>
> What is the preferred way to do this without moving the whole image to the
> latest version of poky/yocto? That would be a big job, which would
> necessitate migrating my linux dev environment to something newer, in
> addition to other things.
>
> Or is there  a preferred way? How do people handle this?
>

We usually backport the needed fixes back into release branches.
Version upgrades
are usually not the norm. However, in your case where are on danny which might
have stopped to receive any security fixes already, it might be
something you can
undertake in your distro to upgrade the versions. Take the new version
from latest
release or master and retrofit it into the release you are on then
fix/integrate it into
rest of your distro. However here you have forked and can keep
following the same
procedure for subsequent upgrades for these packages. Obviously, you might see
integration issues but thats expected.

> Thanks,
>
> Brian
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

