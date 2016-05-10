Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7D43E00D7B; Tue, 10 May 2016 11:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C963E00D43
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 11:16:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u4AIGCmC019232
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 10 May 2016 11:16:12 -0700
Received: from server.local (147.11.118.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 10 May 2016 11:16:11 -0700
To: Chris Trobridge <christrobridge@hotmail.com>, "Esponde, Joel"
	<joel.esponde@honeywell.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>
	<DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>
	<F6CD090A69E64C4289DC608E1C5D2024253EE345@DE08W1305.global.ds.honeywell.com>
	<DUB130-W57477F296DFD10B36D06BDA710@phx.gbl>
	<F6CD090A69E64C4289DC608E1C5D2024253EE422@DE08W1305.global.ds.honeywell.com>
	<DUB130-W19EB88C4F751D5BB05C761DA710@phx.gbl>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <125c2040-e7ec-2d42-138f-33ebbc0b4767@windriver.com>
Date: Tue, 10 May 2016 14:16:10 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <DUB130-W19EB88C4F751D5BB05C761DA710@phx.gbl>
Subject: Re: Formulating Recipe for out-of-tree kernel module
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
X-List-Received-Date: Tue, 10 May 2016 18:16:28 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-05-10 9:57 AM, Chris Trobridge wrote:
> Thanks Joel,
>
> I can build the module but I am trying to find out the best way to do
> this with yocto/bitbake.
>
> The build process for the second module I have requires the location of
> the first and then does copy the Module.symvers and accesses the header
> files and ".version" file.
>
> The question was more about how it should find these.
>
> What I have just tried out, is to copy the above files  (Module.symvers,
> .version and include/* to ${STAGING_KERNEL_BUILDDIR}/out-of-tree/${PN},
> which is hence easily accessible by the second recipe.
>
> This works but may not be the preferred way?  I suspect the preferred
> way is to build in the kernel.

Having two external modules that depend on symbols is indeed a case
that isn't explicitly in the current workflow. As was pointed out, we
did solve the case where an external module required symbols from
a module from the kernel (that extra copy to the shared workdir of the
updated Module.symvers).

If you have two out of tree modules that have a dependency, then you
do need to arrange to have the symbol information available to the
second module. What you did is pretty much the right way, you could
also update the kernel shared workdir, but you'd have to be careful
to not race with the main build, and also to not clobber symbols from
the kernel and in-tree modules.

Bruce

>
> Cheers,
> Chris
>
> ------------------------------------------------------------------------
> From: Joel.Esponde@Honeywell.com
> To: christrobridge@hotmail.com; yocto@yoctoproject.org
> Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module
> Date: Tue, 10 May 2016 13:29:30 +0000
>
> Ok! I better understand your need now.
>
> The fix solves the case where an out of tree module is dependent of a
> kernel module which is not built as a built-in module.
>
>
>
> Just in case, did you have a look on these links?
>
> http://stackoverflow.com/a/33718934/1729117
>
> https://www.kernel.org/doc/Documentation/kbuild/modules.txt (Chapter 6.2
> and 6.3)
>
>
>
> *Joël Esponde*
>
> *Honeywell *| Sensing and Productivity Solutions
>
>
>
> *De :*Chris Trobridge [mailto:christrobridge@hotmail.com]
> *Envoyé :* mardi 10 mai 2016 13:28
> *À :* Esponde, Joel; yocto@yoctoproject.org
> *Objet :* RE: [yocto] Formulating Recipe for out-of-tree kernel module
>
>
>
> Thanks Joel,
>
>
>
> I am on Krogoth.
>
>
>
> My reading of that patch is that it allows out-of-tree modules to depend
> on symbols from the kernel but I don't see how it would help with
> depending on another out-of-tree module?  Those symbols are not added to
> the kernel Module.symvers.
>
>
>
> I've been following some other usage I read that 'out-of-tree' means
> compiling outside/after the kernel build, which may not be 100% accurate?
>
>
>
> Anyway, it suggests to me that copying the first module's Module.symvers
> to the shared kernel staging area and then referencing that from the
> second module is probably better than my current solution, provided I
> don't break any conventions on using the staging area.
>
>
>
> Cheers,
>
> Chris
>
> ------------------------------------------------------------------------
>
> From: Joel.Esponde@Honeywell.com <mailto:Joel.Esponde@Honeywell.com>
> To: christrobridge@hotmail.com <mailto:christrobridge@hotmail.com>;
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module
> Date: Tue, 10 May 2016 10:06:37 +0000
>
> Hi,
>
>
>
> There is a bitbake issue that prevents building an out-of-tree module
> that is dependent of another out-of-tree module.
>
> This issue has been fixed recently:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=master-next&id=a9cc27e6916e5affe8b0cc431c3e89abd7681643
>
>
>
> This fix has been released on yocto 2.1 (krogoth).
>
> So if you are using an older Yocto project, you will have to fix two
> recipes manually.
>
>
>
> I hope this will help!
>
>
>
> *Joël Esponde*
>
> *Honeywell *| Sensing and Productivity Solutions
>
>
>
> *De :*yocto-bounces@yoctoproject.org
> <mailto:yocto-bounces@yoctoproject.org>[mailto:yocto-bounces@yoctoproject.org]
> *De la part de* Chris Trobridge
> *Envoyé :* mardi 10 mai 2016 08:59
> *À :* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> *Objet :* Re: [yocto] Formulating Recipe for out-of-tree kernel module
>
>
>
> At the risk of answering my own question...
>
>
>
> Splitting a driver package into a module recipe and a separate recipe
> for user-mode utilities works in that each recipe uses the appropriate
> build process and puts files in the appropriate subdirectory of /work/.
>
>
>
> I still don't see a way to build one out-of-tree module against another.
>  I am interested in opinion on this.  Should I try to get these drivers
> built in tree?  They seem to be the only two out-of-tree drivers in the
> build at present.  There is also some facility to add extra modules to
> the dahdi linux build, although achieving this with bitbake could be
> challenging too.
>
> Cheers,
>
> Chris
>
> ------------------------------------------------------------------------
>
> From: christrobridge@hotmail.com <mailto:christrobridge@hotmail.com>
> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Date: Mon, 9 May 2016 12:15:26 +0100
> Subject: [yocto] Formulating Recipe for out-of-tree kernel module
>
> I am looking to produce a recipe for the amfeltec usb-fxs adaptor
> (http://amfeltec.com/products/piranha-usb-fxs-adapter/), with the
> intention of contributing this to the meta-telephony layer.
>
>
>
> However, I have found a few obstacles to getting a clean recipe:
>
>   * The makefile produces both a kernel module and a user utility, with
>     the latter being hard-coded to build with g++.  I can produce a
>     recipe to produce one or other of the components but not both.
>      Given the structure of the build directories, should this be be
>     achievable, or should I be spitting up the recipe in two?
>   * Dahdi header files and Modules.symvers are required.  A header file
>     is used to deduce the version of Dahdi, Modules.symvers is required
>     for the module build process.  Hence, requires the location of the
>     Dahdi source/build directory.  This can be set relative to the
>     amfeltec work directory but this feels wrong.
>
>
>
> In more general terms my questions are:
>
>   * Should I split a recipe into kernel and non-kernel components?
>   * How should one out-of-tree recipe access the headers/Module.symvers
>     from another (should that recipe be installing them in
>     ${STAGING_KERNEL_DIR} (or somewhere else)?)
>
>
>
> Cheers,
>
> Chris
>
>
>
>
> -- _______________________________________________ yocto mailing list
> yocto@yoctoproject.org
> <mailto:yocto@yoctoproject.org>https://lists.yoctoproject.org/listinfo/yocto
>
>
>


