Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8E69E0073A; Fri, 23 May 2014 08:06:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B830E00716
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 08:05:55 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wnr2Z-0000Jm-PQ
	for yocto@yoctoproject.org; Fri, 23 May 2014 17:05:47 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 17:05:47 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 17:05:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 23 May 2014 17:05:28 +0200
Message-ID: <llno3o$gr7$1@ger.gmane.org>
References: <llnllh$hju$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <llnllh$hju$1@ger.gmane.org>
Subject: [Probably solved] Re: Post-installation and read-only-image
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
X-List-Received-Date: Fri, 23 May 2014 15:06:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Sorry, please ignore my mail. I seem to have missed a "install -d"
command. Not it builds the image, but I still seem to have some errors I
need to fix.

Thanks nonetheless!

Michael

Am 23.05.2014 16:23, schrieb Neuer User:
> Hello
> 
> I build a read-only-image and need to exchange a few configuration files
> before the final image is build. Unfortunately, I ran into this error:
> 
> ERROR: The following packages could not be configuredoffline and rootfs
> is read-only: xxx
> 
> My recipe looks basically as follows:
> 
> ...
> do_install() {
>     install -d ${D}${sbindir}
>     install -m 0700 ${S}/sbin/* ${D}${sbindir}
> 
>     install -d ${D}${bindir}
> ...
> }
> 
> # Overwrite some configuration data with specific files
> pkg_postinst_${PN} () {
>     install -m 0600 ${S}/ssh/* ${D}/etc/ssh/
>     install -m 0755 ${S}/etc/rc.local ${D}/etc/
>     install -m 0644 ${S}/etc/asound.conf ${D}/etc/
>     install -m 0400 ${S}/etc/shadow ${D}/etc/
>     install -m 0440 ${S}/etc/sudoers ${D}/etc/
>     install -m 0644 ${S}/etc/default-ntpdate ${D}/etc/default/ntpdate
> }
> 
> FILES_${PN} += "/*"
> 
> 
> Anybody knows, what is wrong that the image cannot be configured offline?
> 
> Thanks
> 
> Michael
> 



