Return-Path: <pwr@iae.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D9DFE00DFC; Wed, 30 Oct 2019 05:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.75.39.14 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from cpsmtpb-ews09.kpnxchange.com (cpsmtpb-ews09.kpnxchange.com
	[213.75.39.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9655E00D00
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 05:16:52 -0700 (PDT)
Received: from cpsps-ews25.kpnxchange.com ([10.94.84.191]) by
	cpsmtpb-ews09.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Wed, 30 Oct 2019 13:16:51 +0100
X-Brand: 7abm2Q==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.3 cv=OKhZIhSB c=1 sm=1 tr=0 cx=a_idp_e
	a=WB5lYbMG1jvHJ1f8o08CVQ==:117 a=WB5lYbMG1jvHJ1f8o08CVQ==:17
	a=8SZ6bD3cDFYA:10 a=IkcTkHD0fZMA:10 a=XobE76Q3jBoA:10
	a=CJbulvsZxZZhpf32YLIA:9 a=QEXdDO2ut3YA:10
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.14]) by cpsps-ews25.kpnxchange.com
	over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	Wed, 30 Oct 2019 13:16:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:subject:from:to;
	bh=f7j1O+GCeht19TagreOj96guWckTJb+YTqmy2M+PTf4=;
	b=R5FAHZYCewcYdaQeOXjGizydqafOEDlXX0yrMhe6dLQWsjf9j3xC3jqdBF1MUz1qbvtOe42vRgVZP
	5ETRoKR/VWG+pZtkR6D51g2jsxWOx1LDn/w9o9V01IrGFbQGAO4BoINd1PdO6MlqtYux+xcKWzmIKy
	MEiLq0cwca33RB04=
X-Originating-IP: 86.89.1.39
Received: from [192.168.2.198] (unknown [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id 271a0b14-fb0f-11e9-876f-00505699d6e5;
	Wed, 30 Oct 2019 13:16:51 +0100 (CET)
To: yocto@yoctoproject.org
From: R <pwr@iae.nl>
Message-ID: <111d936e-8879-6190-9287-32fcc5b192b5@iae.nl>
Date: Wed, 30 Oct 2019 13:16:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.2.0
MIME-Version: 1.0
X-OriginalArrivalTime: 30 Oct 2019 12:16:51.0145 (UTC)
	FILETIME=[E8E41B90:01D58F1B]
X-RcptDomain: yoctoproject.org
Subject: NooB: applying new patches to older files, where do I find the older files?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pwr@iae.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Oct 2019 12:16:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB

Hello List,

First I'm working on a unsupported distro (Manjaro) and try to get an 
older version (2.7.1) of poky working. I have ask a question before and 
Ross Burton pointed me in the direction of a patch.
Now I'm trying to apply that patch, however the patch is for a newer 
version of the original files, so I need to make my own patch for the 
older version of these files.
(reason: WARNING: Some of the context lines in patches were ignored. 
This can lead to incorrectly applied patches.)

The patch says: the file to be patch is e.g. /linux-user/syscall.c
My question is where can I find the original syscall.c before any 
patches are applied to it?

Just to be complete: I have tried the latest warrior branch and that 
worked fine. My objective is not just to get it working be also to get a 
grip on how the system works :-)

Thanks,
Robert.

