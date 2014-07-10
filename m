Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 844EFE0056A; Thu, 10 Jul 2014 01:29:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18E4DE00559
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 01:29:42 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id nu7so2402468obb.0
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 01:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1unq2iWX6ru9rcKjZ2flQbztPQ/b75MpMVCFArQdr8I=;
	b=AQm3Fove2l/CDo9Rx26d8fA8hvegR+iqfr7T8oscWaKS31wSNeVJHLZGLeAI5qI8PZ
	H+dKk4fa/nNfLG1QkIjIK7m5nBi+eIZz3e5eGmjo3Gty4YTv8/P+SL68Y9cev654Kojo
	1et6ldnqnn6WLZMeBif62sqNDa9Wu3ZE+qgZUMRZameOyUujwR+skEaeJyFAhtB5CE0S
	aR83Hi+DkFiQ+eAQb7uxs4Z+PyY8TCquJqFXd1eya2zyhYYv5HcqnEinEfqKYaKRxM4V
	NzCcvybmaWdj5tI8AodIk+R6mOMeBB0WKzYeAoGwWw9IBXwRulI5Xj6Lr9bW7e2v6Hn2
	+9uQ==
X-Gm-Message-State: ALoCoQnRNOFMMA9FJZ5e6CZvSS2ufldKAdSOQR54CqRGAgEUi1BKcw8paV01AKtcbGbXMjLxM3pV
X-Received: by 10.60.132.44 with SMTP id or12mr52627774oeb.60.1404980981042;
	Thu, 10 Jul 2014 01:29:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Thu, 10 Jul 2014 01:29:20 -0700 (PDT)
In-Reply-To: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
References: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 10 Jul 2014 10:29:20 +0200
Message-ID: <CAP71Wjw6FZ94P3c8jT+sqgqwKvvjF6ko6PGM9AP3Mo4NTpxQRg@mail.gmail.com>
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Thu, 10 Jul 2014 08:29:46 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 9, 2014 at 10:58 PM, Allen Kennedy Jr.
<allen@kennedystuff.com> wrote:
> Any ideas why or how this is getting unset, and how to fix?
> I couldn't find any documentation that talks about this.

by the way, this is not a bug, and doesn't need to be 'fixed'. this is
purposely done this way to avoid leaking too much information from
your environment into the build environment. bitbake tries to isolate
as much as possible from the host.

