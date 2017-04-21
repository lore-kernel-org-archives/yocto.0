Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B9B2E00A30; Fri, 21 Apr 2017 07:40:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08565E00A30
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Apr 2017 07:40:48 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id m36so71130148qtb.0
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Apr 2017 07:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nQzT1eJs3ChJZvh/4UhCx0VjF//gNxD7XXfS4FQP0zQ=;
	b=APIwuSn3cnBbEjH45hXCU1PepWlK5f4oo1Js5rsrTHMLhASnh+4SVxbi+K3ughNK/k
	DCGtiAj36q8bsccY4epNqAgt68CtVY+UaXJCeNwC4HSQk+wtnpTSp03yLzqEYbJee+1x
	tBWIguQMAVhSn5Iq/rRQYzOL/iLixwfXkKxFjkuUmK5DmNPatKLWd6HpmwImRVyBp06j
	rh5gwH2wY2S/pD4VkHzE6AL2bWmuDFBKNfjzCOj6A0iVaFX7ZWNKq2s7srcJh11GQE+A
	gMhCHFbGFmw17PzT/swVif3HAUnJKuXFnbI2tm2hrw9sRPnFg/ziyB0HDHYqFmgJESv7
	KVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nQzT1eJs3ChJZvh/4UhCx0VjF//gNxD7XXfS4FQP0zQ=;
	b=In/DZ4s/lHk+Xebyk6O57gp9CVcwahuBUuGi+PPoepLLX47JcqUv1bNuQtPu/Nt3eY
	X03p4p/fYvqg0+KihHTQxeM1wjIJGf+HYLMOOukWS8Nt2YKHT9wqXrRBqmYxQhukaAED
	51kPcCElbHwQa+bYcCMh0XZg3RFtYpj4+dznHyj7fCSbyy3wJkXOKSI4QAJ1I+1vCNob
	ofgUtfqnkthVcNsZQnslXiMQYQ0hpRzFWsV6lC4ER6pPZCSOqTlKqFv/BObJrjl0y0SJ
	J7ZLmMZlRX5qxZoNmT96K3roU8peeyrDDSzziyDGkKrlQE3EjyTrpOZdh73jMPUlas8O
	JoGg==
X-Gm-Message-State: AN3rC/6JOMoqapksVj7w8MAE/NgJblnhUX1sQD4hTL6zdc3j3AJwab4Q
	k+OA0iI3uu/p8FR+tmfQ5qUgFUnEjPfy
X-Received: by 10.200.3.105 with SMTP id w41mr13094403qtg.188.1492785648191;
	Fri, 21 Apr 2017 07:40:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 21 Apr 2017 07:40:27 -0700 (PDT)
In-Reply-To: <CAJ86T=VxRGXCkp+2nhr_vLF9KtMiuvSnB2=zqnsBL25GW1JG1Q@mail.gmail.com>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
	<CAJ86T=UO-oVaH-nJ=qg3_zsQBNrwXJnokiuwD_sAbwMZKvt2CA@mail.gmail.com>
	<CA+chaQdjQ+OK9MFUR+=coaheD=6V-BD6Ud87i9n45koihM=ySA@mail.gmail.com>
	<CAJ86T=VxRGXCkp+2nhr_vLF9KtMiuvSnB2=zqnsBL25GW1JG1Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Apr 2017 15:40:27 +0100
Message-ID: <CAJTo0LbN75unxt4nwTU2+DNyoyCSKk0EJA2z=4i0UdC2Vkfw5w@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Fri, 21 Apr 2017 14:40:59 -0000
Content-Type: multipart/alternative; boundary=f4030435cf584986da054dae3ec8

--f4030435cf584986da054dae3ec8
Content-Type: text/plain; charset=UTF-8

On 20 April 2017 at 19:24, Andre McCurdy <armccurdy@gmail.com> wrote:

> OK, that makes sense. I have my own gnutls_3.3.27.bb recipe and wasn't
> seeing the problem because I use a local gnutls.inc which still has
> that option.
>

Another example of why .inc files have to be trivial or very carefully
maintained...

Yes, restoring the option seems like the best fix.

Ross

--f4030435cf584986da054dae3ec8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 April 2017 at 19:24, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":fi" class=3D"a3s =
aXjCH m15b8c9c5033cf3cb">OK, that makes sense. I have my own <a href=3D"htt=
p://gnutls_3.3.27.bb" rel=3D"noreferrer" target=3D"_blank">gnutls_3.3.27.bb=
</a> recipe and wasn&#39;t<br>
seeing the problem because I use a local gnutls.inc which still has<br>
that option.<br></div></blockquote></div><br>Another example of why .inc fi=
les have to be trivial or very carefully maintained...</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Yes, restoring the option =
seems like the best fix.</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">Ross</div></div>

--f4030435cf584986da054dae3ec8--
