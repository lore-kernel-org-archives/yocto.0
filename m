Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13BEAE01507
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 11:15:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Apr 2013 11:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,416,1363158000"; d="scan'208";a="314261434"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 05 Apr 2013 11:15:25 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 5 Apr 2013 11:15:24 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.39]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.198]) with mapi id
	14.01.0355.002; Fri, 5 Apr 2013 11:15:24 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] This one can't be me...
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAITTSAACOC5oAADDYCwAAYHWCwADAW1QAAXwadUAC5lNBAAUsEvbACkoxCQA==
Date: Fri, 5 Apr 2013 18:15:24 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
	<7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
	<13F417252F8B4CB5BB755BB07928D20C@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com>
	<2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com>
	<547521F5BFD54F2D8E6783515988F589@PAULD>
In-Reply-To: <547521F5BFD54F2D8E6783515988F589@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: This one can't be me...
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
X-List-Received-Date: Fri, 05 Apr 2013 18:15:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Paul D. DeRocco [mailto:pderocco@ix.netcom.com]
>Sent: Friday, April 05, 2013 10:06 AM
>To: Bodke, Kishore K; yocto@yoctoproject.org
>Subject: RE: [yocto] This one can't be me...
>
>> From: Bodke, Kishore K [mailto:kishore.k.bodke@intel.com]
>>
>> Yeah, if you want to try a clean build, just keep the
>> downloads directory alive and have this pointed to your
>> DL_DIR in your local.conf.
>
>The clean build didn't solve the problem. Here's what I did:
>
>Re-downloaded and extracted poky-danny-8.0 and meta-cedartrail-danny-
>8.0.0
>from the Yocto web site into a new directory.
>
>In a new terminal window, ran oe-init-build-env to create the empty build
>directory and default config files.
>
>Moved the old downloads directory into the new build tree.
>
>Added the meta-intel and meta-intel/meta-cedartrail layers to bblayers.con=
f,
>after the other layers.
>
>Inserted the following two lines at the beginning of local.conf:
>
>	MACHINE ?=3D "cedartrail-nopvr"
>	BBMASK =3D "meta-oe/recipes-support/guile"
>
>The last line was a necessary fix for a bug that occurs when I add Samba
>from OpenEmbedded, but since that tree of metadata isn't currently include=
d,
>this should match nothing and change nothing.
>
>The build was successful, although I still get those NOTEs about "preferre=
d
>version 3.4% of linux-yocto not available". Yet it still panics on boot, f=
or
>lack of a ram drive.
>
>The only possible corruption at my end, then, is in my downloads.

Here are the config parameters for the clean build that I am doing now.

kishore@kishore-desktop:/usr/local/src/cedartrail/build/tmp/work/cedartrail=
_nopvr-poky-linux/linux-yocto-3.0.32+git1+bf5ee4945ee6d748e6abe16356f2357f7=
6b5e2f0_1+1e79e03d115ed177882ab53909a4f3555e434833-r4.1/linux-cedartrail-no=
pvr-standard-build$ grep BLK_DEV_RAM .config
CONFIG_BLK_DEV_RAM=3Dy
CONFIG_BLK_DEV_RAM_COUNT=3D16
CONFIG_BLK_DEV_RAM_SIZE=3D4096

I don't understand how these are missing in your build?  BLK_DEV_RAM are en=
abled for Cedartrail-nopvr build.

What did you do different?

Thanks
Kishore.

