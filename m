Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65E98E00D08; Thu,  4 Apr 2019 14:48:21 -0700 (PDT)
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
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 058CDE00CD6
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 14:48:19 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id y7so5562783wrn.11
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 14:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=tvPYa+plX3HuPukLjmZ23QNH9Z53e+Wzf2yztxi1W1s=;
	b=GTfH7gbicLKrKBSgDTXDiIVj0ZUm6wB4I6dZqoF8HhiA3UjfGKA/Iw39TR4LzDrD6L
	osc/ysn2Fr64AgeEOFQrSBctYkzUdLnUDzo8mrdHi4QjdoYYWGjh+infUBPLbisMRuEe
	KvHpNuoS21D+Ts5rQDxeQ7Gft3w2dLPvlGtv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=tvPYa+plX3HuPukLjmZ23QNH9Z53e+Wzf2yztxi1W1s=;
	b=pCoK/W5Hkq7Ry5pURlPo2uXIddrKZaPT0iEsw+NyaQbNcS2H6MrR/XL3ga9DU+UQJo
	grSMNbMfiUFMdyQXLYtACyB/5815J2iIV+O8UPrciLihEFRzkMCB2mOz8LWu8V12rghF
	X7EEzpQqyv3WqAWw9hNAveMx1ass6ya3UQ+hRQfKxLjGi3jwzenqQit8rCL1p3xGcl4W
	RRLSA9n8RzEX9KqA+lbmS56s3qbgJXD6QL0M8+dbOs10lOPlIaoYI8goI3tGhUbM+Uh9
	NYxsNc4MewaxdkzT/sDxR5+DH49aFxQM+NMHmnR9hie08baD7QjQoZwvMW3gvXQOxOrp
	w8bg==
X-Gm-Message-State: APjAAAXrm0N0p18ixa9vyVIqkrxGQ6+AvybhhVAcLkL4tv7c/Fqa8cTX
	cpILqf0vI90U2sRLm6wXkJrjGQ==
X-Google-Smtp-Source: APXvYqyAK6ZEYHStLL3XIDfaCnNjXY31+KSAXWnqcZ2Z9JulQBSFGhjcDRg+dGNidIZ6ICG4YokQiw==
X-Received: by 2002:a5d:6604:: with SMTP id n4mr5622279wru.42.1554414499221;
	Thu, 04 Apr 2019 14:48:19 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x18sm27806523wrw.14.2019.04.04.14.48.18
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 04 Apr 2019 14:48:18 -0700 (PDT)
Message-ID: <8703dcd293e64bbee38f5ff20ae422c80c579511.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@yoctoproject.org, 
	anibal.limon@linaro.org
Date: Thu, 04 Apr 2019 22:48:17 +0100
In-Reply-To: <20190404160015.39306-1-alex.kanavin@gmail.com>
References: <20190404160015.39306-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: [ptest-runner] Run ptests via stdbuf configured to line-buffering
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
X-List-Received-Date: Thu, 04 Apr 2019 21:48:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-04 at 18:00 +0200, Alexander Kanavin wrote:
> As ptest-runner communicates with child processes via pipe2(),
> the corresponding channels are not attached to a pty. In that
> situation stdio facilities like printf() or fwrite() are fully
> buffered. If a ptest would use them, without bothering
> to fflush() the output, ptest-runner will only receive what
> was written by the child ptest process after a buffer gets filled.
> If the unit tests are proceeding slowly, this may mean that
> ptest-runner will erroneously timeout due to an apparent lack of
> 'signs of life' from the child process.
> 
> stdbuf utility from coreutils adjusts the buffering to a line-
> buffered
> one, and so ptest-runner will get the lines as soon as they are
> written.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  utils.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)

I'm a little torn on this. I noticed some of the run-ptest scripts use
"| sed -u" whilst the one you were seeing problems with uses "| sed"
without -u.

We may want to consider strongly recommending -u. I'm testing a patch
with some tweaks like that in it...

Cheers,

Richard


