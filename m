Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC5EE01574
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 02:50:29 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r579tNNv011271; Fri, 7 Jun 2013 10:55:23 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ZJFaw2GM1A07; Fri,  7 Jun 2013 10:55:22 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r579tIfm011268
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 7 Jun 2013 10:55:20 +0100
Message-ID: <1370598605.6864.16.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Date: Fri, 07 Jun 2013 10:50:05 +0100
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0157EC80@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0157EC80@039-SN2MPN1-021.039d.mgd.msft.net>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto run on host with other CPU types
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
X-List-Received-Date: Fri, 07 Jun 2013 09:50:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-06-06 at 06:48 +0000, Luo Zhenhua-B19537 wrote:
> Except x86/x86-64 hosts, can Yocto support to run on hosts with other
> CPU arch, e.g.  ARM, Powerpc, etc?

You mean as the system to run the builds on? In theory that would be
possible although most people tend to use x86 and the others aren't
tested afaik.

Cheers,

Richard


