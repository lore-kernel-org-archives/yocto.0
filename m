Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B3AE00307
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2011 18:26:37 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBV2QZMB022267
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Dec 2011 18:26:35 -0800 (PST)
Received: from [128.224.162.225] (128.224.162.225) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 30 Dec 2011 18:26:35 -0800
Message-ID: <4EFE72E3.2060509@windriver.com>
Date: Sat, 31 Dec 2011 10:26:43 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [128.224.162.225]
Subject: Do we need run LTP/POSIX tests on qemu?
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
X-List-Received-Date: Sat, 31 Dec 2011 02:26:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I am fixing failed test cases of POSIX tests, and I meet some cases just 
fail on qemu platform just as qemuppc or qemumips. I don't know why we 
test LTP/POSIX on the qemu platforms at the beginning, and I am 
wondering does it worth for us to do that because few people will make 
qemu platforms to get the POSIX or LTP identified.

Regards,
Kai

