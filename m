Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA9E5E00D86; Sat, 19 Oct 2019 07:35:02 -0700 (PDT)
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
	*      [209.85.128.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F39E0097D
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 07:35:01 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id 5so8921160wmg.0
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 07:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=+HtPVCCdXo2YzB9MwCWULI0PLWePW87UDMpra+74O8I=;
	b=AIEt4DZz158J0AXaKpZ5r9XDaL8C6uWHqjcLJ0DkObdL+CBrCztusAziR4S/1/ISmc
	UFfCAyRPhoULcxs1xNNrMsv7kc/2tF7aet65YnPDQy04B5lrR8iSAH5qwKOW4xSLtjt9
	WUuk/BGo8HbOLxrreDuhQdm7S1WcgU4luFLmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=+HtPVCCdXo2YzB9MwCWULI0PLWePW87UDMpra+74O8I=;
	b=qCqarzG6JyldKC9380HtmFew/Q12B7bw8TVwQ2EOCVTAz7DALRSW8gdcruWzfx3yjo
	CVxYSwOn4BwNFDp5ZpU3Ra//zDtdA7DAo6BW1oJssDsZLJgY5n4/4+hugxTyER6Jdkpe
	oRyG2POEtYiYfNpETNAH5X5TnROjoacWfOXgEFkiTnpAqGgFN8SL/xTjyonF/NNIyedd
	lNBvB5KpR5JhwA+cfxWZTD3yiqCQEGmbtv/3Eu0i/Q+AaOCAifE15Sm2mJgdSIkA0lou
	gmlHE/ijxZe+xPrZw0XY9IIPD7/kgo+nYtAd9gW5+rQzFHo53q1vT3C0uJkIjyoFfMjC
	INCA==
X-Gm-Message-State: APjAAAVy45R9bxtiIPmekPyPP0WByJFfEqAn3KUvqN/CR6KUIRuFlAIp
	3z4WgI/SJyrlqwZbqw5NQ4PQTQ==
X-Google-Smtp-Source: APXvYqxKABYhcWSO28892CSYRTotHIxC7p1kHnK7PdZ6gVl/NPWysqngDjEg/u0qyXbF6Bm0IcwgVw==
X-Received: by 2002:a05:600c:2254:: with SMTP id
	a20mr6229601wmm.139.1571495700377; 
	Sat, 19 Oct 2019 07:35:00 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j22sm2002562wrd.41.2019.10.19.07.34.58
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 19 Oct 2019 07:34:59 -0700 (PDT)
Message-ID: <0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Abhi Arora <abhiarora4@live.com>, Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Oct 2019 15:34:58 +0100
In-Reply-To: <MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	, <CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Sat, 19 Oct 2019 14:35:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2019-10-19 at 12:45 +0000, Abhi Arora wrote:
> Thanks for the reply. Can you help me which file to modify to prevent
> downloading certain packages and modules using BAD_RECOMMENDATION? 
> 
> And how to have only pyc files in the final image to improve speed
> and reduce footprint?
> 
> Following are the lines in my yocto project which install python
> packages.
> 
> IMAGE_INSTALL_append = " \
>     python3 \
>     python3-core \
>     python3-misc \
>     python3-async \
>     python3-six \
>     python3-websockets \
>     python3-requests \
>     python3-urllib3 \
>     python3-chardet \
>     python3-websocket-client \
>     python3-pyopenssl \
>     python3-simplejson \
>     python3-cython \
> 
> Pardon for some stupid questions as I am new to yocto.

Take python3-misc out that list as its huge. See if anything breaks, if
so, try and install just what you need, not the large "catchall"
package.

Cheers,

Richard


