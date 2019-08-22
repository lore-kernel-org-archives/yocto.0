Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53974E00D6A; Thu, 22 Aug 2019 07:04:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 651B1E00D35
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 07:04:55 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id sE4s2000X2dwwGE01E4tqp; Thu, 22 Aug 2019 16:04:54 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <64f74755-af69-e616-20c9-0c18c510f3a8@faresoftware.it>
Date: Thu, 22 Aug 2019 16:04:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566482694; bh=krzcAxMeVyUeZ3e0TdSXDQKkmT7bP0qO+DHp5WnJ/k8=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=PhR6CSkj+qeHmiJaoWCgWU6AVZbg6qt6lp06/ozilK6k9Ov13WkdLrDtpkV5/wP1j
	DWtdvAC8t2QHfg+aOxkLUyjpeSLRDm4OQB+Drp0A/5czk/kZDfXG8+KsVQ1acRN+xu
	HiGI6hgO/boDcRHtUVVQ3CQF2+1yLGT+wzdejEpJpfHbruzlzV5O/BuOR9ortjs2rA
	m0BjhTYeA776/m+cklkb/mlmY0GL/kMU34LFXonOIevYWKPPpB924cEAjU5tfBa/VM
	IvNoNni1mM+jVSlXAewuWsJ8eRhV6IjC8LJaXRlwV4OTJQoHfs3Mn+3zoI3OI+bp2o
	aG96YK9owhCwQ==
Subject: Avoid glibc-dev in the final image
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
X-List-Received-Date: Thu, 22 Aug 2019 14:04:58 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I need to understand which recipe put glibc-dev in the production image.

I put

IMAGE_FEATURES_remove =" dev-pkgs dbg-pkgs "

and I remove every reference to some -dev package.


But I have some recipe that include glibc-dev


How can I discover this?


I'm using a mixed Jethto/Krogoth BSP


M


