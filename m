Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D1074C8086E
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 09:37:41 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1KFbZcH006061
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Feb 2011 07:37:35 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 20 Feb 2011 07:37:34 -0800
Message-ID: <4D61353D.9040808@windriver.com>
Date: Sun, 20 Feb 2011 09:37:33 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
	<4D612A83.7040302@windriver.com>
	<72C3267D-6313-42A0-A105-A288B7576F53@keylevel.com>
In-Reply-To: <72C3267D-6313-42A0-A105-A288B7576F53@keylevel.com>
X-Originating-IP: [172.25.36.226]
Cc: yocto@yoctoproject.org
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sun, 20 Feb 2011 15:37:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 2/20/11 9:31 AM, Chris Tapp wrote:
> On 20 Feb 2011, at 14:51, Mark Hatle wrote:
> 
>> If you already have a built copy of netbase in your sstate-cache,  
>> all clean will
>> do is remove the built version, and resync from the cache.  (bitbake  
>> -c cleanall
>> will remove the sstate-cache files as well, forcing a complete  
>> rebuild from
>> fetch down to packaging...)
> 
> That's what I thought, but if I look to see the sstate files that  
> exist after building I see:
> 
> ls sstate-cache/sstate-net*
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
> i586-1-5116b681b84a7131255c1771674a020a_deploy-ipk.tgz
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
> i586-1-5116b681b84a7131255c1771674a020a_deploy-ipk.tgz.siginfo
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
> i586-1-733405fb78b4c7e19a746582a97504b2_deploy-rpm.tgz
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
> i586-1-733405fb78b4c7e19a746582a97504b2_deploy-rpm.tgz.siginfo
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
> i586-1-7422fec9d26be091358f8e930110bf37_populate-sysroot.tgz
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1- 
> i586-1-7422fec9d26be091358f8e930110bf37_populate-sysroot.tgz.siginfo
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1-i586-1- 
> f1585ecd0d04332f3ff9b372cac08dd0_package.tgz
> sstate-cache/sstate-netbase-qemux86-poky-linux-4.41-r1-i586-1- 
> f1585ecd0d04332f3ff9b372cac08dd0_package.tgz.siginfo
> 
> bitbake -c cleanall netbase reports:
> ...
> NOTE: package netbase-4.41-r1: task do_cleanall: Started
> NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
> qemux86-poky-linux-4.41-r1- 
> i586-1-4c81cdca2e1c8da43ee609321b93895f_populate-sysroot.tgz
> NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
> qemux86-poky-linux-4.41-r1- 
> i586-1-4c81cdca2e1c8da43ee609321b93895f_package.tgz
> NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
> qemux86-poky-linux-4.41-r1- 
> i586-1-4c81cdca2e1c8da43ee609321b93895f_deploy-rpm.tgz
> NOTE: Removing /home/chris/yocto/sjs-build/sstate-cache/sstate-netbase- 
> qemux86-poky-linux-4.41-r1- 
> i586-1-4c81cdca2e1c8da43ee609321b93895f_deploy-ipk.tgz
> NOTE: Removing /home/chris/yocto/yocto-downloads/netbase_4.41.tar.gz*
> NOTE: package netbase-4.41-r1: task do_cleanall: Succeeded
> 
> Which looks to me like it just tried to delete the wrong files.  
> Looking in sstate-cache shows that the original files are still present.

To me it looks like it deleted exactly what you asked it to.  All of the
sstate-netbase-* files, and the downloaded netbase_4.41.tar.gz.

The siginfo files, if they were not deleted won't matter because there is no
matching sstate-cache file.  If they do exist, it's likely a small bug -- but
not one to impact functionality.

> This is with a virgin laverne-4.0.1.
> 
>> To avoid this, the best way (after changing the netbase) is to  
>> adjust the PR
>> within the recipe.
>>
>> My suggestion is if the PR is "12", change it to "12.1" on your first
>> modification, "12.2" on your second, etc..
> 
> I'll give that a try. Thanks.

But yes, the best way is to tell bitbake you have a new version rather then
trying to keep cleaning out the older versions and rebuilding them.

For the latest changes in master, we've got planned a bit more control then
simply "clean" and "cleanall", but I don't believe it's implemented yet.

--Mark

