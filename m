Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ED91E00D44; Mon,  3 Jun 2019 15:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11474E00D36
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 15:38:11 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id e16so5499958wrn.1
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 15:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=sKghtVuCYokeyIM1SpOFkkg8vOD/t0HRAxnF2Vtzogc=;
	b=ZILFbc1i6SaraGJ1v0EbQz5U1E0F4Rde/QwffSVqlxYFGookXnoL6AeitfQ717E8KS
	3rQM+hLcT+xDj92LR9XpWkb3wmakgxPLCNBdYNyRAy/Tdl5aRQNeAZoEf0jChY4jC8rl
	WxKEgL49TjetvZjdUWiDpGwylfdXfz0ngLZmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=sKghtVuCYokeyIM1SpOFkkg8vOD/t0HRAxnF2Vtzogc=;
	b=oNo3KZ3VDQjltuOFiP7/Z5pJBpg/jKZLYDppAY40cT2E5NkAYvhzc3elxLV1eF1F/K
	PkTa1Zx2U3742Bh6Fr0YNLiEytSwOXPh7XwTk0AY8kgYgWLX9SNAI9HMkc7VYlpKT+CB
	VjA5HI8oXs9VshBNislHJgKFUmZmeiRmv1Bkg6Ip0dRWtZwNCrF3fjgGmyA27hXqwRco
	mZwygTrq8k6BuH8va9EooljsAReW/t49FsgOe89sU3fm+8cMbHPvqNrQPDYE1sSo63rq
	t2XMBfKwkEQ0dKH1zkOOX7Euycy173igKwc8h2CkcrbMlLj+ZAzRD1P6+j2Vva5Hcd7s
	aNpQ==
X-Gm-Message-State: APjAAAXlnLJwB8mugpKIIEzoXWOhp/F5oqfbX6eydsOLUthj3DIbknaB
	Uncmipw0JcQFHgUMf8sD9cEDXw==
X-Google-Smtp-Source: APXvYqxhj5udJO3o+1DD3+wwOrO1rTGncKJ5ZxuEx94nLD5bA3JrgIIER4jgkmoKvgwdEIi0H6E/rA==
X-Received: by 2002:a5d:4886:: with SMTP id g6mr17266628wrq.108.1559601491116; 
	Mon, 03 Jun 2019 15:38:11 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id l1sm4940807wmg.13.2019.06.03.15.38.09
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 03 Jun 2019 15:38:10 -0700 (PDT)
Message-ID: <295ac49c8879f7c88e8ee6e8f6c6034ceeb844d9.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linaro.org>, 
	yocto@yoctoproject.org
Date: Mon, 03 Jun 2019 23:38:08 +0100
In-Reply-To: <20190603183958.14830-1-anibal.limon@linaro.org>
References: <20190603183958.14830-1-anibal.limon@linaro.org>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: [ptest-runner][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later to source files
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
X-List-Received-Date: Mon, 03 Jun 2019 22:38:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2019-06-03 at 13:39 -0500, Aníbal Limón wrote:
> Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
> ---
>  main.c             | 2 ++
>  ptest_list.c       | 2 ++
>  ptest_list.h       | 2 ++
>  tests/main.c       | 2 ++
>  tests/ptest_list.c | 2 ++
>  tests/utils.c      | 2 ++
>  utils.c            | 2 ++
>  utils.h            | 2 ++
>  8 files changed, 16 insertions(+)
> 
> diff --git a/main.c b/main.c
> index e963efe..83cd8f2 100644
> --- a/main.c
> +++ b/main.c
> @@ -15,6 +15,8 @@
>   * along with this program; if not, write to the Free Software
>   * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
> MA  02110-1301, USA.
>   *
> + * SPDX-License-Identifier: GPL-2.0-or-later
> + *
>   * AUTHORS
>   * 	Aníbal Limón <anibal.limon@intel.com>
>   */

Looks good to me, thanks!

Cheers,

Richard


