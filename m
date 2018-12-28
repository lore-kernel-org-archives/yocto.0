Return-Path: <zhangzl2013@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D988E00CE4; Fri, 28 Dec 2018 07:23:38 -0800 (PST)
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
X-Greylist: delayed 362 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Dec 2018 07:23:36 PST
Received: from m50-110.126.com (m50-110.126.com [123.125.50.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21700E00C4D
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 07:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=qdjzV
	uY91AXUMx9CklWvn/9IRyyDsAsxWCmdB+l0dvc=; b=P2lj6/fhfi/II+PHrkoQf
	47gF8/uKaf8KqqS7nKToq7OD2aWnL6DyKKsdbpcMq1a+2Tvb3P8P0dy4O2JVa3F+
	Wms6aCFqOglQbKF7/weCFX6JLO3gFtH3k2fc+GGpnYdU26koGUpC1VlqoNldm+Km
	YUHHiYPlex/WYklaK+hdCs=
Received: from [10.79.102.236] (unknown [64.104.125.230])
	by smtp4 (Coremail) with SMTP id jdKowAAXXanpPyZcU+rgAA--.278S2;
	Fri, 28 Dec 2018 23:23:27 +0800 (CST)
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com,
	yocto@yoctoproject.org
References: <f7a564.7f88.167f453d16d.Coremail.zhangzl2013@126.com>
	<b21e8888f599e9340e91b6a22e0e0c554748ef44.camel@linuxfoundation.org>
	<8bebf6da-acf1-8f89-d74b-82a1ca0905f7@126.com>
	<586c764b6d259147f2048d3c22038c1a00defc79.camel@linuxfoundation.org>
From: Zhaolong Zhang <zhangzl2013@126.com>
Message-ID: <90142dd9-9276-34c4-12c8-e1d47e91424d@126.com>
Date: Fri, 28 Dec 2018 23:23:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <586c764b6d259147f2048d3c22038c1a00defc79.camel@linuxfoundation.org>
X-CM-TRANSID: jdKowAAXXanpPyZcU+rgAA--.278S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zw18AF17GF13KFW8GFy8Zrb_yoW8Xw4fpa
	93JFyFkFWkXr13Aw4v9ry8Gwn8Kw1xXF4agr90gry2ywn0vr13tr48K34FkFW7Ww1xtFyj
	qF48Wa4xXF4qyaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jBT5dUUUUU=
X-Originating-IP: [64.104.125.230]
X-CM-SenderInfo: x2kd0wt2osiiat6rjloofrz/1tbikhArz1pD7YPzPAAAse
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
X-List-Received-Date: Fri, 28 Dec 2018 15:23:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018/12/28 23:01, richard.purdie@linuxfoundation.org wrote:
> On Fri, 2018-12-28 at 22:35 +0800, Zhaolong Zhang wrote:
>> On 2018/12/28 19:40, richard.purdie@linuxfoundation.org wrote:
>>> On Fri, 2018-12-28 at 18:19 +0800, Zhaolong Zhang wrote:
>>>> Hi Experts,
>>>>
>>>> Building out-of-tree kernel modules in eSDK will trigger a new
>>>> rebuilding of kernel, which consumes lots of time.
>>>> Is it possible to cache the do_shared_workdir() task in sstate-
>>>> cache
>>>> and ship it within eSDK? And how?
>>>>
>>>> Or is there other method to accelerate?
>>>>
>>>> Thanks in advance.
>>>
>>> It is possible but it means creating a tarball of all the kernel
>>> source
>>> and build artefacts. Usually its just as quick to extract new
>>> kernel
>>> source and build it than it is to store this and extract it. The
>>> sstate
>>> object would be huge.
>>>
>>
>> Hi Richard,
>>
>> Thanks for responding!
>>
>> Isn't sstate object also a tarball for them? Creating another
>> tarball
>> would be a hacking and how can I let module.bbclass know that the
>> kernel
>> source and build artifact are ready, without sstate hashes?
> 
> My point is that using sstate for this will be slow and mean there is a
> very large sstate object. The performance benefits aren't very clear.
> We used to create an sstate object but it got a lot of complaints about
> speed/performance.

Understood. I'd like to have a try, but don't know how. In the git 
history, I can only find that do_shared_workdir_setscene was 
deliberately disabled.

Regards,
Zhaolong


> 
> Cheers,
> 
> Richard
> 


