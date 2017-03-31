Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2A4FE00A64; Fri, 31 Mar 2017 06:56:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19420E00924
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 06:56:54 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 8E49626ADA8
Message-ID: <1490968606.11772.32.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 31 Mar 2017 15:56:46 +0200
In-Reply-To: <07e901d2aa24$9e0ea470$da2bed50$@ln-systems.com>
References: <07e901d2aa24$9e0ea470$da2bed50$@ln-systems.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Missing dependencies on driver header
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
X-List-Received-Date: Fri, 31 Mar 2017 13:56:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-03-31 at 14:42 +0100, colin.helliwell@ln-systems.com wrote:
> I have a niggly problem I keep running into, especially with fresh image
> builds.
> I have a custom driver, and a user-space library for controlling it;
> therefore the library includes one of the driver's header files (IOCTL defs
> etc). 
> However I can't get the dependencies correct in the library recipe so as to
> get the driver's header installed and available to the library build step.
> In other words 'bitbake MyDriverLib' gives a "MyDriver.h: no such file or
> directory "
> The lib's recipe includes
>     inherit autotools lib_package binconfig-disabled pkgconfig
>     DEPENDS_${PN} = "MyDriver"

Usually I use "DEPENDS" and not "DEPENDS_${PN}".

Else does your kernel module recipe populate sysroot with the header?

>     RDEPENDS_${PN} = "MyDriver"
> 
> At 'some point later', the lib *will* build ok:  I've done each MyDriver
> step one by one, and it seems that once the 'install' has been done then
> MyDriverLib will then compile. ('-c compile MyDriver' isn't sufficient). But
> shouldn't the RDEPENDS above trigger the MyDriver install?
> I'm obviously missing a dependency hook somewhere?
> 
> 
> 

