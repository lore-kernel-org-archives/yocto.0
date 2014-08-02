Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAE0FE006E7; Sat,  2 Aug 2014 08:35:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3223E004F1
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 08:35:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 778A427E05C;
	Sat,  2 Aug 2014 15:35:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 9rNAvY_wayEW; Sat,  2 Aug 2014 15:35:25 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9CC7D27E031;
	Sat,  2 Aug 2014 15:35:25 +0000 (UTC)
Message-ID: <53DD053A.9060902@dynamicdevices.co.uk>
Date: Sat, 02 Aug 2014 16:35:22 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?K=E9vin_THIERRY?= <kevin.thierry@open.eurogiciel.org>, 
	ronan <ronan.lemartret@open.eurogiciel.org>
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
In-Reply-To: <53DBC21B.7080209@dynamicdevices.co.uk>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, general@lists.tizen.org
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
X-List-Received-Date: Sat, 02 Aug 2014 15:35:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit


On 01/08/2014 17:36, Alex J Lennon wrote:
> On 01/08/2014 16:38, Alex J Lennon wrote:
>>> I don't know either but I think it's best to be compliant with both
>>> bash and dash, I will try to correct those issues in order to be
>>> dash-compliant. Thanks a lot for the feedback ;)
>> No problem Kévin. I'm glad you feel it is of some use. I'm getting other
>> recipes failing now with bash. What I'll probably do is let it run to
>> completion with bitbake -k and collate the failures.
>>
>> Hopefully that'll be some useful feedback in terms of a build on Ubuntu
>>
>> Cheers,
>>
>> Alex
>>
Kévin,

I made some progress with a USB installation of Yocto Tizen and a VirtualBox disk. 

Both a Samsung laptop running from USB and a VirtualBox machine boot, but after mounting the root filesystem they go extremely slowly.

They get to "failed to get machine ID" and then it's taking a minute or two before new output appears. Then screen goes black and I don't appear to get any further.

e.g. https://www.dropbox.com/sc/ckc84doykfnyvwp/AAAA7s_wocGh1PNUJ3tfIMBLa?n=17361870

Cheers,

Alex


