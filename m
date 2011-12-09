Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0FCEE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 11:56:24 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so229951laa.35
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2011 11:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rXPgQTxjsIT0GNZyvhFNx4mltiRdsISx4V4I/rPaLhM=;
	b=CjJKCBhdIU0tq1HZZGM4MpXoHQ9J4XYNA1ljlLSjJO8L2nn8sflhLTDT/IsQw7LClg
	zvJuM1S0VMWsMNuC1+f26cLwhDwkDMjEDrmeuZCpD0GRJBaXwadp2E4i1asNf3udb1cp
	DAcT2GXT4AzJWqGreMcRX1nP5gv4GFxvLLkHo=
Received: by 10.152.106.115 with SMTP id gt19mr5837089lab.27.1323460583286;
	Fri, 09 Dec 2011 11:56:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Fri, 9 Dec 2011 11:55:52 -0800 (PST)
In-Reply-To: <CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
References: <CAEsOVNeYZ4hwvV8dXMadkzchyA_nRHeZ63_s-XgJBzaEymUKdg@mail.gmail.com>
	<1323431474.5309.128.camel@ted>
	<CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 9 Dec 2011 11:55:52 -0800
Message-ID: <CAMKF1spwM8nHzdaYnDquF9UgrvE2bdhmcGZpjyxPqkXzuub5Yw@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-oe branch for edison?
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
X-List-Received-Date: Fri, 09 Dec 2011 19:56:25 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 9, 2011 at 7:46 AM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
>> I'd certainly be happy to see such a branch. It might be more
>> appropriate to call it 2011-1 which corresponds to the OE-Core branch
>> name that is edison in the poky repo.
>
> Well I don't particularly care if we create a repo or not. I just want
> a place to go for a working meta-oe for all future releases of Yocto.
> I had to figure this out on my own, but I'm can imagine others will
> attempt similar things.

essentially you are asking for meta-oe release. I think layers dont
release in conjunction with oe-core but it would be beneficial if they
had similar time frames.

