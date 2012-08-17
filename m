Return-Path: <marc.ferland@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A0AAE0076A
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 14:33:32 -0700 (PDT)
Received: by ggke5 with SMTP id e5so5539423ggk.35
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 14:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=IK+5Tpf1B3IlTYw+McaEKBA6605gzjxS+dtylCT6rYA=;
	b=jonZ4hSV6o7DThPu1vhwYPup/eOeCMVO5TCIZBPEFmj/2fn0VQfN0eHeCvRIuUJZHs
	HONw0CGB5UKkbIUPZMtSu4tJNMg7MPvSxy23m3v3VAPVBo79kQ9vSgWquM4StDKaROtV
	8EmeFeYTyvV/FqkyXW4k95cn1LlWO8SXkKZa1OOJXCktU7CKLa3WMf/ehKqRvWz7BM3T
	xTaWLuGzwBVVgrN4g0QrH/cF7KVK4YNwwCAjFglsZEVkRpNsHHzEesOPCzRZ0byoZuvB
	YP9KpQFylV3namSIvpxFMJHhOjAAMcF0nhAeT0Z+/TBXsUqr5X8Yv1dyTaP7P2OmNQFW
	vy6w==
Received: by 10.50.180.129 with SMTP id do1mr3324942igc.28.1345239210880;
	Fri, 17 Aug 2012 14:33:30 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id bo7sm11197347igb.2.2012.08.17.14.33.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 17 Aug 2012 14:33:29 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Fri, 17 Aug 2012 17:33:35 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <871uj51d87.fsf@sonatest.com> <502EAB14.2070109@windriver.com>
Date: Fri, 17 Aug 2012 17:33:35 -0400
In-Reply-To: <502EAB14.2070109@windriver.com> (Bruce Ashfield's message of
	"Fri, 17 Aug 2012 16:35:32 -0400")
Message-ID: <87lihdtd8w.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 17 Aug 2012 21:33:32 -0000
Content-Type: text/plain

Bruce Ashfield <bruce.ashfield@windriver.com> writes:

> On 12-08-17 04:21 PM, Marc Ferland wrote:
>> Hi,
>>
>> I'm maintaining a BSP based on crownbay and I would like to change my
>> current kernel recipe from a custom one to linux-yocto_3.2.bb.
>
> I'm just heading out for the weekend, but I can pick this up in more
> detail layer.

That would be great!
>>
>> Reading the kernel-yocto.bbclass, I see that it is possible to provide a
>> list of patches and configuration fragments but also (not sure about
>> that) to provide an "external branch".
>
> In the denzil (3.2 kernel) that is the case, in the yocto 1.3 (3.4)
> kernel, it isn't even called an external branch, since the tools
> are more tolerant of a branch not being present at validation time.

BTW, I am using denzil.
>
>>
>> Since we maintain several private topic branches in-house this would be
>> the perfect solution. I could "inherit" from crownbay (available on
>> linux-yocto) and just merge my topic branches to produce the final
>> kernel source tree.
>>
>> My question:
>> Is this currently possible? If so, are there any examples available?
>
> You can do this, but you do need to host your own kernel repository
> that is based off linux-yocto. In that repository, you can have
> your own branches, that are easily referenced from the recipes.
>
> Is this what you are currently doing with your custom recipe ?

We indeed host our own kernel repo but it is based off kernel.org. The
recipe just defines the SRC_URI of that repo along with a defconfig.

So first step for us is to rebase our stuff on linux-yocto!
>
> I'm stating the obvious, since if you want to clone a tree with your
> branch .. there must be a tree somewhere with that branch :)
>
> The yocto-bsp tools are using the external branches to manage new
> BSPs that aren't already in linux-yocto.
>
> There are other tricks that can be played where smaller, pruned git
> trees are used, and they are cloned and have their alternates pointed
> at the main kernel tree repository, gluing the two together. But there's
> nothing within the current models that supports it directly (you need
> reference clones, scripts, etc).
>
>> Can these changes be kept in "recipe-space"?
>
> Most everything that can be done in a tree, with branches and meta data
> can also happen in recipe space. The yocto-bsp scripts are again a
> good example of this.

Ok. I'll definitively have a look at these yocto-bsp scripts. Keeping
everything in recipe space will be easier since all changes will be
concentrated in one place.

Thanks for all the info!

Marc

