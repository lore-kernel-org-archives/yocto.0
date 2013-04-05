Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 243D8E014D7
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 15:32:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Apr 2013 15:32:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,417,1363158000"; d="scan'208";a="317620732"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2013 15:32:07 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.39]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.222]) with mapi id
	14.01.0355.002; Fri, 5 Apr 2013 15:32:04 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] This one can't be me...
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAITTSAACOC5oAADDYCwAAYHWCwADAW1QAAXwadUAC5lNBAAUsEvbACkoxCQAUkEuYQCkA8DnA=
Date: Fri, 5 Apr 2013 22:32:03 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE25840666D@ORSMSX105.amr.corp.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD><515DB5F5.5010300@linux.intel.com><D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com><13F417252F8B4CB5BB755BB07928D20C@PAULD><D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com><2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD><D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com><547521F5BFD54F2D8E6783515988F589@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
	<83730A512373431B95CA2E526DB84A99@PAULD>
In-Reply-To: <83730A512373431B95CA2E526DB84A99@PAULD>
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
X-List-Received-Date: Fri, 05 Apr 2013 22:32:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Paul D. DeRocco [mailto:pderocco@ix.netcom.com]
>Sent: Friday, April 05, 2013 11:49 AM
>To: Bodke, Kishore K; yocto@yoctoproject.org
>Subject: RE: [yocto] This one can't be me...
>
>> From: Bodke, Kishore K
>>
>> Here are the config parameters for the clean build that I am
>> doing now.
>>
>> kishore@kishore-desktop:/usr/local/src/cedartrail/build/tmp/wo
>rk/cedartrail_nopvr-poky-linux/linux-yocto-3.0.32+git1>
>+bf5ee4945ee6d748e6abe16356f2357f76b5e2f0_1+1e79e03d115ed17788
>2ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build$ grep >
>BLK_DEV_RAM .config
>> CONFIG_BLK_DEV_RAM=3Dy
>> CONFIG_BLK_DEV_RAM_COUNT=3D16
>> CONFIG_BLK_DEV_RAM_SIZE=3D4096
>>
>> I don't understand how these are missing in your build?
>> BLK_DEV_RAM are enabled for Cedartrail-nopvr build.
>>
>> What did you do different?
>
>I don't know. I detailed the steps I took. I still have
>
>	# CONFIG_BLK_DEV_RAM is not set
>
>Does the order of the layers in bblayers.conf matter? Is it possible that
>something in the past fetched a different version of something, and it's
>sitting in my downloads tree and screwing things up?
>
>I'm sending you the two build log files separately, so that they don't go
>out to the entire list.

I did a clean build and booted N2800 board.
Sato desktop comes up.
No issues here.

Thanks
Kishore.

