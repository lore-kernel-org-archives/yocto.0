Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2659BE00B5E; Thu,  9 Aug 2018 14:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.65 listed in list.dnswl.org]
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00F3E009AC
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 14:55:52 -0700 (PDT)
Received: by mail-yw1-f65.google.com with SMTP id q129-v6so6814578ywg.8
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 14:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=AmUFdrjLKnFmGv35XUHsDMZOmMWhN0ITs7kOuj2uQpc=;
	b=oQQI6eT3pVk7UvoU0YkY3hrCd4+zgWhBwtjAYKmgU75bSE1CsCDUeyYWagKyjqX9K5
	A21KUcJM2WrAW4l8YMS/flvdYBWFiBRfilfFTvGRMZQz6cIgQai7BlQWPgfHarTNDQ7r
	ZzldMVRbz38nSaewzqyYDUscMYNAxop98x023+H8pXZnp0OxApwwQuVBpklbz2e0kFMu
	yCqbAxD053RccUxVyDFvL0AjQkOTCC0CjRWbolz2JUXJzYxlN1EOk7/UzKwEbI45oq5B
	5yXOkktuqx/a6s6n+9mQ9q0LMQKge28oL2SLbPnAorjZB1V1dhTUWTEdLsOgbW/Nb5I3
	7VNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=AmUFdrjLKnFmGv35XUHsDMZOmMWhN0ITs7kOuj2uQpc=;
	b=ndx3v7JMCguyP0T1cG7eg2sQKxfwBkKlo+T+JSE7vE17pW0jRmhoPp/J5FZP9KCoTl
	fk1TqOztiwhPkBPy/36UXydHqxwdn88CXsb2NY7FMiFFDfIgPJ/i0INIjoUbrHt5dUJO
	Y9K29ZYranJ8n2Y6IO85tw9LGHkOdW6nCIaaVej7OR3S97wOfht0ax4EgbklNuS19avR
	17KV++ajvo/vJ5N4phiKRAMpzx/hAzNzDW2tRBRQa1wkCjeIBE+oJUr3rxfrnqESL8A+
	kOwSq6lMZQ2MIcsGE0JQb/1ywMI4KzjxvjdgzgvWUbpqHZKkK/oqURcHTxF3PeE/iRSm
	9q5Q==
X-Gm-Message-State: AOUpUlGAH3D3sqFH/ZK/rB3yuJwhXqs8TRF49V6IaDo8bVctRP3TWy/d
	wkVz3eK/9XovG30y7X8FIN4Kk0ZPoD3Y4Mnchpg=
X-Google-Smtp-Source: AA+uWPx68ehEWWuCPPzn2aPIAaSStWc0KvRmToDWdE6/b1d/rsuHXJi1k1I7zbI/Bwitp2mNLD+bfUwe1Ncd5If5QCw=
X-Received: by 2002:a1f:10ce:: with SMTP id 75-v6mr2494924vkq.83.1533851752017;
	Thu, 09 Aug 2018 14:55:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Thu, 9 Aug 2018 14:55:51 -0700 (PDT)
In-Reply-To: <ec4d265f-8924-82e4-f2e9-034f3e97d039@gmail.com>
References: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
	<ec4d265f-8924-82e4-f2e9-034f3e97d039@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 9 Aug 2018 14:55:51 -0700
Message-ID: <CAJ86T=WN1Em7RaHdR+sAsThGfBkjw8D-fdXARBPUQ8WmwHSjTA@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto userbase in numbers?
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
X-List-Received-Date: Thu, 09 Aug 2018 21:55:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 9, 2018 at 2:42 PM, akuster808 <akuster808@gmail.com> wrote:
> On 08/09/2018 10:19 AM, Frazer, Will wrote:
>
> I was asked recently what a ballpark figure for the number of systems
> running distributions built with yocto might be and I could not find
> anything.
>
> I realise it=E2=80=99s almost impossible to tell since technically everyo=
ne builds a
> different distro, but I don=E2=80=99t suppose anyone has come across any =
estimates
> anywhere ?
>
> The Yocto Project does not have the ability to track which distributions =
are
> created from the OpenEmbedded build framework nor who uses Poky as a
> starting point.

Actually poky users probably do leave quite a detailed trail each time
they build anything due to the default PREMIRRORS in the poky distro
config. The downloads.yoctoproject.org logs could probably reveal a
lot...

