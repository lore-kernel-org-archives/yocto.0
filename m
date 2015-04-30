Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66E4AE007B6; Thu, 30 Apr 2015 12:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00CC3E0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 12:35:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 551B6F811E2; Thu, 30 Apr 2015 13:34:59 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9D319F811E1;
	Thu, 30 Apr 2015 13:34:58 -0600 (MDT)
Message-ID: <554283F9.6030108@mlbassoc.com>
Date: Thu, 30 Apr 2015 13:35:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5542706A.4070807@reliableembeddedsystems.com>
In-Reply-To: <5542706A.4070807@reliableembeddedsystems.com>
Subject: Re: fido: funny ipk behavior
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
X-List-Received-Date: Thu, 30 Apr 2015 19:35:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-30 12:11, Robert Berger wrote:
> Hi,
>
> I have a simple recipe like this:
>
> ---
>
> DESCRIPTION = "Simple helloworld application + git"
> SECTION = "examples"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> SRCREV = "ecf1f0bc87960ef6b6d97c0385b44ce6ea5b2211"
> SRC_URI =
> "git:///home/genius/yocto-repos/simple-hello-world-git.git;protocol=file;branch=master"
>
> S = "${WORKDIR}/git"
>
> do_compile() {
>          ${CC} simple-hello-world-git.c -o simple-hello-world-git
> }
>
> do_install() {
>          install -d ${D}${bindir}
>          install -m 0755 simple-hello-world-git ${D}${bindir}
> }
>
> ---
>
> If I bake the .ipk, copy it over to the target and try to install it
> there it complains:
>
> opkg install /tmp/simple-hello-world-git_1.0.1-r0_armv7a-vfp-neon.ipk
> Installing simple-hello-world-git (1.0.1-r0) on root.
> Collected errors:
>   * satisfy_dependencies_for: Cannot satisfy the following dependencies
> for simple-hello-world-git:
>   *      libc6 (>= 2.21) *
>   * opkg_install_cmd: Cannot install package simple-hello-world-git.

On your target, what do you get from this?
   # opkg list-installed libc6

>
> ---
>
> If I include the package into my image it works, also if I just copy
> over the executable (which is included in the package) it works.
>
> scp
> /home/genius/test/yocto-autobuilder/yocto-worker/custom-fido-vexpressa9-qemu-core-image-minimal/build/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/simple-hello-world-git/1.0.1-r0/git/simple-hello-world-git
> root@192.168.7.2:/tmp
>
> /tmp/simple-hello-world-git
> Simple Hello world git!
>
> Am I missing something?
>
> I think this worked with dizzy.
>
> Regards,
>
> Robert..."In Pascal, when you foll with a pointer of a handle, you know
> you're fooling with a pointer of a handle. In C, you could be fooling
> around with anything. C is the ultimate language for computational
> promiscuity." -- Owen Hartnett
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

