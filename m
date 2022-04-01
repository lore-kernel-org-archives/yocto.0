Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5386CC433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:40 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web08.4380.1648846931351134285
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 14:02:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=ATnOO2Ps;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 84034BD0DB;
	Fri,  1 Apr 2022 21:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 84034BD0DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648846929;
	bh=0brqhBL9r/30vittMo5hGwcQreaWYP5tQ5EmTnoU3rE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ATnOO2PsveQ3lw8rQlOLgakmYaz1+EDJgZ3HHDJ2Xb5ImfpBV9IvPCPvRqnaKHSAQ
	 asvTP05VlO3vOJqdVoy5BzezI4xHB0c0xOshpBeXMsoApfvKdzPhuopd14e7zgSA52
	 ydJ4q2x8MwWeiwoQ0kxtC5OnOcfSs5Y3sV8nDRJ/gkhW5lpMYaGfPutEIO4vzzuO2I
	 aP9d4FIPCpJosFFtkiPpfaCPvDnw9s43UwcKSRUGRyih4qytzEq/bNPMIIh/3A8h/t
	 hVXSp5cFj6EZGf4iOUff1yAC41QNLNqtoHJ6RZfNPM9aNWnWQwdVQaiPNja7kbsC24
	 wRnfLVt3ieMYQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiAWYh8sspG1; Fri,  1 Apr 2022 21:02:05 +0000 (UTC)
Date: Fri, 01 Apr 2022 17:02:05 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net AC3FEBD072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1648846925;
	bh=0brqhBL9r/30vittMo5hGwcQreaWYP5tQ5EmTnoU3rE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=DtwWQQMjrVmy5A2F3J3LsphyLreRcT7OF2ACjuYlSSn54WtDcpydm4QsaS0SzCdmG
	 7IMJX8bNqmSW7PCaiWhIK/9NxPdEmru3HZb91F418itL+VsDVK5bdpAG2Q47wdLM/J
	 5BMWruDq193RpzXiSz9v2i884+NBshGr11cbOpQpZQduILjlSVO8FJXMnQ93E9zmKE
	 Ozj1l92riLQ5CtxNToECMC3dYK0QoI7+jFmdouVnnRIiQ8QA8ZK03eHgOmgHcA1xqC
	 nwsQl5SXlO3AU+KBEZX2ymCPtZPRltsEKtfsxg/7Vt70HqABc/tyQcvmx5ZCHYVIxx
	 qL9CNNhHFxQhA==
From: jchludzinski <jchludzinski@vivaldi.net>
To: jchludzinski@vivaldi.net
Cc: Khem Raj <raj.khem@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
In-Reply-To: <16E1E0852A508284.15950@lists.yoctoproject.org>
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
 <16E1E0852A508284.15950@lists.yoctoproject.org>
Message-ID: <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56617

But obviously commented out.

On 2022-04-01 16:43, jchludzinski via lists.yoctoproject.org wrote:
> There's this:
> #SDKMACHINE ?= "i686"
> 
> ---John
> 
> On 2022-04-01 16:22, Khem Raj wrote:
> 
>> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via
>> lists.yoctoproject.org
>> [1 [1]] <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>> 
>>> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
>>> host on the same RP4. Admittedly, a not practical platform for
>>> this
>>> purpose but it should work.
>>> 
>>> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
>>> I've tried simply using the default setting and end up with:
>>> 
>>> _ERROR:  OE-core's config sanity checker detected a potential
>>> misconfiguration._
>>> _    Either fix the cause of this error or at your own risk
>>> disable
>>> the checker (see sanity.conf)._
>>> _    Following is the list of potential problems / advisories:_
>>> _ _
>>> _    Specified SDKMACHINE value is not valid_
>>> 
>>> I've tried editing ./conf/local.conf:
>>> 
>>> MACHINE ?= "qemuarm64"
>>> 
>>> #MACHINE ??= "qemux86-64"
>> 
>> It's complaining about SDKMACHINE setting which is a separate
>> variable, can you check your local.conf if it's set to something
>> 
>>> But this accomplishes nothing. Needless to say, I'm a yacto/OE
>>> newbie, so any suggestions would be greatly appreciated.
>>> 
>>> ---John
>> 
>> Links:
>> ------
>> [1] http://lists.yoctoproject.org
> 
> 
> Links:
> ------
> [1] http://lists.yoctoproject.org
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56616): 
> https://lists.yoctoproject.org/g/yocto/message/56616
> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]
> -=-=-=-=-=-=-=-=-=-=-=-

