Return-Path: <sauravkg@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00DABE014D5
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 04:30:21 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml214-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AZV58854; Fri, 29 Mar 2013 19:30:20 +0800 (CST)
Received: from SZXEML405-HUB.china.huawei.com (10.82.67.60) by
	szxeml214-edg.china.huawei.com (172.24.2.29) with Microsoft SMTP Server
	(TLS) id 14.1.323.7; Fri, 29 Mar 2013 19:29:49 +0800
Received: from blrprnc04ns (10.18.96.93) by szxeml405-hub.china.huawei.com
	(10.82.67.60) with Microsoft SMTP Server id 14.1.323.7; Fri, 29 Mar 2013
	19:29:46 +0800
From: saurav <sauravkg@huawei.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Mar 2013 16:59:46 +0530
Message-ID: <002d01ce2c70$b7a27640$26e762c0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: Ac4scLcOt4V4jC/tThSjmgf5A3V2tg==
X-Originating-IP: [10.18.96.93]
X-CFilter-Loop: Reflected
Subject: Doubt about layer priority and package version preference
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sauravkg@huawei.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Mar 2013 11:30:22 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Hi,

I am having some doubt about the yocto 1.3.  can anyone clarify the same?

Is there any change done in yocto 1.3 about the layer priority and package
version preference? I observed that 

In yocto1.2: Package version takes preference over the layer priority.  Ex.
If 1.0 version of package-1 is present in layer1 with higher priority then
layer2 which contains 2.0 version of package-1, then while building 2.0
version of package-1 is considered though layer priority is otherwise but

In Yocto1.3: Layer priority takes preference over package version. 

Regards,
Saurav




