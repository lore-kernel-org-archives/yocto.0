Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC79BE00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 10:39:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGIdGZ6020085
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 10:39:16 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 10:39:16 -0800
Message-ID: <4EC40353.2090906@windriver.com>
Date: Wed, 16 Nov 2011 12:39:15 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CALs2vteGvK75Kwu8B4sxL+gPyrgN1SwOKTC97Bd=Xh_bdC==Lg@mail.gmail.com>
In-Reply-To: <CALs2vteGvK75Kwu8B4sxL+gPyrgN1SwOKTC97Bd=Xh_bdC==Lg@mail.gmail.com>
Subject: Re: /usr/bin/env dependencies
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
X-List-Received-Date: Wed, 16 Nov 2011 18:39:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/11 10:19 PM, Mike Tsukerman wrote:
> Hello,
>
> I'm trying to build my own image for my own machine configuration ( based on
> beagleboard )
> and get some errors. Please tell me what package is missing?
>
> error: Failed dependencies:
> | /usr/bin/env is needed by automake-1.11.1-r4.armv7ahf
> | /usr/bin/env is needed by slang-2.2.4-r6.armv7ahf
> | /usr/bin/env is needed by mc-4.7.5.2-r2.armv7ahf
> | /usr/bin/env is needed by autoconf-2.68-r3.armv7ahf
> | /usr/bin/env is needed by intltool-0.40.6-r5.armv7ahf
> | /usr/bin/env is needed by python-core-2.7.2-r0.0.armv7ahf
> | /usr/bin/env is needed by gnu-config-0.1+cvs20080123-r4.armv7ahf

Each of those packages contains a shell script that is invoked with:

#!/usr/bin/env ...

Likely the "..." bit is python.

Usually busybox or coreutils will provide the /usr/bin/env binary.

If your configuration has flattened the directory structure and removed "/usr", 
then each of those packages have flaws in them and are not respecting the 
revised "bindir" information -- otherwise you are simply missing functionality 
in either busybox or coreutils.

--Mark

> --
> Best regards, Mike Tsukerman
>
> jabber: miketsukerman@gmail.com <mailto:miketsukerman@gmail.com>
> jabber: warzon@jabnet.org <mailto:warzon@jabnet.org>
> skype: w_a_r_z_o_n
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


