Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E08B8E0079E; Fri, 17 Oct 2014 01:08:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93726E00744
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 01:08:00 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id c9so178009qcz.36
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 01:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=U5jXcaFK971D4HAu4wsgZHVAOLWDBY6MpMJE4QnQXqU=;
	b=MYcvN1wbqtlfyrcNAj1v/WDeFmFPkNQcljVhMIhUXFjONIMKZgiLYD4WcDWNMeMR1E
	JLMlX1znZ3OSvBLVlPfwk1v0Zc3sRsvImh8TfCrChPQuDObtHXF55fYl7SioqWiQTpNE
	UckoVt2xnQK9ejj4eeiJ7Mlz2t3vumPfTxR9Wh76QrvtciE0jK3gGk7apIabavLIrMsM
	hCT68659fsqYAm7gzkEngtJxKB5Pqa965+X3/cyoxno/ciws8+JxAhoGJvXo9QBPV6oM
	bUS993In8x572tWKKwTGG2I4cN2+6t5xXZ6Fa9rHBONXF5Liba7aBSt4sWnSm/pi/CE9
	sHig==
X-Received: by 10.229.106.68 with SMTP id w4mr9779245qco.18.1413533279859;
	Fri, 17 Oct 2014 01:07:59 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.142.78 with HTTP; Fri, 17 Oct 2014 01:07:19 -0700 (PDT)
In-Reply-To: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
References: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 17 Oct 2014 09:07:19 +0100
X-Google-Sender-Auth: I29JipjsZTKb9gthIQQW7Tm3X2I
Message-ID: <CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
To: Cody P Schafer <dev@codyps.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questions regarding adding a new llvm based cross-compiler
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
X-List-Received-Date: Fri, 17 Oct 2014 08:08:03 -0000
Content-Type: text/plain; charset=UTF-8

On 16 October 2014 18:46, Cody P Schafer <dev@codyps.com> wrote:
> Hi all,
>
> I'm working on creating a layer for the rust compiler (which uses
> llvm) and was wondering if there were any best practices and/or
> examples people could point me at.

I can't really offer much help on the LLVM side, but I can say this
will be really useful work. I'm slowly learning Rust and researching
how it can be used for embedded development and it will be excellent
to have a rust compiler working as part of OpenEmbedded/Yocto.

If you need any testing of this layer once it's created, just let me know.

Cheers,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

