Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97077E009F0; Thu, 28 May 2015 04:15:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B9DE009E7
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 04:15:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 May 2015 04:15:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,512,1427785200"; d="scan'208";a="733044486"
Received: from ecurley-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.28.106])
	by fmsmga002.fm.intel.com with ESMTP; 28 May 2015 04:15:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Date: Thu, 28 May 2015 12:15:22 +0100
Message-ID: <4977390.O0q4MNQSA8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CACTu1Lg-0R2MK+zbfTQWVfN2DGRFDA3nhpL+OHw_eMKOhLGOYA@mail.gmail.com>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<11192520.5TF2irfV67@peggleto-mobl.ger.corp.intel.com>
	<CACTu1Lg-0R2MK+zbfTQWVfN2DGRFDA3nhpL+OHw_eMKOhLGOYA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Thu, 28 May 2015 11:15:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 23 May 2015 11:12:22 yocto yocto wrote:
> after looking at the config.log that I sent you I realized that all "unsafe
> for cross-compilation" message occur because the recipe tries to link
> against my local installation of postgresql-server-dev-9.3 and libpq-dev
> lying in /usr/lib. Consider the following line:
> 
> "skipping incompatible /usr/lib/libpq.so when searching for -lpq"
> 
> The recipe is doing right to skip the library, because I am using Ubuntu
> 64bit. Therefore my local installations of postgresql-server-dev-9.3 and
> libpq-dev are 64 bit versions. So yesterday evening/night I did the
> following:
> 
> - I installed a virtual machine Ubuntu 32 bit
> - I downloaded the latest linux sources (edison-src-ww18-15-1.tgz)
> - I added the meta-openembbed layer (daisy branch)
> - I removed the php recipe from the daisy branch and replaced it by the
> latest from the master branch
> - I added PACKAGECONFIG_pn-php = "mysql sqlite3 pgsql" in local.conf
> - I added my own layer
> - I built the image
> 
> Result: Everything builds fine from scratch beside the php recipe. I
> appended the latest config.log. As you can see some dependencies are
> missing resulting in linker errors and I still get the "unsafe for
> cross-compilation" error.
>
> Is the approach of the recipe correct (linking against local packages?).

Certainly not. A recipe built for the target machine should never be picking 
up includes or libraries from the host, that's why this check exists. We need 
to ensure the configure script does not look at host locations at all. I guess 
one reason we haven't picked up on this is that by default postgres 
functionality is disabled.

> What is your system configuration? Do you have any ideas or do you know a
> person who might help?

The system I did my most recent build on is a CentOS 6 machine, but that's 
probably not why it works for me - it likely works for me because I simply 
don't have postgres or its development files installed, so there's nothing for 
the configure script to find on the host.

Unfortunately this is a case where someone is going to have to dig into the 
php configure script, find out how that -L/usr/lib is getting into the linker 
path, and then stop that from happening; depending on how it is getting in 
there that may be an additional argument to the configure script or it might 
require patching the configure.ac file. Using "grep" and a little knowledge of 
how autoconf works this shouldn't be too difficult, but it's not something I 
have time for at the moment.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

