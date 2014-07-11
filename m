Return-Path: <trevor.woerner@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C388E003FA; Fri, 11 Jul 2014 07:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B82E002AC
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 07:53:14 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id tp5so919486ieb.23
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 07:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=e2aN9g3fi4wfT0CXWPArmZws07gNq01leReHAxFxmtg=;
	b=Xi3sPvvW9lDAk/R/mgoh+iVo5PUpzDXN84RVadKR6fLwZe+I3+hO4DH6DglALOXFdF
	bYLMtgrliMJq/QteU+eg/OmKnNvCRkChulof2mEcr7GXeSJEQDPu8AO2xYDLOA597O3f
	9wjMIg6A8C/NhuCYyoxA/9fpV3wmlyOO9yyaPX+iiyJt0W89AxtzScgF3Z7wnt4JUVyj
	WRkU2HW/J5lnViccTRIGBS7pshghtMbe44I1W589iXo/Bsrx6SaKKEFQuW4ZQRg6JpfY
	WAqNvX1lhsPvU3fBnlOcVA0mlShf2IQQqS9wvS0/1OnrZsSXDs7G0z/EUnsNXKwHxF63
	yn4Q==
X-Gm-Message-State: ALoCoQlvP/vPp38Cl32WdIF5m6DUljoQJeSNe1xZF8ZxsKdzY9hgNP7agGMtTmf8W8e1EcfbFOxx
X-Received: by 10.50.77.34 with SMTP id p2mr5119266igw.31.1405090393971;
	Fri, 11 Jul 2014 07:53:13 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id ga11sm6602847igd.8.2014.07.11.07.53.12
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 11 Jul 2014 07:53:13 -0700 (PDT)
Message-ID: <53BFFA58.1040305@linaro.org>
Date: Fri, 11 Jul 2014 10:53:12 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Daiane Angolini <daiane.list@gmail.com>, 
	jags gediya <jags.gediya@gmail.com>
References: <CAP3RZoiejMxU33NE2cwmWN=LxJ7RoieaCJLf5Ch0hQSGABXKcw@mail.gmail.com>
	<CA+jg_OUkHqTnuj6gKoFDhB_yrAr1ASqsqQxXmqojFmNYQod-YA@mail.gmail.com>
In-Reply-To: <CA+jg_OUkHqTnuj6gKoFDhB_yrAr1ASqsqQxXmqojFmNYQod-YA@mail.gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] yocto build taking too long time
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
X-List-Received-Date: Fri, 11 Jul 2014 14:53:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/11/14 09:46, Daiane Angolini wrote:
> In my core i5, core-image-minimal takes something like 30 minutes to
> build from scratch

And that's probably assuming all your sources are already downloaded to
your build machine! The amount of time it takes to complete a fresh
build on a machine with no previously-downloaded sources will be
constrained by that machine's Internet connection speed.

