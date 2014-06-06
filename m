Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 879E0E00BEA; Fri,  6 Jun 2014 04:09:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42434E00B94
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 04:08:53 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wss0y-0007BV-1G
	for yocto@yoctoproject.org; Fri, 06 Jun 2014 13:08:52 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 13:08:52 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 13:08:52 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 06 Jun 2014 13:08:37 +0200
Message-ID: <lms7fl$84c$1@ger.gmane.org>
References: <lmphm1$2bk$1@ger.gmane.org> <lmrmc7$vdr$1@ger.gmane.org>
	<CANyK_8f8oO+7gVbcXXOLVAdxa5OpmHR2s6yj199LpWaQcjSheQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CANyK_8f8oO+7gVbcXXOLVAdxa5OpmHR2s6yj199LpWaQcjSheQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 06 Jun 2014 11:09:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 06.06.2014 12:54, schrieb Paul Barker:
> I usually leave things more than a day before sending a ping email,
> people can be busy but usually you'll get replies within a couple of
> days on this list.
>

Sorry, I guess these 18h were driving me crazy as I don't understand why
it is not working. I actually thought, it had already been working
earlier...

>>>
>>> # Overwrite some configuration data with specific files
>>> pkg_postinst_${PN} () {
>>>     install -o root -g root -m 0600 ${S}/ssh/sshd_config ${D}/etc/ssh/
>>>     install -m 0755 ${S}/etc/rc.local ${D}/etc/
>>>     install -m 0644 ${S}/etc/watchdog.conf ${D}/etc/
>>>     install -m 0400 ${S}/etc/shadow ${D}/etc/
>>>     install -m 0440 ${S}/etc/sudoers ${D}/etc/
>>>     install -d ${D}/etc/default
>>>     install -o root -g root -m 0644 ${S}/etc/default-ntpdate
>>> ${D}/etc/default/ntpdate
>>> }
>>>
> 
> The postinst is executed by the package manager when the package is
> installed. If that installation takes place during do_rootfs, ${D}
> will refer to the rootfs directory for the image being built and ${S}
> will probably refer to something else to do with the image recipe but
> I'm not entirely sure on the details. If the installation takes place
> on the device, or the postinst is delayed until the first boot, ${D}
> and ${S} will not be set.
> 
> Hope this helps,
> 

So, I guess there are now two possibilities:
a.) The postinstall is not done at all.
b.) The postinstall is done, but before the other packages are
installed, which overwrite the files again. Is this possible? If yes,
howto specify that this postinstall should really be done last of all?

Thanks a lot

Michael


