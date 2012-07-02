Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3304E01489
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 09:54:12 -0700 (PDT)
Received: by eaab16 with SMTP id b16so2651129eaa.35
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2012 09:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=q++9Xpf4R3m+khsvZyhY0drbMyp4VbJ9hNTvNKw64y4=;
	b=Mc4xQxjl8/c/sHUuo7sMieWxQEjf8ClVc50qXk4cCv+5IkXH9Rsrzb17anCea3TtG/
	Gjhyu3mAoUD2wgtHeBw8x4pLQhvzNbKDbf2LnCPebY78yUXC76uSJiBOQfIYvdLpmLYP
	INzjO2hv4Fj+hamcDoPzaBfxJ1+2Mx0WQ4UUSK+3RTs/2FcvjZMJqvlDxgn2wp/v90Od
	VhqpixZUYtuMT2cGPsLThsp4n95y1CUAleUKvWRmj0Fp12UYbJXjlNiLHAXEYSxdCaSo
	9KSMhJU5PuVcntR4B591ftlQKZm6HYGsMW8a5px6cdZIFcTQKQvrhE0K43pQuU+J3pGn
	tqIQ==
Received: by 10.14.37.76 with SMTP id x52mr3481312eea.102.1341248051592; Mon,
	02 Jul 2012 09:54:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Mon, 2 Jul 2012 09:53:41 -0700 (PDT)
In-Reply-To: <CC17853F.12600%belen.barros.pena@intel.com>
References: <CC17853F.12600%belen.barros.pena@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Jul 2012 09:53:41 -0700
Message-ID: <CAMKF1spFRf6C3YmFGq8GRmFvPxCn1UQEL8s7dNNCeDzHwR6Z+g@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Hob question: meta-yocto layer and 'defaultsetup' distro option
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
X-List-Received-Date: Mon, 02 Jul 2012 16:54:13 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 2, 2012 at 9:05 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
>
> If I delete the meta-yocto layer, am I supposed to provide the distro to
> be used via a layer or some other means?

OE-Core has reference distro policies which are enough to generate
images by just using OE-Core and that is what happens when you drop
meta-yocto its testing the reference distro setup from OE-Core

