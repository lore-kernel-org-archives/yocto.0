Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 359BBE00B3D; Wed, 11 Nov 2015 07:36:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6ED7E0076A
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 07:36:01 -0800 (PST)
Received: by lfs39 with SMTP id 39so18176057lfs.3
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 07:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7FAZKJmnThKB/lB3h5S8kEJGzuSVOtoryt/RcFGtrsI=;
	b=CVVoHnovGlWE6dG2j+Vz5ZKNumY8mHZV3Xag6zY+fb3FaZeA5WA02HqabPkYfwSMaf
	o9ifQKGzXSFW/oa4tMnhsLtf5qzZ+XP2p46wUXVwopF/SgtER0QaORk+Mf0LUl6jVxDQ
	yO8mhDDFPEhf1FDPeolj7vLATW5Dcsv3FAnteYgQycLqokLecCYxGMh1qCXJLHDhf1DZ
	K4LVmzSOBFaNOt7QRWrS4laC97TBXWkZWnEMvFjyc5wVv7hr1tB5ZhGEDmL+gqgT8pMT
	G5q4KKQ47s7Ybp3vsAEgFU5s4G13oiB20QPfVzeladSoIa3juhpuIxYgV1wHu2DftguJ
	2jLg==
MIME-Version: 1.0
X-Received: by 10.25.151.199 with SMTP id z190mr4793351lfd.122.1447256160897; 
	Wed, 11 Nov 2015 07:36:00 -0800 (PST)
Received: by 10.114.11.170 with HTTP; Wed, 11 Nov 2015 07:36:00 -0800 (PST)
In-Reply-To: <5642866B.8090501@linux.intel.com>
References: <CAOsp8o8rHuiaWjOKWSbW+a5kVX1kegKpfiVto4VtK3V99ZY=mA@mail.gmail.com>
	<5642866B.8090501@linux.intel.com>
Date: Wed, 11 Nov 2015 09:36:00 -0600
Message-ID: <CAOsp8o9QVw1n8AreJKq4TJPsyXXoeT6R_aWGC5GxZi4aJmUTjg@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Randy Witt <randy.e.witt@linux.intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 11 Nov 2015 15:36:07 -0000
Content-Type: multipart/alternative; boundary=001a1140376a5e986b05244595aa

--001a1140376a5e986b05244595aa
Content-Type: text/plain; charset=UTF-8

Randy, I've had some time to think about your post and I had a follow up
question. Let's say we had internal applications, you suggest that the
fetcher can be used to pull down the git/svn repos that contains the
internal application code. In this environment, where is the Yocto
framework hosted? Is it also on a repo? Would then we have a Yocto repo for
image building, and an application repo for application development? Is
there a clean way of combining both Yocto and internal applications into a
single repo, so our engineers simply have to do a 'git clone' and they'll
have what they need to get started?

Thanks, still trying to wrap my head around this a bit.

On Tue, Nov 10, 2015 at 6:06 PM, Randy Witt <randy.e.witt@linux.intel.com>
wrote:

