Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90649E00CEE; Wed, 27 Feb 2019 12:06:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E987E00AB0
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 12:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cD5npn1re4JzDFbLePArYaKUlZmndDwYRGWku0qQnNw=;
	b=hiJqCaoWx/TiMwHrWD4MjdmSbr
	R/EZnFTfdcudXG+0oxOUPGaZ0LMyjSNEygaEZxDMEs6sdyfwLgvLzNcDw278QaZ/6Yae09wm9dSew
	Hn6kXdJ7j2qG04BDWWFacVaaQpMHXCCVlWySzYzlTa759d+X81ENTkoJQQ+RARbHt0J6ifcPiq//o
	kY5TUxHcE3GYpqEsuVdFu9i/KHQMkIewem+fcH+aX39gigq8uTXYmhdek59HtIhBu17ltw5nFiRqq
	iRNN1XVsPu0flMStjlpZ6o84/Q/n891463PNbPOZZwodtZtJfKcwEob3Ylc8n7pN9ptdAs5zkChf3
	FXScxI7w==;
Received: from [213.221.150.139] (port=56584 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gz5TU-004O0E-62; Wed, 27 Feb 2019 21:06:42 +0100
To: Tom Rini <trini@konsulko.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
Date: Wed, 27 Feb 2019 21:06:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190227170614.GV12046@bill-the-cat>
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 20:06:44 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Thank you very much Tom for help. Here is my complete method:

git clone git://git.yoctoproject.org/poky -b thud
cd poky
cat << EOF > meta-poky/conf/distro/poky-ng.conf
require conf/distro/poky.conf
DISTRO = "poky-ng"

# Switch to systemd
DISTRO_FEATURES += "systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = ""
VIRTUAL-RUNTIME_syslog = ""
VIRTUAL-RUNTIME_login_manager = "shadow-base"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

# Replace busybox
PREFERRED_PROVIDER_virtual/base-utils = "coreutils"
VIRTUAL-RUNTIME_base-utils = "coreutils"
VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
VIRTUAL-RUNTIME_base-utils-syslog = ""
EOF
source oe-init-build-env
sed -i 's/^DISTRO.*/DISTRO = "poky-ng"/' conf/local.conf
bitbake core-image-minimal
runqemu core-image-minimal kvm

So as expected systemd is there and busybox is not. But there is a lot of
useful commands missing on the resulting QEMU image:

root@qemux86:~# ps
~sh: ps: command not found
root@qemux86:~# w
~sh: w: command not found
root@qemux86:~# find
~sh: find: command not found
root@qemux86:~# grep
~sh: grep: command not found
root@qemux86:~# ip addr
~sh: ip: command not found

I expected that all the limited busybox commands would be replaced by
the full
featured commands. How to fix that ?

Best Regards.
Jean-Christian de Rivaz

Le 27.02.19 à 18:06, Tom Rini a écrit :
> On Wed, Feb 27, 2019 at 01:16:56PM +0100, Jean-Christian de Rivaz wrote:
>
>> Hi all,
>>
>> After reading the thread "Removing busybox completely from the generated
>> image" I tested to reproduce the method but this doesn't work as expected.
>>
>> git clone git://git.yoctoproject.org/poky -b thud
>> cd poky
>> echo 'require conf/distro/poky.conf' > meta-poky/conf/distro/poky-ng.conf
>> echo 'DISTRO = "poky-ng"' >> meta-poky/conf/distro/poky-ng.conf
>> echo 'VIRTUAL-RUNTIME_base-utils = ""' >> meta-poky/conf/distro/poky-ng.conf
>> sed -i 's/^DISTRO.*/DISTRO = "poky-ng"/' conf/local.conf
>> bitbake core-image-minimal
>> runqemu core-image-minimal kvm
>>
>> After login as root there still a lot of links to busybox inside /sbin/
>> /bin/ /usr/sbin/ and /usr/bin/ .
>>
>> Can someone provides a working method ?
> You're missing a few more things, yes.  What I have is:
> # Switch to systemd
> DISTRO_FEATURES += "systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = ""
> VIRTUAL-RUNTIME_syslog = ""
> VIRTUAL-RUNTIME_login_manager = "shadow-base"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>
> # Replace busybox
> PREFERRED_PROVIDER_virtual/base-utils = "coreutils"
> VIRTUAL-RUNTIME_base-utils = "coreutils"
> VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
> VIRTUAL-RUNTIME_base-utils-syslog = ""
>
> If you aren't using systemd you'll need to move the login_manager
> example over as well, otherwise busybox gets pulled for that.
>
> I'm using the above on thud, today.  And that's not a 1:1 replacement as
> my image pulls in a number of other packages for various things I
> want/need.
>

