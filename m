Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F1E5E01275
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 01:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=v18AtSNpoPrwQWEsIdxnf2rrhwnSavlF6ROUlq5WRjw=; 
	b=oSRK0OEutdb4zdnOXbPqx9iNpxqPex9+5zEAUsrYMyx+dAGH7dcCvu4he0F67TsLc+5sPANG8FE7jFSDIQa2Qop9bMkfm3BH+TLCg8UMkkJsFzyK5xhb7f/NS90YVYHO;
Received: from [109.224.129.17] (port=20513
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TtaTv-004ER7-Dl; Fri, 11 Jan 2013 09:00:55 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <50EEF716.5080500@linux.intel.com>
Date: Fri, 11 Jan 2013 09:00:56 +0000
Message-Id: <BA3737A9-620D-47D1-A6B5-A69309AC706F@keylevel.com>
References: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
	<50EAFB84.9090007@linux.intel.com>
	<E4DED516-A931-4908-A58F-5C44D072072B@keylevel.com>
	<50EEF716.5080500@linux.intel.com>
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
X-List-Received-Date: Fri, 11 Jan 2013 09:00:57 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 10 Jan 2013, at 17:15, Darren Hart wrote:

>=20
>=20
> On 01/10/2013 12:09 AM, Chris Tapp wrote:
>> Hi Darren,
>>=20
>> On 7 Jan 2013, at 16:44, Darren Hart wrote:
>>=20
>>> On 12/09/2012 01:39 PM, Chris Tapp wrote:
>>>> I am trying to change the 'install' behaviour for the =
meta-cedartrail image so that the installed system has a different =
grub.cfg file. Is there a file I can bbappend to achieve this?
>>>>=20
>>>> image_live.bbclass refers to the 'install' syslinux label that =
triggers the install, but I've not been able to get from this to =
how/where grub.cfg is created.
>>>>=20
>>>=20
>>> This is currently rather crudely implemented here:
>>>=20
>>> meta/recipes-core/initrdscripts/files/init-install.sh
>>>=20
>>> A better deployment mechanism is something being discussed and which
>>> should make this more configurable.
>>>=20
>>> For now, you could bbappend initramfs-live-install_1.0.bb and =
replace the
>>> init-install.sh script with your own.
>>=20
>> Thanks. I've already got to look at that script anyway as it fails to
>> install to an internal USB drive on a DN2800-MT board as (I think) it
>> isn't waiting long enough for it to enumerate when booting the
>> 'install' image.
>=20
> Hrm, I thought it waited indefinitely for the device to appear. Or is =
it
> finding something else and bailing out of the loop? Where is the =
failure?

The only other device is the USB drive I booted from. I've not had a =
chance yet to really look at what's going on, but it looks as if it's =
not waiting long enough as it reports no installable devices. If I then =
check when it exits to the shell I can see the drive is there and =
re-running the script then means it does find it (the script then fails =
for other reasons to do with the failed run).

It will sometimes install, so it looks as if the wait is nearly long =
enough.

I'm using an ATP AF512SSGH if that makes a difference.

BTW the change I need to make to the grub file is partially related - =
the boot device is sda and the internal (install target) is sdb. Grub =
gets configured to boot from sdb but the device is sda on a clean boot.

> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel

Chris Tapp

opensource@keylevel.com
www.keylevel.com




