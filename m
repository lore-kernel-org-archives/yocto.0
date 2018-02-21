Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1289AE00E0B; Wed, 21 Feb 2018 14:23:36 -0800 (PST)
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
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D81E00D91
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 14:23:35 -0800 (PST)
Received: by mail-wr0-f169.google.com with SMTP id z12so8634692wrg.4
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 14:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=UKQnJLKO9UUXz6pzre8UF0/8//T9WIyc0muoJ/A8M0o=;
	b=f8V2n+KHEFJcObbds8RfGpznd6r3BltgjEBjezyQDCNw5yExD776TthcG7cWc2HV3q
	5PyAqNLWooHnb0bKA+rHco0SIfe/eUGjSY9EQubWGXNsGEjAhEgNFhl267LZlxPfcPFB
	p7LJ+7EHhMkNeT4LJCB7X4KAkKEQp4ap7IkDVG5Z7hyMBELko8Gdy+uIJGviwDWLMk27
	Ef8aIE/W7+YH780ZbBSHzkH3XPLzTw7lSN+TzzNVjnn47awl0sA5E1mZOiikngxE7gFH
	VVaPBGSAnvAccGR3oJAXZMPVxEKXTnZ88rywodwukS4k9ZypeGHMiR4h3AFfJgW0+DqE
	Juqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=UKQnJLKO9UUXz6pzre8UF0/8//T9WIyc0muoJ/A8M0o=;
	b=E+aDrtv2Co037r1tb6UlaguqHwtMtxhz2IV+N1mKq1OXqTWbUB8zsXgmKIPMCuOHzg
	c7F9Qc7Sfp6kXa3A8sCohXbm7Upn6fRexW9mIpNoGV4MG7v4L5z5myOAPyAJ0cBHyNmH
	/ZIDKFkUO/JCmlWNAP1yw1u7SJnCiWxra3P+Np7XgiOWrc1jCiPwmGFJKWydLvKoYxjz
	/HxS5tze9MW31W17igrOYgOTsMsWufq4SZzwy0fVLrqgOxMyyNluXRETqR+5l+2uRiND
	ypZPadtrD+VRFKu6rl6FMdTYsQTy4rGgN6POxvBUzP29XwgeecWiUrX84IGnkpm+exxQ
	mqXg==
X-Gm-Message-State: APf1xPA2Vd2OemJz9qlj9F3Gj6sqEfm2uVZmd6uoJxu3aBNWGoSSDhxx
	66B1YVZFU4fjGTWvkctAIeNOsR+l7kgA1d7KXvg=
X-Google-Smtp-Source: AH8x227cLsOXTu9momp2pyDBIoMhPU+1CKPXCEmRNiM0d2CaO1zTpGqzIddkBYbyDargRLs1YfK3BanPZTbvGpulLT8=
X-Received: by 10.223.182.156 with SMTP id j28mr4452762wre.66.1519251814242;
	Wed, 21 Feb 2018 14:23:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.173.193 with HTTP; Wed, 21 Feb 2018 14:23:33 -0800 (PST)
In-Reply-To: <cc0b03a0ba51424bb8245fd4fbbe9ba3@atgrzsw1693.avl01.avlcorp.lan>
References: <cc0b03a0ba51424bb8245fd4fbbe9ba3@atgrzsw1693.avl01.avlcorp.lan>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 21 Feb 2018 14:23:33 -0800
Message-ID: <CAJ86T=X_Q9uqmD03XYhhmotJ7rcXWF7E4oumB6dFzsXc-+K+Rw@mail.gmail.com>
To: "Staffa, Christian AVL/DE" <Christian.Staffa@avl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: behind corporate proxy
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
X-List-Received-Date: Wed, 21 Feb 2018 22:23:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 21, 2018 at 5:11 AM, Staffa, Christian AVL/DE
<Christian.Staffa@avl.com> wrote:
> Hi all
>
> I have got a problem with proxy settings and the yocto build system.
>
> I already read the =E2=80=98Behind a Proxy Guide=E2=80=99 and generally i=
t works.
>
> But when it comes to build the linux-yocto package the buildsystem tries =
to
> clone a repo with the git:// scheme.
>
> This results in connecting to git.yoctoproject.org:9418 but this port is
> blocked by the corporate proxy and causes the build to fail.
>
> Had anyone the same problem? Is there a way to fetch the repo via http(s)=
?

Yes, many people have the same problem.

If you can update to OE 2.3 or above then this commit should provide a
fallback to fetch the repo using https:

  http://git.openembedded.org/openembedded-core/commit/?id=3Dabb8895d5b42a5=
dc171360a261a2652acd14ee7e

If you can't update, that patch should be an easy backport to older release=
s.

