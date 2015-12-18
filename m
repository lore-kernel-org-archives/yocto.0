Return-Path: <benoit.rapidel@exmachina.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F5D5E00C00; Fri, 18 Dec 2015 15:24:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from galat.willykaze.org (galat.willykaze.org [91.121.12.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D61CDE007C3
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 15:24:47 -0800 (PST)
Received: from [192.168.0.21] (vil69-h01-31-38-223-239.dsl.sta.abo.bbox.fr
	[31.38.223.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by galat.willykaze.org (Postfix) with ESMTPSA id 859B4707B0
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 00:24:46 +0100 (CET)
References: <5658862A.2040706@exmachina.fr> <5658874D.6050408@exmachina.fr>
	<56588799.9040008@linux.intel.com> <5658A2CA.7070703@exmachina.fr>
	<565B87B2.9070201@exmachina.fr>
To: yocto@yoctoproject.org
From: Benoit Rapidel <benoit.rapidel@exmachina.fr>
Message-ID: <567495BB.5080802@exmachina.fr>
Date: Sat, 19 Dec 2015 00:24:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <565B87B2.9070201@exmachina.fr>
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
X-List-Received-Date: Fri, 18 Dec 2015 23:24:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I'm still trying to get python3-numpy to compile. I have been inspecting log file for 
quite a while. One lead I got is that gcc have -L=/usr/lib in its arguments.
I diff log.do_compile from python3-numpy and log.do_compile from python-numpy.
I see no reference to /usr/lib in python-numpy log. How can I remove this -L=/usr/lib 
from arguments to try compiling without searching in this dir ?

Here is the recipe failing:

https://github.com/exmachina-dev/meta-exm-core/blob/master/recipes-python/python3-numpy/python3-numpy_1.10.1.bb

It's mainly taken from python-numpy_1.10.1.bb found in openembedded-core/meta. I 
renamed all refs of python to point to python3 and I fixed a bug. Config files 
couldn't be copied due to multiple paths after `grep src` (py and py3).

And here the full log from log.do_compile (-L=/usr/lib is found at L2143, L2193, 
L4335 and L4385):

http://sprunge.us/INYI?log

I also found that the setup.py tried to build Fortran code with /usr/bin/gfortran 
(from host). As python-numpy did not find gfortran, I temporarily uninstalled 
gfortran from host (L97 now don't find gfortran).

I'm really stuck with this recipe. Any help from you guys is much appreciated.

Many thanks,
B

Le 30/11/2015 00:18, Benoit Rapidel a écrit :
> Here the full log:
>
> http://sprunge.us/SYCO?log
>
> Le 27/11/2015 19:36, Benoit Rapidel a écrit :
>> Ok, thanks
>>
>> Numpy start to except ld can't find npymath and npysort. I checked with devshell,
>> there is libnpymath.a and libnpysort.a within build/temp.linux-x86_64-3.4, which is
>> used by ld to find libs. Do you have any clues ?
>>
>> I'm trying to compile numpy 1.9.2 with python3.
>>
>> Thanks in advance
>>
>> B
>>
>> Le 27/11/2015 17:40, Alexander Kanavin a écrit :
>>> On 11/27/2015 06:39 PM, Benoit Rapidel wrote:
>>>> I found one in meta. How do I update it ? I'm using poky jethro.
>>>> Should a create a new one named python3-numpy or the same recipe should
>>>> handle both
>>>> python versions ?
>>>
>>>  From what I can see, the standard approach is to create a separate recipe for
>>> python3.
>>>
>>> If you want to tweak, it's best to base your work on poky master.
>>>
>>> Alex
>>>
>>
>

-- 
Benoit Rapidel
Co-founder & CTO
ExMachina

benoit.rapidel@exmachina.fr
+33 (0)6 89 63 83 68

