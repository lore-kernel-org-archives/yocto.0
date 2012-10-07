Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D0B5E011F3
	for <yocto@yoctoproject.org>; Sun,  7 Oct 2012 14:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=mi7syOdBewC9duVJZzHqWG9LRYvc9N9wUBp88N1c1ow=; 
	b=mQEM3h2NrD0LGyC0QVBpdN/Y9k9nwjRZ2b7z+w8EPoeFgyxTh4GWRGhkLBY2Qk87MKqK0w+Ye8qyuzxgcvswPfi/yznkSl0HG7AmLLCCJkPMT5rJKFqRO7J1syPNWGQs;
Received: from [109.224.129.17] (port=24761
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>)
	id 1TKy5x-00072c-Lp; Sun, 07 Oct 2012 22:09:05 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
Date: Sun, 7 Oct 2012 22:08:53 +0100
Message-Id: <E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in	the kernel
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
X-List-Received-Date: Sun, 07 Oct 2012 21:09:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:

> Try adding the unionfs feature (below) to your kernel:
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta/cfg/ke=
rnel-cache/features/unionfs?h=3Dmeta
>=20
> create a file my_cedartrail.scc with following line:
> include features/unionfs/unionfs.scc
>=20
> put this file in a dir linux-yocto, the dir being created in
>=20
> meta-cedartrail/recipes-kernel/linux
>=20
> add following line in  =
meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend
>=20
> SRC_URI +=3D"file://my_cedartrail.scc"

Thanks - I thought just running 'menuconfig' would allow me to enable it =
(for a quick test).

However, this still doesn't seem to be working. I can see that =
'my_cedartrail.scc' gets fetched in to the build area, but I still don't =
see CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' =
folder in fs/ of the build tree.

Also, if I specify an invalid feature (e.g. =
feature2/unionfs/unionfs.scc) I'm not seeing any diagnostic.

>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> Sent: Saturday, October 06, 2012 5:43 PM
> To: yocto@yoctoproject.org Project
> Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs =
in the kernel
>=20
> I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail =
BSP under Denzil 7.0.1.
>=20
> However, the CONFIG_UNION_FS config flag isn't in the .config ...
>=20
> Is there something else I need to enable, or do I need to find another =
way?
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




