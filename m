Return-Path: <prvs=53954843c=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3545E00DA5; Mon,  8 Jan 2018 04:31:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail01.prevas.se (mail01.prevas.se [62.95.78.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDFA3E0056D
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 04:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=803; q=dns/txt;
	s=ironport1; t=1515414714; x=1546950714;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=C6jI8qjgMSnzf2iHHeMllS0mUsd6MIPtXrJplX3oMF0=;
	b=Lph3agGGawNo8kysy6wgE3ezqbxck2M8LNaI46p+sTNPLoiPVe+6B12O
	sS8Wv8D/DELJ9YwrwfzCy7DahkPCF/lk5h/aD76gg/MWJE8WztaX1Vmt7
	eKxmZV4pIazfLli4cBM6Q1GHXkdC43yIiZGAFkwBl5DjEazkuDEqcxj8i M=;
X-IronPort-AV: E=Sophos;i="5.46,330,1511823600"; 
   d="scan'208";a="3041426"
Received: from vmprevas3.prevas.se (HELO smtp.prevas.se) ([172.16.8.103])
	by ironport1.prevas.se with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 13:31:51 +0100
Received: from [172.17.20.236] (172.16.8.31) by smtp.prevas.se (172.16.8.103)
	with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 8 Jan 2018 13:31:51 +0100
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, "Diaz de Grenu,
	Jose" <Jose.DiazdeGrenu@digi.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
	<3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin.hundeboll@prevas.dk>
Message-ID: <0497f8b7-805a-7ab4-48e4-d8690d10e8f6@prevas.dk>
Date: Mon, 8 Jan 2018 13:31:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
X-Originating-IP: [172.16.8.31]
Subject: Re: Postinstallation script warnings in Yocto 2.4 Rocko
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
X-List-Received-Date: Mon, 08 Jan 2018 12:31:54 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 2018-01-08 13:19, Alexander Kanavin wrote:
>> The problem is that in Yocto 2.4 then any build which requires
>> on-target postinstallation script is going to trigger warning, even
>> if it is completely correct. Is there no way around this? Is there a
>> way to at least hide them?
> You can set self.log_check_expected_regexes in RpmRootfs class in 
> meta/lib/oe/rootfs.py, but
> 
> a) depending on how broad your regex is, you might suppress real 
> failures of the scriptlets;
> 
> b) it would be only your local hack until the issue is resolved properly.

Would changing to dpkg/opkg be a work-around?

-- 
MARTIN HUNDEBØLL, Prevas A/S
Software Developer

Hedeager 3, DK-8200 Aarhus N
Phone +45 87438070
Mobile +45 25562438
Martin.Hundeboll@prevas.dk
www.prevas.com

