Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2A98E00D9D; Mon, 30 Oct 2017 08:37:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.232.154.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08AC7E00CC3
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 08:37:53 -0700 (PDT)
Received: from lakka.kapsi.fi ([2001:1bc8:1004::1] ident=Debian-exim)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2) (envelope-from <Anders.Montonen@iki.fi>)
	id 1e9C8O-0002YK-Dz
	for yocto@yoctoproject.org; Mon, 30 Oct 2017 17:37:52 +0200
Received: from antime (helo=localhost)
	by lakka.kapsi.fi with local-esmtp (Exim 4.84_2)
	(envelope-from <Anders.Montonen@iki.fi>) id 1e9C8O-0002n5-C7
	for yocto@yoctoproject.org; Mon, 30 Oct 2017 17:37:52 +0200
Date: Mon, 30 Oct 2017 17:37:52 +0200 (EET)
From: Anders Montonen <Anders.Montonen@iki.fi>
X-X-Sender: antime@lakka.kapsi.fi
To: yocto@yoctoproject.org
Message-ID: <alpine.DEB.2.11.1710301727001.31359@lakka.kapsi.fi>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: /etc/resolv.conf symlink
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
X-List-Received-Date: Mon, 30 Oct 2017 15:37:55 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

Hi,

I'm hoping someone could clarify how the symlink generation from 
/etc/resolv.conf to systemd's runtime /run/systemd/resolve/resolv.conf is 
supposed to work when resolved is not enabled.

In the systemd do_install(), a directive for generating this symlink is 
inserted into /usr/lib/tmpfiles.d/etc.conf:

if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false', d)}; then
 		echo 'L! ${sysconfdir}/resolv.conf - - - - ../run/systemd/resolve/resolv.conf' >>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf

However, systemd also pulls in volatile-binds, which installs an override 
for etc.conf pointing to /dev/null, thereby preventing this link from 
being created:

# Suppress attempts to process some tmpfiles that are not temporary.
#
install -d ${D}${sysconfdir}/tmpfiles.d ${D}/var/cache
ln -s /dev/null ${D}${sysconfdir}/tmpfiles.d/etc.conf
ln -s /dev/null ${D}${sysconfdir}/tmpfiles.d/home.conf

Have I understood this correctly, and is this supposed to work?

Regards,
Anders

