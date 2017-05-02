Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D3B5E00972; Tue,  2 May 2017 11:48:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EC80E00852
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 11:48:20 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id v20so10595863vke.2
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 11:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=O+XiNxU6Lh0lpdZncN3pzk+8v26tPR7+T1CXI6+tfgs=;
	b=JHcFyK/ueQM7GRnjGcGwZjjGjceE99w8Mm6N5gr3JatjyVrl+hVMMyjkgr6mzfx1D4
	ivSb8MpRzBkFOjERacuiX7px5CVgue0n3RXAW5Rf6s3PQnjHqKbY4ynTKSbVPt/w2SIo
	kcjtT0VKMYeEgBR9mjb8zQD0kOu5Tep9D3LEi3FZVs8KaYEpjovKD6o9LduABvz6Fw3O
	YlmUBPMt2KVJNijQlu8a96ZZbC73vWDjL3WvZgTLLCESgAE3YDdMqqZtxlF2yMcjXEcY
	Z2JwYAHGY38qOahB8bspxlGrmNC48Si8v8eEfRTNu2Ueyh832wpg3OpKN950VKqPMvR7
	pjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=O+XiNxU6Lh0lpdZncN3pzk+8v26tPR7+T1CXI6+tfgs=;
	b=Tfg7xKLk7oaa0yRDM5QgQZmZfHgeVmRxK6NMB76U+HpAFhqyTbF8+laLovJ425mhsM
	jkwr0uJFPfyNzNrd3F/j45OXqAE+K3FDbDglsOZZbaoA34ZL9x7ZB5zJYXICf+CLItXh
	O2Jah37R69y3FGEme2onowjBnIuCUy4Ybou6wMGgvMKlrT+H9rAZPaYjvO9xYfbnzbwp
	b0G8P9lJwBu/e2+vFBPlKfxfZFXvRcDLDFT1Syy5sL61n3AuMxRtdY1WaYHgJ8TMCrov
	hKqLnXVnSfmiHR+HFH+raas/jYSKsDDPUG0sSsey4RsHS3z9ur5dgm4oF3OymDaq7vY7
	bjcw==
X-Gm-Message-State: AN3rC/5bu+nWgTwWz5iNlNsLcZpu+17r5hOyl+M+Ar+ZzXks4ZOkUqxn
	2RsYiKGGZTY/yYUy3u4sWWTtT5yBw3ru
X-Received: by 10.31.185.66 with SMTP id j63mr12279107vkf.19.1493750899909;
	Tue, 02 May 2017 11:48:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.65 with HTTP; Tue, 2 May 2017 11:48:19 -0700 (PDT)
In-Reply-To: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
References: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 2 May 2017 14:48:19 -0400
Message-ID: <CAHUNapSSakLfCEm9YmE7XS+Ndkb2ZZZ0kwOJCkZsexqTBsYyNQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Stable branch plans
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
X-List-Received-Date: Tue, 02 May 2017 18:48:21 -0000
Content-Type: text/plain; charset=UTF-8

It is very likely that I too will be trying to base an rpi-based
"product" off of pyro and hope that it will be as pain-free as
possible :-)

I don't have any past experience with this, so I can't speak to any past issues.

