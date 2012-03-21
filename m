Return-Path: <ashishpandey@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE0C6E0070C
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 22:01:15 -0700 (PDT)
Received: from huawei.com (szxga05-in [172.24.2.49])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1700298XY2UK@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Wed, 21 Mar 2012 13:01:14 +0800 (CST)
Received: from szxrg02-dlp.huawei.com ([172.24.2.119])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1700AH5XXBID@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Wed, 21 Mar 2012 13:01:14 +0800 (CST)
Received: from szxeml212-edg.china.huawei.com ([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AHZ98144; Wed,
	21 Mar 2012 13:01:13 +0800
Received: from SZXEML412-HUB.china.huawei.com (10.82.67.91)
	by szxeml212-edg.china.huawei.com (172.24.2.181) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Wed, 21 Mar 2012 13:01:07 +0800
Received: from SZXEML532-MBX.china.huawei.com ([fe80::79c7:7b0b:cec1:322c])
	by szxeml412-hub.china.huawei.com ([10.82.67.91]) with mapi id
	14.01.0323.003; Wed, 21 Mar 2012 13:01:07 +0800
Date: Wed, 21 Mar 2012 05:01:06 +0000
From: Ashish Pandey <ashishpandey@huawei.com>
In-reply-to: <OFEA4B568B.582F38D7-ON652579C8.001AA88F-652579C8.001B875F@notesmail.huawei.com.cn>
X-Originating-IP: [10.18.96.98]
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-id: <F3906846C0EDD246B5CF75E8EDA3C47E138A620D@szxeml532-mbx.china.huawei.com>
MIME-version: 1.0
Accept-Language: en-IN, zh-CN, en-US
Thread-topic: Build failure because of do_fectch in Yocto-1.1
Thread-index: AQHNBx9RdTEx3W5vdk2uffuV+HR2JZZ0MHHx
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
References: <OFEA4B568B.582F38D7-ON652579C8.001AA88F-652579C8.001B875F@notesmail.huawei.com.cn>
Subject: Build failure because of do_fectch in Yocto-1.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 05:01:16 -0000
Content-type: multipart/alternative;
	boundary="Boundary_(ID_hcuGCI2HtrOWxi1yl9PYwQ)"
Content-language: en-IN

--Boundary_(ID_hcuGCI2HtrOWxi1yl9PYwQ)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: 7BIT

Hi All ,

  I am new to Yocto and I am trying to build linux image using Yocto-1.1 . I am not able to build completely , It is giving following error.

NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: Started
NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: Succeeded
ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed


I think it is not able to fetch linux-yocto_3.0 from git://git.yoctoproject.org/linux-yocto-3.0.

I do not have internet setup in my build machine, I have downloaded all the packages from a different machine and i have copied it to the build machine.

Following are the Build Machine ,Yocto setup and Error details:

1) Build machine:
Yocto@linux-todd:/home/yocto/poky-edison-6.0> uname -a
Linux linux-todd 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux

It is Open Suse 12.1.

2) Yocto Setup :
Yocto@linux-todd:/home/yocto/poky-edison-6.0/build> bitbake -k core-image-minimal
Loading cache: 100% |#######################################################################################################################################| ETA:  00:00:00
Loaded 1036 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue

3) Error :

NOTE: package linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2: task do_fetch: Failed
ERROR: Task 495 (/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_fetch) failed with exit code '1'
ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed

Is there anyway to build yocto on a machine which does not have internet and git ?
Please help me to fix this issue.








Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it!




--Boundary_(ID_hcuGCI2HtrOWxi1yl9PYwQ)
Content-type: text/html; charset=iso-8859-1
Content-transfer-encoding: 7BIT

