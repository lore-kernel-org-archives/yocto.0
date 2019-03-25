Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04D6FE008CA; Sun, 24 Mar 2019 20:15:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 LOTS_OF_MONEY Huge... sums of money
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8330EE008CA
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2019 20:15:13 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id z26so6385369lja.13
	for <yocto@yoctoproject.org>; Sun, 24 Mar 2019 20:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VGZb/KxOYvec6wBDSFSmXUDc5+arT9nezIxC8MTzTgo=;
	b=bdOiq8DmriEL159GRS3z4RhDUlVXJ1Y9LdMjcfVJtZyNYKRbjsABV97h/McXZE6W0j
	G+UutpEY1j0D4uJaC2x7Yvi7izSDoFHt9wFPL77Jsz6JiXxoJW1L0UA7QMfwdYG8J5gR
	wVID4gvHfap+ilvqk2sL5GYqkpN7qIt+J9zxf9fruVWpAuUFR1GVtHIDw+Oo5NMEsJ+P
	c2i1N5XfOkUgN1c1Zv//bEb5sQMwMZvZSre4AayL/OiWYxzwW9uQvemnVmGt/PzTGpzV
	tTwxCPz1X9BrNOPGJPDwWLrqutZyrJK+CP8c94fa2MMLaCVX7ciTfiIRpsSh/JqPMLkO
	0juQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VGZb/KxOYvec6wBDSFSmXUDc5+arT9nezIxC8MTzTgo=;
	b=nRxHk+Ln1b+cr1d2xEM/Y/MsQc4pmrP2TLUIRlErKgwXX10i8gyWQRETH2f5VgzH3D
	anCEBfCh2DQIgW3JmDSr6yawSuOegALpqZyS4aXzgBKbXmndjCpOTbptBOgNWgWO4enM
	Wa71LDGAXq1tqcNiy887Vx5QG3tUhntMbNXbJ9zLLq/W3pLUlb1RFQjpPXOBOOMqi0YI
	mc4M7Ixedu3srntyBrDDmAo1G7gd0DfPLmEXutls5YX98fPdVhpMAYcVvPzTND195dFy
	sMRBZxd0YyDOf4OOpf6kt4VSu0bPR5NKUfSKqPvvjLN0F25mQytW17HsXK4ZPAyKWxb4
	ur7g==
X-Gm-Message-State: APjAAAWqdF/OMnQHqCBK0s1nObb14QV6gV1O7ybG1imdsXWWE7A01alz
	r2Ha7kZ5UweeFqk04ceDP+B3AqQNL0P8lSyaOpo=
X-Google-Smtp-Source: APXvYqz6cgyJChCqVloE87Ik/ZJDNNnRPmkdUgRSMFn25BOqmSHXKexOkMRp/mIShLDX9bkxBlDwDG4dSZKuFnVazLI=
X-Received: by 2002:a2e:9196:: with SMTP id f22mr11850774ljg.82.1553483712306; 
	Sun, 24 Mar 2019 20:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190322024756.116486-1-zhixiong.chi@windriver.com>
In-Reply-To: <20190322024756.116486-1-zhixiong.chi@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 24 Mar 2019 23:15:01 -0400
Message-ID: <CADkTA4N+5QUoV4Pwu26f4BBRnAXg=ra4Ya2KY5jG3CPuysB5wA@mail.gmail.com>
To: Zhixiong Chi <zhixiong.chi@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-cloud-services][PATCH] dhcp: Add the default route option
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
X-List-Received-Date: Mon, 25 Mar 2019 03:15:15 -0000
Content-Type: text/plain; charset="UTF-8"

merged

Bruce

On Thu, Mar 21, 2019 at 10:52 PM Zhixiong Chi
<zhixiong.chi@windriver.com> wrote:
>
> Add the default route option for the operation of adding route,
> while we set the static route and the mask setting is 0.
>
> For example:
> add_routes 32 169 254 169 254 10 209 67 4 0 10 209 67 1
>
> The first route (169.254.169.254/32 via 10.209.67.4) is added successfully,
> but the second route (10.209.67.1, default) is not added at all.
>
> Signed-off-by: Zhixiong Chi <zhixiong.chi@windriver.com>
> ---
>  recipes-connectivity/dhcp/files/dhclient-exit-hooks | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/recipes-connectivity/dhcp/files/dhclient-exit-hooks b/recipes-connectivity/dhcp/files/dhclient-exit-hooks
> index 3be5e02..41bcb08 100644
> --- a/recipes-connectivity/dhcp/files/dhclient-exit-hooks
> +++ b/recipes-connectivity/dhcp/files/dhclient-exit-hooks
> @@ -66,6 +66,9 @@ while [ $# -ne 0 ]; do
>    elif [ $mask -gt 8 ]; then
>      destination="-net $1.$2.0.0/$mask"
>      shift; shift
> +  #Add the default route
> +  elif [ $mask -eq 0 ]; then
> +    destination="default"
>    else
>      destination="-net $1.0.0.0/$mask"
>      shift
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

