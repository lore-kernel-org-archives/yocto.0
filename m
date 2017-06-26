Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63833E00BE6; Mon, 26 Jun 2017 06:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF8AE00BDF
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 06:30:00 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id 191so708002vko.2
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 06:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WB4eY57SgLJinvd1DaouEFlUWCUCGgkGNtoe60zXGKY=;
	b=vgqT9+BjxuXWhEJgIo665QL5qI1iP4NmZEvCZ+5xyb8hwinyKgvZI52ev7ux+Q3NDs
	XhfrxWtgK0sXLKNSksSzJDDEE4UZoWw/1aV1XBhLCKEGxKxkvWWlTksJWBLMGGnEgQVk
	tCYSkvfl2OMuUUOsHSHHHyiXq3H2u9XflnuNSqMDo+nhFLn2c/8p40uzPz+uec82blSS
	xwlfpNH0OP4nJ/bm78Ic6KATO94EKd/g4q1Yloi2FgV/8UchNkPDBSvtbLQKBm4F28R1
	N7ewMS7pf2LBA5kVxFI8kUxrEsR1z/8s4C31cGWQqtUR3LS9wgQmVNYiU6JnUb0qMIyW
	IOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WB4eY57SgLJinvd1DaouEFlUWCUCGgkGNtoe60zXGKY=;
	b=LIUVPvNZ25WKhfWJv+li/DVqB0+tD/EEYfaxz3apeHxkTRWWvGYgiXxzDEFP1UaGwM
	EevpHknVYCslqcO96H/Wg8HALtJqJ/rcL9g46f8MFPxBssDR6PW2KB96YsBrb7IN5eYJ
	Oibb5/pBFTej8vNjwxNlXCGIo+CigVVKwVmu7ZtconoIe7yvU5xr3LVpKphveJ+syAlP
	z8w/sokHxH6YSgh1OieooJFfGzKXSeNYmHNQKXDlj0oFYjxiKsSLUOnsqzSgI5RoY8r6
	Bo5+4P1+Y+ohfz3duMJAdW4jZgMh2PUplfUTLV4TXECuNB+fVVOpnZWag8IASEv65a0x
	mm+A==
X-Gm-Message-State: AKS2vOzlQlwpgTeuVQ+g2qepW85dbNnjjZQnQSYT1jNTIXtCiPVCAOPW
	ZG613EAXrqHkLX60OcACu5kHgR+jL1GX
X-Received: by 10.31.76.132 with SMTP id z126mr80523vka.137.1498483799623;
	Mon, 26 Jun 2017 06:29:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Mon, 26 Jun 2017 06:29:59 -0700 (PDT)
In-Reply-To: <CAK18fxFB+SXZeTSpmZvT5wsOLtvsPRqTnmfx21z=vRvFtQ9mZw@mail.gmail.com>
References: <CAK18fxFB+SXZeTSpmZvT5wsOLtvsPRqTnmfx21z=vRvFtQ9mZw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 26 Jun 2017 09:29:59 -0400
Message-ID: <CAHUNapSrkQSNUA9hRmw+wH0rN3zNcxSdQmoP-=WG-pegFW9qnA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Jenkins, reviews and mailing list
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
X-List-Received-Date: Mon, 26 Jun 2017 13:30:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 26, 2017 at 9:21 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> We've been testing a setup with meta-raspberrypi which seems to work fine:
> PR to github integrated with a jenkins server and use mailing list for
> discussions.
>
> I propose to copy the same setup to meta-chip too.

That's all fine. As the maintainer (thank you!) you're welcome to use
whatever workflow with which you're the happiest... as long as you
update the "Contributing" section of the README :-)

