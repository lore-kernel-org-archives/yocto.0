Return-Path: <raj.khem@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC68E002F9
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:43:37 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id up14so10527363obb.39
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Cvza40zf4vXc4PHy8XHUhP/1y62r4bas78xYVqbY5Xc=;
	b=z84V01fcl7E6T0qxnKGcn1HaQ/qw4lWgz01+m/NrD+5z/fuG+XdI0Fc1wOnes6XGzI
	hrJwzpudhsiD0I6zCm6i68omq4tleAYyf/xTHiZG+ksDELtnyy4lsVroJNt6+3MAgn9j
	2fvHNfRSvzyrO+Dse3vrntT4OJadOwPLkBzZej95LXlEzRSfRE9pm4TTChdMqJPv+PVD
	NgZ7fm5SeSP1vE5ajLxlzIZclUAYd6PfYdCFG25G/5BbssMvg9ulzOZIbMQkhkRSR6kS
	bAQ8veCRF8RGk3+727eJK4Uxjk/6K/lTReLR+af/g02Um4FdO9pwNt2Yj79IBMjs9vEH
	T5bg==
X-Received: by 10.60.58.71 with SMTP id o7mr5303016oeq.51.1376412217046;
	Tue, 13 Aug 2013 09:43:37 -0700 (PDT)
Received: from [172.23.7.190] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id a18sm39890205obf.7.2013.08.13.09.43.34
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 Aug 2013 09:43:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LY-7xFkBT7B4zWA3FTGE+smpWsujrCeLVZHuVPpgbO_aQ@mail.gmail.com>
Date: Tue, 13 Aug 2013 09:43:35 -0700
Message-Id: <DF8021D0-7106-4D06-8F4B-F0386D5AA37C@gmail.com>
References: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
	<D9E64E73-EE3C-45F2-BC68-766D4CD45BDC@gmail.com>
	<CAJTo0LY-7xFkBT7B4zWA3FTGE+smpWsujrCeLVZHuVPpgbO_aQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: Using tmpfs for WORKDIR
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
X-List-Received-Date: Tue, 13 Aug 2013 16:43:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 13, 2013, at 9:39 AM, "Burton, Ross" <ross.burton@intel.com> =
wrote:

> On 13 August 2013 17:37, Khem Raj <raj.khem@gmail.com> wrote:
>> This seems reasonable especially for folks who don't want to keep =
intermediate objects around
>> in build tree. I also have a setup where I build in tmpfs. I think it =
would be a nice step
>> to write a wiki document explaining steps that are needed to =
configure your system to use tmpfs so anyone can
>> try it out and with a bit of added explanation on how much ram is =
minimally needed and so on.
>> and we can then keep improving this document.
>=20
> Agreed.  It's interesting that so many people are building this way,
> so we should consolidate the best practises.
>=20
> Do you build with TMPDIR in tmpfs, or just WORKDIR in tmpfs?

I usually keep everything in tmpfs and use sstate over network this is =
on a machine with 128G RAM

>=20
> Ross


