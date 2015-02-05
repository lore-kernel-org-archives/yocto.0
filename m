Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86E37E00948; Thu,  5 Feb 2015 00:56:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 206FEE0082D
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 00:56:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id DF8973E6D4D
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 14:26:14 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id wryIDXrSbgDO; Thu,  5 Feb 2015 14:26:09 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id A88D93E6DB7;
	Thu,  5 Feb 2015 14:26:09 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id PIg19P8Blwlv; Thu,  5 Feb 2015 14:26:09 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id 9579E3E6DAD
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 14:26:09 +0530 (IST)
Date: Thu, 5 Feb 2015 14:26:09 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: yocto@yoctoproject.org
Message-ID: <448358.208.1423126569683.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: Yocto-custom kernel build issue
Thread-Index: toUn6dM6acAOF7kpNUzGdpfLEVnobdVZImWe
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
Subject: MIPS32r2 little endian bsp
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
X-List-Received-Date: Thu, 05 Feb 2015 08:56:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I need to create a bsp layer for my board which is having mips32r2 little endian processor.

I gone through the YOCTO BSP user manual bit there is no information for little endian.

When I create with the yoct-bsp command is taking the mips32 big endian only.

Could you please help me in resolving this issue.


Thanks and regards,

Raghavendra.

