Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7769BE006C2
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 00:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=gtZV7j/Lp6UITQWryNTaAm43c5Hg4ZLMIJ3aCTXW9/c=; 
	b=PtyHKhpRAxGCuRcZxNlHVGXHvkFL+YOxYUpEwCAsLd7orlZu2kb5O08vrGd84DVwCU6IE1AfgkXhXquq5LoNvpyCEC+QwmAyezFcixAESLhkbtC6o13qVkVq+fEbhlUz;
Received: from [109.224.129.17] (port=4043
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TtDCx-000Q7l-Mo; Thu, 10 Jan 2013 08:09:51 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <50EAFB84.9090007@linux.intel.com>
Date: Thu, 10 Jan 2013 08:09:50 +0000
Message-Id: <E4DED516-A931-4908-A58F-5C44D072072B@keylevel.com>
References: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
	<50EAFB84.9090007@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - where is grub configured for 'install' option?
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
X-List-Received-Date: Thu, 10 Jan 2013 08:09:53 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Darren,

On 7 Jan 2013, at 16:44, Darren Hart wrote:

> On 12/09/2012 01:39 PM, Chris Tapp wrote:
>> I am trying to change the 'install' behaviour for the meta-cedartrail =
image so that the installed system has a different grub.cfg file. Is =
there a file I can bbappend to achieve this?
>>=20
>> image_live.bbclass refers to the 'install' syslinux label that =
triggers the install, but I've not been able to get from this to =
how/where grub.cfg is created.
>>=20
>=20
> This is currently rather crudely implemented here:
>=20
> meta/recipes-core/initrdscripts/files/init-install.sh
>=20
> A better deployment mechanism is something being discussed and which
> should make this more configurable.
>=20
> For now, you could bbappend initramfs-live-install_1.0.bb and replace =
the
> init-install.sh script with your own.

Thanks. I've already got to look at that script anyway as it fails to =
install to an internal USB drive on a DN2800-MT board as (I think) it =
isn't waiting long enough for it to enumerate when booting the 'install' =
image.

> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel

Chris Tapp

opensource@keylevel.com
www.keylevel.com




