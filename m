Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29875E00C7D; Mon, 27 May 2019 03:16:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8601E00B33
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 03:16:56 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id l17so14393381otq.1
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 03:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=YHYp4/DdIrowL1EEcvkn39AB32ceYKSJqa2bJsOPnjw=;
	b=A4PGAFD9w3qBtj0oAb7de/mObu3JqdUYNVZS5+PVjFgTPpeR+fKso6P9KeA9fBzb6N
	97t6cr5PtSZoB702i42XIuZD2aLztYmL4hQVY5keAG58nq+QOuERNamAruOLpXmpLGZ7
	TsAj3fOo8IURdkNJwkODJoF7VvGOnsLII7U1OWy3XVt2T2hHhD2bEUX6oZjWQYYH50dr
	xnEuUCpNMUJLD9uFdxcvhAR7Z09Lniv+cnb2KYRccrpTWgPWle/Le/FUvooBsk0vsfun
	H5WsgxVqLf5Akq3z8fhLIbMPJ5j2hlnJXTGRLoSPT4iBHxtLcwUMiT4kkRi822LAXA3m
	cE1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=YHYp4/DdIrowL1EEcvkn39AB32ceYKSJqa2bJsOPnjw=;
	b=DMs2FzHCqZbTqRCUmzql0lOa8ejhJma+PasZjUKtc5H60N6b8qVwYz3VfNqBh4yAfn
	067Xc9T4uozLD/mhhCxXfmQh0l+hMCTaOW82T5qWl9xS2JVl9+z7fGfShBycE9NYbHbs
	b2vph9gbH0ugjYxeR3M1QHij4+k0ZZmu/iYbX9gw7hRw9jg8hMCNFjJJnkQdc4XuYhk+
	zL8mMM6mCaOInRlvsg7AJr+gluerhRVSoEqu0LT0E5oZoY01zB3wuumtWWQ50w8T3oZP
	teBj5dlRolaer7OlDGmsskrQ7nGkI65T4y1CcMlBtLXbeHEazO8ecLkpxBZShDqDn1lm
	fuhg==
X-Gm-Message-State: APjAAAV7RZ8UFj1BHr1GS9Io87Au0x3M9shD3ej/Kly0a3zqNaCzDGoc
	kTfB2WycYxGC460cPEl7d4+PxyQRv3quvAP4UmEzOVYH
X-Google-Smtp-Source: APXvYqy7ktdAgN4g1lAI3wkFj0VmJE6dW/PSXQlkaXgFtEEfdVnL22rUUoJ5evhIAbGZjBvpHo9GdMAqMDCfvziMgj0=
X-Received: by 2002:a9d:694a:: with SMTP id p10mr7426880oto.61.1558952215982; 
	Mon, 27 May 2019 03:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190513162531.45297-1-alex.kanavin@gmail.com>
In-Reply-To: <20190513162531.45297-1-alex.kanavin@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 27 May 2019 12:16:45 +0200
Message-ID: <CANNYZj8MvEUjB-w+JjBRtbTnjw=B--L36+nXOVDAjzf+suxtcw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	ajlennon@dynamicdevices.co.uk
Subject: Re: [meta-mono][PATCH] mono-5.xx: fix an issue with too long paths in doltlibtool
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
X-List-Received-Date: Mon, 27 May 2019 10:16:57 -0000
Content-Type: text/plain; charset="UTF-8"

Ping?

Alex

On Mon, 13 May 2019 at 18:25, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> When build directory is deeply nested, the shebang limit of 127
> characters is hit, which leads to doltlibtool failing to execute.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  recipes-mono/mono/mono-5.xx.inc | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/recipes-mono/mono/mono-5.xx.inc b/recipes-mono/mono/mono-5.xx.inc
> index c36374c..dec2475 100644
> --- a/recipes-mono/mono/mono-5.xx.inc
> +++ b/recipes-mono/mono/mono-5.xx.inc
> @@ -102,3 +102,7 @@ RDEPENDS_${PN} =+ "bash"
>
>  # Workaround for observed race in `make install`
>  PARALLEL_MAKEINST=""
> +
> +# Otherwise the full path to bash is written to the first line of doltlibtool script
> +# which causes build failures with deeply nested build directories
> +CACHED_CONFIGUREVARS += "ac_cv_path_DOLT_BASH='/usr/bin/env bash'"
> --
> 2.17.1
>

