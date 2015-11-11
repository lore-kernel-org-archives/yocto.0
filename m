Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50255E00BFD; Wed, 11 Nov 2015 10:05:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E361E00BE8
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 10:05:28 -0800 (PST)
Received: by ioc74 with SMTP id 74so41128838ioc.2
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 10:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lc49AtCaDMipKTTtoPBv64wIgk6bsFG4y26FUkcTUDY=;
	b=cS9FuOTeqbwWiIt/PukJOMS4tQ3BfU2Ulr71p5F94UeFbuFaMWwDkIIfc73vDyJ+eL
	jH9C8YzIH9zQxtyKPvMtjYd/RPFmTvZJq9GTerZ80vyRqov7VlIbA6imyLkgIcIOHopx
	yAhm+bp4ub74+slZ/Vy0SyaaxuwfmzoAZUbbc4DdxqHDaoB5GlBDBgrK0vfpL742WlMZ
	qFDIm4L9D0JrWhIsNsp5nBwiDVC/bXWNcLlFdAej1h6JFZP6C3cCu+174S2QeuUsqJli
	ctgPXohxV9aliSP4ShHcgDvAQUwPtdnQV92//xJEajOjO2HBodb9KU3kAKlZFGB2M4mj
	w5OQ==
X-Received: by 10.107.9.152 with SMTP id 24mr10121151ioj.112.1447265128167;
	Wed, 11 Nov 2015 10:05:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Wed, 11 Nov 2015 10:04:58 -0800 (PST)
In-Reply-To: <CAOsp8o9QVw1n8AreJKq4TJPsyXXoeT6R_aWGC5GxZi4aJmUTjg@mail.gmail.com>
References: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
	<5642866B.8090501@linux.intel.com>
	<CAOsp8o9QVw1n8AreJKq4TJPsyXXoeT6R_aWGC5GxZi4aJmUTjg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Nov 2015 10:04:58 -0800
Message-ID: <CAMKF1sqaiATfPWqOgPHKBv-HRUVwkEiYmgA4U0ymb15gSpqnCA@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Transitioning to Yocto, some basic questions about workflow
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
X-List-Received-Date: Wed, 11 Nov 2015 18:05:31 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 11, 2015 at 7:36 AM, Michael Habibi <mikehabibi@gmail.com> wrote:
> Randy, I've had some time to think about your post and I had a follow up
> question. Let's say we had internal applications, you suggest that the
> fetcher can be used to pull down the git/svn repos that contains the
> internal application code. In this environment, where is the Yocto framework
> hosted? Is it also on a repo? Would then we have a Yocto repo for image
> building, and an application repo for application development? Is there a
> clean way of combining both Yocto and internal applications into a single
> repo, so our engineers simply have to do a 'git clone' and they'll have what
> they need to get started?

you will be better served if you prepare to deal with several git
repositories and use a sandboxing tool
like android repo or git submodules or may be shell scripts or
combo-layer tool. This can give you an easy way to clone your
project/workspace

There are a few ways you can go about your workflows it really depends
upon your internal team setup and nature of software you do

Lets say you have large teams of application software developers then
you might like to have a small platform/System-integration team
which is responsible for providing ADT to these teams and they can
work on applications independently. Meanwhile you can have this SI
team
to them help write and maintain recipes for these applications and
also maintain the platform builds which will include these
applications too
this way you can decouple the application development from platform
development and creation. ADT can hook into IDEs like eclipse and QT
Creator
if your dev community use these tools. You also dont have to train
large number of folks with OE/Yocto which for app developers could be
a time saver

Secondly, if you have large middleware and kernels and other parts of
platform that your developers touch then should be using the yocto
build env for full platform build, now there are addition productivity
tools like devtool which will help you develop a particular package
using internal SDKs under bitbake's control. Then you can use
recipetool to generate recipes for applications or bbappends and so
on. But its a new way of doing things so it will require training too.

see http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#dev-modifying-source-code
for more on devtool.


