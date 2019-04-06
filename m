Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4760FE00D20; Sat,  6 Apr 2019 03:11:42 -0700 (PDT)
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
	*      [209.85.210.44 listed in list.dnswl.org]
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0571E00BB7
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 03:11:41 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id f10so1761024otb.6
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 03:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=92H0+bRA0CFHT6npC9eXynGWxFuR1N8BYCCdEJbqoCI=;
	b=hO5PFin067shJH36RkHJh1i9kQTK8mhv1FU714tB6nteXn2vGbmBpIJ4p4c/c1e3jD
	A5m30KER6hNZM1lhWXAlIq3POvHVJImc1QqHpzcZFUsgyE7j+LMoGCc4GO1jIc5PGYV2
	q41f3zLFgdMgsRKbYKg8Ogf2OHdon+Oovv7/eP1iKm7cerrz5QaaOINGnpCA4ikcJf3K
	yi+2Inwi0vpyAdXjHIEQVPL0+sH6bVT0tNg5B4lPqppqJzkmjs9XZu7uazAGnSg/Ga8b
	NxxzWxV9NEJOuHyJv9mF990S+Mkh35S3jOXRa0JFr0FmoZd2xjU7ImaJOmcVkAiCD7mb
	zajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=92H0+bRA0CFHT6npC9eXynGWxFuR1N8BYCCdEJbqoCI=;
	b=iCHXYRFNlXGx392Oir2E29+P1b67mQX96Gm/p9Lnzh1eLi+vIVbLn7W5EI1nA4sp2E
	l2jKduaWxsvO1q7L6InxjZRO9+MlGMTE7futiq1Np9fYkHSl6owgamPkU2wR8G+tITnU
	LkdG+u9ly2oOR2DiIJEGPrno/kU4OIT9/a93TIrRU9UBhZ2HYpHFhWmWNJ5y893vciFH
	7Fz7QXlLl/DgPkuWw/pEvmtZIzZyWEB4dewVyQTFMOq6MGIEJYQO1WH1rqh/lE9gJ+j3
	Z3gBodR4ZwWOaFMfQ9L3P0O8aynbMryhM/7pWJOo9CijRmO3OndsGUKjO+ooseteeetX
	uwgA==
X-Gm-Message-State: APjAAAUdLXcv+M7Zdk8kwJt8LrJgqiXYJUwofkLMFF5GBNeRzeLaRZCx
	bLa1pF7cHGnlIR+xN0Y5on2Ztwk97p+6YRLdHSo=
X-Google-Smtp-Source: APXvYqyHWYVamUpvNLerc86bbCFDRZ7bOxQdhcNu0z4ifQfrP1DUeJxrsmpwaiMXdZT2eMddMInKEsQVdCzM4Ycgmh8=
X-Received: by 2002:a05:6830:1497:: with SMTP id
	s23mr7948633otq.236.1554545501210; 
	Sat, 06 Apr 2019 03:11:41 -0700 (PDT)
MIME-Version: 1.0
References: <015AB11D45F2C442929CB2765DAE738634DAF30D@PGSMSX110.gar.corp.intel.com>
	<d84054a5c8e62229d80e25fab9429b9864605b5b.camel@linuxfoundation.org>
In-Reply-To: <d84054a5c8e62229d80e25fab9429b9864605b5b.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 6 Apr 2019 12:11:29 +0200
Message-ID: <CANNYZj_hgMuDTxSGnAVATUx14JpVxBDhekkTnTSL16oEHaJJ8w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>,
	OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>
Subject: Re: QA cycle report for 2.7 M3 RC1
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
X-List-Received-Date: Sat, 06 Apr 2019 10:11:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2019 at 20:33, <richard.purdie@linuxfoundation.org> wrote:
> > [15] Bug 13257 - [2.7 M3 rc1] python3 ptest facing timeout issue
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13257
>
> I'm hoping a patch from Ross in master fixes this, need to retest ptest
> with this applied.

Sadly I have narrowed this down to the 5.0 kernel update. More
information in the bug, would be good to have this independently
confirmed. Updating python to 3.7.3 does not help.

Alex

