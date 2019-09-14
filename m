Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A7C3E0082E; Sat, 14 Sep 2019 08:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.158.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpweb146.aruba.it (smtpweb146.aruba.it [62.149.158.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F38FCE0080A
	for <yocto@yoctoproject.org>; Sat, 14 Sep 2019 08:59:25 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd05.ad.aruba.it with bizsmtp
	id 1TzQ2100f2wfazh01TzQG2; Sat, 14 Sep 2019 17:59:24 +0200
To: yocto@yoctoproject.org
References: <5c08ff4c-9d3c-6ea3-c586-302ffd3fcae2@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <51cf646a-25bc-ccbe-2b60-1012fbca2570@faresoftware.it>
Date: Sat, 14 Sep 2019 17:59:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5c08ff4c-9d3c-6ea3-c586-302ffd3fcae2@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1568476764; bh=PVcQTxANIfwcn9VoFkvElLG/0ysxhm7uM5v6e3cTQsk=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=Fse45F3vWNdAJLsEadkVA1T/wWi3/ns6uHEkoB7mMt8Bd+FA/0VZMrW4OKceauKNv
	3vS4GtZMDeSh8ob9yKW9I+fzmpar1ClF5d/9TJPImiAOkf1FLdDJ4JanYgzXQjm09Y
	1Go+Rp60WauoV4Y/jV7GR4aXTxuOIPBGi0IJHSES5U84EHvLhk/WXSmohFuaVxxIZc
	Zps8l5onMpUCkQtowdk6n0M0wxMeYyuBwC/5cOYJjddBainydVeUsUsjNvHlJz+m72
	TLA85gCntQfFnxxksowZ+HNgBAIz9MkCp96OssonnbWD5SWyToRq5108BMJf5i2fyu
	QrXchmtEFk3Rg==
Subject: Re: meta-toolchain-sd taylored for production image
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
X-List-Received-Date: Sat, 14 Sep 2019 15:59:27 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

I find it

bitbake image -c populate_sdk

Thanks all


Il 14/09/19 17:23, Mauro Ziliani ha scritto:
> Hi all.
>
> Reading the yocto manuales I remeber a command to build a taylored 
> sdk+toolchain for the final image
>
>
> That is:
>
> my image is mysystem-i586-image and a command I get the sdk to use for 
> develop applications on it
>
>
> Which is command?
>
>
> Best regards,
>
>    Mauro
>

