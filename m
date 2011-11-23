Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8445FE00730
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 09:27:44 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbnl22 with SMTP id l22so2220045vbn.35
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 09:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=36sfGcdbez6ZyEeVeQjpYzDl9kXw7s/yDqubV7S4UbI=;
	b=WieoPzwSpJWpbz/fSCBA0qiDOuGAueDMEesq9xj7mpPp6XWBEY5YtvOatYfysU93r/
	rD/B7/kZYBV2KT3CH3OqW9uXjXxeTnJ+4Mfsg+tmBSVet4pbb+YbuWbV3DZ7+w521nyv
	tA4dm+rbj6RG51ZAoxRDT6HKBfLCoT3CPuMjg=
Received: by 10.52.240.227 with SMTP id wd3mr14493672vdc.13.1322069263346;
	Wed, 23 Nov 2011 09:27:43 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	em10sm24780586vdc.6.2011.11.23.09.27.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Nov 2011 09:27:42 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
Date: Wed, 23 Nov 2011 12:28:16 -0500
Message-Id: <C30646E8-D4E8-4344-AE3D-25F3EC259C70@gmail.com>
References: <1322066687.24623.4.camel@jim-ubuntu>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADT installer
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
X-List-Received-Date: Wed, 23 Nov 2011 17:27:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Nov 23, 2011, at 11:55 AM, Rifenbark, Scott M wrote:

> Jim,=20
>=20
> Let me try and replicate this from the manual.  I will get back =
momentarily.
>=20
> Scott
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jim Abernathy
> Sent: Wednesday, November 23, 2011 8:45 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] ADT installer
>=20
> I was following the ADT manual online, section 2.1.1.1, and everything
> seemed to complete as expected, but adt_installer.tar.bz2 was not
> created in the ..../build/tmp/deploy/sdk direction as documented.  In
> fact, there is no sdk directory in deploy.  Is this a documentation
> issue or is this not working. BTW, I could not find the tarball =
anywhere
> on my Ubuntu development system.
>=20
> Jim A
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

The instructions don't have you cd into the directory to execute the =
source oe-.....  Not sure if that's a problem.  I can rerun.  I use the =
Edison Poky tarball and not the git.

Jim A=

