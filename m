Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98AEFE00798; Thu, 28 Aug 2014 09:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA7EE00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 09:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=Ir/wvVN4DeGdzKiXxJD5Fo4op8bk0MgdRLVOd8sbkmM=; 
	b=tfj5ABndM6v92UxgTo8rFUKXiuGNTuTxsHTtGgmqkYmxBiGNCE0fKKARv+kvrhK9LReW6pi/VUB2d8n9RD/nC+icVBGUiu2kRgvA15X5EB21R+NBxvqpyNmWM7tlcb7IVs+9z51lOp+9eVwgoJ5+BvgPO/Mrw7GdZAUGgoGHJNM=;
Received: from [109.224.171.0] (port=36588
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XN30M-0013Rr-Ot; Thu, 28 Aug 2014 17:57:00 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <53FD8CEB.8010504@gmail.com>
Date: Thu, 28 Aug 2014 17:57:00 +0100
Message-Id: <E3B47DAE-345A-46B5-BA2C-BCD47795773F@keylevel.com>
References: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
	<53FCE7DD.7010102@gmail.com>
	<A12629B8-0554-4039-8796-8E1585744D30@keylevel.com>
	<53FD8CEB.8010504@gmail.com>
To: Sven Ebenfeld <sven.ebenfeld@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: systemd - how do I wait for a driver to load?
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
X-List-Received-Date: Thu, 28 Aug 2014 16:57:18 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 27 Aug 2014, at 08:46, Sven Ebenfeld <sven.ebenfeld@gmail.com> wrote:

>=20
>=20
> Am 26.08.2014 22:51, schrieb Chris Tapp:
>>=20
>> On 26 Aug 2014, at 21:02, Sven Ebenfeld <sven.ebenfeld@gmail.com> =
wrote:
>>=20
>>> You should look at  "ConditionPathExists=3D" Options of =
systemd-units.
>>=20
>> Thanks, that looks like it would do the job. I was hoping not to hard =
code paths as they may change if a configuration file is changed, but...
>>=20
>>> Otherwise if udev is loading your device module, you could add the
>>> device-unit to "Requires=3D" option.
>>=20
>> This sounds better. Is there an easy way to tell if udev did load the =
module? There's nothing obvious in the syslog.
>=20
> If you didn't load the module by hand it's probably udev. If you =
didn't
> run modprobe or insmod. Then you should try to create a device-unit =
for
> the device.
>=20
> For /dev/dvb/adaptor the unit should probably be something like
> dev-dvb-adaptor.device .

Thanks. I've now got a udev rule firing when the device loads.

I'm using this to create a device alias (SYMLINK) so I can get =
consistent names, and this is working great.

I've added TAG+=3D"systemd" to the rule and I'm getting a .device =
generated automatically when the driver loads. However, the name for =
this isn't friendly (lots of bus id components). Is there a way to =
create my own name as my service doesn't want to know where the device =
is on the bus?

I've tried adding something like =
ENV{SYSTEMD_WANTS}=3D"some-new-name.device" - this also gets created, =
but it never becomes active (and can't be manually started).

> Am 26.08.2014 21:52, schrieb Chris Tapp:
>>>> I've got a service running under systemd that will only start once =
a kernel module has loaded and created its /dev/dvb/adaptor nodes.
>>>>=20
>>>> Unfortunately, it doesn't load until after the service has failed =
and gone into an error state due to too many restarts.
>>>>=20
>>>> I could "fix" this by increasing the restart interval, but is there =
a way of adding a dependancy on the kernel module?
>>>>=20
>>>> --
>>>>=20
>>>> Chris Tapp
>>>> opensource@keylevel.com
>>>> www.keylevel.com
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>>=20

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





