Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23DD7E00D3A; Thu,  2 May 2019 13:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B103FE00D32
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 13:17:20 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id f23so3424753ljc.0
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 13:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=J6Og8w3mplZFzUhUvfcGzUei/McllR+XAiX+r5Z1Nm0=;
	b=HAm7kD1trU9mZiNG0EXIAV2mpIGZQK8kVcfwEtcs5tnKkjVFIfqfoIlM8qHiw00acW
	2X9MXz+6R+vGfkE5A5jimhnZph6JixoU8bB5BO5Egzu9GWPA3JRuoauHTRKR2EXTC5Ne
	4OhcPuvpYavCNkMKhauvOotKzPaMhStf6ehd+PGFMWp2ue44JWuWYfPKwnOYqGhmY3lg
	2GX1FZfdj0kwp6+W2SjXtTxT5MbcUDupVJbwqRgxjPgAkl97JrNYucedzeSPE6JNbg6U
	vNaWcycL/h9cYRUP3gSU882BEPSuqa0VpOnjb27EbPrbWpY7nft0/s+Cz/qdvO2z1bXZ
	L3fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=J6Og8w3mplZFzUhUvfcGzUei/McllR+XAiX+r5Z1Nm0=;
	b=QDVhlf1qwiMUqzmUEAQWRVQk+LMeiuSMCuPvG/3lobTPhkPvESGm3GVvxFI3+8Sdp9
	73xNvM2vj3nmxxQHUMWYsldRjaqU1YU64BXV0Jvs9IIXDhEP8+zo7V+F9xn7OuVfL8j9
	L+iG2cpJu0xdmdaIiNbwEIjHXc0hVqqY0Hnlr5BBsPGWrL2mrLT5ZeqksuJmKkmNnJLD
	FEYW9dpm4y6vVjTkot95U+nvYRQAEUJF7L5YAtn8KAbH1tAr+cCiarYBCrQFFoAg3tMd
	S+N/Hhmby0LLk5bmDOpsF2VOHEjPRjfdH5iJnnku/P8i4nqX6dz6ZrKy+6wjst/NoXQ5
	PGLw==
X-Gm-Message-State: APjAAAUiru4EwKsgFPn+qvWMMOwXtzYqGKEAhn8TiiY+eS8j9/iHnxji
	2bYZRZHa0i8wf1ZBbglJnycYFWcvJOL2JKwf4VSeFw==
X-Google-Smtp-Source: APXvYqyUIhlJy7ZEX127aa0I6uWLBTLqj4tor4xD/gBLKZzw7lLLvPGnHx/C4sjBe6R4xfXcJ2wpf6wdiRANJJpX/HE=
X-Received: by 2002:a2e:9216:: with SMTP id k22mr3022031ljg.179.1556828239727; 
	Thu, 02 May 2019 13:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <94d26c09-1eea-ba34-67a7-f2d233edbe7b@ibeeto.com>
In-Reply-To: <94d26c09-1eea-ba34-67a7-f2d233edbe7b@ibeeto.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 2 May 2019 22:17:08 +0200
Message-ID: <CAP71WjzboC4Vv26+a-4QkC-uKmyTACa3piPEwicm_xBSFpavEQ@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, 
	"Volosincu, Andreea S" <andreea.volosincu@windriver.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto Project @ ELC NA 2019
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
X-List-Received-Date: Thu, 02 May 2019 20:17:22 -0000
Content-Type: text/plain; charset="UTF-8"

hi Rudolf,

+Andreea (Yocto Advocacy)

we are definitely planning to be at ELC, with a similar setup as with
past ELC : booth, demo, DevDay and BoF, well, at least !

cheers
nico

On Thu, May 2, 2019 at 9:31 PM Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
>
> I apologize if I missed any communication on this mailing list but what
> are the plans for a presence of YP at ELC NA in August in San Diego this
> year?
>
> Unfortunately, I missed the deadline for submitting a speaking proposal
> ("Yocto Project DevOps with Gitlab, Docker and AWS") for ELC. However,
> if YP is planning on a presence at ELC I'd be happy to support it as I,
> conveniently, live in San Diego. If there is a YP exhibition I might be
> able to bring my little hobby project, an electric gokart with YP-based
> instrument cluster (it's a full-size kart with 13 kW AC motor and a
> LiFePo battery pack producing up to 25 kW peak power output going up to
> 45 mph (electronically limited)).
>
> Cheers,
> Rudi
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