<html dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style id="owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
</head>
<body fPStyle="1" ocsi="0">
<div style="direction: ltr;font-family: Tahoma;color: #000000;font-size: 10pt;">
<div><font size="2" face="sans-serif">Hi All , </font><br>
<br>
<font size="2" face="sans-serif">&nbsp; I am new to Yocto and I am trying to build linux image using Yocto-1.1 . I am not able to build completely , It is giving following error.</font>
<br>
<br>
<font size="2" face="sans-serif">NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: Started</font>
<br>
<font size="2" face="sans-serif">NOTE: package core-image-minimal-1.0-r0: task do_populate_sysroot: Succeeded</font>
<br>
<font size="2" face="sans-serif">ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed</font>
<br>
<br>
<br>
<font size="2" face="sans-serif">I think it is not able to fetch linux-yocto_3.0 from git://git.yoctoproject.org/linux-yocto-3.0.</font>
<br>
<br>
<font size="2" face="sans-serif">I do not have internet setup in my build machine, I have downloaded all the packages from a different machine and i have copied it to the build machine.</font>
<br>
<br>
<font size="2" face="sans-serif">Following are the Build Machine ,Yocto setup and Error details:</font></div>
<div>&nbsp;<br>
<font size="2" face="sans-serif"><b>1) Build machine:</b></font> <br>
<font color="blue" size="2" face="sans-serif">Yocto@linux-todd:/home/yocto/poky-edison-6.0&gt; uname -a</font>
<br>
<font color="blue" size="2" face="sans-serif">Linux linux-todd 3.1.0-1.2-desktop #1 SMP PREEMPT Thu Nov 3 14:45:45 UTC 2011 (187dde0) i686 i686 i386 GNU/Linux</font>
<br>
<br>
<font color="blue" size="2" face="sans-serif">It is Open Suse 12.1.</font> <br>
<br>
<font size="2" face="sans-serif"><b>2) Yocto Setup :</b></font> <br>
<font color="blue" size="2" face="sans-serif">Yocto@linux-todd:/home/yocto/poky-edison-6.0/build&gt; bitbake -k core-image-minimal</font>
<br>
<font color="blue" size="2" face="sans-serif">Loading cache: 100% |#######################################################################################################################################| ETA: &nbsp;00:00:00</font>
<br>
<font color="blue" size="2" face="sans-serif">Loaded 1036 entries from dependency cache.</font>
<br>
<br>
<font color="blue" size="2" face="sans-serif">OE Build Configuration:</font> <br>
<font color="blue" size="2" face="sans-serif">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;= &quot;1.13.3&quot;</font>
<br>
<font color="blue" size="2" face="sans-serif">TARGET_ARCH &nbsp; &nbsp; &nbsp; = &quot;i586&quot;</font> <br>
<font color="blue" size="2" face="sans-serif">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; = &quot;linux&quot;</font> <br>
<font color="blue" size="2" face="sans-serif">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = &quot;qemux86&quot;</font>
<br>
<font color="blue" size="2" face="sans-serif">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= &quot;poky&quot;</font> <br>
<font color="blue" size="2" face="sans-serif">DISTRO_VERSION &nbsp; &nbsp;= &quot;1.1&quot;</font> <br>
<font color="blue" size="2" face="sans-serif">TUNE_FEATURES &nbsp; &nbsp; = &quot;m32 i586&quot;</font>
<br>
<font color="blue" size="2" face="sans-serif">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;= &quot;&quot;</font> <br>
<font color="blue" size="2" face="sans-serif">meta</font> <br>
<font color="blue" size="2" face="sans-serif">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;= &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</font>
<br>
<br>
<font color="blue" size="2" face="sans-serif">NOTE: Resolving any missing task queue dependencies</font>
<br>
<font color="blue" size="2" face="sans-serif">NOTE: Preparing runqueue</font> <br>
<br>
<font size="2" face="sans-serif"><b>3) Error :</b></font> <br>
<br>
<font color="blue" size="2" face="sans-serif">NOTE: package linux-yocto-3.0.4&#43;git1&#43;d05450e4aef02c1b7137398ab3a9f8f96da74f52_1&#43;72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2: task do_fetch: Failed</font>
<br>
<font color="blue" size="2" face="sans-serif">ERROR: Task 495 (/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_fetch) failed with exit code '1'</font>
<br>
<font color="blue" size="2" face="sans-serif">ERROR: '/home/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed</font>
<br>
<br>
<font size="2" face="sans-serif">Is there anyway to build yocto on a machine which does not have internet and git ?</font>
<br>
<font size="2" face="sans-serif">Please help me to fix this issue.</font> <br>
<br>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
<p>&nbsp;</p>
<div style="FONT-FAMILY: Tahoma; FONT-SIZE: 13px">
<p><font color="#000080">Regards,</font></p>
<p><font color="#000080">Ashish</font></p>
<p><font color="#000080">Huawei Technology</font></p>
<p><font color="#000080"></font>&nbsp;</p>
<p><font color="#666699"><font size="2"><font face="Calibri">This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein
 in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately
 and delete it! </font></font><br>
</font></p>
</div>
</div>
<div style="FONT-FAMILY: Times New Roman; COLOR: #000000; FONT-SIZE: 16px">
<div style="DIRECTION: ltr" id="divRpF799243">&nbsp;</div>
<div></div>
<div>&nbsp;</div>
</div>
</div>
</body>
</html>

--Boundary_(ID_hcuGCI2HtrOWxi1yl9PYwQ)--
