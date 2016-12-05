Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E5F0E00A1A; Mon,  5 Dec 2016 00:43:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A39FE0086E
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 00:43:03 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id p16so306501294qta.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 00:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YnQcB1I/gj3E7Us2ODJdGFoxECc383S5Q71QrYW0Mpg=;
	b=FnKxWi82aJPGAfijg937smuTpi8b91D8RDjuc6ZtgUhTEXbvLR6CpjbsLSG6yVxEdb
	srQRSpYz081ln1o0nhBtwyM3TrTb2nW79v3u3tO/tveXacaxbx6VS4JnAAb9ESifJNHT
	CHIU9iTfSqMyqwC/iYnAPYe+o/VRCU/9iYwbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YnQcB1I/gj3E7Us2ODJdGFoxECc383S5Q71QrYW0Mpg=;
	b=NzsYTHldaBCzUfOuGRz7wYGZv+KJS4D82+pMpcba3EwLoKHPXNr1JID0QtHeay9FwZ
	OJ1/pLvo9HFafpp52B5t7leb2pQvdNeuRBOzfY3e1YXM2K7He1SC9NveI3hHDb+rAFF0
	s/7hk5fTqoyQ5LPcZYR2nzCqtTLlIhKcU/AyaxLVByLfumNVP1id6kXqDhSzIb9RHzdk
	TEmX5USGMg6MmsPc6GkEGKM+MJYtkreVXBANg7SsvxNxkRlOmpjTtoka5kE6zp1IB1XM
	12hZiz3CnZu6SJEXYWNMXoDbFCDW9mAjDHlj0Ep+D/N/2v+GrEt/N3/1Mt1GwXw8ttj4
	0gkw==
X-Gm-Message-State: AKaTC02T5r9RfxKZWsajzrtysn/sPVLGdVPjjLlDKeImQkL0VED5HLXgiHvCbnUK34ts1PUgVvif1M5QMwI0TS7Q
X-Received: by 10.237.54.97 with SMTP id e88mr53693372qtb.57.1480927383045;
	Mon, 05 Dec 2016 00:43:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.19.72 with HTTP; Mon, 5 Dec 2016 00:42:42 -0800 (PST)
In-Reply-To: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 5 Dec 2016 09:42:42 +0100
Message-ID: <CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 08:43:07 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 5, 2016 at 7:59 AM, Paulo Neves <ptsneves@gmail.com> wrote:
> I have a recipe which depends on another package's file to do it's
> job. How can I arbitrarily access a file from another package which my
> recipe depends on?
>
> I searched for this kind of problem but did not find it

you can't access (reliably) temporary files from another package. Each
package is built independently in their own 'sandbox'. If files from
one package are needed for other packages they need to be exported in
the sysroot (through the -dev package typically).

you don't say much about what 'files' you need, but if you need source
code to recompile them into another package, you might need to fetch
the source code directly.

