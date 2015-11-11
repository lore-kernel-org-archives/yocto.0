Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8522CE008D2; Tue, 10 Nov 2015 17:10:12 -0800 (PST)
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
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EAAE007C3
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 17:10:06 -0800 (PST)
Received: by qgea14 with SMTP id a14so13299119qge.0
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 17:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:mime-version:message-id:in-reply-to:references:from:to:cc
	:subject:content-type;
	bh=2hNw9Sr5yL/r4X4V7FS7hNa+yLHlRj3j6DeiNsZvyAQ=;
	b=YkJK7ZqpqwOWh1i7qgv2sza6f583u78GVLSpQaNCezELJCx2y2WszOO4JPn+VPxfEQ
	p2K++AxTTkeRwLTTACpIg/7uHBpdmu7k3aCZH2kAsNPbgtAKXFL2fM0IoHXjcjDQwpoO
	HjryNE4l/Ie4OFFitsTIV7MMpdMoTNkpdRH/4pxP8VJmeIz+qQTlJ8tSt3qMSHPSzAPr
	21fp6SuHNVVtE/8zgNCnhsUWuTVizI1USCWr2qmgHglwORJAm2kCyPpPeJAAMbfOOaie
	6BMwKdpUm+kGAlzFkgosmUpc8Gv23pMsGbWuacd/O0voo7DQ1NNSWjS8AwfBabCiu847
	P1gA==
X-Received: by 10.141.2.215 with SMTP id e206mr8534052qhd.71.1447204205936;
	Tue, 10 Nov 2015 17:10:05 -0800 (PST)
Received: from hedwig-38.prd.orcali.com
	(ec2-54-85-253-136.compute-1.amazonaws.com. [54.85.253.136])
	by smtp.gmail.com with ESMTPSA id
	z95sm2284490qge.38.2015.11.10.17.10.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 10 Nov 2015 17:10:04 -0800 (PST)
Date: Tue, 10 Nov 2015 17:10:04 -0800 (PST)
X-Google-Original-Date: Wed, 11 Nov 2015 01:10:04 GMT
MIME-Version: 1.0
X-Mailer: Nodemailer (0.5.0; +http://www.nodemailer.com/)
Message-Id: <1447204204008.622e3489@Nodemailer>
In-Reply-To: <5642866B.8090501@linux.intel.com>
References: <5642866B.8090501@linux.intel.com>
X-Orchestra-Oid: F7C22EED-9A70-4761-9FC5-E51352A28918
X-Orchestra-Sig: 051e0b749a4645444b874fb7c2a905f2014cb76d
X-Orchestra-Thrid: T8A386CCD-3504-4AD4-B455-C33A3A8D2542_1517493387645505224
X-Orchestra-Thrid-Sig: f51d8e20d61728c185650ab77da8c0b0eae9a056
X-Orchestra-Account: 3c5de8be120c129a4e4a2204b965f7144ff405c7
From: "Michael Habibi" <mikehabibi@gmail.com>
To: "Randy Witt" <randy.e.witt@linux.intel.com>
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
X-List-Received-Date: Wed, 11 Nov 2015 01:10:12 -0000
Content-Type: multipart/alternative;
	boundary="----Nodemailer-0.5.0-?=_1-1447204204450"

------Nodemailer-0.5.0-?=_1-1447204204450
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks for the great info Randy.

On Tue, Nov 10, 2015 at 6:06 PM, Randy Witt <randy.e.witt@linux.intel.com>
wrote:

> Hi Michael,
> See my replies below.
> On 11/10/2015 02:27 PM, Michael Habibi wrote:
>>
>>
>> This is fundamentally why I have been looking into Yocto/BB/OE as a
>> potential replacement distribution. However, I have a couple questions
>> stemming from my research. We can leverage the existing Yocto build for
>> various open source utilities where it pulls from the web, patches, =
builds,
>> and installs into the deployable image. We would probably want to =
colocate
>> the tarballs locally, because we would like to prevent people from =
having
>> to fetch from the web during build cycles.
>>
> This is pretty common. You can set up SOURCE=5FMIRROR=5FURL, to specify =
local=20
> mirrors to try before using the upstream url in the recipe. So each =
person=20
> building would at least have to fetch from the local mirror for a build, =
but=20
> subsequent builds wouldn't require fetching again as long as the DL=5FDIR=
 was=20
> preserved.
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-SOURCE=5FMIRROR=5FURL
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-DL=5FDIR
>>
>> I see that Yocto thinks of the deployable image and applications as
>> separate entities: first you'd build the distribution, then you would =
use
>> ADT/cross-toolchain/etc to build the applications and install them
>> separately. However, in our environment, we would need all of our custom=
 IP
>> applications to be built as part of the deployable image, and not as a
>> separate procdure. For example, if I were to call =22bitbake =
our-image=22, I
>> would like the deployable image to contain 1) the kernel, 2) various =
core
>> utilities and libraries for booting, and 3) our custom applications for =
our
>> device.
>>
>>
>> This means that somewhere in the yocto framework, we'd ideally have =
some
>> source code somewhere that would also be compiled via recipes/classes =
that
>> we'd have to custom write. Is there a best practice for this kind of
>> workflow=3F I don't mind not having source checked in to our VCS for =
things
>> like the kernel, OpenSSL, etc (those can be tarballs obtained from a =
local
>> server), but we likely wouldn't want to host tarballs for the =
applications
>> we are writing and modifying day-to-day by dozens of engineers. Is there=
 a
