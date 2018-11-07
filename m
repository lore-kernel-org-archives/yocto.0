Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86EF9E00C10; Tue,  6 Nov 2018 17:09:25 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0E0E00AB9
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 17:09:23 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id b22-v6so4950292qtr.11
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 17:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RNPS+48pH1kx37Q7EPoBqy+x3jQOqV3TZwuETWXz9b8=;
	b=mYDYCCxzM66LbYmjzCVnVDescG0T/fTtZ4Fvcytrml5gGRG2gAKxzynGHZY/m7RnyX
	SYOBhz9i5cXXZCHHKEIxtLkpOmJ9TV4WjMOy+SiZL/KUHjrCaLMkoMBVHIobByeZiUAi
	a2NkYLOb23+o663934L7vWBwgflwRchBEY2sC3b2rjEhmuR9HzR5Bbj2GaHVJJiBosY1
	gWIt/QGD4vf1BEK5YvKqtDXVz7uQA83Z6aVFBoYuDWp5KUIb+ZeybEBgpocYhxIypO+B
	Lc+/hFaiAR5Trjd8HOYid2zxVrAPebI9763b4ZYNJlIlQkbwhBknjsBjU7i9SZMXG/+n
	S1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RNPS+48pH1kx37Q7EPoBqy+x3jQOqV3TZwuETWXz9b8=;
	b=ljcuSYElR8oDGj/dwUBslVvBmNsJf++upkAEMBGH6EdOf7X+kLQZdm+qvKCIAv9q6m
	bFoLUl58d19RAIBK1c6BNpBDpc0tO0V92P1r//+S/MaNhKUX9PYV1Btfwi8p1RhuBa+v
	Ct4qSgCYqOMrg3+nkPxwue74BqyJijHjoov8J0FpjGWJVKLM7ROw9qyYhEXTLoebgt5j
	0ORB2tlIXO+21TdIZeFQQENmVPDcit+OEiCFO+XoF0fBKBfBpmCPLHRLEOifR/k3qpbm
	4xbJMVcJGtlS3PBX6XkWkl/Pc6Amzmw6X1ALkXkztsxuPKYv9a9Uz7wxuBMxvpPQmI2S
	kLWg==
X-Gm-Message-State: AGRZ1gIP9PFS58PTxJiLDBMDH4tJe/kHMfBqFjkWRfCMlWyWrxtsapE0
	iKYQbAjYdYSJG2wKR33KIRYhYNZMmesbO91S+8raEhU2
X-Google-Smtp-Source: AJdET5edZQns8LhRMtfT0Oy8TlauOOBXL1PkcDq8LgpuQY67L9+RMIgxK6ZXLTU42UvaOPWFcdL5YaPpcU+rY70C0lc=
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr28056621qvq.55.1541552963047; 
	Tue, 06 Nov 2018 17:09:23 -0800 (PST)
MIME-Version: 1.0
References: <1541541389-21595-1-git-send-email-akuster@mvista.com>
	<CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com>
	<c59e74fd-868c-225a-3799-eaf5000f59af@gmail.com>
	<1a3be576-c416-2c6a-6b0d-674b61a1363c@windriver.com>
In-Reply-To: <1a3be576-c416-2c6a-6b0d-674b61a1363c@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Nov 2018 17:08:56 -0800
Message-ID: <CAMKF1soQh66Z6FYLV9aDn2W0+KyBU5UHBW=s3atv5ZS=sCuJzw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-cache][v4.4][PATCH] kver: bump to v4.4.147
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
X-List-Received-Date: Wed, 07 Nov 2018 01:09:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 6, 2018 at 2:42 PM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> On 2018-11-06 5:10 PM, akuster808 wrote:
> >
> > On 11/6/18 2:05 PM, Khem Raj wrote:
> >> On Tue, Nov 6, 2018 at 1:57 PM Armin Kuster<akuster808@gmail.com>  wrote:
> >>> Signed-off-by: Armin Kuster<akuster@mvista.com>
> >>> ---
> >>>   kver | 2 +-
> >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/kver b/kver
> >>> index 7b008cd..5ccc572 100644
> >>> --- a/kver
> >>> +++ b/kver
> >>> @@ -1 +1 @@
> >>> -v4.4.141
> >>> +v4.4.147
> >> why not 4.4.162
> >
> > because linux-yocto-4.4
> > <http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/> is not at
> > 4.4.162. I am just trying to use the latest in that kernel repo.
>
> Did you want .162 ? I have a whole set of -stable updates staged
> here, but haven't pushed anything since releases are imminent.
>
> But in the case of 4.4, I could lift my freeze, given that the kernel
> recipe isn't active in master, hence the release schedule is
> different.

No, we can wait and backport if needed.

>
> Bruce
>
> >
> >
> > - armin
> >
> >>> --
> >>> 2.7.4
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
>

