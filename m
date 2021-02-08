Received: from smtpcmd15177.aruba.it (smtpcmd15177.aruba.it [62.149.158.102])
 by mx.groups.io with SMTP id smtpd.web09.299.1612801479361707213
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 08:24:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=c0WQOX5i;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.102, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 99L4lQXsyBD2n99L4l5tCp; Mon, 08 Feb 2021 17:24:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1612801478; bh=PsjIzjBk8dRHrQ3M4T8sLPZY+mCj5gS+rks7i1VgvKA=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=c0WQOX5iZdGy2MQi48c8aDlzwB5U4bKtA4uJlMR9S1nH0hWFjK9zT2vI1H6HMiktZ
	 d24UkRNqC4AG2HTgvvI4Hc97ZpPhFQ+5gLAftnwmyOtfDFo7y2Ibv1BBhrMaMIwtTH
	 7uf+2EtrRG2CwqZovTnm2TvRXOLhb+88/m3tTRdQjDm67LOQA44P2NlbsBd6dNZbgP
	 3fkRz89LsxDsS8RvIr3IjUPg0u1QzgeW2kuDsMTukWYoh8zrXQY5Y89srOhXghKipa
	 AZ44bLA+tk8iX+UPHIWI7A2EgKW3vuYy2kKOWRPxm6Rrlw4Rxs9FpzrjCllxO/jfs5
	 VVlQx1utWBayQ==
Subject: Re: [yocto] PREFERRED_VERSION_pn-: which version is selected?
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
 <20210208111401.lbmcikrsawzkrajr@qschulz>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <9b456cac-3e0d-10a8-9435-ddcf8654f4a3@faresoftware.it>
Date: Mon, 8 Feb 2021 17:24:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210208111401.lbmcikrsawzkrajr@qschulz>
X-CMAE-Envelope: MS4wfEhDnU8bxyDQP538bArxOG06XfVahUWk/f5oLjCRwLwBNU89KbfRJyhe/LkzRClRejtC29hlz7a7MXCXEFYTZF+g/Cl4agpyhWVGj09CXJQQZv9Jg7KF
 l9Ub6Qx2V+fuDV3csYXWFpV/oES4UNvsmlwc1zDmfgfW7Uy8ntlWPrXnKvf7ZsGqt3aXe7FS8XQvcB2KIWRqryd6koHyuH8imOBaxIBIPtRASiek6HEH4Uxg
 AUo5rH8tR+hsdcoMl9XuZQ==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Thanks all for suggestions ed corrections

MZ

Il 08/02/21 12:14, Quentin Schulz ha scritto:
> Hi Mauro,
>
> On Mon, Feb 08, 2021 at 11:52:33AM +0100, Mauro Ziliani wrote:
>> Hi all.
>>
>> I'm working with Krogoth on imx6
>>
>>
>> I have the same recipe with different versions
>>
>> recipe1_0.9.bb
>>
>> recipe1_1.0.bb
>>
>>
>> In the image recipe I put
>>
>>
>> image-recipe.bb
>>
>> IMAGE_INSTALL_append := " \
>>
>>      recipe1 \
>>
>> "
>>
>> PREFERRED_VERSION_pn-recipe1 := "0.9"
>>
> Yocto chant #1: Recipe data is local, conf data is global.
>
> In other words, you cannot modify other recipes from one recipe.
>
> Since image recipes are recipes, your PREFERRED_VERSION ni your image
> recipe is effectively a no-op.
>
> On a side note, := operator is rarely seen outside of
> FILESEXTRAPATHS_prepend in bbappend, try to keep it this way.
>
>> If I do
>>
>>   bitbake -s
>>
>> I get
>>
>> recipe1    :1.0-r0
>>
>>
>> If I do
>>
>> bitbake image-recipe
>>
>>
>> in image-recipe.manifest I look
>>
>> recipe1  1.0-r0
>>
>>
>> Why is not selected the preferred version?
>>
>> How can I choose the recipe's version I'd like?
>>
> In a configuration file: local.conf, distro.conf, machine.conf.
>
> Though, it is heavily discouraged to use local.conf for anything except
> debugging sessions, as it is meant only for **local** configuration and
> isn't supposed to be versioned.
>
> Cheers,
> Quentin
