Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F37E00B1E; Tue,  6 May 2014 11:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD4CCE00975
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 11:29:55 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id hl10so29866igb.11
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 11:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CBo6glOyFeztYN8bL05g0f6obvSwkvX787eJ3LO8wxk=;
	b=EGjX/E9o5tM+fXZlWCD8MO0jUjvrpOGXJ2NsahfMYHx23FNANCzbRJY5SdjWrzUOEs
	UCvvTNRIH8Mdw6TzL4cQ3FEzyXs8xGWvuJgkYWpC/OnqlrIIiZO1O68VPhjuIXgRzez9
	3IgvNoSmrFBonJvc9wlmda0Gl7TF+mu1HYRcekWS+mtBj1A2b8CMJC0kEQ3TjN0db9V4
	jmtpG9W0dp/T/YvsMuS9rcQXueJj8SUVAkn0Gvf8tTXv/75P0XNOpGmyaBRRucO8QtSw
	bQ1nAaE5NUpQjvS8NeekLMrAmpSnysIBeI1erFNENwgnuE46BmE68ak5Vadj155nvscB
	eLNg==
X-Received: by 10.43.62.204 with SMTP id xb12mr4754403icb.51.1399400995208;
	Tue, 06 May 2014 11:29:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Tue, 6 May 2014 11:29:25 -0700 (PDT)
In-Reply-To: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 May 2014 11:29:25 -0700
Message-ID: <CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Tue, 06 May 2014 18:30:02 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 6, 2014 at 11:16 AM, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> We got a binary corrupted after a package update using rpm.

what kind of corruption ?

