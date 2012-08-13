Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BE95E0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 09:38:43 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1T0xf7-0006fS-Gu; Mon, 13 Aug 2012 17:38:41 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <5029088A.4030909@communistcode.co.uk>
Date: Mon, 13 Aug 2012 17:38:43 +0100
Message-Id: <7CF86E24-B6F0-4B99-BBB2-7E9BB4C96F0B@keylevel.com>
References: <5029026B.90602@communistcode.co.uk>
	<CAK18fxEWCkDGeG=TWnS-YKUQdwp+bQLkFGDD3cPwWp96ghRt6w@mail.gmail.com>
	<5029088A.4030909@communistcode.co.uk>
To: ml@communistcode.co.uk
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Mon, 13 Aug 2012 16:38:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 13 Aug 2012, at 15:00, Jack Mitchell wrote:

> On 13/08/12 14:51, Andrei Gherzan wrote:
>>=20
>> On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitchell =
<ml@communistcode.co.uk <mailto:ml@communistcode.co.uk>> wrote:
>>=20
>>    Good afternoon everyone,
>>=20
>>    I am trying (yet again) to get yocto to build for the Raspberry Pi
>>    and I am falling at the do_fetch hurdle on the RasPi kernel.
>>=20
>>       ERROR: Fetcher failure: Fetch command export HOME=3D"/home/jack";=

>>       export SSH_AGENT_PID=3D"1350"; export
>>       SSH_AUTH_SOCK=3D"/home/jack/.cache/keyring-fjEm9a/ssh"; export
>>          =
GIT_CONFIG=3D"/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-=
linux/etc/gitconfig";
>>       export
>>          =
PATH=3D"/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-ras=
p/raspberry/tmp/sysroots/x86_64-linux/usr/bin/armv6-vfp-poky-linux-gnueabi=
:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/raspberrypi/usr/bin/=
crossscripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-l=
inux/usr/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-=
linux/usr/bin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-=
linux/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-lin=
ux//bin:/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-ras=
p/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbi=
n:/usr/bin/core_perl";
>>       git clone --bare --mirror
>>    git://github.com/raspberrypi/linux.git
>>    <http://github.com/raspberrypi/linux.git>
>>=20
>>=20
>> Does this work in a shell? Just try to clone it on your computer.
>>=20
>> ag
>=20
> Yes, cloning it now without issues - it took a while to get going and =
someone has suggested that it might be timing out within bitbake...


I've had similar issues in the past that seemed to be caused by Github. =
If I ran a manual fetch I could see errors relating to compressed =
folders (I think - was a while back) that couldn't be found. It sorted =
itself after a day or so.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




