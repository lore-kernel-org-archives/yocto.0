Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63048E0153B
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:38:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r8A7cZcQ002127
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Sep 2013 00:38:35 -0700 (PDT)
Received: from [128.224.159.157] (128.224.159.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 10 Sep 2013 00:38:35 -0700
Message-ID: <522ECC78.7030700@windriver.com>
Date: Tue, 10 Sep 2013 15:38:32 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: JC <jc@vtkloud.com>
References: <522EBE6C.5060108@vtkloud.com>
In-Reply-To: <522EBE6C.5060108@vtkloud.com>
X-Originating-IP: [128.224.159.157]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: misleading dependencies between packages
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
X-List-Received-Date: Tue, 10 Sep 2013 07:38:39 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


于 2013年09月10日 14:38, JC 写道:
> Hi,
>
> I have many issues with Apache2 package so I thought I would reinstall 
> it. I used smart (smart install apache2) and here is the very strange 
> issue I got:
>
> Installing packages (20):
> apache2-2.4.3-r1@armv6_vfp libgdbm4-1.10-r3@armv6_vfp
> busybox-1.20.2-r8@armv6_vfp libpcre1-8.32-r1@armv6_vfp
> busybox-syslog-1.20.2-r8@armv6_vfp libperl5-5.14.3-r1@armv6_vfp
> busybox-udhcpc-1.20.2-r8@armv6_vfp libssl1.0.0-1.0.1e-r15.0@armv6_vfp
> libapr-1-0-1.4.6-r2@armv6_vfp libuuid1-2.22.2-r3@armv6_vfp
> libaprutil-1-0-1.5.1-r0@armv6_vfp libz1-1.2.7-r0@armv6_vfp
> libc6-2.17-r3@armv6_vfp openssl-1.0.1e-r15.0@armv6_vfp
> libcrypto1.0.0-1.0.1e-r15.0@armv6_vfp perl-5.14.3-r1@armv6_vfp
> libexpat1-2.1.0-r0@armv6_vfp 
> update-alternatives-cworth-1:0.1.8+svnr649-r13.0@armv6_vfp
> libgcc1-4.7.2-r20@armv6_vfp update-rc.d-0.7-r5@all
>
> 4.8MB of package files are needed. 9.7MB will be used.
>
> Confirm changes? (Y/n): Y
>
> Fetching packages...
> [Snip lots of downloads]
> -> http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv6_vfp.rpm
> apache2-2.4.3-r1.armv6_vfp.rpm 
> ############################################################################## 
> [ 95%]
>
> error: Failed to download packages:
> error: 
> http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.armv6_vfp.rpm: 
> File not found

1. If your remote repo has updated, you need to recreate the repodata by 
using createrepo
2. You need to run "smart update" to update the information before run 
"smart install package". If you want to install package from remote 
repo, "smart update" is required because "smart install package" doesn't 
update the information automatically.


Thanks,
Yi

>
>
> And indeed, I do not have r3 of libuuid1 but r5. This is not the first 
> time I run in this issue, it's unfortunately quite common. And I can't 
> even figure who is generating libuuid1 :(
>
> Any idea?
>
> Regards
> Jay
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


