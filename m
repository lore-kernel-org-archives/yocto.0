Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BB0E0153C
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 15:01:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2013 15:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,403,1363158000"; d="scan'208";a="289006347"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2013 15:01:02 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 3 Apr 2013 15:01:01 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.39]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.198]) with mapi id
	14.01.0355.002; Wed, 3 Apr 2013 15:01:01 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Darren Hart'
	<dvhart@linux.intel.com>
Thread-Topic: [yocto] This one can't be me...
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAA57YAAAxcuZA=
Date: Wed, 3 Apr 2013 22:01:00 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE258405300@ORSMSX105.amr.corp.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com>	<1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
	<80CD287EE4364CEF8862D95048BCA9A9@PAULD>
In-Reply-To: <80CD287EE4364CEF8862D95048BCA9A9@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 03 Apr 2013 22:01:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
>Sent: Wednesday, April 03, 2013 1:50 PM
>To: 'Darren Hart'
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] This one can't be me...
>
>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>>
>> Are you building with the rm work setting? Otherwise, that
>> should not be
>> empty unless you have more than one linux-yocto* directory
>> and the other is populated.
>
>That option is off, and there is no other linux-yocto* directory.
>
>> If not, verify rm work is not on and just build the kernel:
>>
>> $ bitbake linux-yocto -c cleansstate
>> $ bitbake linux-yocto
>
>The first line says there is no do_cleanstate task for linux-yocto, and so
>the second line finds nothing to do. Is there another way to force that?
>

It's surprising that you don't see anything under=20
/home/pauld/yocto-atom/build/tmp/work/cedartrail_nopvr-poky-linux/linux-yoc=
t
o-3.0.32+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+1e79e03d115ed17788=
2
ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build

It means that Kernel is not getting build for you?
How come you were able to generate the .hddimg and trying to boot?

Do you have the rootfs under build/tmp/work/Cedartrail*/core-image-sato/?

Thanks
Kishore.


>> Nothing in there suggests any other failure than it just didn't find a
>> block device. I didn't see anything in there about loading the initrd
>> though (I think there usually is...). Check to make sure the
>> initrd file does indeed exist on the boot drive.
>
>Yes, it does.
>
>--
>
>Ciao,               Paul D. DeRocco
>Paul                mailto:pderocco@ix.netcom.com
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

