Return-Path: <fabrice.coulon@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0E70E006EF; Tue,  2 Dec 2014 05:09:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 487D0E0034B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 05:09:22 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 4EF362E2F6
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 14:09:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id cPPZ-VTdsZFM for <yocto@yoctoproject.org>;
	Tue,  2 Dec 2014 14:09:13 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 9170D2E325
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 14:09:13 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 79798E1C
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 14:09:13 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 6829CDFB
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 14:09:13 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 661503E2A2
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 14:09:13 +0100 (CET)
Received: from [10.92.161.3] (10.92.161.3) by xmail2.se.axis.com (10.0.5.74)
	with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Tue, 2 Dec 2014 14:09:13 +0100
Message-ID: <547DB99C.7000404@axis.com>
Date: Tue, 2 Dec 2014 14:07:40 +0100
From: Fabrice Coulon <fabrice.coulon@axis.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
Subject: Export bitbake variables between recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 13:09:27 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Is it possible to export one bitbake variable from one recipe and make it
available from inside another recipe? For example: we want to export 
from our
systemd_%.bbappend where the systemctl command has been installed, in 
order to,
from another recipe depending on systemd, refer to the absolute path where
systemctl was installed. Any ideas or suggestions on how to do that?

thanks,
Regards,

/Fabrice


