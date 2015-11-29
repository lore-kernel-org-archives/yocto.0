Return-Path: <benoit.rapidel@exmachina.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17F19E00AB5; Sun, 29 Nov 2015 15:18:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from galat.willykaze.org (galat.willykaze.org [91.121.12.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C60ABE00A81
	for <yocto@yoctoproject.org>; Sun, 29 Nov 2015 15:18:16 -0800 (PST)
Received: from [192.168.0.21] (vil69-h01-31-38-223-239.dsl.sta.abo.bbox.fr
	[31.38.223.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by galat.willykaze.org (Postfix) with ESMTPSA id F2145707B0
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 00:18:14 +0100 (CET)
References: <5658862A.2040706@exmachina.fr> <5658874D.6050408@exmachina.fr>
	<56588799.9040008@linux.intel.com> <5658A2CA.7070703@exmachina.fr>
To: yocto@yoctoproject.org
From: Benoit Rapidel <benoit.rapidel@exmachina.fr>
Message-ID: <565B87B2.9070201@exmachina.fr>
Date: Mon, 30 Nov 2015 00:18:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5658A2CA.7070703@exmachina.fr>
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
X-List-Received-Date: Sun, 29 Nov 2015 23:18:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Here the full log:

http://sprunge.us/SYCO?log

Le 27/11/2015 19:36, Benoit Rapidel a écrit :
> Ok, thanks
>
> Numpy start to except ld can't find npymath and npysort. I checked with devshell,
> there is libnpymath.a and libnpysort.a within build/temp.linux-x86_64-3.4, which is
> used by ld to find libs. Do you have any clues ?
>
> I'm trying to compile numpy 1.9.2 with python3.
>
> Thanks in advance
>
> B
>
> Le 27/11/2015 17:40, Alexander Kanavin a écrit :
>> On 11/27/2015 06:39 PM, Benoit Rapidel wrote:
>>> I found one in meta. How do I update it ? I'm using poky jethro.
>>> Should a create a new one named python3-numpy or the same recipe should
>>> handle both
>>> python versions ?
>>
>>  From what I can see, the standard approach is to create a separate recipe for
>> python3.
>>
>> If you want to tweak, it's best to base your work on poky master.
>>
>> Alex
>>
>

-- 
Benoit Rapidel
Co-founder & CTO
ExMachina

benoit.rapidel@exmachina.fr
+33 (0)6 89 63 83 68

