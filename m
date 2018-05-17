Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F29CAE007DA; Thu, 17 May 2018 06:20:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.56 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd0756.aruba.it (smtpcmd0756.aruba.it [62.149.156.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C92E007DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 06:20:37 -0700 (PDT)
Received: from [10.0.3.130] ([78.6.3.122])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id nRLb1x0122dwwGE01RLbqD; Thu, 17 May 2018 15:20:36 +0200
To: Mirza Krak <mirza@mkrak.org>
References: <d8bc33da-e352-7408-c5ab-2c175529f90d@faresoftware.it>
	<CALw8SCXUh3bUVc-+uno4i5yv-y7eqQ4niPVmwfm3x4HP4ZJiMA@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <afc99e53-ae05-570d-cb51-cfc9a99f78fc@faresoftware.it>
Date: Thu, 17 May 2018 15:20:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CALw8SCXUh3bUVc-+uno4i5yv-y7eqQ4niPVmwfm3x4HP4ZJiMA@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526563236; bh=+ytyBiJgkLC90u2fs1hHCnI64LMO8Md0YLsJpMIfMrY=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=IPdnnuOijH5Xgdc+QIUA3KOeiembpNslhiMf6gsrlXLyycABUjlAp1WUSw3GCp/g1
	ds61VP9x2m8QIPzG5wmWXS4UboE5dWgy1yXLiM4YsJphdovbwhb0JTdg925NfjTbs1
	KCXEFPO+mt85Pe+551bXH9tfVH/eAxUkuBjjO808q7pB1ZbJJcXdNBixoBX/bab9Wu
	ZEyWb72+u3tMLkWpQKENDqUuwpMPkz/BW/x7uW57xJeHNnwbhymcK04OJ8l3UtsWh8
	c+azxEkctvyc1E/g8tK6qyLZ54P1tn8GOITLw0QMQzUWFaRQSiAZSs2D9eofUAzpBc
	dc9BuogLV+tjw==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Configuration network from qt5
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
X-List-Received-Date: Thu, 17 May 2018 13:20:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Thanks for the answer.

I start with connman because in meta-qt5 there the recipe for it.

I keep on with connman.


MZ


Il 17/05/2018 15:00, Mirza Krak ha scritto:
> On 17 May 2018 at 14:18, Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Hi all.
>>
>> Which the betst choice to perform the network configuration in Yocto Krogoth
>> from a qt5 application?
>>
>> The configuration should be made without external script, using dbus.
> Well you probably need to use a network manager that you can control
> trough D-Bus. NetworkManager, ConnMan, systemd-networkd etc.
>
> If you are using ConnMan you can use this:
> https://git.merproject.org/mer-core/libconnman-qt
>
> There might exist similar libraries for other network managers but I
> am not aware of any.
>


