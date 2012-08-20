Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF9FEE01304
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 21:30:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7K4UAQq005403
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 19 Aug 2012 21:30:10 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.85) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sun, 19 Aug 2012 21:30:10 -0700
Message-ID: <5031BD51.30104@windriver.com>
Date: Mon, 20 Aug 2012 00:30:09 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Marc Ferland <ferlandm@sonatest.com>
References: <871uj51d87.fsf@sonatest.com> <502EAB14.2070109@windriver.com>
	<87lihdtd8w.fsf@sonatest.com>
In-Reply-To: <87lihdtd8w.fsf@sonatest.com>
Cc: yocto@yoctoproject.org
Subject: Re: linux-yocto and private topic branches
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Aug 2012 04:30:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-17 5:33 PM, Marc Ferland wrote:
> Bruce Ashfield<bruce.ashfield@windriver.com>  writes:
>
>> On 12-08-17 04:21 PM, Marc Ferland wrote:
>>> Hi,
>>>
>>> I'm maintaining a BSP based on crownbay and I would like to change my
>>> current kernel recipe from a custom one to linux-yocto_3.2.bb.
>>
>> I'm just heading out for the weekend, but I can pick this up in more
>> detail layer.
>
> That would be great!
>>>
>>> Reading the kernel-yocto.bbclass, I see that it is possible to provide a
>>> list of patches and configuration fragments but also (not sure about
>>> that) to provide an "external branch".
>>
>> In the denzil (3.2 kernel) that is the case, in the yocto 1.3 (3.4)
>> kernel, it isn't even called an external branch, since the tools
>> are more tolerant of a branch not being present at validation time.
>
> BTW, I am using denzil.
>>
>>>
>>> Since we maintain several private topic branches in-house this would be
>>> the perfect solution. I could "inherit" from crownbay (available on
>>> linux-yocto) and just merge my topic branches to produce the final
>>> kernel source tree.
>>>
>>> My question:
>>> Is this currently possible? If so, are there any examples available?
>>
>> You can do this, but you do need to host your own kernel repository
>> that is based off linux-yocto. In that repository, you can have
>> your own branches, that are easily referenced from the recipes.
>>
>> Is this what you are currently doing with your custom recipe ?
>
> We indeed host our own kernel repo but it is based off kernel.org. The
> recipe just defines the SRC_URI of that repo along with a defconfig.

... and some patches carried out of tree ?

>
> So first step for us is to rebase our stuff on linux-yocto!

I assumed the patches existing, since you mentioned rebasing something :)

>>
>> I'm stating the obvious, since if you want to clone a tree with your
>> branch .. there must be a tree somewhere with that branch :)
>>
>> The yocto-bsp tools are using the external branches to manage new
>> BSPs that aren't already in linux-yocto.
>>
>> There are other tricks that can be played where smaller, pruned git
>> trees are used, and they are cloned and have their alternates pointed
>> at the main kernel tree repository, gluing the two together. But there's
>> nothing within the current models that supports it directly (you need
>> reference clones, scripts, etc).
>>
>>> Can these changes be kept in "recipe-space"?
>>
>> Most everything that can be done in a tree, with branches and meta data
>> can also happen in recipe space. The yocto-bsp scripts are again a
>> good example of this.
>
> Ok. I'll definitively have a look at these yocto-bsp scripts. Keeping
> everything in recipe space will be easier since all changes will be
> concentrated in one place.

Depending on the scale of your patches, how you need to share/reuse them,
then keeping them in recipe space is a good starting point. If you scale
up to multiple BSPs, with conflicting features, fragments, etc, etc, then
going with a repository based on linux-yocto (or some other base) is
the next thing to look at.

Cheers,

Bruce

>
> Thanks for all the info!
>
> Marc


