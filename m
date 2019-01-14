Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B91E00CFD; Mon, 14 Jan 2019 14:44:35 -0800 (PST)
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
	*      [209.85.160.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FBE6E00CF4
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 14:44:34 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id y20so885596qtm.13
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 14:44:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FpWNtx7UJ8f47irPQ9H4W1zy45TSVgh1rcKasTOa6Bk=;
	b=bufINOco3QmC61Kwd7JOsrL8WcLU2Z6jdIXOcjetpG5YETxjs8sOEndqZRAdxd/rzQ
	hK2lbGTZ8+TvoQY0i/xqKalLAwry6jJ/ww1YOFtzgSMKjpXF5njgmGYK5ZziE8mncSHc
	zlgyO8+/Pd4UE8iCbz6j5ee6W0JEJFYkntblliidqPMyQt6XAchoBWGGB7RZl5xAxkmI
	3ieb29Mj2ke7uuz3D40AcMNTJKU9Brzf6UKjRZcR1XenpKHjwBzvOfxuwediDSduTbUq
	mudLXkBvf/mTEVUn4rr9qJxr7oqyim8aKD877V5rBvwZcsybME8zjdArdq+QwLOve/oI
	BaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FpWNtx7UJ8f47irPQ9H4W1zy45TSVgh1rcKasTOa6Bk=;
	b=PuTPUhxJj1WiT7kkHJ0kI+Gw1sB906HsbW2so8CQmj2J86lTjAH4EJPvsPO+X+jjFL
	lPEhuA0/SmNRelIbRVUlYB5kkrDCI2Z6nGlJQ5H2+5oMcEpEdVfKYSD/wvikTzgxmwdS
	6jWJs5CxQGr4n+eH36grcEciw76fQjj9CCxJyvsWe0eqbC5b2N05KvSBogu8nIBfMlFv
	dYAMurT2SSxYS8F4Q3LcaGCk/Gm4/02A4wYj5u6Mh9gnGrmH5XDa0hu7CyBv6RAP9C6h
	e5vc0WGGCq0L28Oub7w3ksqeQeQzLXsQQWKeeiNo4euFbNWQOrUE7AgvdvnWPiywGwuU
	yFhg==
X-Gm-Message-State: AJcUukfQK/YaHK5IySfjHg1PmDdGCIAIUsKvHvy+VAS/CSTeUQjHTSw8
	NaD6T4BjPdCsD1GKG6+kZuMyuNmedAmoXlwbHc4=
X-Google-Smtp-Source: ALg8bN5JgiYNwrvAknQ5GxGOHArhdjW/OydVuESeB0h8yGxFr2Tc8L43bw6s5wZaVhHK1DFJFmi6yNh5/6eRAMlU66U=
X-Received: by 2002:ac8:16d8:: with SMTP id y24mr609946qtk.253.1547505874133; 
	Mon, 14 Jan 2019 14:44:34 -0800 (PST)
MIME-Version: 1.0
References: <CAGMdoFn0jYK+nvkN34eePa2XAeRDRS8gUJCZUepeLm-+DK5d9A@mail.gmail.com>
In-Reply-To: <CAGMdoFn0jYK+nvkN34eePa2XAeRDRS8gUJCZUepeLm-+DK5d9A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Jan 2019 14:44:08 -0800
Message-ID: <CAMKF1sqLRfiEubd+V5dpXDCbi4BVTdv7aWaE81QV4-KK1Jff9Q@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto distribution license
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
X-List-Received-Date: Mon, 14 Jan 2019 22:44:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jan 13, 2019 at 10:35 PM Edward Wingate <edwingate8@gmail.com> wrote:
>
> I understand that a Linux distribution created with Yocto is composed
> of various packages, each with their own license, and the obligations
> of the licenses must be met.  But are there any
> restrictions/obligations on the distribution itself when created with
> Yocto? Or is the license of a Linux distribution created by Yocto
> determined by whoever created it?

metadata files does have licenses, unless and until explicitly called
out in metadata files they are under MIT license.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