>> place where this source would best fit=3F Would it be under =
build/tmp/etc, or
>> perhaps we can locate the source under a layer directory, like
>> meta/source/our-ip-applications=3F
>>
> For all the internal applications at my previous employer we had a layer =
for all=20
> internal items, it's quite common.
> And if you're not aware, source code is not restricted to tarballs. You =
can use=20
> git repos, svn and any mechanism the fetcher supports.(even local =
directories)=20
> The following URL lists the types the fetcher supports.
> https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-SRC=5FURI
> The workflow now encouraged, is to use recipetool to assist in creating =
recipes.=20
> And then once the recipes are created, you can use devtool to actually do=
 the=20
> iterative development on the application represented by the recipe.
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#using-devtool-in-your-workflow
>>
>> Or perhaps this workflow is just not recommended or supported by the =
Yocto
>> Project=3F If that's the case, does Yocto only recommend building the
>> distribution then building the applications as completely separate
>> workflows=3F Or is there another workflow that I haven't stumbled across=
 yet=3F
>>
> There is nothing =22wrong=22 with building the image each time as a =
developer.=20
> However, it is time consuming to construct the full image and deploy it.
> A much more appealing mechanism would be to use devtool to build the =
recipe you=20
> are working on, and then use =22devtool deploy-target=22 to then deploy =
the output=20
> to a live machine. This would require a writeable filesystem on the =
target=20
> device, but if that is available, the workflow and turnaround time is =
much faster.
>>
>> Thanks again for all your help, and let me know if I can help clarify
>> anything,
>>
>>
>> Michael
>>
>>
>>

------Nodemailer-0.5.0-?=_1-1447204204450
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable


<div>Thanks for the great info Randy.=C2=A0</div>
<div class=3D=22mailbox=5Fsignature=22>
<br><br></div>
<br><br><div class=3D=22gmail=5Fquote=22><p>On Tue, Nov 10, 2015 at 6:06 PM=
, Randy Witt <span dir=3D=22ltr=22>&lt;<a href=3D=22mailto:randy.e.=
witt@linux.intel.com=22 target=3D=22=5Fblank=22>randy.e.witt@linux.intel.=
com</a>&gt;</span> wrote:<br></p><blockquote class=3D=22gmail=5Fquote=22 =
style=3D=22margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;=
=22><p>Hi Michael,
<br><br>See my replies below.
<br><br>On 11/10/2015 02:27 PM, Michael Habibi wrote:
<br><br>&gt;
<br>&gt;
<br>&gt; This is fundamentally why I have been looking into Yocto/BB/OE as =
a
<br>&gt; potential replacement distribution. However, I have a couple =
questions
<br>&gt; stemming from my research. We can leverage the existing Yocto =
build for
<br>&gt; various open source utilities where it pulls from the web, patches=
, builds,
<br>&gt; and installs into the deployable image. We would probably want to =
colocate
<br>&gt; the tarballs locally, because we would like to prevent people from=
 having
