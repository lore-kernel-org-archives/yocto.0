Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52318E0076A
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 13:35:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7HKZbQb000458
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Aug 2012 13:35:37 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 17 Aug 2012 13:35:37 -0700
Message-ID: <502EAB14.2070109@windriver.com>
Date: Fri, 17 Aug 2012 16:35:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Marc Ferland <ferlandm@sonatest.com>
References: <871uj51d87.fsf@sonatest.com>
In-Reply-To: <871uj51d87.fsf@sonatest.com>
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
X-List-Received-Date: Fri, 17 Aug 2012 20:35:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-17 04:21 PM, Marc Ferland wrote:
> Hi,
>
> I'm maintaining a BSP based on crownbay and I would like to change my
> current kernel recipe from a custom one to linux-yocto_3.2.bb.

I'm just heading out for the weekend, but I can pick this up in more
detail layer.

>
> Reading the kernel-yocto.bbclass, I see that it is possible to provide a
> list of patches and configuration fragments but also (not sure about
> that) to provide an "external branch".

In the denzil (3.2 kernel) that is the case, in the yocto 1.3 (3.4)
kernel, it isn't even called an external branch, since the tools
are more tolerant of a branch not being present at validation time.

>
> Since we maintain several private topic branches in-house this would be
> the perfect solution. I could "inherit" from crownbay (available on
> linux-yocto) and just merge my topic branches to produce the final
> kernel source tree.
>
> My question:
> Is this currently possible? If so, are there any examples available?

You can do this, but you do need to host your own kernel repository
that is based off linux-yocto. In that repository, you can have
your own branches, that are easily referenced from the recipes.

Is this what you are currently doing with your custom recipe ?

I'm stating the obvious, since if you want to clone a tree with your
branch .. there must be a tree somewhere with that branch :)

The yocto-bsp tools are using the external branches to manage new
BSPs that aren't already in linux-yocto.

There are other tricks that can be played where smaller, pruned git
trees are used, and they are cloned and have their alternates pointed
at the main kernel tree repository, gluing the two together. But there's
nothing within the current models that supports it directly (you need
reference clones, scripts, etc).

> Can these changes be kept in "recipe-space"?

Most everything that can be done in a tree, with branches and meta data
can also happen in recipe space. The yocto-bsp scripts are again a
good example of this.

>
> If not possible, am I stuck with managing patches?

If you don't have a kernel tree somewhere that you are fetching ..
perhaps.

Cheers,

Bruce

>
> Regards,
>
> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


