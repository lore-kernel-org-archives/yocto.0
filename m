Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C7A5E006E7; Sat,  2 Aug 2014 13:04:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4502E004F1
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 13:04:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 84A6227E05C;
	Sat,  2 Aug 2014 20:04:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id dHlgGAQ__5yW; Sat,  2 Aug 2014 20:04:35 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 62C3A27E031;
	Sat,  2 Aug 2014 20:04:35 +0000 (UTC)
Message-ID: <53DD4452.201@dynamicdevices.co.uk>
Date: Sat, 02 Aug 2014 21:04:34 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
	<53DBA665.7080002@open.eurogiciel.org>
	<53DBB20B.8020307@dynamicdevices.co.uk>
	<53DBB576.2000905@open.eurogiciel.org>
	<53DBB48B.2050907@dynamicdevices.co.uk>
	<53DBC21B.7080209@dynamicdevices.co.uk>
	<53DD053A.9060902@dynamicdevices.co.uk>
	<CAMKF1srknDf_VTV=Xd7sQnohmuXN1S1Zh_21-R6w2HH1VAn6-A@mail.gmail.com>
In-Reply-To: <CAMKF1srknDf_VTV=Xd7sQnohmuXN1S1Zh_21-R6w2HH1VAn6-A@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: general@lists.tizen.org, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Sat, 02 Aug 2014 20:04:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 02/08/2014 20:52, Khem Raj wrote:
> On Sat, Aug 2, 2014 at 8:35 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> I made some progress with a USB installation of Yocto Tizen and a VirtualBox disk.
>>
>> Both a Samsung laptop running from USB and a VirtualBox machine boot, but after mounting the root filesystem they go extremely slowly.
> its a 'sony' laptop per picture :)

Hah. Well spotted! I am glad to see somebody is paying attention Khem ! :-D

>
>> They get to "failed to get machine ID" and then it's taking a minute or two before new output appears. Then screen goes black and I don't appear to get any further.
>
> do you have /etc/machine-id file in rootfs ?
>
>

No there's no /etc/machine-id on the USB stick...

(NB. I did try generating a video to show the behaviour but VirtualBox
video capture isn't playing ball. It doesn't stop completely at the
machine-id error message. It seems to continue further and I get more
messages. Just very very slowly)

Regards,

Alex