> Hi Michael,
>
> See my replies below.
>
> On 11/10/2015 02:27 PM, Michael Habibi wrote:
>
>
>>
>> This is fundamentally why I have been looking into Yocto/BB/OE as a
>> potential replacement distribution. However, I have a couple questions
>> stemming from my research. We can leverage the existing Yocto build for
>> various open source utilities where it pulls from the web, patches,
>> builds,
>> and installs into the deployable image. We would probably want to colocate
>> the tarballs locally, because we would like to prevent people from having
>> to fetch from the web during build cycles.
>>
>>
> This is pretty common. You can set up SOURCE_MIRROR_URL, to specify local
> mirrors to try before using the upstream url in the recipe. So each person
> building would at least have to fetch from the local mirror for a build,
> but subsequent builds wouldn't require fetching again as long as the DL_DIR
> was preserved.
>
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SOURCE_MIRROR_URL
>
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-DL_DIR
>
>
>> I see that Yocto thinks of the deployable image and applications as
>> separate entities: first you'd build the distribution, then you would use
>> ADT/cross-toolchain/etc to build the applications and install them
>> separately. However, in our environment, we would need all of our custom
>> IP
>> applications to be built as part of the deployable image, and not as a
>> separate procdure. For example, if I were to call "bitbake our-image", I
>> would like the deployable image to contain 1) the kernel, 2) various core
>> utilities and libraries for booting, and 3) our custom applications for
>> our
>> device.
>>
>>
>> This means that somewhere in the yocto framework, we'd ideally have some
>> source code somewhere that would also be compiled via recipes/classes that
>> we'd have to custom write. Is there a best practice for this kind of
>> workflow? I don't mind not having source checked in to our VCS for things
>> like the kernel, OpenSSL, etc (those can be tarballs obtained from a local
>> server), but we likely wouldn't want to host tarballs for the applications
>> we are writing and modifying day-to-day by dozens of engineers. Is there a
>> place where this source would best fit? Would it be under build/tmp/etc,
>> or
>> perhaps we can locate the source under a layer directory, like
>> meta/source/our-ip-applications?
>>
>>
> For all the internal applications at my previous employer we had a layer
> for all internal items, it's quite common.
>
> And if you're not aware, source code is not restricted to tarballs. You
> can use git repos, svn and any mechanism the fetcher supports.(even local
> directories) The following URL lists the types the fetcher supports.
>
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI
>
> The workflow now encouraged, is to use recipetool to assist in creating
> recipes. And then once the recipes are created, you can use devtool to
> actually do the iterative development on the application represented by the
> recipe.
>
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-devtool-in-your-workflow
>
>
>> Or perhaps this workflow is just not recommended or supported by the Yocto
>> Project? If that's the case, does Yocto only recommend building the
>> distribution then building the applications as completely separate
>> workflows? Or is there another workflow that I haven't stumbled across
>> yet?
>>
>>
> There is nothing "wrong" with building the image each time as a developer.
> However, it is time consuming to construct the full image and deploy it.
>
> A much more appealing mechanism would be to use devtool to build the
> recipe you are working on, and then use "devtool deploy-target" to then
> deploy the output to a live machine. This would require a writeable
> filesystem on the target device, but if that is available, the workflow and
> turnaround time is much faster.
>
>
>
>> Thanks again for all your help, and let me know if I can help clarify
>> anything,
>>
>>
>> Michael
>>
>>
>>
>>
>

--001a1140376a5e986b05244595aa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Randy, I&#39;ve had some time to think about your post and=
 I had a follow up question. Let&#39;s say we had internal applications, yo=
u suggest that the fetcher can be used to pull down the git/svn repos that =
contains the internal application code. In this environment, where is the Y=
octo framework hosted? Is it also on a repo? Would then we have a Yocto rep=
o for image building, and an application repo for application development? =
Is there a clean way of combining both Yocto and internal applications into=
 a single repo, so our engineers simply have to do a &#39;git clone&#39; an=
d they&#39;ll have what they need to get started?<div><br></div><div>Thanks=
, still trying to wrap my head around this a bit.</div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Tue, Nov 10, 2015 at 6:06 PM=
, Randy Witt <span dir=3D"ltr">&lt;<a href=3D"mailto:randy.e.witt@linux.int=
el.com" target=3D"_blank">randy.e.witt@linux.intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hi Michael,<br>
<br>
See my replies below.<span class=3D""><br>
<br>
On 11/10/2015 02:27 PM, Michael Habibi wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
This is fundamentally why I have been looking into Yocto/BB/OE as a<br>
potential replacement distribution. However, I have a couple questions<br>
stemming from my research. We can leverage the existing Yocto build for<br>
various open source utilities where it pulls from the web, patches, builds,=
<br>
and installs into the deployable image. We would probably want to colocate<=
br>
the tarballs locally, because we would like to prevent people from having<b=
r>
to fetch from the web during build cycles.<br>
<br>
</blockquote>
<br></span>
This is pretty common. You can set up SOURCE_MIRROR_URL, to specify local m=
irrors to try before using the upstream url in the recipe. So each person b=
uilding would at least have to fetch from the local mirror for a build, but=
 subsequent builds wouldn&#39;t require fetching again as long as the DL_DI=
