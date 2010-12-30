Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29A794C81003
	for <yocto@yoctoproject.org>; Thu, 30 Dec 2010 03:20:12 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBU9LKgv001037; Thu, 30 Dec 2010 09:21:21 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 5onsdM5QeQiJ; Thu, 30 Dec 2010 09:21:20 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBU9LCkm001032
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 09:21:14 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19A9BCD@shsmsx502.ccr.corp.intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19A9BCD@shsmsx502.ccr.corp.intel.com>
Date: Thu, 30 Dec 2010 09:19:33 +0000
Message-ID: <1293700773.17519.9921.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: default dependencies not built in "bitbake -b"
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
X-List-Received-Date: Thu, 30 Dec 2010 09:20:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-28 at 10:21 +0800, Lu, Lianhao wrote:
> Hi fellows,
> 
> Does anyone know why "bitbake -b <.bbfile>" fails on a newly cloned
> poky tree, complaining about the cross-compiler can not be found in
> the PATH. Does  "bitbake -b" build the default dependencies?

This is the intended behaviour for -b. It will not parse all .bb files
and it will not resolve dependencies outside of the specified .bb file.

Cheers,

Richard




