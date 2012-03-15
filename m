Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85660E004D2
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 15:36:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2FMZxML028758;
	Thu, 15 Mar 2012 22:35:59 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28249-04; Thu, 15 Mar 2012 22:35:55 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2FMZqrT028752
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 15 Mar 2012 22:35:53 GMT
Message-ID: <1331850952.18586.158.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 15 Mar 2012 22:35:52 +0000
In-Reply-To: <cover.1331746641.git.paul.eggleton@linux.intel.com>
References: <cover.1331746641.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3] [PATCH 0/1] Fix QA errors
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
X-List-Received-Date: Thu, 15 Mar 2012 22:36:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-03-14 at 17:38 +0000, Paul Eggleton wrote:
> The following changes since commit 13df95beabc0c4ae374b245ce195174e64004a5d:
> 
>   qt-x11-free-common: Add version to LICENSE fields (2012-03-13 23:50:06 +0000)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib paule/qt3-qa
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-qa
> 
> Paul Eggleton (1):
>   qt-x11-free: fix QA errors

Merged to meta-qt3 master, thanks.

Richard


