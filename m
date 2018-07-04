Return-Path: <bartlomiej.osinski@enigma.com.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 387E2E009AC; Wed,  4 Jul 2018 11:46:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.198.145.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 403 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Jul 2018 11:46:11 PDT
Received: from mail.enigma.com.pl (mail.enigma.com.pl [91.198.145.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB45E0084E
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 11:46:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.enigma.com.pl (Postfix) with ESMTP id E31BB16F3A62AE
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 20:39:26 +0200 (CEST)
Received: from mail.enigma.com.pl ([127.0.0.1])
	by localhost (mail.enigma.com.pl [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id bppQH6WW4eF4 for <yocto@yoctoproject.org>;
	Wed,  4 Jul 2018 20:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.enigma.com.pl (Postfix) with ESMTP id 3BA3B16F3A62CB
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 20:39:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.enigma.com.pl
Received: from mail.enigma.com.pl ([127.0.0.1])
	by localhost (mail.enigma.com.pl [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id l5760lXWJ7IN for <yocto@yoctoproject.org>;
	Wed,  4 Jul 2018 20:39:26 +0200 (CEST)
Received: from mail.enigma.com.pl (mail.enigma.com.pl [10.13.11.10])
	by mail.enigma.com.pl (Postfix) with ESMTP id 163D216F3A62AE
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 20:39:26 +0200 (CEST)
Date: Wed, 4 Jul 2018 20:39:25 +0200 (CEST)
From: =?utf-8?Q?Bart=C5=82omiej_Osi=C5=84ski?=
	<bartlomiej.osinski@enigma.com.pl>
To: yocto@yoctoproject.org
Message-ID: <1999523030.2685102.1530729565911.JavaMail.zimbra@enigma.com.pl>
MIME-Version: 1.0
X-Originating-IP: [10.13.11.10]
X-Mailer: Zimbra 8.6.0_GA_1200 (ZimbraWebClient - GC67 (Win)/8.6.0_GA_1200)
Thread-Topic: Install and autoload all modules
Thread-Index: Ir5yrlDySPVKnEN1X6XTldRhiwlaYg==
Subject: Install and autoload all modules
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
X-List-Received-Date: Wed, 04 Jul 2018 18:46:13 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2685101_1224308245.1530729565910"

------=_Part_2685101_1224308245.1530729565910
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Dear All, 

I'm a little bit confused about assinging "kernel-modules" to MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS (or its variations). It should install all modules, but would it include modules declared by separate recipes (i.e. in contrary to modules build by =m setting in .config)? 

Also, how do I autoload all modules declared through =m settings in kernel's .config without having to manually type their names in KERNEL_MODULE_AUTOLOAD? 

Kind regards 

------=_Part_2685101_1224308245.1530729565910
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><body><div style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000"><div>Dear All,</div><div><br data-mce-bogus="1"></div><div>I'm&nbsp;a little bit confused about assinging&nbsp;"kernel-modules" to&nbsp;MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS (or its variations). It should install all modules, but would it include modules declared by separate recipes (i.e. in contrary to modules build by =m setting in .config)?</div><div><br data-mce-bogus="1"></div><div>Also, how do I autoload <span style="text-decoration: underline;" data-mce-style="text-decoration: underline;">all</span><strong>&nbsp;</strong>modules declared through =m settings in kernel's .config without having to manually type their names in KERNEL_MODULE_AUTOLOAD?</div><div><br data-mce-bogus="1"></div><div>Kind regards</div></div></body></html>

------=_Part_2685101_1224308245.1530729565910--
