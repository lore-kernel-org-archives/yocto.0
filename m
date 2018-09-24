Return-Path: <mohamad.noor.alim.hussin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5981E00A0A; Sun, 23 Sep 2018 20:02:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636DBE0090C
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 20:02:31 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2018 20:02:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,296,1534834800"; d="scan'208";a="235341301"
Received: from pgsmsx111.gar.corp.intel.com ([10.108.55.200])
	by orsmga004.jf.intel.com with ESMTP; 23 Sep 2018 20:02:29 -0700
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.2]) by
	PGSMSX111.gar.corp.intel.com ([169.254.2.202]) with mapi id
	14.03.0319.002; Mon, 24 Sep 2018 11:02:28 +0800
From: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] [PATCH] runtime: add BSP test case for usb storage
Thread-Index: AQHUN9CAYaQ7RblMx0ur91xu/DTae6T+CE0AgADrEeA=
Date: Mon, 24 Sep 2018 03:02:28 +0000
Message-ID: <A05DCA0C0293664FB237A9C4B0E55E46015C01B1@PGSMSX107.gar.corp.intel.com>
References: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
	<3065402.BQHNVuqeqy@localhost.localdomain>
In-Reply-To: <3065402.BQHNVuqeqy@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGVkZDcwN2YtMTJiOC00YThkLTgzZmEtOWNhZDc2MjgzOTYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU2dQWWthYmxoekhXcEhoU01xNUFtMmcwYzlLSlZpclRmelBQaXpEWG8zMFErRlR4UEJCZ2NuNUtoOGdPZ3BTNiJ9
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] runtime: add BSP test case for usb storage
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
X-List-Received-Date: Mon, 24 Sep 2018 03:02:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI Paul,

This patch is my supersede of earlier "manualbsp" which I split into 2 part=
s called usb test and microsd test.
I would use MACHINE_FEATURES =3D "usbhost" instead of introducing new varia=
ble as it would eliminate problem in case someone try to execute the usb te=
st case without enable the "HARDWARE_TEST =3D 1" or download the image form=
 public autobuilder.

> Otherwise I agree with Mike's reply, we should avoid writing to the stora=
ge device as part of the test.

It is mean that just do test like mount and unmount only? To read something=
 in storage device we need to write at first place?=20


Regards,
Alim Hussin

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, September 24, 2018 4:50 AM
To: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH] runtime: add BSP test case for usb storage

Hi Alim,

On Monday, 20 August 2018 3:22:09 AM NZST mohamad.noor.alim.hussin@intel.co=
m wrote:
> From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
>=20
> Contain test cases to test mount/unmount the usb stick on target=20
> platform such as minnowboard and beaglebone. The test assume that the=20
> usb storage device such as usb thumb drive was plugged into the target=20
> device otherwise the test for would failed. It also test to read and=20
> write from usb thumb drive. Usb test cases start with mount the usb=20
> thumb drive then write and read from it. Lastly, it will unmount it.=20
> If the usb thumb drive unable to mount due to corrupt of partition or=20
> not exists, then the mount test will failed and the following test=20
> would skip.

Does this supersede part of your earlier "manualbsp" patch? It's not made c=
lear here or in the cover letter but it looks like it might.

The helper script patch needs to come before this patch rather than after i=
t, since this patch won't work without it.
=20
> This test need to enable flag 'HARDWARE_TEST =3D "1"' on conf/local.conf=
=20
> file in order to run on target device. This test should be skip on qemu.

Can we use "usbhost" being in MACHINE_FEATURES and MACHINE not starting wit=
h "qemu" to enable this instead of adding another variable? (Assuming that =
sounds reasonable to everyone else)

Otherwise I agree with Mike's reply, we should avoid writing to the storage=
 device as part of the test.

Also, as this is patching OE-Core, the patch needs to be sent to the openem=
bedded-core@lists.openembedded.org mailing list, if you could please use th=
at for the next revision that would be great.

Thanks,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre



