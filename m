Return-Path: <sazzalin@settopsurvey.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58277E00B99; Mon, 22 Feb 2016 01:16:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,FROM_12LTRDOM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [95.39.26.195 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0139]
	*  0.0 FROM_12LTRDOM From a 12-letter domain
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Feb 2016 01:16:27 PST
Received: from correo.avancemgrup.es (correo.avancemgrup.es [95.39.26.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13296E00B63
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 01:16:27 -0800 (PST)
Received: from settop-dev (83.57.170.183) by correo.avancemgrup.es
	(192.168.11.11) with Microsoft SMTP Server id 14.2.247.3;
	Mon, 22 Feb 2016 10:15:20 +0100
Message-ID: <1456132597.1329.24.camel@settopsurvey.com>
From: simo <sazzalin@settopsurvey.com>
To: <yocto@yoctoproject.org>
Date: Mon, 22 Feb 2016 10:16:37 +0100
Organization: Al-Top
X-Mailer: Evolution 3.12.9-1+b1 
MIME-Version: 1.0
X-Originating-IP: [83.57.170.183]
Subject: Bitbake does not apply changes and sometimes it removes the kernel-source directory
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
X-List-Received-Date: Mon, 22 Feb 2016 09:16:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I am using a 'poky fido 13.0.1' Yocto distribution and I am experiencing
some problem after modifying the Linux kernel code and recompiling it.

Bitbake is not applying the changes and sometimes deletes the source
folder (but I have a backup, of course).

From yocto environment shell, I execute:

~$ bitbake linux-gumstix -c compile -f

and then to create an image and having a kernel file compiled available:

~$ bitbake core-image-base

What is the best way to recompile an edited source with bitbake from
shell ? And why it removes the kernel-source directory ?

Thank you in advance for your help.

Regards,
Simon


