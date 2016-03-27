Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2853E00503; Sun, 27 Mar 2016 13:57:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6583E00443
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 13:57:20 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id u110so95816123qge.3
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 13:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rBBLTEhaOgfK2dBPtoT6RMBXNM7UttFFRR0Ro6jnhVU=;
	b=wHVJhkraOHLxR9aCmopXw/5A1WJyj745mnV8R2zcB30pLJ+lqtmQJmLyv7ZaUk8yJs
	zLypWRkvqZU6ypwW9GJMsgAuUUWYw24MKNekO5BelsixwQBqbFHHO8HaQzmVUu1PCwXD
	2HPeL/VwpJoT7GEAdv2ZR60Rqip5btlln5xOiJX9eQJ8wMBL3/6ztxFln1BGtFediSfk
	fU/d4QbO9YFGex8I9kYb57LpuZ3ZbjRXkyfGtwMKAnXYvAA3+y4nHexy5HdlLCSaOlUr
	Lyr2+IEaNQIjVyQST0pFbdqVDOhUDO7xq+2Pn3kR0iMM/q2fUivtkImo0t34RkC+mj1a
	StUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rBBLTEhaOgfK2dBPtoT6RMBXNM7UttFFRR0Ro6jnhVU=;
	b=iVt4zEktP1fxt1NIq1OOUyh1AOI6VDMkRkejwGFx/KbWw9o0EZ5UlZClisGtBeOmkT
	FjhD1UtQ2a7fDEnRR65wPoCuKTaVJVgsK6URtpFjY5UWUuCwFsza1WC/BaCi2wUY19q+
	LynRCUZwevHzdUCQK1NDA2e1d+cyiyOiE3R2F5tf511z3GOwPZEDrPSwPyanXhkYPqQB
	4MeTkCpdSTwjYMmknQwIbJT2tIrRZFpI0lu4NUvtxbYLUA0UZWxhuS2zG8NC02ZRc4GX
	kJoO5ZUbCTiHcr+X843y4IAttp/cuYPy/T5iO89T66XmdiG7Kj9ihG40ibTA9sRdmkgY
	AjJA==
X-Gm-Message-State: AD7BkJLxrzVoC7+Nhj5hq+ShypJFX5nWUCLFdvZzxNZdCWdmZDZpAFkehhlgmoYhikr4qMqKOBg6pUGmg3wwCg==
X-Received: by 10.141.4.135 with SMTP id g129mr33807641qhd.31.1459112239767;
	Sun, 27 Mar 2016 13:57:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sun, 27 Mar 2016 13:56:50 -0700 (PDT)
In-Reply-To: <1459101799-6776-1-git-send-email-akuster808@gmail.com>
References: <1459101799-6776-1-git-send-email-akuster808@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 27 Mar 2016 13:56:50 -0700
Message-ID: <CAMKF1soHRgr4BaFgdZ5fU4T=sn9TNxM1QkrjS14+CFxWjLtuhw@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] paxctl: fix compile issue.
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
X-List-Received-Date: Sun, 27 Mar 2016 20:57:23 -0000
Content-Type: text/plain; charset=UTF-8

Armin

On Sun, Mar 27, 2016 at 11:03 AM, Armin Kuster <akuster808@gmail.com> wrote:
> +do_compile() {
> +       oe_runmake 'CC=${CC}'
> +}
> +

set EXTRA_OEMAKE = "CC='${CC}'"

