Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5269.1611736832247951782
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 00:40:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@embed.me.uk header.s=soverin header.b=A6uKjKii;
 spf=softfail (domain: embed.me.uk, ip: 198.145.29.25, mailfrom: ml@embed.me.uk)
Received: from outbound.soverin.net (outbound.soverin.net [116.202.65.218])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 458AD38C04C2
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 08:40:31 +0000 (UTC)
Received: from smtp.soverin.net (unknown [10.10.3.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id C34616008F;
	Wed, 27 Jan 2021 08:40:28 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.138]) by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embed.me.uk;
	s=soverin; t=1611736828;
	bh=3L/v0vU93pq+09WCL+kgJUiAbe38qjgHFwlYbUfFIYE=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=A6uKjKiir+eKINvxWyN9BDECuq1x8ExxhOH/gJNb6+te55Hpu0/Exe6e0pTUWXV5n
	 F94aulQh1TrmUb2NHcVkvxxp5KfOEL6IL6Ovss0/FY0JwQToZpjfhwxmk6exn7oMNK
	 uularWQDV9OmtreElJTXlSRiMtX2TlNBsJy4E6mmZtDED8d4D8oyPBYQ1wSvrP00Xa
	 gxlHZC24zS4qJANAhHrSPVty2cQKMA+U38GxMDdmOD7wTM9+/3e7BucfbwYeS5j8ap
	 qIdgV5SYDxANF6osH0oYgYpVVc2lFw4FjNDkq311vSOPVlYBu7noNv4EeRnyTnJTHv
	 CdQZumnv28V3w==
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
Cc: Konrad Weihmann <kweihmann@outlook.com>
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
From: "Jack Mitchell" <ml@embed.me.uk>
Message-ID: <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
Date: Wed, 27 Jan 2021 08:40:25 +0000
MIME-Version: 1.0
In-Reply-To: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

On 27/01/2021 06:33, Robert P. J. Day wrote:
> 
>   since it appears that i will be diving head-first into messing with
> ruby in some current YP builds, is there any interest in creating a
> meta-rubygems layer to start collecting recipes based on what konrad
> weihmann has done in his meta-sca layer here?
> 
>   https://github.com/priv-kweihmann/meta-sca
> 
>   i've been swapping emails with konrad over the last few days and,
> first, it seems clear that it's not appropriate to start dumping
> general ruby recipes into meta-sca as that layer is clearly defined as
> being for "static code analysis and security hardening", so a new,
> more general layer is obviously more appropriate.
> 
>   also, konrad focuses on using his own "rubygems.bbclass" class file:
> 
> https://github.com/priv-kweihmann/meta-sca/blob/master/classes/rubygems.bbclass
> 
> to define recipes that pull from rubygems.org exclusively, and he
> agrees that it would keep things simpler to stick with that model;
> hence, the proposal of the layer name "meta-rubygems" and not just
> "meta-ruby".
> 
>   konrad already offered to do the maintenance of such a new layer, as
> long as there is standard infrastructure support for testing, that
> sort of thing. and i'm sure that would make his meta-sca layer simpler
> as all the more generic rubygems-based recipes could be moved into the
> meta-rubygems layer, leaving his meta-sca layer to focus exclusively
> on the code analysis and security recipes, however he wants to do
> that.
> 
>   thoughts? it seems that a new layer could be populated almost
> instantly with a large chunk of meta-sca, and we could take it from
> there.
> 
> rday
> 

Hi Robert,

This is something I would be interested in. I have a developed a much
more basic rubygems class privately which I had intended to opensource
and create a similar later, so it would be nice to have a central place
to contribute Ruby/RubyGems improvements. As you have found there are
many layers with spotty Ruby support and a particular copy of an old
class that is being banded about which is often insufficient.

Regards,
Jack.

-- 
Jack Mitchell, Consultant
https://www.tuxable.co.uk
