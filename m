Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1328E00809; Mon,  2 Feb 2015 02:00:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E362CE0070B
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 02:00:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id AD9FF3E6C29
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 15:30:25 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id 7JEthoe3dMk9; Mon,  2 Feb 2015 15:30:25 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 4A0473E6A94;
	Mon,  2 Feb 2015 15:30:25 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id hN05HNetEGHq; Mon,  2 Feb 2015 15:30:25 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id 3016C3E6B97
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 15:30:25 +0530 (IST)
Date: Mon, 2 Feb 2015 15:30:23 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: yocto@yoctoproject.org
Message-ID: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <1451676.12.1422626878778.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: Yocto-custom kernel build issue
Thread-Index: toUn6dM6acAOF7kpNUzGdpfLEVnobQ==
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
Subject: Yocto-custom kernel build issue
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
X-List-Received-Date: Mon, 02 Feb 2015 10:00:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,
I want to add my own BSP layer to yocto and also we use our inhouse customizied kernel.
I add my BSP layer to yocto using yocto-bsp create command. 
I give the our curtomized kernel repositary path to the git path while creating the BSP.

After successfully creating the BSP layer when I run the "bitbake -k core-image-minimal" I got the error as follows.

Log data follows:
| DEBUG: Executing shell function do_kernel_checkout
| ERROR: S is not set to the linux source directory. Check
| ERROR: the recipe and set S to the proper extracted subdirectory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_kernel_checkout (log file is located at /home/testuser/poky/build/tmp/work/dhruwa-poky-linux/linux-yocto-custom/3.10.14+gitAUTOINC+f91e563c45-r0/temp/log.do_kernel_checkout.11798)


could you please help for resolving this issue.

Thanks and Regards,

Raghavendra.

