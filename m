Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE13E01492
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 21:50:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2013 21:48:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,963,1363158000"; d="scan'208";a="337385051"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 28 Jun 2013 21:50:24 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.22]) with mapi id
	14.03.0123.003; Fri, 28 Jun 2013 21:50:24 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Khem Raj <raj.khem@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	-	user configuration
Thread-Index: AQHOdDoDwN932uhI/kuL/ds+caZQY5lMH+XA
Date: Sat, 29 Jun 2013 04:50:23 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF525A1@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<04E09382-C8B6-4703-88B7-099564791B09@gmail.com>
In-Reply-To: <04E09382-C8B6-4703-88B7-099564791B09@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail -	user configuration
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
X-List-Received-Date: Sat, 29 Jun 2013 04:50:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Khem for this extra insight.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Khem Raj
>Sent: Friday, June 28, 2013 12:59 PM
>To: Burton, Ross
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Documenting YP Development Environment in more
>detail - user configuration
>
>
>On Jun 24, 2013, at 7:57 AM, "Burton, Ross" <ross.burton@intel.com>
>wrote:
>
>> meta-yocto is what makes Poky Poky, otherwise it would be just oe-core
>> + bitbake.  oe-init-build-env looks for sample files in $TEMPLATECONF,
>> which is one of the things that get munged as
>> bitbake+oe-core+meta-yocto becomes poky.
>
>yeah, meta-yocto could have been better name meta-poky that would have
>aligned the name
>a bit. Its a distro layer much like other distro layers out there on
>layerindex and then there is meta-yocto-bsp
>layers which is much like any other machine layers out there.
>a difference to point out is that poky uses the tooling to fudge all
>layers together and create a single view
>and is a leading user of combo-layer tooling provided by OE-Core. Other
>distros keep the layers intact
>slugos e.g. uses git submodules to maintain its layer setup. angstrom
>has home-brew toolings and so on an so
>forth. Both approaches have its own merits.
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

