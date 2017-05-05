Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 567C7E0095F; Fri,  5 May 2017 02:43:47 -0700 (PDT)
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
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE1B6E007EE
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 02:43:43 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id k74so634708qke.1
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 02:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ngVB40rkvndV3JH2Gd148u1XeBXJvulcOGOcsFCiPLM=;
	b=oIz3A8naFpl+/cgvYd0Li0pnvz8zPGpUFlrnwIKIX6FwSS/vdBYSnFcZHdUijuX1Wu
	QW5W6k2igGRGNyX6L8Xa3uQXHnHfp0Ki7OWixdszEl8zlihmWN7U9/jC3rLGRw2t4vh6
	cZ7oHnnENyASvRnYQdSM++VWaA3blZooFSSX8wrzyFhvebXomBxDvygnTMthdey6FOlv
	fA9yMb6LBQVL7cxzMy8mNoRwwRM+oU7OLCLNhesdDi/u/vdsh0+tqdAsQb3UuzzhsIek
	gM9EYe4GMYTUpOoyspuOZ2Bt2FJTRt/Lf0nkMgL2NxfgnBqaiZ1yGZwkonvuKCm3LbaV
	vTEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ngVB40rkvndV3JH2Gd148u1XeBXJvulcOGOcsFCiPLM=;
	b=MSf5Ab11M6+EpHyqaIkjPR5LEqVL8BCIK59MU24TLJeMmnwokfrF7xKdtxtArDM/rT
	vetkIL6Iw2MaLtbkBGzCbzKFHUbfXO1HZ/a2f0+rdpRQ+I5lXqNyKuP95U1dyro9SGsl
	cni1k9b9Oj3PcZ3KEj9tRpdPuIM/e+FIvN/euyaAIzxnS1qy24sL4ReGSqO0NTBeBM1q
	S/gsFKNn3RHt/3EWXIfTWXWQv62hNHwmRSlQ5nXaoIJtJ30Jo+7LrHoDe4DY1UnSlEnE
	iulrHZBghJgZU6c80xG5WTySDSoClDvEoeSflC2BFvUNo1LY2ymfWPVBEg1TOmHcBq/m
	4aIg==
X-Gm-Message-State: AN3rC/6WOxckL1JQDl5nLSr+hIL92d/f+SdlFZ/YQbVMHIKt0gTatj06
	7j9YIvx7xqFjVgPBKsaeCId2BhatKWmv
X-Received: by 10.55.40.41 with SMTP id o41mr12887449qkh.3.1493977422045; Fri,
	05 May 2017 02:43:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Fri, 5 May 2017 02:43:21 -0700 (PDT)
In-Reply-To: <LO1P123MB1412B63A58F68E849F150760DA160@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
References: <LO1P123MB1412B63A58F68E849F150760DA160@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 May 2017 10:43:21 +0100
Message-ID: <CAJTo0Lb5Y-Tt=g_7CFJ_dydxYBH3Oe7VGP88YhEAdq9syfhdDQ@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Pre-compiling Python Byte Code
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
X-List-Received-Date: Fri, 05 May 2017 09:43:47 -0000
Content-Type: multipart/alternative; boundary=001a1140a35a8b4429054ec3b94f

--001a1140a35a8b4429054ec3b94f
Content-Type: text/plain; charset=UTF-8

On 3 May 2017 at 19:50, Chris Trobridge <christrobridge@hotmail.com> wrote:

> The following works, as it uses the native python3 compiled by bitbake but
> it feels a little contrived.  Is there a better way of specifying the
> native python3 interpreter, or a better way of getting my python byte code
> compiled prior to generating the packages?
>
> If you inherit python3native then "python3" will be the native python3.

Ross

--001a1140a35a8b4429054ec3b94f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 May 2017 at 19:50, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>The following=
 works, as it uses the native=C2=A0python3 compiled by bitbake but it feels=
 a little contrived.=C2=A0 Is there a better way of specifying the native p=
ython3 interpreter, or a better way of getting my python byte code compiled=
 prior to generating the packages?</p>
<p></p></blockquote></div>If you inherit python3native then &quot;python3&q=
uot; will be the native python3.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a1140a35a8b4429054ec3b94f--