>
> Thanks, still trying to wrap my head around this a bit.
>
> On Tue, Nov 10, 2015 at 6:06 PM, Randy Witt <randy.e.witt@linux.intel.com>
> wrote:
>>
>> Hi Michael,
>>
>> See my replies below.
>>
>> On 11/10/2015 02:27 PM, Michael Habibi wrote:
>>
>>>
>>>
>>> This is fundamentally why I have been looking into Yocto/BB/OE as a
>>> potential replacement distribution. However, I have a couple questions
>>> stemming from my research. We can leverage the existing Yocto build for
>>> various open source utilities where it pulls from the web, patches,
>>> builds,
>>> and installs into the deployable image. We would probably want to
>>> colocate
>>> the tarballs locally, because we would like to prevent people from having
>>> to fetch from the web during build cycles.
>>>
>>
>> This is pretty common. You can set up SOURCE_MIRROR_URL, to specify local
>> mirrors to try before using the upstream url in the recipe. So each person
>> building would at least have to fetch from the local mirror for a build, but
>> subsequent builds wouldn't require fetching again as long as the DL_DIR was
>> preserved.
>>
>> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SOURCE_MIRROR_URL
>>
>> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-DL_DIR
>>
>>>
>>> I see that Yocto thinks of the deployable image and applications as
>>> separate entities: first you'd build the distribution, then you would use
>>> ADT/cross-toolchain/etc to build the applications and install them
>>> separately. However, in our environment, we would need all of our custom
>>> IP
>>> applications to be built as part of the deployable image, and not as a
>>> separate procdure. For example, if I were to call "bitbake our-image", I
>>> would like the deployable image to contain 1) the kernel, 2) various core
>>> utilities and libraries for booting, and 3) our custom applications for
>>> our
>>> device.
>>>
>>>
>>> This means that somewhere in the yocto framework, we'd ideally have some
>>> source code somewhere that would also be compiled via recipes/classes
>>> that
>>> we'd have to custom write. Is there a best practice for this kind of
>>> workflow? I don't mind not having source checked in to our VCS for things
>>> like the kernel, OpenSSL, etc (those can be tarballs obtained from a
>>> local
>>> server), but we likely wouldn't want to host tarballs for the
>>> applications
>>> we are writing and modifying day-to-day by dozens of engineers. Is there
>>> a
>>> place where this source would best fit? Would it be under build/tmp/etc,
>>> or
>>> perhaps we can locate the source under a layer directory, like
>>> meta/source/our-ip-applications?
>>>
>>
>> For all the internal applications at my previous employer we had a layer
>> for all internal items, it's quite common.
>>
>> And if you're not aware, source code is not restricted to tarballs. You
>> can use git repos, svn and any mechanism the fetcher supports.(even local
>> directories) The following URL lists the types the fetcher supports.
>>
>> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI
>>
>> The workflow now encouraged, is to use recipetool to assist in creating
>> recipes. And then once the recipes are created, you can use devtool to
>> actually do the iterative development on the application represented by the
>> recipe.
>>
>> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-devtool-in-your-workflow
>>
>>>
>>> Or perhaps this workflow is just not recommended or supported by the
>>> Yocto
>>> Project? If that's the case, does Yocto only recommend building the
>>> distribution then building the applications as completely separate
>>> workflows? Or is there another workflow that I haven't stumbled across
>>> yet?
>>>
>>
>> There is nothing "wrong" with building the image each time as a developer.
>> However, it is time consuming to construct the full image and deploy it.
>>
>> A much more appealing mechanism would be to use devtool to build the
>> recipe you are working on, and then use "devtool deploy-target" to then
>> deploy the output to a live machine. This would require a writeable
>> filesystem on the target device, but if that is available, the workflow and
>> turnaround time is much faster.
>>
>>
>>>
>>> Thanks again for all your help, and let me know if I can help clarify
>>> anything,
>>>
>>>
>>> Michael
>>>
>>>
>>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

