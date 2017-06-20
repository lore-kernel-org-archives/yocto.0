Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE8F9E00B31; Tue, 20 Jun 2017 06:56:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0008]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.30.184.167 listed in list.dnswl.org]
X-Greylist: delayed 2207 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Jun 2017 06:56:15 PDT
Received: from mail.kapsi.fi (mail.kapsi.fi [217.30.184.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A42AE00B2E
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 06:56:15 -0700 (PDT)
Received: from lakka.kapsi.fi ([2001:1bc8:1004::1] ident=Debian-exim)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2) (envelope-from <Anders.Montonen@iki.fi>)
	id 1dNJ40-0004v7-8i
	for yocto@yoctoproject.org; Tue, 20 Jun 2017 16:19:24 +0300
Received: from antime (helo=localhost)
	by lakka.kapsi.fi with local-esmtp (Exim 4.84_2)
	(envelope-from <Anders.Montonen@iki.fi>) id 1dNJ40-0005Tb-7M
	for yocto@yoctoproject.org; Tue, 20 Jun 2017 16:19:24 +0300
Date: Tue, 20 Jun 2017 16:19:24 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
X-X-Sender: antime@lakka.kapsi.fi
To: yocto@yoctoproject.org
Message-ID: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: AppArmor
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
X-List-Received-Date: Tue, 20 Jun 2017 13:56:18 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

Hi,

Has anyone tried using AppArmor with Yocto? The recipe in the 
meta-security layer is broken, and when fixed so it actually builds, it 
turns out the installed init script relies on functions not found in 
Yocto's version of LSB.

Regards,
Anders

