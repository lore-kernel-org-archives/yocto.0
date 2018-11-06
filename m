Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBCBDE00AB9; Tue,  6 Nov 2018 14:06:09 -0800 (PST)
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
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B293E00A0C
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 14:06:09 -0800 (PST)
Received: by mail-qt1-f196.google.com with SMTP id n21so1919115qtl.6
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 14:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=lA56iHiZQqexnYtDaPnOlJjmQEeiQcQUsr7KLrHe1IQ=;
	b=cE9P+iLUUOUZp7b3hCVT19jH9ngtWID2N626r/i195tRThbw1vFfvLMZtZl0gaCRKH
	GoBeVhYKMvsQEpwVPwoufczLJaMvLgHKKQQw5u36EFxduXiYbvzIZcbl2aQBN6GqtIUF
	vB5fwXRlQtCPKPFhYejzXHogXpijz6NCUSE1XnchWoitqNWKRqyMmH6Sh6zWS0u7F42m
	q3bPFFtBCnXOa92XITTQyJgA5GUpXxYDm/dw2Wlcgi2wTHDhvFFaKIO3a0p9SGq2r5f2
	IlpSqrlgS9ZR6rf35T5QiyFB3S4S3lISZF4Zru0YIVmlBad7z3unP119F3+eEDzRJcik
	y/gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=lA56iHiZQqexnYtDaPnOlJjmQEeiQcQUsr7KLrHe1IQ=;
	b=Lelif74tmfEAYG3QhTHMIrhsIyEkmhe46qSILEpOm+ajHnsGhzVzxAl/aB6V7CuhB8
	Yo+2xy0JO3kHs4C5bf1lrS2fKWff4aKJlX5ocp4HCiFPq5ByyUeW4sTLdc0SC5yv6Glh
	obVv5oYwC7RlBNrb1Iw11BfLtNgOYKGliw5VE2MxKxllst3lnGA+oRLOI3DmTgJAoKZJ
	iNy/oPFp+4Hg3S66dM1jJ7DMOeajuxhnITlqiprJvgq+pc4Dx1/AUfHZkPUjyPHX9ZAd
	4DO/H3PauLJtA6ZObgjK9IWiZRytznpC37ccB9V523FadZyzLIv2ZJPMXAbATWptVtU9
	xAPA==
X-Gm-Message-State: AGRZ1gIYbi5FNuzE+Y97Q5CGiTMW/lNMY0ztuJyab0TtNUtQM1Qyghoc
	673VKrQDJ9/hihaM5vb3xwc/TB2GmBibQGMrjYwJYSFgFNI=
X-Google-Smtp-Source: AJdET5dGnITuGk4MoYwNE5UKSsclNC6tbENX81C6oUJy4YIQChnGqoMYmbMR3w9v4m8M18MEipmHCT50GW0tfy6Kgvg=
X-Received: by 2002:ac8:36ba:: with SMTP id a55mr26786735qtc.236.1541541968406;
	Tue, 06 Nov 2018 14:06:08 -0800 (PST)
MIME-Version: 1.0
References: <1541541389-21595-1-git-send-email-akuster@mvista.com>
In-Reply-To: <1541541389-21595-1-git-send-email-akuster@mvista.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Nov 2018 14:05:41 -0800
Message-ID: <CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
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
X-List-Received-Date: Tue, 06 Nov 2018 22:06:09 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 6, 2018 at 1:57 PM Armin Kuster <akuster808@gmail.com> wrote:
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  kver | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kver b/kver
> index 7b008cd..5ccc572 100644
> --- a/kver
> +++ b/kver
> @@ -1 +1 @@
> -v4.4.141
> +v4.4.147

why not 4.4.162

> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

