Return-Path: <zhangzl2013@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6168E00CEE; Fri, 28 Dec 2018 07:48:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zhangzl2013[at]126.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from m50-110.126.com (m50-110.126.com [123.125.50.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF9EE00C91
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 07:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=VFP9V
	L3bMVNjHCByav1UV3l4Oblz7pCcqq5TwAb7Gms=; b=mo+mYCIQV5/+7ujrFPo0P
	wvAZSU39LKqxnp5nuow7tVJPPlr8kntylmxI+/0kTwzZ764uaW6eI6hzD/BVjemT
	gbGsWK4mZPNcZwwIifeXdgmqDeU1ePSE6w8qQQolSSKPd+Fvc9VUDZW6YPicdi5j
	+D32KRSy5vqEhDnxJyTx/4=
Received: from [10.79.102.236] (unknown [64.104.125.230])
	by smtp4 (Coremail) with SMTP id jdKowAB3Gq1OPiZc3n3gAA--.299S2;
	Fri, 28 Dec 2018 23:16:33 +0800 (CST)
From: Zhaolong Zhang <zhangzl2013@126.com>
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
References: <f7a564.7f88.167f453d16d.Coremail.zhangzl2013@126.com>
	<b21e8888f599e9340e91b6a22e0e0c554748ef44.camel@linuxfoundation.org>
	<8bebf6da-acf1-8f89-d74b-82a1ca0905f7@126.com>
Message-ID: <e6ea38cc-211e-3de8-965a-383ad715901b@126.com>
Date: Fri, 28 Dec 2018 23:16:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <8bebf6da-acf1-8f89-d74b-82a1ca0905f7@126.com>
X-CM-TRANSID: jdKowAB3Gq1OPiZc3n3gAA--.299S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZrW8Ww15Kry8KryxArW5Wrg_yoW8Wr47pa
	93Ja4rJFWkXw1xAwsruFy8Cwn0kw18Ja13Kr98WrW3Awn0vr1fJ3WIk34FkFnFg34xtF1j
	vF15uas7GF4qvaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jL4SOUUUUU=
X-Originating-IP: [64.104.125.230]
X-CM-SenderInfo: x2kd0wt2osiiat6rjloofrz/1tbitQorz1pD8B7GwwAAsp
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: Re: Accelerate kernel module built in eSDK?
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
X-List-Received-Date: Fri, 28 Dec 2018 15:48:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018/12/28 22:35, Zhaolong Zhang wrote:
> On 2018/12/28 19:40, richard.purdie@linuxfoundation.org wrote:
>> On Fri, 2018-12-28 at 18:19 +0800, Zhaolong Zhang wrote:
>>> Hi Experts,
>>>
>>> Building out-of-tree kernel modules in eSDK will trigger a new
>>> rebuilding of kernel, which consumes lots of time.
>>> Is it possible to cache the do_shared_workdir() task in sstate-cache
>>> and ship it within eSDK? And how?
>>>
>>> Or is there other method to accelerate?
>>>
>>> Thanks in advance.
>>
>> It is possible but it means creating a tarball of all the kernel source
>> and build artefacts. Usually its just as quick to extract new kernel
>> source and build it than it is to store this and extract it. The sstate
>> object would be huge.
>>
> 
> Hi Richard,
> 
> Thanks for responding!
> 
> Isn't sstate object also a tarball for them? Creating another tarball 
> would be a hacking and how can I let module.bbclass know that the kernel 
> source and build artifact are ready, without sstate hashes?
> 

Hi Richard,

I'm afraid I misunderstood your words. You didn't mean to create another 
tarball. Embarrassing ...

Storing is on the build host side and extracting is on the eSDK side, 
and extracting would be quick. I think it worth to do for me.

I've tried to add do_shared_workdir to SSTATETASKS and enabled 
do_shared_workdir_setscene(), also added ${STAGING_KERNEL_DIR} and 
${STAGING_KERNEL_BUILDDIR} as sstate-plaindirs. But it looks like 
sstate-plaindirs is not proper for kernel recipe. What should I do?

Thanks,
Zhaolong

> Regards,
> Zhaolong
> 
>> Cheers,
>>
>> Richard
>>


