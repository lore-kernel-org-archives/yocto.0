Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935BFE01213
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 17:12:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7V0BxoT004335;
	Wed, 31 Aug 2011 01:11:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03827-05; Wed, 31 Aug 2011 01:11:55 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7V0Bnus004329
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 01:11:50 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
Date: Wed, 31 Aug 2011 01:11:38 +0100
Message-ID: <1314749498.5939.450.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: linux-yocto-rt build fail for sugarbay bsp on grub recipe
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
X-List-Received-Date: Wed, 31 Aug 2011 00:12:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-30 at 16:59 -0700, Bodke, Kishore K wrote:
> Hello All,
> 
>  
> 
> I am trying to build linux-yocto with rt kernel for sugarbay bsp and
> it fails for the grub recipe.
> 
>  
> 
> Attached is the build log.  
> 
>  
> 
> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
> bitbake -e | egrep "^WARN_QA="
> 
> WARN_QA="dev-so rpaths debug-deps dev-deps debug-files arch la2
> pkgconfig desktop la ldflags perms useless-rpaths"
> 
> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
> bitbake -e | egrep "^ERROR_QA="
> 
> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
> 
>  
> 
> Please let me know what could be the issue.

Could you include the config.log file mentioned in the error report
please?

This should be somewhere like
usr/local/src/crf/test/buildsugarbayrt/tmp/work/x86_64-poky-linux/grub-1.98-r1/*/config.log

Cheers,

Richard



