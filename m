Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1680E01481
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 06:28:23 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2JDbEVT006626; Tue, 19 Mar 2013 13:37:14 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id MkMtKqarq0IE; Tue, 19 Mar 2013 13:37:14 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2JDb9Bg006606
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Tue, 19 Mar 2013 13:37:12 GMT
Message-ID: <1363699671.16482.101.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Maxin B. John" <maxin.john@enea.com>
Date: Tue, 19 Mar 2013 13:27:51 +0000
In-Reply-To: <20130319130619.GA41031@sestofb10.enea.se>
References: <20130319130619.GA41031@sestofb10.enea.se>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, tom.zanussi@linux.intel.com
Subject: Re: perf build breaks in poky master branch
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
X-List-Received-Date: Tue, 19 Mar 2013 13:28:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-03-19 at 14:06 +0100, Maxin B. John wrote:
> Hi,
> 
> Perf build fails while trying to build core-image-minimal for qemux86, 
> $ git clone git://git.yoctoproject.org/poky
> $ cd poky
> $ source oe-init-build-env
> $ bitbake core-image-minimal

Sorry about this, I merged a patch which didn't work in a build from
scratch and the autobuilder just reported the same issue. I've merged a
fix for it.

Cheers,

Richard


