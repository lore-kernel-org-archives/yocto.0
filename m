Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3706B4C80052
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 10:43:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 08:43:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="579921960"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 08:42:57 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Thu, 2 Dec 2010 08:42:57 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Mei, Lei" <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 08:42:55 -0800
Thread-Topic: [yocto] The patch_2.5.9.bb download another version source file
Thread-Index: AcuMTYB8csdJ207xQJG1eEhYRP5X9AF2nhBQAAXnL9A=
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94023D994B@orsmsx504.amr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F223023B0F7@shsmsx501.ccr.corp.intel.com>
	<749B9D3DBF0F054390025D9EAFF47F22302FD7E5@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F22302FD7E5@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The patch_2.5.9.bb download another version source file
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
X-List-Received-Date: Thu, 02 Dec 2010 16:43:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I Mei Lei,
  I have also noticed it. The patch recipe has customizations which I have =
not seen in other recipes. Like instead of getting the version, it gets old=
er version, and adds a patch to update it to the later version. I also have=
 some issues to upgrade it to latest version. I am working on sorting these=
 out with Richard.=20

Thanks,
Nitin


> -----Original Message-----
> From: Mei, Lei
> Sent: Thursday, December 02, 2010 5:54 AM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] The patch_2.5.9.bb download another version source
> file
>=20
> Hi Nitin,
> 	This issue still exists. Can you help me to have a look?
>=20
> Thanks
> Lei
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Mei, Lei
> Sent: Thursday, November 25, 2010 11:05 AM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org
> Subject: [yocto] The patch_2.5.9.bb download another version source
> file
>=20
> Hi Nitin,
> 	I am adding the license file MD5sum information to recipe, but I
> find the recipe "patch_2.5.9.bb" downloaded the source file from
> "patch-2.5.4.tar.gz", this will result in the COPYING file MD5sum is
> not match with the bitbake calculate. I find you are the maintainer ,so
> can you tell me the reason?
>=20
> Thanks
> Lei
>=20
>=20
> ---
> Mei, Lei
> Email: lei.mei@intel.com
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

