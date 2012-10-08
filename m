Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 279B7E00346
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 14:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=2xnDVZpFiRPWwWiCmpYXmEviyqdGdl0ZEIoMjtJ48dw=; 
	b=U6kGrvkeas43Sw71L+Lkl9PsFeTDZ/68+sV6K5mUbB2eMlfNMbR8kIcnegoPUfWDNs3XxGEINMYjh7p+72A4nZogWmoH8D5PGVta4FzBv/R9sXgZE0tEbGT1zdm95XWC;
Received: from [109.224.129.17] (port=60076
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>)
	id 1TLKTl-0003wq-Ak; Mon, 08 Oct 2012 22:03:09 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE2264DBF38@ORSMSX105.amr.corp.intel.com>
Date: Mon, 8 Oct 2012 22:03:07 +0100
Message-Id: <CB24F010-05C7-459E-98C1-54FAF07D5611@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
	<0E3AEF49-829E-47BC-BEF4-C66A23DA3DC7@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBF38@ORSMSX105.amr.corp.intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Mon, 08 Oct 2012 21:03:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 8 Oct 2012, at 21:30, Bodke, Kishore K wrote:

< snip ... >

Thanks for the really fast response on this :-)

> For denzil, try with this by creating a new file in =
meta-cedartrail/recipes-kernel/linux/linux-yocto_3.2.bbappend.
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI_cedartrail-nopvr =3D =
"git://git.yoctoproject.org/linux-yocto-3.2;protocol=3Dgit;nocheckout=3D1;=
branch=3D${KBRANCH},meta;name=3Dmachine,meta"

I had to add 'bareclone=3D1' to this to get it to run.

> COMPATIBLE_MACHINE_cedartrail-nopvr =3D "cedartrail"
> KMACHINE_cedartrail-nopvr  =3D "cedartrail"
> KBRANCH_cedartrail-nopvr  =3D "yocto/standard/cedartrail"
> KERNEL_FEATURES_append_cedartrail-nopvr +=3D " cfg/smp.scc"
>=20
> SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?=3D =
"8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c"
> SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?=3D =
"486f7aec824b4127e91ef53228823e996b3696f0"

I think it's nearly there, but I get a failure when validating the =
branch:

NOTE: package =
linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaa=
ab2b8d79ac56e8c9a85bad9ae7bca399c-r1: task do_validate_branches: Started
ERROR: Function failed: do_validate_branches (see =
/media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/cedartrail_nopvr-=
sjs-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0=
_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_validate_branch=
es.25866 for further information)
ERROR: Logfile of failure stored in: =
/media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/cedartrail_nopvr-=
sjs-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0=
_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_validate_branch=
es.25866
Log data follows:
| ERROR: Function failed: do_validate_branches (see =
/media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/cedartrail_nopvr-=
sjs-linux/linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0=
_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_validate_branch=
es.25866 for further information)
NOTE: package =
linux-yocto-3.2.18+git1+486f7aec824b4127e91ef53228823e996b3696f0_1+8b8cfaa=
ab2b8d79ac56e8c9a85bad9ae7bca399c-r1: task do_validate_branches: Failed
ERROR: Task 0 =
(/media/SSD-RAID/poky-git/meta/recipes-kernel/linux/linux-yocto_3.2.bb, =
do_validate_branches) failed with exit code '1'

> Add these below lines to =
meta-cedartrail/conf/machine/cedartrail-nopvr.conf
>=20
> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?=3D "3.2%"
>=20
> Add  MACHINE =3D "cedartrail-nopvr" to your local.conf and build.=20
>=20
> Ofcourse you should be adding your unionfs related stuff by some means =
either by menuconfig or by creating .scc file.

Of course, and that's the bit I understand ;-)

> Thanks
> Kishore.
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