R was preserved.<br>
<a href=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-SOURCE_MIRROR_URL" rel=3D"noreferrer" target=3D"_blank">https://ww=
w.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SOURCE_MIRRO=
R_URL</a><br>
<a href=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-DL_DIR" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproj=
ect.org/docs/current/ref-manual/ref-manual.html#var-DL_DIR</a><span class=
=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
I see that Yocto thinks of the deployable image and applications as<br>
separate entities: first you&#39;d build the distribution, then you would u=
se<br>
ADT/cross-toolchain/etc to build the applications and install them<br>
separately. However, in our environment, we would need all of our custom IP=
<br>
applications to be built as part of the deployable image, and not as a<br>
separate procdure. For example, if I were to call &quot;bitbake our-image&q=
uot;, I<br>
would like the deployable image to contain 1) the kernel, 2) various core<b=
r>
utilities and libraries for booting, and 3) our custom applications for our=
<br>
device.<br>
<br>
<br>
This means that somewhere in the yocto framework, we&#39;d ideally have som=
e<br>
source code somewhere that would also be compiled via recipes/classes that<=
br>
we&#39;d have to custom write. Is there a best practice for this kind of<br=
>
workflow? I don&#39;t mind not having source checked in to our VCS for thin=
gs<br>
like the kernel, OpenSSL, etc (those can be tarballs obtained from a local<=
br>
server), but we likely wouldn&#39;t want to host tarballs for the applicati=
ons<br>
we are writing and modifying day-to-day by dozens of engineers. Is there a<=
br>
place where this source would best fit? Would it be under build/tmp/etc, or=
<br>
perhaps we can locate the source under a layer directory, like<br>
meta/source/our-ip-applications?<br>
<br>
</blockquote>
<br></span>
For all the internal applications at my previous employer we had a layer fo=
r all internal items, it&#39;s quite common.<br>
<br>
And if you&#39;re not aware, source code is not restricted to tarballs. You=
 can use git repos, svn and any mechanism the fetcher supports.(even local =
directories) The following URL lists the types the fetcher supports.<br>
<a href=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-SRC_URI" rel=3D"noreferrer" target=3D"_blank">https://www.yoctopro=
ject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI</a><br>
<br>
The workflow now encouraged, is to use recipetool to assist in creating rec=
ipes. And then once the recipes are created, you can use devtool to actuall=
y do the iterative development on the application represented by the recipe=
.<br>
<a href=3D"https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#using-devtool-in-your-workflow" rel=3D"noreferrer" target=3D"_blank">h=
ttps://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-d=
evtool-in-your-workflow</a><span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Or perhaps this workflow is just not recommended or supported by the Yocto<=
br>
Project? If that&#39;s the case, does Yocto only recommend building the<br>
distribution then building the applications as completely separate<br>
workflows? Or is there another workflow that I haven&#39;t stumbled across =
yet?<br>
<br>
</blockquote>
<br></span>
There is nothing &quot;wrong&quot; with building the image each time as a d=
eveloper. However, it is time consuming to construct the full image and dep=
loy it.<br>
<br>
A much more appealing mechanism would be to use devtool to build the recipe=
 you are working on, and then use &quot;devtool deploy-target&quot; to then=
 deploy the output to a live machine. This would require a writeable filesy=
stem on the target device, but if that is available, the workflow and turna=
round time is much faster.<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thanks again for all your help, and let me know if I can help clarify<br>
anything,<br>
<br>
<br>
Michael<br>
<br>
<br>
<br>
</blockquote>
<br>
</div></div></blockquote></div><br></div>

--001a1140376a5e986b05244595aa--
