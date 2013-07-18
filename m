Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0DB4E013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 06:58:01 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml213-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id BEU42773; Thu, 18 Jul 2013 21:57:31 +0800 (CST)
Received: from SZXEML402-HUB.china.huawei.com (10.82.67.32) by
	szxeml213-edg.china.huawei.com (172.24.2.30) with Microsoft SMTP Server
	(TLS) id 14.1.323.7; Thu, 18 Jul 2013 21:57:29 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.97]) by
	szxeml402-hub.china.huawei.com ([::1]) with mapi id 14.01.0323.007;
	Thu, 18 Jul 2013 21:57:23 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"mark.hatle@windriver.com" <mark.hatle@windriver.com>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>, Saul Wold
	<sgw@linux.intel.com>
Thread-Topic: [RFC] Binary Configuration support design
Thread-Index: AQHOg75CGvRDtYOtikeMrqDt8pLCFA==
Date: Thu, 18 Jul 2013 13:57:23 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5712C6FA1DF@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Irfan rehman <irfan.rehman@huawei.com>,
	Sanil kumar <sanil.kumar@huawei.com>
Subject: [RFC] Binary Configuration support design
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
X-List-Received-Date: Thu, 18 Jul 2013 13:58:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
    I have intiated few discussions earlier to support binary configuration=
 tool,
   which allows configuration of post built binaries to generate custom ima=
ge, without a need to rebuild from source.
=20
    It is being tracked under bug 3252.
    Design to realize the same is updated in wiki. https://wiki.yoctoprojec=
t.org/wiki/Binary_configuration_support
    Please go through it and provide comments, so that I can proceed to sub=
mit patches.

Regards,
Ramana=

