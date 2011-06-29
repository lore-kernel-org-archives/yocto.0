Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B9D74C8007E
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 12:40:59 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5THeth9000457
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 10:40:55 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 29 Jun 2011 10:40:54 -0700
Message-ID: <4E0B63A6.3040604@windriver.com>
Date: Wed, 29 Jun 2011 12:40:54 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>	<4E0A611D.9040604@linux.intel.com>
	<CFBC532374C38D45810FA00BC2D2C204016E8BA010@irsmsx502.ger.corp.intel.com>
In-Reply-To: <CFBC532374C38D45810FA00BC2D2C204016E8BA010@irsmsx502.ger.corp.intel.com>
Subject: Re: Getting pseudo from yocto/poky toolchain working with my build
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
X-List-Received-Date: Wed, 29 Jun 2011 17:40:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 6/29/11 2:17 AM, O'donoghue, Bryan wrote:
> Saul, Richard.
> 
> Thanks for the suggestions re: building the whole thing from scratch.
> 
> In a previous life using openembedded our solutions for slow builds were an array of ASSUME_PROVIDEDs. I'll try the build the world approach instead !
> 
> Saul I'll send you along the logfiles off-list, one thing is that the build process looks for 
> 
> ASSUME_PROVIDED += "sqlite3-native"
> /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/i686-linux/usr/include/sqlite3.h
> Instead of /usr/include/sqlite3.h !

I don't have time to implement/try this right now.. but one suggestion would be
to change the meta/recipes-devtools/pseudo/pseudo.inc so that the configure
calls pass the location of sqlite conditionally.  Currently it's using:

--with-sqlite=${STAGING_DIR_TARGET}${exec_prefix}

Simply checking for the existance of
${STAGING_DIR_TARGET}${include_prefix}/sqlite3.h and only passing --with-sqlite=
should be enough.  (it will fall back to the host otherwise.. and if the host
version is not sufficient it will error.)

--Mark

> 
> Bryan
> 
> -------------------------------------------------------------
> Intel Ireland Limited (Branch)
> Collinstown Industrial Park, Leixlip, County Kildare, Ireland
> Registered Number: E902934
> 
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


