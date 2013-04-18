Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E4CE014DD
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 00:35:34 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3I7ZkQo021023; Thu, 18 Apr 2013 08:35:47 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id gpB_U07GI0_K; Thu, 18 Apr 2013 08:35:46 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3I7ZfTI021015
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Thu, 18 Apr 2013 08:35:43 +0100
Message-ID: <1366270503.10502.23.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Thu, 18 Apr 2013 08:35:03 +0100
In-Reply-To: <CAPhnLPAqTd39NUkKt0dv_=W1Dooodzdg3WJ_q0An+ZjQNgRtEw@mail.gmail.com>
References: <CAPhnLPAqTd39NUkKt0dv_=W1Dooodzdg3WJ_q0An+ZjQNgRtEw@mail.gmail.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.4_M6.rc2
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
X-List-Received-Date: Thu, 18 Apr 2013 07:35:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-04-17 at 13:14 -0700, Flanagan, Elizabeth wrote:
> We're delayed slightly for the 1.4_M6.rc2 build. The build should be
> soonish, once RP gives me the thumbs up. Please adjust your schedules
> accordingly, we're hoping to get this started in a few hours.

We do have a 1.6_M6.rc2 candidate build which is revision
87eb70243749e0e2431f98770746fa42002f4441 (dylan branch).

I suggest we start testing this with particular focus and prioritisation
on the systemd and sysvinit testing due to the changes that have gone in
last minute.

If any problems are discovered, please flag them ASAP as the plan would
be to abort this rc and rebuild if any issues in those areas are
discovered.

I should stress that DISTRO_FEATURES should not be changed in existing
build directories (reusing sstate is fine). Several of the init issues
we've see have been tracked down to this. Its never been supported
although is probably something we'll improve in 1.5 since it catches so
many people out. This note needs to be in the release notes as well.

Cheers,

Richard




