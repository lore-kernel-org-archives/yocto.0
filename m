Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2899DE00CF1; Fri, 10 Nov 2017 07:19:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0781E00CEC
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 07:19:05 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 7892F26EE0A
Message-ID: <1510327141.5010.7.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 10 Nov 2017 16:19:01 +0100
In-Reply-To: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
References: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: Using devtool for adding a systemd service
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
X-List-Received-Date: Fri, 10 Nov 2017 15:19:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi

I don't think that devtool will help you in this case.
IIUC, what you need is to check if your file is populated in the package?

You can verify this by checking package content after the build.
For example :
	dpkg-deb -c <package-path>
will show you all files installed by the package.

I think rpm and opkg provide similar mechanism to extract packages contents.

You can also mount your rootfs partition using loop devices.

On Fri, 2017-11-10 at 11:07 +0100, Alan Martinovic wrote:
> Hi,
> I need to add a systemd service that needs no additional sources
> compiled, but just needs an available command executed at boot. 
> 
> I've created a basis for the recipe in my layer:
> 
> nrf52-usb-systemd/
> |-- files
> |   `-- btattach-nrf-acm.service
> `-- nrf52-usb-systemd.bb
> 
> 
> together with a recipe template (nrf52-usb-systemd.bb)
> for which I don't know if works yet.
> 
>   SUMMARY = "Writes patterns to the fb device"
>   LICENSE = "MIT"
>   LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> 
>   inherit systemd
> 
>   REQUIRED_DISTRO_FEATURES= "systemd"
> 
>   SRC_URI = "file://btattach-nrf-acm.service"
> 
>   do_install () {
> 
>       install -m 0644 ${WORKDIR}/btattach-nrf-acm.service ${D}${sysconfdir}/systemd/system
>    }
> 
>   NATIVE_SYSTEMD_SUPPORT = "1"
>   SYSTEMD_PACKAGES = "${PN}"
>   SYSTEMD_SERVICE_${PN} = "fb-draw.service"
> 
> 
> I'm not sure I got the install command right and
> if the service file is making it way to the proper location.
> 
> Instead of building the whole image, flashing and checking 
> it out, I would like to test how devtool could help here.
> 
> I execute:
> 
> devtool build nrf52-usb-systemd
> 
> this results in a creation of a workspace with the sources files.
> What I am not seeing is a creation of a device sysroot which would
> show me that the do_install was correctly written.
> 
> Given that the device sysroot directory on the host would be called
> "sysroot" was hoping to be able do confirm that the following took 
> place
> 
> ${D}${sysconfdir}/systemd/system -> .sysroot/etc/ssytemd/system
> 
> and confirming there is a 
> 
> .sysroot/etc/ssytemd/system/btattach-nrf-acm.service
> 
> 
> Is this possible with devtool, or am I misinterpreting 
> what it's purpose is?
> 
-- 
Fabien

