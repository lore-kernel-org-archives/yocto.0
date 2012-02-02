Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F9EDE00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 14:05:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q12M5FrO013298;
	Thu, 2 Feb 2012 22:05:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12868-03; Thu,  2 Feb 2012 22:05:11 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q12M55hu013289
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 2 Feb 2012 22:05:06 GMT
Message-ID: <1328220311.3895.64.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: tom.zanussi@intel.com
Date: Thu, 02 Feb 2012 22:05:11 +0000
In-Reply-To: <b2fef47b61925a090a9a97a0607d1cd9aae2d78e.1328142259.git.tom.zanussi@intel.com>
References: <cover.1328142259.git.tom.zanussi@intel.com>
	<b2fef47b61925a090a9a97a0607d1cd9aae2d78e.1328142259.git.tom.zanussi@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto/local.conf.sample.extended: add LICENSE_FLAGS_WHITELIST section
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
X-List-Received-Date: Thu, 02 Feb 2012 22:05:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-01 at 18:28 -0600, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add a new section for LICENSE_FLAGS_WHITELIST, containing a list of
> the current packages with LICENSE_FLAGS.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-yocto/conf/local.conf.sample.extended |   13 +++++++++++++
>  1 files changed, 13 insertions(+), 0 deletions(-)

Merged to master, thanks.

Richard


