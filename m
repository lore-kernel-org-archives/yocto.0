Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 991334C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:24:37 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADOZ2Z002579;
	Wed, 10 Nov 2010 13:24:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02382-04; Wed, 10 Nov 2010 13:24:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADOMVR002572
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:24:26 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4CD9AFD5.3020307@linux.intel.com>
References: <4CD9AFD5.3020307@linux.intel.com>
Date: Wed, 10 Nov 2010 21:24:20 +0800
Message-ID: <1289395460.1272.244.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PULL] Distro Updates: Kernel, scripts and gplv2 cleanup
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
X-List-Received-Date: Wed, 10 Nov 2010 13:24:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-09 at 12:32 -0800, Saul Wold wrote:
> Saul Wold (1):
>    base.bbclass/poky.conf: Fix INCOMPATIBLE_LICENSE Whitelist checking

Please take a look at that commit, I've not taken it ;-).

I did take all the others.

Cheers,

Richard


