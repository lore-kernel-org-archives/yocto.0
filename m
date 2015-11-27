Return-Path: <benoit.rapidel+yocto@exmachina.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD85DE00C09; Fri, 27 Nov 2015 08:39:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from galat.willykaze.org (galat.willykaze.org [91.121.12.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3F49E007C3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 08:39:46 -0800 (PST)
Received: from [192.168.0.21] (vil69-h01-31-38-223-239.dsl.sta.abo.bbox.fr
	[31.38.223.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by galat.willykaze.org (Postfix) with ESMTPSA id 624C0707B0
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 17:39:44 +0100 (CET)
References: <5658862A.2040706@exmachina.fr>
To: yocto@yoctoproject.org
From: Benoit Rapidel <benoit.rapidel+yocto@exmachina.fr>
Organization: ExMachina
X-Forwarded-Message-Id: <5658862A.2040706@exmachina.fr>
Message-ID: <5658874D.6050408@exmachina.fr>
Date: Fri, 27 Nov 2015 17:39:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5658862A.2040706@exmachina.fr>
Subject: Re: Python3 and Numpy
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benoit.rapidel+yocto@exmachina.fr
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Nov 2015 16:39:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

I found one in meta. How do I update it ? I'm using poky jethro.
Should a create a new one named python3-numpy or the same recipe should handle both
python versions ?

B

@Alex, sorry for that, reposting in the mailing list.

Le 27/11/2015 16:19, Alexander Kanavin a écrit :
> On 11/27/2015 05:11 PM, Benoit Rapidel wrote:
>
>> I want to install NumPy with Python3 supporton a Beaglebone Black.
>> Unfortunately, I couldn't find any information or a recipe. Anyone has
>> ever tried, success, failed ?
>
> There is a recipe for numpy in oe-core, but it's not particularly up to date, and
> doesn't have python3 support. You are welcome to update it and send patches :)
>
> Alex
>

-- 
Benoit Rapidel

Co-founder & CTO at ExMachina



