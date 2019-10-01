Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E19E00CBC; Tue,  1 Oct 2019 14:27:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D9DE00790
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 14:27:13 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id p7so4907584wmp.4
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 14:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=n1FStLvIvy7Pi+iJ4eFoGirxvSAJbWMNC1Wd/ZcB9mk=;
	b=UW/46gl8adNivujhF25ZmWyA77HXMg3CQ2ZUunc+eJ3ofmjQK7+ELJmX89gCptnUE4
	+uX04Yn4AxJ3z8Ly3fHp0h1QN92Gqz9WTwQofHundxf2stM9+Cp8OXlT4wlx6P+Lt3Px
	vTyFmFN87hZN18pvXGfg4KHIKpbpCboe0voXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=n1FStLvIvy7Pi+iJ4eFoGirxvSAJbWMNC1Wd/ZcB9mk=;
	b=VAw9C6PiKOTB6USNJ/I386qf7WSt4KB65Lc3cSfOu44Sy+Gd+RskZ/ezNDz7LbTH4T
	xn+ouzWxnwQCym4FnaRtFsKQShoTbipbHvWgN+rwYT6kHQxSaama/9FDDXZHFvNF1wGW
	ORg+VawtfBfeGPYU978hDL8hLDfObENPUmnuGtmBpnBjZIoY4E2ZTiazNokb+xnTCGes
	McZiA9vi+YfmLT6CDAdX35dGkppGtb9Q4hyQxy33xFB0pbjCOl7/aZnDc1+b60yujjQ2
	sw/UWh0pMxLCn9ZYAWY5+FWiFDOyH9I548+DCn5p5olyVd/1wi2gUS8MC0aSt6bZnm11
	iq3g==
X-Gm-Message-State: APjAAAUpdvSHHkg3tFk2LikSp/xTJGbNOC/RgTGGP2bzAXslzfYbC14H
	dJ3TEepub3FzvrMXSE42bqWciA==
X-Google-Smtp-Source: APXvYqwG77xeQo6HuBp/H2XCoPZy44sDN/RqbGPOJVVXsZMicsLleFErr5cCoIIVaewtvebyzq0jGA==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr87705wml.169.1569965233171;
	Tue, 01 Oct 2019 14:27:13 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	r9sm20830081wra.19.2019.10.01.14.27.11
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 01 Oct 2019 14:27:12 -0700 (PDT)
Message-ID: <d8171f242dd7275f16f43d7bec6351199c6f098a.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Alexander Kanavin <alex.kanavin@gmail.com>, Stephen K Jolley
	<sjolley.yp.pm@gmail.com>
Date: Tue, 01 Oct 2019 22:27:10 +0100
In-Reply-To: <CANNYZj9q28NdSq8w1fHsJE3yLGoQJjqCwVewni3TXz1YVfJ=NA@mail.gmail.com>
References: <CAK5yBb9KAnpTGSC_V4W40AwD7nSPm-Q+RcxRBqMLHLw=ykBcNA@mail.gmail.com>
	<CANNYZj9q28NdSq8w1fHsJE3yLGoQJjqCwVewni3TXz1YVfJ=NA@mail.gmail.com>
User-Agent: Evolution 3.34.0-1 
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: =?UTF-8?B?UmU6IFtPRS1jb3JlXSBZb2N0byBQcm9qZWN0IFN0YXR1cyBXVzQw4oCZMTk=?=
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
X-List-Received-Date: Tue, 01 Oct 2019 21:27:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-10-01 at 21:16 +0200, Alexander Kanavin wrote:
> On Tue, 1 Oct 2019 at 16:54, Stephen K Jolley <
> sjolley.yp.pm@gmail.com> wrote:
> > A significant performance problem has been found on the autobuilder
> > where some builds are scaling in time badly as the sstate cache
> > grows, taking 12 hours or more in some cases. Unfortunately nobody
> > seems motivated to help work on this kind of issue.
> > 
> 
> Wait a moment, I believe there is a patch for this issue?
> http://lists.openembedded.org/pipermail/openembedded-core/2019-September/287445.html

Sorry, that was copied form last week and should have been updated but
I became distracted in completing the blockers list.

There is a patch and the plan is to test that on the autobuilder to
compare performance, I appreciate the patch!

Cheers,

Richard


