Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCCF5E00CE6; Wed, 20 Feb 2019 10:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FD6E00CCE
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:19:09 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id z131so17559030itf.5
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=L3XeHZILmDosDaI5sq2sL3AzOKEvMM4OhnQNmKoGc4c=;
	b=lXdeBSjWWBh2yiLZPibvQZJjXr4fmPHcat5igGFKG1Ethzp7JmCw88najJn+wVmaFz
	GdiUf530h9qHZHkQnpXB1pJCO1Jz/a7OkUXmzwuBKoUFe3QqlWjWTl1FZso3nxViKO/R
	QSP7Mtg3cEqz0Ay7GHUZcEYeCaSJgnvCsRpqESc5nae9CMySp2Noh+hDJf0mz3/IjG0o
	bTZP1CkRx650X+30Xw6FnlfGTijwJboxWxs7YsXkfuldcHGqUbATQUa4wteXqtFySo6X
	exSMIb/JoX+1PLnZEcpCGKtDpz9SqHU1pFGbrR1anpRVK1Qllj6EFtyen2VbTD3trvjI
	EGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=L3XeHZILmDosDaI5sq2sL3AzOKEvMM4OhnQNmKoGc4c=;
	b=BP7FU29Sw1y4M20OtZweGsYjvBbJOa32peLXwvRdAgWEK0LzxmGp6ustjeUP/Cpq9c
	cNgNKXqi+RgBGEUu/bc48cgDCKh831vuWRkLhmPbCkFi6KaGxYNKysXx/c+HSOSy2FkA
	jTp+g5jSBImcT5wtv3E/UfAlg3dnr1nvkGDK9Z6rQCkYzQDULNeLpv7V1B5C+ZWJqu/C
	/76UYUUxh7DImze5naiHH/2ASaJvjjNLZvPrPZUkyf7uTo6S2reXo2FmCcGIdzNrtimn
	wvthvWz99J9vdmcjF4c91UQcauF3hydJAO0O10wAVcxS7gMJ431rzbuzXLP/sgkUOt1E
	0nNg==
X-Gm-Message-State: AHQUAuYZqu1kmEn47YeR6Pg6mngNbxyC+fERXQfqvtkr32t6sifTidoj
	Z+0XJO4QCYuDbTljElKQmOw=
X-Google-Smtp-Source: AHgI3IZbyErc4NcOHNqW8414Ll8e6T4cfU9ienzTndUfQviDjhyJEwlJj79EHwVOwsE5dj8pTYiS6Q==
X-Received: by 2002:a5d:974b:: with SMTP id c11mr20739567ioo.257.1550686748777;
	Wed, 20 Feb 2019 10:19:08 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	t1sm8143827ioc.45.2019.02.20.10.19.07
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 20 Feb 2019 10:19:08 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <7ada9c68debb751c7aa64d3039ddc3488310671e.camel@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Feb 2019 12:19:07 -0600
In-Reply-To: <CANNYZj8hG0nxFEJaY67frDTi+JLHPGKkisxL4AGGiiv64VMpYQ@mail.gmail.com>
References: <20190220180643.4112-1-JPEWhacker@gmail.com>
	<CANNYZj8hG0nxFEJaY67frDTi+JLHPGKkisxL4AGGiiv64VMpYQ@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] diffutils: Upgrade to 3.7
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
X-List-Received-Date: Wed, 20 Feb 2019 18:19:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-02-20 at 19:13 +0100, Alexander Kanavin wrote:
> On Wed, 20 Feb 2019 at 19:08, Joshua Watt <jpewhacker@gmail.com>
> wrote:
> >  .../diffutils/diffutils/sdiff-no-kill.patch   | 32 -------------
> > ------
> >  .../diffutils/diffutils_3.6.bbappend          | 18 -----------
> >  .../diffutils/diffutils_3.7.bbappend          | 14 ++++++++
> 
> Should this be called simply diffutils_%.bbappend ?
> This way things won't suddenly break when oe-core gets a new version.
> (a possible resulting build failure is better than a certain parsing
> failure imo)

Ya, that seems reasonable now that the local patches have been removed.

> 
> Alex
-- 
Joshua Watt <JPEWhacker@gmail.com>


