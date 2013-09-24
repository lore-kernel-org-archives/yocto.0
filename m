Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC307E015AD
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 14:27:29 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id bj1so4201890pad.7
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 14:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=gMG5JSUo5jXivPKnN++SCOYtX8IyE5HWeKHcJ65Kwc0=;
	b=I9BcqMJ4MoshSrz2l1h08JHW3fYEbrEssCNhsqVCrmX5I47zAPAewZaRk5Rpq/xMwm
	K4G+U1Vgue+Gqg/xTpbhQO8FDpokuQoTnYcFGbvZM0Yr9zEKlAS0x87Lba2wuJ48IaU/
	0jkcVh/LmX9nPIWMKa9hhNOxl5SS4jLndIQexUrS7FShwDkZrG722YqluI9Af9mNum2x
	UDfRlS+9s+bCJQBd1aM5ZH7PYj4IL9FjP/n8uw/XJK5Y9xxN1OwjezXqOQNZcSbq+o+p
	U+ZpTBKOwaIPsuIl2YhDyDciEYY5LF8pOs6llKMVZUOHP0L4Aq4uJLK564E3oGaqIYCp
	uAzQ==
X-Received: by 10.68.64.231 with SMTP id r7mr13209417pbs.134.1380058049110;
	Tue, 24 Sep 2013 14:27:29 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	qf7sm48099171pac.14.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 24 Sep 2013 14:27:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABYvHN52zuzjeBrHS_JwnG0MKHz4sRK9n_pRskYFaZ_Y4ms06w@mail.gmail.com>
Date: Tue, 24 Sep 2013 14:27:27 -0700
Message-Id: <4720EF6E-FA93-4826-8309-A81F0BA59C93@gmail.com>
References: <CABYvHN7hqRob6p_DxOQNuOjSOHXNft2OH94jApnFWW3fHK09Pg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73CB48DE@ORSMSX103.amr.corp.intel.com>
	<CABYvHN52zuzjeBrHS_JwnG0MKHz4sRK9n_pRskYFaZ_Y4ms06w@mail.gmail.com>
To: Dusty Clark <dclark@mmto.org>
X-Mailer: Apple Mail (2.1510)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems with the ADT installation
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
X-List-Received-Date: Tue, 24 Sep 2013 21:27:29 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On Sep 24, 2013, at 2:09 PM, Dusty Clark <dclark@mmto.org> wrote:

> Hello Jessica,
>=20
> OK, so for plain application development, I don't need eglibc-devel =
library...just the cross-development toolchain and whatever recipes and =
whatnot for my target, yes?
>=20
> For the record, I downloaded the ADT tarball from here:
> =
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-installer/
> The link in the manual is a 404, so I found this one by modifying the =
link location in the browser.
>=20
> Then I browsed around and found what I thought was the closest =
snapshot, and edited the adt_installer.conf as follows:
>=20
> =
#YOCTOADT_REPO=3D"http://adtrepo-dev.yoctoproject.org//1.4.2-d734ab491a300=
78d43dee5440c03acce2d251425-dylan"
>=20
> #Edit by Dusty 9/24/13, since the original repo target is a 404:
> =
YOCTOADT_REPO=3D"http://adtrepo-dev.yoctoproject.org/1.4+snapshot-6b4f7e4b=
26c51f0c1517c0a697031e7bc488b76f-master/"
>=20
> And of course this failed as mentioned. I attach the installer logfile =
for your reference...I tried it twice, once with the bad link and again =
with the edit.=20
>=20
> Thanks for your help!


Looking at your logs

 * opkg_download: Failed to download =
http://adtrepo-dev.yoctoproject.org//1.4.2-d734ab491a30078d43dee5440c03acc=
e2d251425-dylan/adt-ipk/x86_64-nativesdk/Packages, wget returned 8.
opkg update process ended=85

and return 8 for wget suggests "Server issued an error response."

Does it happens everytime you retry ?

e.g. I did below and it all downloaded ok.

wget =
http://adtrepo-dev.yoctoproject.org/1.4+snapshot-6b4f7e4b26c51f0c1517c0a69=
7031e7bc488b76f-master/adt-ipk/x86_64-nativesdk/Packages
--2013-09-24 14:24:18--  =
http://adtrepo-dev.yoctoproject.org/1.4+snapshot-6b4f7e4b26c51f0c1517c0a69=
7031e7bc488b76f-master/adt-ipk/x86_64-nativesdk/Packages
Resolving adtrepo-dev.yoctoproject.org (adtrepo-dev.yoctoproject.org)... =
140.211.169.59
Connecting to adtrepo-dev.yoctoproject.org =
(adtrepo-dev.yoctoproject.org)|140.211.169.59|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2753125 (2.6M)
Saving to: =91Packages=92

=
100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>] 2,753,125   1.34MB/s  =
 in 2.0s  =20

2013-09-24 14:24:21 (1.34 MB/s) - =91Packages=92 saved [2753125/2753125]




>=20
> Dusty Clark
> Staff Engineer Sr.
> MMT Observatory
> University of Arizona
> Tucson, AZ 85721
>=20
>=20
> On Tue, Sep 24, 2013 at 1:30 PM, Zhang, Jessica =
<jessica.zhang@intel.com> wrote:
> Hi Dusty,
>=20
> =20
>=20
> The prerequisite for eglibc-devel are for running a yocto build on =
your host. adt-installer is for  setup the cross development environment =
for application development so it=92s not the tool to install those =
prerequisite packages.
>=20
> =20
>=20
> As to your adt-installer issues, we=92ve heard similar report from our =
QA engineer as well, so to confirm, are you using the latest built out =
of adt-installer?
>=20
> =20
>=20
> Thanks,
>=20
> Jessica
>=20
> =20
>=20
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Dusty Clark
> Sent: Tuesday, September 24, 2013 12:08 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Problems with the ADT installation
>=20
> =20
>=20
> Reading the Quick Start and ADT manuals, it was recommended to use the =
ADT installer script as the easiest method to get the tools and the =
Eclipse plugin in place. I'm running a Fedora 17 VM as the development =
host, and would like to target Beaglebone and vanilla x86 devices using =
Eclipse. However, I ran into some issues:
>=20
> =20
>=20
> First, the prerequisites lists a package "eglibc-devel" that does not =
seem to exist as a yum package, although it looks like the poky tarball =
has it inside -- so it should be built from the source tarball during =
installation of poky -- e.g. NOT using the ADT installation? The ADT =
guide warns against mixing installation methods, building ADT from poky =
vs. the ADT installer, etc. So, what is the recommended method for =
having this prerequisite library for Yocto?
>=20
> =20
>=20
> Second, the ADT installer script is pointing to 404s when getting =
packages: the YOCTOADT_REPO variable is pointing to a repo at =
http://adtrepo-dev.yoctoproject.org//$VERSION that doesn't exist. I =
edited adt_installer.conf to point to what I thought was the appropriate =
master as /1.4+snapshot-$hash-master, but the install script failed with =
a message about wget trying to get the opkg portion of the repo. There =
appears to be no opkg folder at all to be found there...so is the ADT =
installer now deprecated and one should just install poky and build the =
ADT stuff from there on?
>=20
> =20
>=20
> Thanks for any help!
>=20
> =20
>=20
>=20
> <adt_installer.log>_______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


