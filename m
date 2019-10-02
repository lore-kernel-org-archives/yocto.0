Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91DDFE00D16; Wed,  2 Oct 2019 15:33:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FD39E00B8A
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 15:32:58 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id 8mYx2100D2wfazh01mYx4Q; Thu, 03 Oct 2019 00:32:57 +0200
To: Khem Raj <raj.khem@gmail.com>
References: <57431d78-2438-81da-7972-e93cc91c44c4@faresoftware.it>
	<CAMKF1soerAwz8qOC0P=aDW0usnbL_rUKAAYNiWKVm4t4x8QOSA@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <7860c471-252c-2097-12b2-b3f3eab400fa@faresoftware.it>
Date: Thu, 3 Oct 2019 00:32:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1soerAwz8qOC0P=aDW0usnbL_rUKAAYNiWKVm4t4x8QOSA@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570055577; bh=NLvLh2pw5RBh94da/Pd5VExbBmp8uGDX/mxgqHwyjQE=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=HXrFfr5FJnsu+/9ymePhfP89LgE6o3gGXDyku2pU9buAhxWpCcJzzZU4SyMPYIc5B
	tE+MnCmsEqOMqMvy7C1H1EZdkxc6GY4dnwubeUe5Bw/Ik/I/azlT0J0E3HBneC+bon
	0bczx018f7LFT69i3rmkZE0DbkVnyM+tCWK7kLIldaFD8Oq6vedG6ygCYJpJ4vKJfA
	brH+Ug1gPPKKhKusCZ7mHg9EDnJ2H7PaajkuOl8gLEPq2N+CNLmR2uRbKdrJuvj8c4
	vtWwtej58qyjSY2XLKjX6+9AC+fWxwhp/qbpK/it35D+AjFLDF44BnY5dXoQoAV/R/
	eKpHe1huIipBg==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: python3 pygame under Pyro
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
X-List-Received-Date: Wed, 02 Oct 2019 22:33:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Adding libsdl2 to DEPENDS i get sdl2-config under the folder

tmp/work/armv7at2hf-neon-fslc-linux-gnueabi/python3-pygame/1.9.6-r0/recipe-sysroot/usr/bin/crossscripts/sdl2-config

Il 03/10/19 00:01, Khem Raj ha scritto:
> On Wed, Oct 2, 2019 at 2:46 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Hi all.
>>
>> I'm trying to build python3-pygame for and imx6dl board in Pyro.
>>
>> Pygame needs SDL, but I don't know how to tell to bitbake for compile
>> sdl before pygame.
>>
>>
>> I put libsdl-native into DEPENDS but doesn't work.
>>
>>
>> bitbake try to run sdl-config but it cannot find the file.
>>
>>
>> Any idea?
>>
> Does, DEPENDS += "libsdl2" help ?
>> Best regards,
>>
>>     MZ
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

