Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2672CE00CC2; Tue, 31 Oct 2017 01:41:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9812E00C62
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 01:41:12 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 6D7E526557A
Message-ID: <1509439268.13007.23.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Tue, 31 Oct 2017 09:41:08 +0100
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F094B8EC@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F094B8EC@IR-CENTRAL.corp.innerrange.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: linux-firmware: build failure
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
X-List-Received-Date: Tue, 31 Oct 2017 08:41:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-10-31 at 18:04 +1100, Craig McQueen wrote:
> I'm trying upgrading to rocko (from morty).
> 
> I'm getting a build failure for linux-firmware:
> 
> 
> DEBUG: Executing python function extend_recipe_sysroot
> NOTE: Direct dependencies are ['virtual:native:/home/craigm/yocto/poky/build/../meta/recipes-
> devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot',
> '/home/craigm/yocto/poky/build/../meta/recipes-devtools/quilt/quilt-
> native_0.65.bb:do_populate_sysroot']
> NOTE: Installed into sysroot: ['pseudo-native']
> NOTE: Skipping as already exists in sysroot: ['quilt-native']
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing shell function do_install
> rm: cannot remove '/home/craigm/yocto/poky/build/tmp/work/all-poky-linux/linux-
> firmware/1_0.0+gitAUTOINC+80d463be82-r0/image/lib/firmware/check_whence.py': No such file or
> directory
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_install (log file is located at
> /home/craigm/yocto/poky/build/tmp/work/all-poky-linux/linux-firmware/1_0.0+gitAUTOINC+80d463be82-
> r0/temp/log.do_install.120558)
> 
> 
> It seems that the latest git doesn't contain check_whence.py... or something like that. But I'm
> puzzled as to why the previous committer (17a772775c2559897e49236ae352444065e1b1ff perhaps) would
> not have encountered this.
> 
> Would the following be a suitable fix? --

If the file doesn't exist in the source repository you can just remove the line.

> 
> 
> diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb b/meta/recipes-kernel/linux-
> firmware/linux-firmware_git.bb
> index 0338ba8ac2..b8f2865e3b 100644
> --- a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
> +++ b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
> @@ -215,7 +215,7 @@ do_install() {
>         rm ${D}${nonarch_base_libdir}/firmware/configure
>  
>         # Remove python script used to check the WHENCE file
> -       rm ${D}${nonarch_base_libdir}/firmware/check_whence.py
> +       rm ${D}${nonarch_base_libdir}/firmware/check_whence.py -rf
>  
>         # Libertas sd8686
>         ln -sf libertas/sd8686_v9.bin ${D}${nonarch_base_libdir}/firmware/sd8686.bin
> 
> 
> -- 
> Craig McQueen
> 
-- 
Fabien

