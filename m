Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A98D8E00A54; Tue, 12 Mar 2019 17:05:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
	[209.85.222.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DD8E00994
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 17:05:42 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id r21so69814uan.11
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 17:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/icXQFOJiyWWfbQpOZAiIOLcuqZKCsrzU8WvX+76Pn8=;
	b=L3WHrEAim3V5HBOe+Yil/tQZsKdY/959arpwDbM4JuZ4YIuebITfD8ylm9y4ptNt+J
	S9qqGyqZdjV23CFxVJNiqUn9rj+pn5UX98cekC0+/MGR2S9vJylTSe3H0CghDEje+rPm
	Srs9F861gdU2ZzeM9v1j+3RP1BsOtaU7QWr8EO0ORf9/X9O0wnxd/l/OglPQn6E5k06B
	Yoy8WroP03DK+JGthpo6wDMzJ26LSRG1qArXFneXo2lA1obcA6+lmANgUz2hBGfP1lHA
	RaQUmr4livdV/dn/lOK5YdKFFYF16KsxQ8HuZBGpVnVyMFaZmSTGfxXPQjfXzn30gu52
	TeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/icXQFOJiyWWfbQpOZAiIOLcuqZKCsrzU8WvX+76Pn8=;
	b=eNo4CkuSjhkcoUULmeaBEkNt+nGgBDZQsdYQReT7WwyX5Ku/G3xgwHqyCpNEzpmTJC
	CSrRnU71ZijHjH0VIHuB8JWxj3GBUHewwzkF+xBGyo9oULlqGr7eN3X10M2m9y9aPOrg
	bptLa2Mzpgprtt41pubYkIuTw4EFj8K6mhLzQW+1jW8kA9FAwtMw6/IGZ4XUSfAo8MoQ
	6CQoSKHSGGMRXslWhMppfUsqsBwTiX691EtJzH7n5mT0gX3eava8YzeBwiwnB+4+0ASE
	egvNQr+wdh5q4OLxXEoMJeFGRttXEw6RLGiKdM6JmrvNiTTivfr/VWrU+2ghd/8vh6f6
	e52w==
X-Gm-Message-State: APjAAAVh4qe/9bkIDLYqMP58ro/6BqT74vqyT0csv7cb+2/JcQlSlBrC
	xkQvmaGsKS5+kPoUsO8i0Jgd5lyTZuHL8WBYdCN+Dw==
X-Google-Smtp-Source: APXvYqyUBpSAqLir0Av+He9PUIHyg4wbKrfBYVnBCpGtEHOQq11k5NexrEKPSWKbnHDbpaLtQpjyq1d4zMJxQGRZuGU=
X-Received: by 2002:ab0:28d6:: with SMTP id g22mr3888408uaq.75.1552435541666; 
	Tue, 12 Mar 2019 17:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
	<CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
	<CAMjhiJgL4be=AvT03ecR62tRQpar8NJV4=yij-cg+-YoGDkY8w@mail.gmail.com>
	<CAAV2bM2Mdht08DxVZ5q-1QTaCZu7DNSNG9qegQ1kkM_zx2e68A@mail.gmail.com>
	<CAMjhiJimZDYScR0oC5bisurq+38OL2wozV1qT+ZEMz3dzq2anQ@mail.gmail.com>
	<CAAV2bM1BqjyBOO6+WsOr05KZzH_Ld58o_3Bp8BfoA7rDZhyffQ@mail.gmail.com>
In-Reply-To: <CAAV2bM1BqjyBOO6+WsOr05KZzH_Ld58o_3Bp8BfoA7rDZhyffQ@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 13 Mar 2019 01:05:29 +0100
Message-ID: <CAMjhiJjMD3De7goQBJ2zkBc_T440QzYa+5nrhbZDhQhPJvM2Ww@mail.gmail.com>
To: Emily S <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Wed, 13 Mar 2019 00:05:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Emily,

On Wed, Mar 13, 2019 at 12:50 AM Emily S <easmith5555@gmail.com> wrote:
>
> Ahh okay you meant just literally if there was anything else in it. An additional complication of my setup is that our custom board is in Europe, so right now there's no one to load the OS for me and boot, but I will check as soon as I can.
>
You could check the locally generated filesystem image also, you
typically do not need access to the board to verify this.

Something like tar tvf or "wic ls" - depending on your image type(s)
-- see the Yocto docs for WIC inspection, I don't know from heart.

(But I would travel to Europe Alps and have the trip paid -- much
better than remote board access).

> In regards to your second point, do you mean that the init-clock recipe might be trying to install the script in a slightly incorrect location? For example it's trying to install in /usr/bin/env when my OS is setup to use /bin/env instead?
>
I mean "env" could be installed to /bin/env, whereas the "shebang" in
the header is hard-coded to use /usr/bin/env.
Solution: remove the hard-coding in init-clock.

With this, you should be able to inspect further.

Regards,

Leon.

