Return-Path: <gunnar.genivi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D005BE0115B; Mon, 16 Jul 2018 02:01:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gunnar.genivi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B793E00887
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 02:01:30 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id u7-v6so26623295lji.3
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 02:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:in-reply-to:references:date:mime-version
	:content-transfer-encoding;
	bh=gBcvze4MbvLo/V+c7FlOhvzmoZJmyIlHm7R+36cja9c=;
	b=vJ+QYlWH0T5peptM1RjdxmsHMEc+bIpgZpSVYCEk0ckxeKZbYoDBboNl/wo29GdMZY
	hyraH3y8Q9IbwS40gcTnbQEDNYpqJJC6cnyPadEV6paJ0r7nrqUjoic4l/hkjEQRVoJc
	umpA0lZKRYVgmdReBs5y+G0mjcndNs4cdjgN5pqnpRc84kHCGka6snB6i/dNlHI5woHD
	xaN0HUD10LzZgecpo9mSUyMfwBUezeCoYezHiG0OtLemyE5dThhGAYCf5C8ZjPBeR9qO
	Ynbeijz+whCi0gcybYNYgimZ6GMy+AkItRIKfsF2U+JLNRaEwdt3RJ+MzDHeNallylyL
	JMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:in-reply-to
	:references:date:mime-version:content-transfer-encoding;
	bh=gBcvze4MbvLo/V+c7FlOhvzmoZJmyIlHm7R+36cja9c=;
	b=F/uPBnAN8/hb4H+PHJR8S6jr6YFsdlq99g+LaQ51C5Mx5UOd4rQ4fWQCEtakXdzh1M
	6663HJwbQrVP0MHndheSpJZ31oevh9cxezprGbBvJ6WrRIHd939d1WRiCoPx8OSDCEt1
	DB+wgaVzUX+6MQeCVdwbQ4yGo3DD7csXHdE1nN/zP0im4sMtaYo1idZyKtKS8zMXfgMv
	hyHkN3V01Ghp1PGWQGfjUmB94Vr3gsANXNH9DsK9zDVlFz/sruJCqiq+rYXcMG2HkDuV
	bbkyLNKe7LqDneNjK4pdm9uHqoMgFJmaXj4tg0v41Jwg30oqA3VU3kIME1Lv/tNMpxZO
	NBVg==
X-Gm-Message-State: AOUpUlERDd7HPZPaKEWtfkMrgeZlLahLtkRSYh2362ErPEL2IBlsYxyT
	RYM8GVU7aTRn4FqrSiFMVg==
X-Google-Smtp-Source: AAOMgpc5HOLLe5QVIyY/nG4jNE/4YdpZ/cn6ec3MVLwvS1zOoWnJARL6dN/vn7ktP3cneswtn4pGKA==
X-Received: by 2002:a2e:9a16:: with SMTP id
	o22-v6mr9320348lji.17.1531731689117; 
	Mon, 16 Jul 2018 02:01:29 -0700 (PDT)
Received: from android-a8ad607dc99b25c1 (h-244-80.A137.corp.bahnhof.se.
	[176.10.244.80]) by smtp.gmail.com with ESMTPSA id
	y68-v6sm8021249lfd.66.2018.07.16.02.01.28
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 16 Jul 2018 02:01:28 -0700 (PDT)
Message-ID: <1531731680.27561.138.camel@gmail.com>
From: Gunnar GMail <gunnar.genivi@gmail.com>
To: "S, Karthikeyan" <Karthikeyan.S@trane.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
In-Reply-To: <1531731312.27561.135.camel@genivi.org>
References: <3d2df8a5ae76426ebc9562d88615fff3@BN3PR73MB0070.mgdir.irco.com>
	<1531731312.27561.135.camel@genivi.org>
Date: Mon, 16 Jul 2018 11:01:20 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: Re: Regarding build Yocto offline
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
X-List-Received-Date: Mon, 16 Jul 2018 09:01:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-07-16 at 10:55 +0200, Gunnar Andersson wrote:
> [trimmed]

> Here is a reference to an earlier discussion - I think it is commonly 
> recurring question.  (Maybe you can propose a change to the docs, to
> indicate this near the description of the BB_NO_NETWORK variable?)

It seems to already be written in the Wiki you referred to [1].  But I think
it might help to put it also in the official manual.

- Gunnar

[1] https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance


