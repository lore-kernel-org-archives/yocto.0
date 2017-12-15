Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18758E00D7B; Fri, 15 Dec 2017 02:05:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 077DBE00D48
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 02:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1513332309; x=1544868309;
	h=subject:to:cc:references:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=DX6FdUUR72yQUzEdA8VKttaMBHY+jnt5RT11QfaSG3g=;
	b=aGUp+BZAr7e5QxyviCsloa0OeuuC816WvsqFpanQ7TPSRNEynX5tXnvg
	VbY/0yrviLCCZEQGn0bhzmuiN5d36PCGARKnkKy9Rt6EJpLdoLQ4Vixs8
	8C904BzbSw1J1YbY314eilc/cc6zEPV04WRwzNim0JbjyDUvgKGTQj98L A=;
X-IronPort-AV: E=Sophos;i="5.45,404,1508796000"; 
   d="scan'208";a="955330"
Received: from nvc2354.nedap.local (HELO [10.2.16.204]) ([10.2.16.204])
	by smtp4.nedap.com with ESMTP; 15 Dec 2017 11:05:08 +0100
To: Andrea Adami <andrea.adami@gmail.com>
References: <9fd139ef-c89b-7340-80b7-1d3c02ae9b62@nedap.com>
	<CAAQYJAsK=O-+Gn2rAodRVP+0qd4cm0EjGEpFAtn0nn3i_sb+4g@mail.gmail.com>
From: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <c9024a42-05bb-802c-931c-c371f59b67b1@nedap.com>
Date: Fri, 15 Dec 2017 11:05:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAAQYJAsK=O-+Gn2rAodRVP+0qd4cm0EjGEpFAtn0nn3i_sb+4g@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [poky][PATCH] kernel.bbclass: Fix kernel size checking
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
X-List-Received-Date: Fri, 15 Dec 2017 10:05:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

> there has been a discussion about do_sizecheck and there is already a
> pending patch:
> 
> http://lists.openembedded.org/pipermail/openembedded-core/2017-December/145376.html
Ah! Apologies, totally missed that one

