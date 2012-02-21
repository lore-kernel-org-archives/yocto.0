Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3229E004D2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 22:12:40 -0800 (PST)
Received: by lagw12 with SMTP id w12so9855562lag.35
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 22:12:39 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.112.8.129 as permitted sender) client-ip=10.112.8.129; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.112.8.129 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.112.8.129])
	by 10.112.8.129 with SMTP id r1mr8863129lba.38.1329804759388 (num_hops
	= 1); Mon, 20 Feb 2012 22:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HPUpdujotfywTuMB2oCKrv16cbJgJrzYvOnVztIt4XE=;
	b=S5leugFB1waR1JXPciaHt80L8tIF+MpONsyKx/H2os0BIBJZXWAQRcxDAAESWDIAuj
	d+YkA0R2t9Pyq9hRAlFgH2Tw6/fRi9YzpT4CVjrWdMk7BHiIiZnBaKZbrK5gDDWq+ShO
	D0N8J7UVs/iz6cJc76Pdu1vV5vmAPpyLSEjFk=
Received: by 10.112.8.129 with SMTP id r1mr7438322lba.38.1329804759313; Mon,
	20 Feb 2012 22:12:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Mon, 20 Feb 2012 22:12:09 -0800 (PST)
In-Reply-To: <1329802836.2743.7.camel@babel.joshhome>
References: <1329746626.2728.10.camel@babel.joshhome>
	<4F428FC8.5080806@intel.com>
	<1329802836.2743.7.camel@babel.joshhome>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Feb 2012 22:12:09 -0800
Message-ID: <CAMKF1spqXLdvjviqjtFwh+QWaCj9zz+YGRD+0GA_vWfJ67=zAA@mail.gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: yocto@yoctoproject.org, Scott Garman <scott.a.garman@intel.com>
Subject: Re: how do I contribute to yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Feb 2012 06:12:41 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 20, 2012 at 9:40 PM, Joshua Immanuel <josh@hipro.co.in> wrote:
> But my entire layer won't be useful to everyone, as it contains recipes
> for my user space applications too. But, there are certain recipes for
> some useful packages which are not available in edison and master
> branch. So, how to go about it?

there are other layers which you could look into and see if those
recipe make sense to any of these layers please see
http://www.openembedded.org/wiki/LayerIndex
if not host them in your layer if u wish to maintain them and add your
layer to above index

