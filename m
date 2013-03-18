Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 742C0E00741
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 07:33:01 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id z53so5023392wey.29
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 07:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=UmGHT0ijvtI0pvv7PBn9PRKD5SnvaRTPF/0csZttI1k=;
	b=atVK+wdLb3QRpRUQe9idwDf6TztWP++XKX1NIODNaeUUnIZFDt8Gn1ku+kWWhenI7y
	prmcEQSd43oeOqVSKaN0AsdvHnLkCawtaJv9lM+5Oh7ZWPsAjx7RwPGT7UJhbL57TFcg
	cZ1c2u+z9UXBgIZBhx/Yvb2nqAttTadX+8gOZnJh6soXagyWzZ1n+VE2IfNP1IXjkS1f
	PCpz9twLj9VVTZY0nao7OrONDCSM/fobZGobslYnB6avnI0javVXbSTp275S47aasvWf
	1pBmM758opwvJwGeOya1rPyrGkF8IWY+VvAAtJUhCVL9D/7XrOoCyNpPuUN/sTQB4ApW
	IcCA==
MIME-Version: 1.0
X-Received: by 10.194.58.202 with SMTP id t10mr25272270wjq.4.1363617177173;
	Mon, 18 Mar 2013 07:32:57 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Mon, 18 Mar 2013 07:32:56 -0700 (PDT)
In-Reply-To: <20130317231756.GA3190@jama>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
	<20130317231756.GA3190@jama>
Date: Mon, 18 Mar 2013 10:32:56 -0400
Message-ID: <CAHUNapQs_=wXGdUP6ovvLTxTciGavnL55y9EixR=DGavYub60g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Mon, 18 Mar 2013 14:33:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Mar 17, 2013 at 7:17 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Please use better Subject next time, I was wondering what could be
> broken by my patch to icecc and your question is quite unrelated to that
> commit.
>
> Something like "neard failing to build with latest poky" would be
> better.

...which is why I wasn't aware of this thread when I sent my problem
report about neard :-D

I guess *technically* I should have been reading all the correspondence...

