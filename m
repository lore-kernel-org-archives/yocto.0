Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68E5FE00C81; Mon,  5 Aug 2019 01:30:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A2FE00BA1
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2019 01:30:34 -0700 (PDT)
Received: from [10.8.0.6] ([93.55.114.230])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id lLWY2000N4yKGvx01LWYWK; Mon, 05 Aug 2019 10:30:33 +0200
To: Khem Raj <raj.khem@gmail.com>
References: <77db42fc-d21e-9819-ee95-5962ecde7956@faresoftware.it>
	<CAMKF1sreZX2THLrHqhU6jsEG7xmPZKA2tyEOrGUMWc02ubFoEQ@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <00164c14-4781-6fbb-d92f-0a9c08e5ea06@faresoftware.it>
Date: Mon, 5 Aug 2019 10:30:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sreZX2THLrHqhU6jsEG7xmPZKA2tyEOrGUMWc02ubFoEQ@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1564993833; bh=qkLLZcF0iIalMJ9Q5z5wqyDDFaR7IO2AznxB1e+cYNs=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=GB1+bmzlDx39G8XOwzDZO86D7kECIWmlDO2ytMMSgTmXiL9jCZAukFm/uPPkaYyFz
	mfvmeTmJgWN2xjGk70l3+91i/CiwnSb4UmyA8LCau5t3iJSO4Dc8PH7Ln1y9E3qvrp
	tNMO8Iqn4kiAOj/eVd/yKdMt91VZ1i8X8av02gj3J1yA5bP46+/xhKBqOOytxsFtE+
	BSjvAgT6M8AfIofZIkDjxca5Gc5aNRuHVYNQvG9sBzBTWLTDV9jZo9W4LuadXXYTjl
	TPYu5sJtb9A86gvCfBrKG4x46cw06saWCbzc2CMP+TyOHNUcDpYMAcX3nAQYaM+sIh
	Xt8BdP5Ngz+sw==
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: installed-vs-shipped
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
X-List-Received-Date: Mon, 05 Aug 2019 08:30:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Thanks.

My final purpore is install the application into its own home folder: 
/home/terminal

So I have to write

FILES_${PN} += " /home/terminal "


I think that, due to Makefile install: rules which install in 
/usr/local, Yocto can track this has "home folder" for the application


Thansk again

  MZ

Il 02/08/2019 22:05, Khem Raj ha scritto:
> Add
>
> FILES_${PN} += "/usr/local/bin"
>
> in recipe. but it would be nicer if it was installed into /usr/bin by
> qmake/make files itself
>
> On Fri, Aug 2, 2019 at 11:59 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Hi all.
>>
>> This is my problem.
>>
>> I have my terminal.pro project (qmake5) with target "terminal".
>>
>> The default destination folder for the binary is /usr/local/bin
>>
>> With this setup I get installed-vs-shipped error.
>>
>>
>> Why?
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

