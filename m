Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DDADE00950; Thu,  3 Jan 2019 02:28:18 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E278DE0090E
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 02:28:17 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id f18so28971827otl.11
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 02:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eEduAs87uu90MKHNiYsXKaiRB16amkoQUTqEC/BY2K8=;
	b=EnAT2i9s7ooQ0LKymntSGiVQYkuP8fydUXhgrLofUS4Iz8AKyCJ6D0OsgL7cpLMvnp
	2a7tWGr5xWe8PhlyAPctm6+Ozff3zSM/0rT7Dg4ZErGN61OYLMHV0uKWXiM0BQZBszQF
	Lg0mLaHjNZVUqpKVgNns5pAQBVbPs6Tk12UJUonGDh88yIzmbJiboneO7Wh/i2fHeSKs
	zWO5zWas/mT6IDqmDDZCOKgFlczV9WoZAcZlh3sXlf7x2R4E+UIqyj7tS+KybX+s4kYT
	3chQxVB9Ffui/EFtJ4pbIUF853T8Qnyxa4QkmDcoTWfqOyFLr52FzpfPnx5KqwoQvYHJ
	cvFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eEduAs87uu90MKHNiYsXKaiRB16amkoQUTqEC/BY2K8=;
	b=PRIbUSvfXSNEdUkRfj9pTJvGLKbopuxFcJsqWreFkpXw2EClDxmf5fmkhrz8xnVCYs
	x74I2L/2MbeLBHL8ZTqP58R+8xOMeXc/dmKXvmdonrqs4y/AR12DXeUttwrt6phIcE/P
	yCQ1F1UKgnA9awKLAQb0S5bV9OT4Yu5YaWbQA6a5uyVT7KT32p12GUsfQaYS9gMWyu9i
	OlQZEwxAEaqaCizbn/BxLp6yKI0LfOEues2esvqSEPgVfPITeBCEJdEZupol86Mp+9Bw
	6NpBqKczoeqFM8OQGROHvB341ZFXZB8BLUhHmndnMfpqWB4sX0KnqSWbBVeANtnqDAR4
	nXkw==
X-Gm-Message-State: AJcUukdsbmcpy+nfq3LBU1dorMnpQuA5WYXlqvzPOdy0sgJnXh/Y26n/
	hU7b9cQfvrIFMKEzLasw7GQ3P6y/YsWQ/GYQXKc=
X-Google-Smtp-Source: ALg8bN70IVunmnz2D3W2x/f87QlvdyBmzPzfaeJOs/qTUDUveWK/wUzcgRZTblRwbilK3B4v/uhm4F/IEpOCs4ivTHs=
X-Received: by 2002:a9d:69d7:: with SMTP id v23mr271428oto.96.1546511297349;
	Thu, 03 Jan 2019 02:28:17 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4iEzLP8tJ2YWUgt+JO4Zod-Lin_K4hgvy+3C_xgSqfVFw@mail.gmail.com>
In-Reply-To: <CAFq4t4iEzLP8tJ2YWUgt+JO4Zod-Lin_K4hgvy+3C_xgSqfVFw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Jan 2019 11:28:02 +0100
Message-ID: <CANNYZj-wUU7SWmcb+HZv=fmUDXnyB04j9afVT-cwzzCr8ccGgA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: devtool upgrade ERROR: recipe is already in your workspace
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
X-List-Received-Date: Thu, 03 Jan 2019 10:28:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 3 Jan 2019 at 10:10, Peter Balazovic <balazovic.peter@gmail.com> wrote:
> I have created recipe with devtool and now I want to upgrade following
>
> > devtool upgrade myrecipe --srcrev 82a02d8585d262d6ab2d9dc335ed2231dc2d7f06
>
> I am getting error
>
> > ERROR: recipe is already in your workspace
>
> How to correctly upgrade recipe with devtool (eSDK)?


Same - use 'devtool finish' first.

Alex

