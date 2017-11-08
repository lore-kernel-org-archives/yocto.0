Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8F6E00D42; Wed,  8 Nov 2017 07:54:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F83E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 07:54:09 -0800 (PST)
Received: by mail-qt0-f179.google.com with SMTP id n61so3861181qte.10
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 07:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bkf/uBqsQG3AznGouVM1NMWEf8A6iA2QzTLcwZnHeG4=;
	b=TTnNMhg/4cWt4vHcMsc5hfV5cl0rJWrKvXyEVJnKOFx8D8QG7tZmh7oD0F+4KtuffE
	M5cMvEIdh+uT0B3cLk9/T71zJVcEOkbsPhjYNN4qaUEQRikCeYOnQZ58qt5adbyk+6qP
	SWG/gYWmbt91EkMdU3GiTz0Rq+IqH41B9VcvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bkf/uBqsQG3AznGouVM1NMWEf8A6iA2QzTLcwZnHeG4=;
	b=o8MsjGW1Q1uuaLkx50C9k/OL+4uoukaLqXoBZAZRRrJTPCsMmKvpPO8Li/6tmzNI2+
	oVVHUgPFip7PtDQ1xOp8X/CTVKE59WsHdVqMrK3AYzsSsqbPEHvFIzK0hhAUlj+fQm+I
	DUqd/Ai55GrcWbknGq/jML0YX/5fJZoaHySuDDfIbLyUfW2mcRDiWvno4Mmy22Az7dUg
	W6zJXztMZfbMK8NzmuoBkZeBYinWkmPlyYr1HMYFfWEKeoxky73ygeOv/jEC5gMEGLcD
	Nsnr9R97c7quYdeMBFGPplyQTOEbv5M/RjElEdKOIPRDF002uZaKihRmXykgFgqyJThJ
	/yeg==
X-Gm-Message-State: AJaThX74idMWGHm0+WgCGDmeucev5pn14vXgAF++Fc0RQtSfzfvqdple
	om+n2MVzK0RLTak9Xl2ZkHg/iGLe9QzDjUVDP6MHbGFH
X-Google-Smtp-Source: ABhQp+SdJHMNZ0pGHIYmaYEohTv6c5VTLHN16tLZ/SxPGNQfr1/XpUFraAjE43WT/Mxldj4T7NCuU/Qj6TPXVFLDI9I=
X-Received: by 10.200.36.86 with SMTP id d22mr1553094qtd.140.1510156448646;
	Wed, 08 Nov 2017 07:54:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.81.81 with HTTP; Wed, 8 Nov 2017 07:53:48 -0800 (PST)
In-Reply-To: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 8 Nov 2017 16:53:48 +0100
Message-ID: <CAP71Wjxui5Sy_SuQ+S43eC6_Wc7Nc38YL1uvfJA3BLq5P6oDXg@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 15:54:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 8, 2017 at 4:49 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> I am not sure whether it is a bug or an error:
> * Quite often, bitbake will fail before finishing, with message like: ...
> task failed with exit code 1...
> * But if you rerun bitbake, it will continue to build.
> * So sometimes I have to rerun many times for finish one build ----
> annoying!
> (by the way, my CPU can run 16 threads)
>
> Any idea to clear this annoying bug?

it's not a bug. bitbake is using parallel tasks a lot. At any time it
is running N tasks. When one task fails, it will wait for N-1 ongoing
tasks to finish, and then stops.

If you restart again, it will likely try N new tasks again, and the
same task that failed,  will fail again, it will wait for N-1 tasks to
complete.

if you do that several times, you will  end up in a situation where
the only task that can run is the 'failing' one, so it will try 1 task
and fail immediately.

> thanks.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

