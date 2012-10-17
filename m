Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64E05E011F3
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 23:26:19 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml208-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AQS91809; Wed, 17 Oct 2012 14:26:17 +0800 (CST)
Received: from SZXEML442-HUB.china.huawei.com (10.82.67.180) by
	szxeml208-edg.china.huawei.com (172.24.2.57) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Wed, 17 Oct 2012 14:25:43 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.70]) by
	szxeml442-hub.china.huawei.com ([10.82.67.180]) with mapi id
	14.01.0323.003; Wed, 17 Oct 2012 14:25:43 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Thread-Topic: .bashrc not being used by root account
Thread-Index: Ac2rt7NrZST1ne7WQCqI3BbCR8xoowAd999i
Date: Wed, 17 Oct 2012 06:25:43 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5711047B519@szxeml534-mbx.china.huawei.com>
References: <DDDB9E6645DE24488B8485B41A051F471D9618D2@Mercury.usurf.usu.edu>
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D9618D2@Mercury.usurf.usu.edu>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .bashrc not being used by root account
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
X-List-Received-Date: Wed, 17 Oct 2012 06:26:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You can check the same with  "strace -f bash"
You can see the files being loaded, as there is a rc file loading sequence =
exists for bash.

Regards,
Ramana

________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Jonathan Haws [Jonathan.Haws@sdl.usu.edu]
Sent: Tuesday, October 16, 2012 9:32 PM
To: yocto@yoctoproject.org
Subject: [yocto] .bashrc not being used by root account

I have modified the .bashrc file for the system, however the root account d=
oes not seem to use it by default.  What am I missing?  I would rather not =
have to source the .bashrc file every time I login as root.

Thanks,
Jonathan

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto=

