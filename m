Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 965FFE00994; Mon, 26 Mar 2018 12:30:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D75EE0084A
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 12:30:25 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id r82so17627331wme.0
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 12:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=kr9K3yBodJmxLL54gYjuYfPihAJSKZ8rSewHQQUjMAk=;
	b=hrCvnVJWdPP1Znnqjcevkdv1N9X/+KpZhJ/s9ztPJn6bAV/ueLKv4c5EENQXgeCSYL
	rFwvM2c1KZcj0N3OtS1EC5qKqqEauj09Fe1ouOH39ns8+gfc+5SN0fGVLmF/NyAvlxR6
	a6II8wCd+GID9wYjjwaOQe0VByMDrJBwwU1W5tm+wKE/v5Q4eUsjW7WoIihW76ENfBnx
	r5xQOYyKcIf+lYbgb9foeBzOgtcWHtT9DX19bYxcSrKbWHe1cGMiHHRmXVEW67bMbQF4
	ezDx9BquJhvVlLYHZtl6Vd0irORhTsBMBZDo1vQ2qnYHUlyeo/eIUjHdQW9/O1vPtVDk
	OPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=kr9K3yBodJmxLL54gYjuYfPihAJSKZ8rSewHQQUjMAk=;
	b=kLqNBZcAnzpK2oszv2lY817bKIi4SaO0dgUFNw9Z38RZ1hvrjbr0Uh6JhNT006PxJe
	V8cSLPV4v6KhgLokmH463g9GNe9jn5QCtbuvtM2/duiKiIdpgxBR47nmGakH0mjtI3hf
	icV3GG71+0fbRXBYAC/UFStFqA7gxA7xq4WgMbBdrZZXHbxl//Y9rgwm2+dtQkRjmjlj
	JazUOomlno+7N0sx9cFNN1VhPdpROz4fQSU3y3HZh24VirPUnOZt5iBWNs/ZU6z73wvb
	1I2/XebdiFcSWyACD79TOcRolO/zlb891YTdhYxw+EFweeTbAMiHUVrD6ZHa9UzpKiGM
	b8pg==
X-Gm-Message-State: AElRT7Fx5D0AX3XnBclej9hnHlVRVbzgabYeq35dK7FJd3aKQXShfA+M
	ctNhuE9c1NjOwyok3qXk1MHI9Hg9
X-Google-Smtp-Source: AG47ELvrzDzfDnFfvxqrw8jjRxD1PFnUp2JpTf+rUXpAbhnTxKcE39tahG/Jj/7C0hDe+NQju7H+mg==
X-Received: by 10.28.135.9 with SMTP id j9mr10323010wmd.68.1522092624950;
	Mon, 26 Mar 2018 12:30:24 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-156-243.home.otenet.gr.
	[2.86.156.243]) by smtp.gmail.com with ESMTPSA id
	q13sm15641105wrg.56.2018.03.26.12.30.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Mar 2018 12:30:24 -0700 (PDT)
To: akuster808 <akuster808@gmail.com>,
	Martin Townsend <mtownsend1973@gmail.com>, yocto@yoctoproject.org
References: <CABatt_zYz0R7ruRWnLXr=Wp0z5A0m3qfZxmjGOeidqbJuxvXLQ@mail.gmail.com>
	<ce8d7607-4876-a91a-e9e9-383da39df9be@gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <1a58ee41-5259-6dc2-9ee7-252065d1b9ea@gmail.com>
Date: Mon, 26 Mar 2018 22:30:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <ce8d7607-4876-a91a-e9e9-383da39df9be@gmail.com>
Subject: Re: U-Boot networking broken in Rocko
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
X-List-Received-Date: Mon, 26 Mar 2018 19:30:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-03-26 19:51, akuster808 wrote:

>> I found 
>> that this has already been fixed in U-Boot with the commit below.  I 
>> think it has something to do with the way GCC 7.1 onwards is now 
>> handling memory alignment.  

I also saw something similar and by upgrading to U-boot 2018.03 the 
problem went away as well.

Regards,

Robert

