Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B855E00B57; Thu,  8 Jun 2017 07:22:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB765E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 07:22:29 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id c10so43092931qtd.1
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 07:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NyDhpgmQBgeRkxKc6Mj8Mggqv152XNxwXze8EcaaaLU=;
	b=Ghi2ZW4R602IuCyGHE1PKtkZUpzuZDFX2NJXdELs+vL6zWOCegl2F6SbfJnVZYIKN6
	EABMx/4FZQt2AnZfY1kw/KgVaxfAO+UuM5ZXT2IoCoWwgxb8dHnMcUG1/osdUOJPeZY2
	6A9vDM++4Hwr52Sogy3QvDlOSl173P2/Ue0jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NyDhpgmQBgeRkxKc6Mj8Mggqv152XNxwXze8EcaaaLU=;
	b=isk6L9K4XyDoPZK0P6VLCS3IOHU6FU5EMY8M0GE5LswqULsgtonOQDoBB5ojkHF6zZ
	3/JlwESZAoaW8foejhZ7ePbF41FvndFVbZYiq6z+Yl5KEO0L0Rd8jpOmNPkj1ELTD/Fg
	QALApFKLoqsUAeNxdUJ2/CJ1O1W88YVvUQFbc8Vi7uFUHtY02RzTB5dDRcMstqq4g54W
	9TJ/VPq2uOLX8Rji5OvQbeAN26c/903cO+B7TTw7v3AJCAYDsGYmr09FTnSdR+9YasJQ
	6EOfrXjYD24F4WwXACHHelUvoqwyNurnzsI11c+8Usgvn9V6ufcWabDnS6n5cyHRELUa
	T0ig==
X-Gm-Message-State: AKS2vOyeM2UQXoY1AYxzKCH4wKsLexWWwMUsi5lTzT43LQJa5VMpNtAK
	Uc5MmbDRBTxZkA+PhlDI12SBH1SgsJcT
X-Received: by 10.200.38.8 with SMTP id u8mr27152114qtu.127.1496931748734;
	Thu, 08 Jun 2017 07:22:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.188.135 with HTTP; Thu, 8 Jun 2017 07:22:28 -0700 (PDT)
X-Originating-IP: [72.74.84.52]
In-Reply-To: <731c0b34-6080-3fe4-ba8c-7be63c76a3b5@linux.intel.com>
References: <20170607041904.29447-1-dev@codyps.com>
	<979760b7-4dfe-3775-ab96-c14fbca076ad@linux.intel.com>
	<CAPoQQ-0KR5wf1Uk31TB-DM-9n3pfXYYQdK-3T=PrMik88drzWA@mail.gmail.com>
	<731c0b34-6080-3fe4-ba8c-7be63c76a3b5@linux.intel.com>
From: Cody P Schafer <dev@codyps.com>
Date: Thu, 8 Jun 2017 10:22:28 -0400
Message-ID: <CAPoQQ-1=V3DjJafTe2nWFnYE_6jmCsPyPazNjuuLOA284iXtTQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] qt4-native: depend on icu-native to fix build on systems with icu >=59
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
X-List-Received-Date: Thu, 08 Jun 2017 14:22:32 -0000
Content-Type: text/plain; charset="UTF-8"

> I should give you a heads up: we (the yocto project) are going to remove qt4
> builds from the autobuilder altogether, sometime during this cycle. The repo
> will stay, and patches will be accepted though.

Thanks for the heads up.

> So it's up to you to solve these issues, but I wouldn't want to take
> patches that fix up older releases, while the master branch remains broken.
> We have a 'master first' policy :)

master first makes sense if master is going to be supported going
forward, but given the extremely stale state of qt4, I don't expect
we'll be able to keep it working (at least as a complete unit) for
very much longer. And we probably shouldn't :) . At some point there
is going to be a last release that works with qt4, forever.

Would it be reasonable to disable icu usage in meta-qt4 master while
switching pyro & morty to using the icu-native package?

