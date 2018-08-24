Return-Path: <daiane.list@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AACAE007AD; Fri, 24 Aug 2018 05:00:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daiane.list[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA272E003D7;
	Fri, 24 Aug 2018 05:00:56 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id u83-v6so6652211lje.12;
	Fri, 24 Aug 2018 05:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:sender:from:date:message-id
	:subject:to:cc;
	bh=soRrtcvUdR+pG0r6/cGjhyzp+ir94N3uRpt5kD51MvM=;
	b=SuFk+omfhp3lZMK/0gptaeeT5YvFJAmo0+u2baHE+LZ77CkD7dcubvBNxqxUVxPyLe
	w/yUTgUEHdhNZ8eaynkG4B4e2trAJpQGgtpHGAUQkFLpNFRrM96+f9zfxz3tpMFpOA5C
	+sYWyojY/F0nl4kcfFnKs/Km/rdnQZkyYUWKH1BnX89vbPMQdVsSJrzbH1w0/6Wcekp0
	dBIS3EqOnTafKoM8Za9EwEW0CNMe9o2S7n9acSPfyn0oHT2rQ2741L5ULoAOO9PBbhRY
	viQlLMOLQPtcU6108VSCm0AQ/wuCazEE6GHQ0ldqZJhR05TQqLOc503G0F/8rvBSF3gV
	nC4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
	:date:message-id:subject:to:cc;
	bh=soRrtcvUdR+pG0r6/cGjhyzp+ir94N3uRpt5kD51MvM=;
	b=WuSnSkodiAjScEhFLvtUyg3HbcpxChj8l+R/r9e7r9HdKqDqUuzsXHIfBRW3urytjz
	1pNNWU/CMCgvUm/LH872t3QEcTu4yNp/gawaXqPaQuOAgCAXKI+fW4kcqRfr3RXgHIGR
	lbt8TLlmeDW4VtOrJ8JNWLBx0Fs/jbllKEGGNR4quf/2TaiTgfGzmFAalBJmfWmtKOLr
	6+jbgjxDJzgORUpsTJWVvTz4OD5DLLnsD01b4SNBYGs22kUXUaOvB5rFm+kqIK/IbYIX
	bapWCLcCBFEnHv5itadazI7VUIqZYDc7lhCXHitZYzU72j8xfgpN7/cjDbXk0USTq9hZ
	Vvjg==
X-Gm-Message-State: APzg51A4XCXGDRvo3A03M2GwzmkQZEtbK1+ZbClCwanWABVEApWoymB0
	l2y5GJux1na/UPGr0BkhE4zaM0MMKs9aaJrXBYY=
X-Google-Smtp-Source: ANB0VdaXJ9vvVP7PyLg75kvjORDiUG4+jErh/nh1PBbni6bzY2cun0eRKj10m5zNWtrHPA+3vA6+yELBwVduI6eBcfM=
X-Received: by 2002:a2e:9883:: with SMTP id b3-v6mr1180285ljj.80.1535112055871;
	Fri, 24 Aug 2018 05:00:55 -0700 (PDT)
MIME-Version: 1.0
References: <CALY=dtKAB-=gqeSojqJrR4D77zD55f8g1f=_-rOHq2-kDeLnpg@mail.gmail.com>
In-Reply-To: <CALY=dtKAB-=gqeSojqJrR4D77zD55f8g1f=_-rOHq2-kDeLnpg@mail.gmail.com>
Sender: angolini@gmail.com
X-Google-Sender-Delegation: angolini@gmail.com
From: Daiane Angolini <daiane.list@gmail.com>
Date: Fri, 24 Aug 2018 09:00:44 -0300
X-Google-Sender-Auth: xSrvbyUSLNF_Z0cCTJ59GKyGamQ
Message-ID: <CA+jg_OXx3otk1BUo0HMsXySG_5R_NBs7qdmPMv+7BLKSVt3v_Q@mail.gmail.com>
To: nik2087@gmail.com
Cc: meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	yocto@yoctoproject.org
Subject: Re: Howto overwrite CXXFLAGS in SDK Environment
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
X-List-Received-Date: Fri, 24 Aug 2018 12:00:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 10, 2018 at 5:41 AM Nikhil <nik2087@gmail.com> wrote:
>
> Hello community,
>
> I am using Freescale community BSP - rocko release and have built and
> installed SDK.
> Is there a way to remove -g flag from being in the list of default
> options  for CXXFLAGS.  ?  Thanks.
>

I think this is a good starting point:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-CXXFLAGS

Daiane
> Regards
> Nikhil
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

