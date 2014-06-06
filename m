Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E94DE00BEA; Thu,  5 Jun 2014 23:16:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A61F5E00BB1
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 23:16:56 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WsnSQ-000567-Mb
	for yocto@yoctoproject.org; Fri, 06 Jun 2014 08:16:54 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 08:16:54 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 08:16:54 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 06 Jun 2014 08:16:39 +0200
Message-ID: <lmrmc7$vdr$1@ger.gmane.org>
References: <lmphm1$2bk$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <lmphm1$2bk$1@ger.gmane.org>
Subject: Re: Problems with postinstall
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
X-List-Received-Date: Fri, 06 Jun 2014 06:16:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Nobody using any postinstalls?

I am still wondering why the postinstall does not work. I don't get any
error messages. The files are just not installed.

Am 05.06.2014 12:44, schrieb Neuer User:
> Hi
> 
> I am desperately trying to get some postinstall scripts working. They
> should replace some defualt files with custom files I have. They are all
> in one package. The package looks like this:
> 
> do_install() {
>     install -d ${D}${sbindir}
>     install -m 0700 ${S}/sbin/* ${D}${sbindir}
> 
>     install -d ${D}${bindir}
>     install -m 0755 ${S}/bin/LEDstatus ${D}${bindir}
> 
>     install -d ${D}/etc/udev/rules.d
>     install -m 0644 ${S}/udev/* ${D}/etc/udev/rules.d/
> 
>     install -d ${D}/etc/ssh
>     install -m 0600 ${S}/ssh/ssh_* ${D}/etc/ssh/
>     install -m 0644 ${S}/ssh/authorized_keys ${D}/etc/ssh/
> 
>     install -d ${D}/etc/gnupg
>     install -m 0600 ${S}/gnupg/trustedkeys.gpg ${D}/etc/gnupg/
> }
> 
> # Overwrite some configuration data with specific files
> pkg_postinst_${PN} () {
>     install -o root -g root -m 0600 ${S}/ssh/sshd_config ${D}/etc/ssh/
>     install -m 0755 ${S}/etc/rc.local ${D}/etc/
>     install -m 0644 ${S}/etc/watchdog.conf ${D}/etc/
>     install -m 0400 ${S}/etc/shadow ${D}/etc/
>     install -m 0440 ${S}/etc/sudoers ${D}/etc/
>     install -d ${D}/etc/default
>     install -o root -g root -m 0644 ${S}/etc/default-ntpdate
> ${D}/etc/default/ntpdate
> }
> 
> RDEPENDS_${PN} += "ntpdate udev ssh sudo"
> 
> FILES_${PN} += "/*"
> 
> 
> I even tried changing the ownership of the files, but that did not
> change aything.
> 
> Am I doing this completely wrong?
> 
> Thanks for any hints
> 
> Michael
> 



