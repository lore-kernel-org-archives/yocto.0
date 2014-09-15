Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC386E00848; Sun, 14 Sep 2014 23:54:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 018E2E00746
	for <yocto@yoctoproject.org>; Sun, 14 Sep 2014 23:54:51 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id 10so3886201lbg.19
	for <yocto@yoctoproject.org>; Sun, 14 Sep 2014 23:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Q05FjV9puRmb//FYAV/PQlgUezVS5MeBGpjj8OaIdbE=;
	b=JBuG4/OQfvy60NaZ43Kr9TRnpQiTYRzCSZ1xi9nYAYceze9CizvYKWUzKmAIe6AhyV
	+hrwE7XeQ3h94vHjqviQRHiVo7h7FyF1gzDZnlSkGgHFCqxo/ZujicX7/RgfjVod33Xh
	FwIhwW1qMXnMGvOgH4kV3NaxAXZ0bhdo+b5d3KnEHugRPmz8Zl4moWXLhtK3FYU0kUi5
	xP8d2ZQMJHrUG0EqIZxWPfaEVZcHg7dIQBmb1V0H8mHFNidB1ChxRhQLMAJIYfvHxrq7
	aeR2oW9Djvv1gmni8dXaTtGWZUhDlEFhk4NXEqHleOq7D9hmNRUu6j4gVlMCXP247QOL
	wkJw==
MIME-Version: 1.0
X-Received: by 10.153.5.9 with SMTP id ci9mr1317487lad.75.1410764089975; Sun,
	14 Sep 2014 23:54:49 -0700 (PDT)
Received: by 10.112.189.38 with HTTP; Sun, 14 Sep 2014 23:54:49 -0700 (PDT)
In-Reply-To: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
References: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
Date: Mon, 15 Sep 2014 08:54:49 +0200
Message-ID: <CAAQYJAuZrQ5H6yWeuzx=oW-7D-McyAAgn3Ltsij-yCNH4kS-Gg@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add support for MIPS32r2 and CI20 to Yocto
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
X-List-Received-Date: Mon, 15 Sep 2014 06:54:58 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 12, 2014 at 6:35 PM, Vicente Olivert Riera
<Vincent.Riera@imgtec.com> wrote:
> Add support for the MIPS Creator CI20 machine. That board has a MIPS32r2
> architecture so we also add support for that.
>
> Vicente Olivert Riera (2):
>   Add support for MIPS32r2
>   Add MIPS Creator CI20 machine
>
>  meta-yocto-bsp/conf/machine/ci20.conf       |   10 ++++++++++
>  meta/conf/machine/include/tune-mips32r2.inc |   25 +++++++++++++++++++++++++
>  2 files changed, 35 insertions(+), 0 deletions(-)
>  create mode 100644 meta-yocto-bsp/conf/machine/ci20.conf
>  create mode 100644 meta/conf/machine/include/tune-mips32r2.inc
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Vicente,

there is already some support for mips32r2 (see
include/tune-mips32r2.inc) in oe-core master.
It looks like your patch is extending it so please rebase and resend
the patch to openembedded-core@lists.openembedded.org for review.

Thanks

Andrea