<br>&gt; to fetch from the web during build cycles.
<br>&gt;
<br><br>This is pretty common. You can set up SOURCE=5FMIRROR=5FURL, to =
specify local=20
<br>mirrors to try before using the upstream url in the recipe. So each =
person=20
<br>building would at least have to fetch from the local mirror for a build=
, but=20
<br>subsequent builds wouldn't require fetching again as long as the =
DL=5FDIR was=20
<br>preserved.
<br>https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-SOURCE=5FMIRROR=5FURL
<br>https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-DL=5FDIR
<br><br>&gt;
<br>&gt; I see that Yocto thinks of the deployable image and applications =
as
<br>&gt; separate entities: first you'd build the distribution, then you =
would use
<br>&gt; ADT/cross-toolchain/etc to build the applications and install =
them
<br>&gt; separately. However, in our environment, we would need all of our =
custom IP
<br>&gt; applications to be built as part of the deployable image, and not =
as a
<br>&gt; separate procdure. For example, if I were to call =22bitbake =
our-image=22, I
<br>&gt; would like the deployable image to contain 1) the kernel, 2) =
various core
<br>&gt; utilities and libraries for booting, and 3) our custom =
applications for our
<br>&gt; device.
<br>&gt;
<br>&gt;
<br>&gt; This means that somewhere in the yocto framework, we'd ideally =
have some
<br>&gt; source code somewhere that would also be compiled via =
recipes/classes that
<br>&gt; we'd have to custom write. Is there a best practice for this kind =
of
<br>&gt; workflow=3F I don't mind not having source checked in to our VCS =
for things
<br>&gt; like the kernel, OpenSSL, etc (those can be tarballs obtained from=
 a local
<br>&gt; server), but we likely wouldn't want to host tarballs for the =
applications
<br>&gt; we are writing and modifying day-to-day by dozens of engineers. Is=
 there a
<br>&gt; place where this source would best fit=3F Would it be under =
build/tmp/etc, or
<br>&gt; perhaps we can locate the source under a layer directory, like
<br>&gt; meta/source/our-ip-applications=3F
<br>&gt;
<br><br>For all the internal applications at my previous employer we had a =
layer for all=20
<br>internal items, it's quite common.
<br><br>And if you're not aware, source code is not restricted to tarballs.=
 You can use=20
<br>git repos, svn and any mechanism the fetcher supports.(even local =
directories)=20
<br>The following URL lists the types the fetcher supports.
<br>https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-SRC=5FURI
<br><br>The workflow now encouraged, is to use recipetool to assist in =
creating recipes.=20
<br>And then once the recipes are created, you can use devtool to actually =
do the=20
<br>iterative development on the application represented by the recipe.
<br>https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#using-devtool-in-your-workflow
<br><br>&gt;
<br>&gt; Or perhaps this workflow is just not recommended or supported by =
the Yocto
<br>&gt; Project=3F If that's the case, does Yocto only recommend building =
the
<br>&gt; distribution then building the applications as completely =
separate
<br>&gt; workflows=3F Or is there another workflow that I haven't stumbled =
across yet=3F
<br>&gt;
<br><br>There is nothing =22wrong=22 with building the image each time as a=
 developer.=20
<br>However, it is time consuming to construct the full image and deploy it=
.
<br><br>A much more appealing mechanism would be to use devtool to build =
the recipe you=20
<br>are working on, and then use =22devtool deploy-target=22 to then deploy=
 the output=20
<br>to a live machine. This would require a writeable filesystem on the =
target=20
<br>device, but if that is available, the workflow and turnaround time is =
much faster.
<br><br>&gt;
<br>&gt; Thanks again for all your help, and let me know if I can help =
clarify
<br>&gt; anything,
<br>&gt;
<br>&gt;
<br>&gt; Michael
<br>&gt;
<br>&gt;
<br>&gt;
<br><br></p></blockquote></div><br>

------Nodemailer-0.5.0-?=_1-1447204204450--
