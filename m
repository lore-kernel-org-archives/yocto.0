Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7922E00CE8; Wed, 20 Dec 2017 14:45:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C711E008FB
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 14:45:51 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id t8so12707492wmc.3
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 14:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Iho+piqTOPd4WSH7Vg0gX1qCRrqvrqGYcY3VaM5MyKM=;
	b=X14LzHG8GJXRPTQUvUWZxE2UHsCzncLqEO75MfWsqVNY1DRT0VP3faO4UZ1Omn+2nA
	fujNU8p74xYN6MB9OMJqTeJDUQqggHuT3wTAHZdJJZsapTqvaJLsb5KDW52vHc1qOul3
	eTdRf/6qRb99r2U6+YgY3nrUqs8ZrlYbPMfogaAgrQdcdnmuF5rU51cGr/THGuzDcKEw
	RSsQZVDR0wdeybhundbKF+Eyh5kKwKJk/CrIcbclkqjndM+AnA2U9BBXGiu6krqd1u9Y
	eFyid5uzOppOvLNFnvyldWBW3lqRdWIdBsWijqgvi+bZLzIbyG65zq7HqY2/IpGstUpB
	dtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Iho+piqTOPd4WSH7Vg0gX1qCRrqvrqGYcY3VaM5MyKM=;
	b=EY0K24nNtVVogS/OOEB7o66oai/JJnL9yauXhj24p+Q+Z0OPjNmKxdVAiGMTtEsbb3
	uisPStIaa9FuDOkRMIqJzR+93reD7F12v8rO6YOp3P7R0DDeZRYMkernuYOtU8UZi3/l
	WBTU9st2zuOKg6pqmGcaS0UY5KlmiTiXsRsre4IA5u86CTHP407rQgOkGG8r/3anSXWN
	Lfbn+msQ1A3W9M6m+Rt8y846blz8cQheKO/ar3uuhS070b4oua0f84ShW2Brmn6ZkM5r
	l4tpVoNcabRvNIS+LjYURRAhFQVYtmEiy+Q4onLTuXgmDSlhxLyMwJfBr6N6xg9phvaH
	KrSg==
X-Gm-Message-State: AKGB3mK7MAN3obOYcGl7vIFkguIywKTYkY+TW4Ftp9wUQUhlFuZmmWpp
	l+mKyEGnoLOU6DH5uM+g4+qW1PYvR7vqUfg6t24=
X-Google-Smtp-Source: ACJfBovpp+yabbbHnVvMR0URLAQNUy7c0nDqNXbkjWUMFzjKZNEXKMeGU+zl+Yv2iV72gHsAKeAXq4bzma0vlgV60aQ=
X-Received: by 10.28.101.11 with SMTP id z11mr7269463wmb.110.1513809950404;
	Wed, 20 Dec 2017 14:45:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.184.47 with HTTP; Wed, 20 Dec 2017 14:45:49 -0800 (PST)
In-Reply-To: <CAGAf8Lxkhv8ZKz9etCG17PykQ3Yo5s4a_uLMK9ccJNavK4urYA@mail.gmail.com>
References: <CAGAf8Lxkhv8ZKz9etCG17PykQ3Yo5s4a_uLMK9ccJNavK4urYA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 20 Dec 2017 14:45:49 -0800
Message-ID: <CAJ86T=U69e50Ea=nyMJKjN7Aign36evdRQAeKUUctzsztamo+w@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Some trivial question about git update-ref refs/heads/rocko ...
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
X-List-Received-Date: Wed, 20 Dec 2017 22:45:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 20, 2017 at 8:32 AM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> I am trying to upgrade my poky distro with current HEAD:
> 65d23bd7986615fdfb0f1717b615534a2a14ab80
>
> It is ~ one month old.
>
> And to the latest HEAD:370483fce1c2429c81b19dcf8a36394dc3fc3d92
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=370483fce1c2429c81b19dcf8a36394dc3fc3d92
>
> The transcript what I do is below:
> [user@localhost poky]$ pwd
> /home/user/YOCTO/oe_core_embedded/poky
> [user@localhost poky]$ git update-ref refs/heads/rocko
> 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> fatal: update_ref failed for ref 'refs/heads/rocko': cannot update ref
> 'refs/heads/rocko': trying to write ref 'refs/heads/rocko' with nonexistent
> object 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> [user@localhost poky]$ git update-ref refs/heads/rocko HEAD
> 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> fatal: update_ref failed for ref 'refs/heads/rocko': cannot lock ref
> 'refs/heads/rocko': is at 65d23bd7986615fdfb0f1717b615534a2a14ab80 but
> expected 370483fce1c2429c81b19dcf8a36394dc3fc3d92
> [user@localhost poky]$
>
> What I am doing wrong?!

To switch from rocko to master, try:

  git fetch origin
  git checkout -B master origin/master

