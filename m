Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0F11E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 14:54:31 -0800 (PST)
Received: by qcsg14 with SMTP id g14so2711962qcs.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 14:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=wkb7WRhb7TzEt9Byd+pUkHSCbZaaQUIfmV1etv1+mSQ=;
	b=LXA9NGtvZfuYj2inxnpKLWpS8IcbZKXxwZbYpaj2gdvbPP8sZ2+EWVib0BQliqK93X
	CupPIV6D1gaNDxaht48ZbiMGSTllaNZb5ozHVxy2LsxqqS03S730l+p7hztIPW7/fm5J
	JCsyJ8xvFRVwqqIt5bLvn9cbsXh5wDHJiU+04=
Received: by 10.229.136.198 with SMTP id s6mr7174290qct.3.1327532070976;
	Wed, 25 Jan 2012 14:54:30 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	fh6sm4388716qab.22.2012.01.25.14.54.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 Jan 2012 14:54:29 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <4F208561.8010804@intel.com>
Date: Wed, 25 Jan 2012 17:54:31 -0500
Message-Id: <74A77928-35C9-462E-BC75-225B6FB3393C@gmail.com>
References: <4F203D8E.3010508@gmail.com> <4F207F9B.2060809@linux.intel.com>
	<4F208561.8010804@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: normal user for Intel BSPs?
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
X-List-Received-Date: Wed, 25 Jan 2012 22:54:32 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Jan 25, 2012, at 5:42 PM, Scott Garman wrote:

> On 01/25/2012 02:18 PM, Darren Hart wrote:
>> On 01/25/2012 09:36 AM, jfabernathy wrote:
>>> I've noticed that the meta-intel BSP come up with the default
>>> terminal, serial console user, etc. as root.  What would it take to
>>> make my own BSP that was exactly the same, but the default was a not
>>> admin user, but you could su or sudo to root?
>>=20
>> I'm adding Scott G. who I believe has been working on the useradd
>> scripts and such (to sanity check the following). I believe you =
should
>> be able to setup new users by extending an image recipe with a new =
task
>> to make the necessary useradd/mod etc calls on the rootfs prior to
>> packaging it up.
>>=20
>> Scott, can you offer more detail on how that is done?
>=20
> Hi Jim, Darren:
>=20
> The useradd mechanism is for supporting custom users and groups in =
recipes. It sounds like what Jim may find more expedient would be to =
define a recipe which includes a first-boot script which creates the =
additional users/groups and then sets up custom ownership on the =
terminal, serial console user, etc. Otherwise you'd have to do this in =
several recipes.
>=20
> Using the first-boot script approach is documented here:
>=20
> =
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.h=
tml#usingpoky-extend-addpkg-postinstalls
>=20
> Whereas using the useradd bitbake class is documented in an example =
recipe in meta-skeleton/recipes-skeleton/useradd/useradd-example.bb. =
There is also a slide deck you may find useful here:
>=20
> =
http://wiki.yoctoproject.org/wiki/images/e/e6/Custom_Users_Groups_in_Yocto=
1.1.pdf
>=20
> I'll also mention that I'm still shaking out bugs in the useradd =
mechanism. We have some race conditions that are complicating matters =
when building from sstate. So if you're using one of our stable =
releases, the first-boot script approach is probably your safest bet.
>=20
> Scott
>=20

Thanks for these suggestions. I'll look them over and figure out what I =
want to do.

Jim A

> --=20
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center


