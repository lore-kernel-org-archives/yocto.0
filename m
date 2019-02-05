Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 533B8E00C75; Tue,  5 Feb 2019 07:51:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F884E00754
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 07:51:16 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id t9-v6so3325100ljh.6
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 07:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=cxkJeO0qdS1bnW9DZ9hnQVOWllUb57wY6YwXqHsH8Rg=;
	b=lVL2EIVl4T9kXMYhU94Hyy2Y/mxxGnxhmavGpvyJOLjvwGtB+Nuz0FKOdI/mK3wHL6
	6y9+Rqje2C2/4hGb28zktnEtlxjnMoWRsdIFvayfeqqVGstBBcHTzZpJ5Q4j1KV7ComK
	5gujI+v6Glt1xlfl/U+J8pkrGamgFGiBAfMdSX8q6p9vV6sKkLJPepR8cS5pRDYL8W6D
	iRP7iCZtiKQHLUUI6uQ/EB0K0mR4spsivpvQtChp3XWYDgIbvprbfZwPtaofyNeBkhyj
	elub6oyIlU0j59q9dGduB45zEoljPaZNt8Vu2q84eHhTS6N8FnCMxoJ+U6hrdcgsUOsE
	/BxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=cxkJeO0qdS1bnW9DZ9hnQVOWllUb57wY6YwXqHsH8Rg=;
	b=NqAAby0oTwuV3Vo1KrUEQb+Ux/2Xp8JYG3OKsM4Kj0EpyUcq9QH4cAB2PMqrzsuWip
	7X4pI4li+dNxgBAo/zwm4vFqeBTmXYV2/Wc/GKJAjjFwHGnUY9paPwK4Tqc+tZQkWu7q
	+RV+JNsMk3xHHktv09HIJcIWLQwAiAQwidMxH2XK5nNOd0nL5taWUVaf/rBICFCjcGZC
	BEEMV5EmnHvdz5X8idPxE/MgIEE2TyW4nPT/X0/DKS8TqUCuILOR7b9AUD9rB4odvKvg
	hkL06rv19dGdXzrKWZqFs2IhQsBX4KDl3AspUPfozFqdR1bDP60qrBRc4zkbhqLC3cpV
	8LQQ==
X-Gm-Message-State: AHQUAuY+A3ydc/ZlysUNvZp2vkAlXc1g9RNJ6SWfu0X7vD9fjt1UVJIT
	wCEDjP4Vr2pog0HmoGrON0Twl1Pj7IVFDcIgnPP21A==
X-Google-Smtp-Source: AHgI3IZBfwJtL2WbkRtsIaXVHNA+10zsGcugkQ0dHA0PtmFqUlYMZVqvd0RHiBynma4rxhU5XpL+hkovgDfjoEzbpN4=
X-Received: by 2002:a2e:710a:: with SMTP id
	m10-v6mr3295679ljc.66.1549381875135; 
	Tue, 05 Feb 2019 07:51:15 -0800 (PST)
MIME-Version: 1.0
References: <CADRV0G4XTyktGV6zztid0S3kOoHO_TcdvM_CWXPVaRoYxTQgEw@mail.gmail.com>
In-Reply-To: <CADRV0G4XTyktGV6zztid0S3kOoHO_TcdvM_CWXPVaRoYxTQgEw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 5 Feb 2019 16:51:03 +0100
Message-ID: <CAP71WjwKicpfSDECxpCV4x6v4s+6hHNR-OXhouW9CJGJ_3zoRw@mail.gmail.com>
To: Matt-Klaus Mushi <developer.mattklaus@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Happy to be hear.
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
X-List-Received-Date: Tue, 05 Feb 2019 15:51:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hey Mbha,

On Tue, Feb 5, 2019 at 3:00 PM Matt-Klaus Mushi
<developer.mattklaus@gmail.com> wrote:
>
> Greetings, to the brains behind the YoctoProject.
>
> My name is Mbah Matt-Klaus, an undergrad student from Cameroon.
> Our community here encourages contributing to OpenSource, and there have =
been a lot going on.

welcome to this mailing list, and thanks for your message!

>
> So, I went through a list of OS communities, and my greatest interest was=
 in this community (due to my love for electronics and embedded systems). M=
y excitement led me to watch a few videos, read from YoctoProject and conse=
quently subscribe. Despite this, I am new to Yocto and Linux (I basically u=
se Linux Mint on my dual-booted PC). I would appreciate any materials to ge=
t me up to speed (I program in Python and C++).
>

You've probably found by now the Yocto Project online documentation,
if you need help with that, please let me know.

A Linux PC is all you need to get started. You probably should try to
build your first images for QEMU and run them on your PC. The entire
project is extensively developed and tested using QEMU, so you don't
really need any additional hardware to get started. Once you are
familiar with building and running your images, you could have a look
at Bugzilla and browse through the open issues, and try to pick one of
them. That's a good way to start with something concrete.

> Thanks in advance.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

