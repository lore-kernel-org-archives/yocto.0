Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF846E00C93; Wed,  3 Apr 2019 02:50:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69AC6E00C46
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 02:50:27 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id v14so7347259wmf.2
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 02:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=FDk3DU5ssJnv9KJ6MwO4Jo5x3Pkf+1VLnnb/I+fwNuI=;
	b=pwHvTgS2c6agNphKz/DS+VhrDsqPS5PVwHLY3LGt4u9H/L6P7ExomCK9W7sBu8xqCw
	4TTtFtOwyKep3FbNCUxpkq+Xj40bScbwkAFflMx1xvc0z8Ns3ZYV9SrGZOQrljRZvGf0
	GsvzypgIEUPrKkn1OoXeFwpND04dMynp3VYlrzPqrvzFwStAJZhqSkbLO9BmQUZC/YWr
	687p57NwgUuutY7KAuVLoNqCqDTXunTiZfXsxRKD2Yz02veOdw8Kck6SfM6eVTlLStO7
	RXYdoSO04HZw6bolqvS4fC8GVeDphwHMmLn+LMv+wK7h1kGRXID47Hxo7O9vNCTqJavK
	vXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=FDk3DU5ssJnv9KJ6MwO4Jo5x3Pkf+1VLnnb/I+fwNuI=;
	b=h4XbYuWezJdgzLndg204OzF4MJdf/uEd26Q85lgEkCMnUJrNgg5K0pXpkoADn/VVk7
	RoX/iw7qcj8xp8pTyBhdiDD4eO4ufYe4rQGbPeVC/e4nX1uME/AS9VNJGXijCeqbSl3R
	WOK+Av62tx6fqimszkBfE5RvW6efTGWS6h5QL6otdii6aWpNMNnVVyLtoVFhvZrG8idh
	OYsfnjCAeFYQBLRLZQv43LtoT8WU5TDwrFxqGzCnkDEkbxLzu+nUVk93V4H/Dr16QwFs
	GiIV/1QimNrtPNnCOAL9Ycd1ijOKSGdCa19+nZMmsQEiHUq7saBzpmVIYTeFrW4Si0y8
	L8Zw==
X-Gm-Message-State: APjAAAUHXUDxFDiJ5urvphKqQypBjdzTkW1ovxhQToB4gAGyECNDjmFB
	xremEWD5JBzmEOyq+wFLbaI=
X-Google-Smtp-Source: APXvYqy6wMEcTKDB+MLXR57w0wu9h5u0Ho6AJbSGUgKBNPU/SAlahWL+0ApFqXKRynOradbx8BC1gg==
X-Received: by 2002:a1c:b189:: with SMTP id a131mr1375426wmf.107.1554285026461;
	Wed, 03 Apr 2019 02:50:26 -0700 (PDT)
Received: from [172.16.50.58] ([37.205.61.202])
	by smtp.gmail.com with ESMTPSA id
	w11sm45514563wre.15.2019.04.03.02.50.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Apr 2019 02:50:25 -0700 (PDT)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	Yi Zhao <yi.zhao@windriver.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <171c360d-16c9-7f7f-2c7f-6825878b5d51@gmail.com>
Date: Wed, 3 Apr 2019 02:50:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
Cc: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Wed, 03 Apr 2019 09:50:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello,

On 4/3/19 1:06 AM, Jain, Sangeeta wrote:
> Intel and WR YP QA is now working on QA execution for YP build 2.6.2 RC3. We are planning to execute following tests for this cycle:
>
> OEQA-Manual tests for following modules:
> 1.	SDK
> 2.	Eclipse-plugin
> 3.	Kernel
> 4.	Toaster
> 5.	Bitbake (oe-core)
> 6.	Build-appliance
> 7.	Crops
> 8.	Compliance-test
> 9.	Bsp-hw
> 10.	Bsp-qemu
I did not backport the manual test from master or thud. Are these the
original set?


regards,
Armin
> Runtime auto test for following platforms:
>
> 1.	MinnowTurbo 32bit
> 2.	MinnowTurbot 64 bit
> 3.	NUC 7
> 4.	NUC 6
> 5.	Edgerouter
> 6.	MPC8315e-rdb
> 7.	Beaglebone
> 8.	Qemuarm
> 9.	Qemuarm-64
> 10.	Qemuppc
> 11.	Qemumips
> 12.	Qemumips64
>
> Other auto tests: 
>
> 1.	Qemu-selftest
> 2.	Qemu-meta-ide
>
> ETA for completion is Wednesday, 10 April.
>
> Thanks & Regards,
> Sangeeta Jain
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On
>> Behalf Of Poky Build User
>> Sent: Thursday, 28 March, 2019 11:30 AM
>> To: yocto@yoctoproject.org
>> Cc: otavio@ossystems.com.br; Chan, Aaron Chun Yew
>> <aaron.chun.yew.chan@intel.com>; akuster808@gmail.com
>> Subject: [yocto] QA notification for completed autobuilder build (yocto-2.6.2.rc3)
>>
>>
>> A build flagged for QA (yocto-2.6.2.rc3) was completed on the autobuilder and is
>> available at:
>>
>>
>>    https://autobuilder.yocto.io/pub/releases/yocto-2.6.2.rc3
>>
>>
>> Build hash information:
>>
>> bitbake: 7c1eb51d1e8a4c5f39bf9dddf05fb0b3598da72b
>> eclipse-poky-neon: cd86f167be58a11b289af4ef236b4adec57ec316
>> eclipse-poky-oxygen: 210c58c5a7147127f9c840718c6cd2a56e871718
>> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
>> meta-intel: 27dadcfc7bc0de70328b02fecb841608389d22fc
>> meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
>> meta-qt3: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
>> meta-qt4: b37d8b93924b314df3591b4a61e194ff3feb5517
>> oecore: 45032e30be70503faeee468159b216031b729309
>> poky: faeb366bc3eb322f5f203cfe08dc4cf529a822e9
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


