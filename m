Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D6556E0034C;
	Sat,  9 Feb 2013 01:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=UL9OuxVJpEt0F87lVfgczw4OfTXlYAWj+qUVLembd2o=; 
	b=oUZj4hgjwEd6DJpknz3MTuXc/lhlo+U8WzB9XVBppPTqo9g/dd+Vn+jvUS92Iof07R7XCH30qzZbsAJwYjUUWoXqoXJvoWBSbT+M+/mKGNva+XekF67OYKiYevPR/zUU;
Received: from [109.224.129.17] (port=44772
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1U46oE-0043tT-3o; Sat, 09 Feb 2013 09:33:22 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <cover.1360365190.git.kishore.k.bodke@intel.com>
Date: Sat, 9 Feb 2013 09:33:22 +0000
Message-Id: <719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
To: kishore.k.bodke@intel.com
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
Cc: linux-yocto@yoctoproject.org, dvhart@linux.intel.com,
	yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Sat, 09 Feb 2013 09:33:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:

> From: Kishore Bodke <kishore.k.bodke@intel.com>
>=20
>=20
> Hi,
>=20
> This patch set is to remove the Cedartail Machine from=20
> Linux-yocto-3.4 Kernel.
> Cedartrail BSP will not be supported for Yocto 1.4 Release.

Hi Kishore,

Are there any plans to bring support back in? We recently committed a =
project to using this BSP for the Intel DN2800MT...

> Also Please remove the standard/cedartrail branch.
>=20
> Please pull into linux-yocto-3.4/meta branch.
>=20
> Thanks
> Kishore.
>=20
> The following changes since commit =
f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
>=20
>  meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>=20
> are available in the git repository at:
>=20
>  git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove
>  =
http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=3Dkishore/ced=
artrail_remove
>=20
> Kishore Bodke (1):
>  meta: Remove Cedartrail Machine
>=20
> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 =
--------------------
> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
> 4 files changed, 82 deletions(-)
> delete mode 100755 =
meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
> delete mode 100755 =
meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
> delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> delete mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>=20
> --=20
> 1.7.9.5
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




