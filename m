Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B7B7E009DF; Wed, 14 Sep 2016 05:32:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49768E009CD
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 05:32:45 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id g192so16989774ywh.1
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 05:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ck36NM7ipDSSZ5FV31XkrQea1u1SH0Wrc1cKwlVXG1k=;
	b=GrQALfCW+o9eaCantjnY1w4JUl7WJmrUbDNzxLJyOMa5ab6RaWH/hdi+TYQ7N+2NZq
	3iP8aSkEbRDrwjnTHVmqzH9G8Z/EkreFrKyFW4U0ceDj7FdfnoU11kScUnr1WkK2KkmD
	zE3TitdfNC9hmMPoOc4ZLuiTW6DIN3XlhBcRm9TR9J8ZRldBl1RGCWeIm0KQa+wEmo3A
	4HHOmudzf/awW7Sts4KHPnoEuijNPa36o61j/iEgesAJ1n5uDLD+ZGtEgxE+kGgsXkmg
	XbrNgU6QPoV2tZu+lpPjVviTiZR3xiwfbN7F45sznPPH/fDV0q64QJk7cl8srDgufXC9
	c4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ck36NM7ipDSSZ5FV31XkrQea1u1SH0Wrc1cKwlVXG1k=;
	b=LAhCHFJLWzRqcCOnXyEGTj4kZ/TTVYtLKiE2mUBeCca31R/DK3nRq7/HlnQPutjxLE
	9jJ52jsS79girNvLH3ijUIfbqe6dZm5BKxFGypmam45xorDUYcXnKH5vvLiRblnupiBd
	xta96sq1g6/lEGlNRQ/EXukBSFaX3kaexnaO+X+hHq6iOLJjKpEuAKY6TusWpJgwEsMS
	Jmgd00Y0cP4qz824xOOqpg4YSfNOzthIVaxOR4c2vMN4mzeYnQfBs0XC5oExChUbD17R
	7WIYeUou01gX6/pPn3pDSEV8p/H4gEcM0Xv46OoNB2/kvWwCiZGBS7YLXXvR+qxNofXd
	g90A==
X-Gm-Message-State: AE9vXwOeFPkTN53vZ2NPpp7anWcmIwfShwFTCrqsTtIpoQV4NDyT2Yli92xQoQn+iRu9pDzzNlsPJ6C2m1gJIA==
X-Received: by 10.129.83.131 with SMTP id h125mr2257240ywb.104.1473856364476; 
	Wed, 14 Sep 2016 05:32:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Wed, 14 Sep 2016 05:32:43 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 14 Sep 2016 09:32:43 -0300
Message-ID: <CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 12:32:50 -0000
Content-Type: text/plain; charset=UTF-8

Can you connect to "www.example.com" from command line?! Something
like `telnet www.example.com 80' !?!?

2016-09-14 9:27 GMT-03:00 Anicic Damir (PSI) <damir.anicic@psi.ch>:
> Sorry, the error message is:
>
>    DEBUG: checkstatus() urlopen failed: <urlopen error [Errno 104]
> Connection reset by peer>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

