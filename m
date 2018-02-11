Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1B02E00DD3; Sat, 10 Feb 2018 16:20:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D48F0E00A00
	for <yocto@yoctoproject.org>; Sat, 10 Feb 2018 16:20:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Feb 2018 16:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,492,1511856000"; d="scan'208";a="16767505"
Received: from bsriniva-mobl1.amr.corp.intel.com ([10.254.184.174])
	by orsmga007.jf.intel.com with ESMTP; 10 Feb 2018 16:20:26 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <83602519-7b6b-e645-fd36-eff502bc5dc1@quietwind.net>
Date: Sat, 10 Feb 2018 16:20:25 -0800
Message-Id: <7D93C134-7E70-4FEB-8132-6096072BCCE3@linux.intel.com>
References: <83602519-7b6b-e645-fd36-eff502bc5dc1@quietwind.net>
To: Chris Kottaridis <chriskot@quietwind.net>
X-Mailer: Apple Mail (2.3273)
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Accessing BeagleBone Analog inputs
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
X-List-Received-Date: Sun, 11 Feb 2018 00:20:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

You will probably have more luck getting an answer on the meta-ti =
mailing list:
https://lists.yoctoproject.org/listinfo/meta-ti


> On Feb 9, 2018, at 10:17 AM, Chris Kottaridis <chriskot@quietwind.net> =
wrote:
>=20
> I followed the steps to create a beaglebone found here:
>=20
> =
http://www.jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Yocto.html
>=20
> They worked like a charm, thanksyou junponowtek.
>=20
> And then followed this doc to try and get the ADC available:
>=20
> http://processors.wiki.ti.com/index.php/Linux_Core_ADC_Users_Guide
>=20
> I loaded the module and it shows up in lsmod along with other modules =
it brings in:
>=20
> # lsmod
> Module                  Size  Used by
> ti_am335x_adc          16384  0
> kfifo_buf              16384  1 ti_am335x_adc
> industrialio           57344  2 ti_am335x_adc,kfifo_buf
> ti_am335x_tscadc       16384  1 ti_am335x_adc
>=20
> My arch/arm/boot/dts/am335x-evm.dts file shows
>=20
> &tscadc {
>         status =3D "okay";
>         tsc {
>                 ti,wires =3D <4>;
>                 ti,x-plate-resistance =3D <200>;
>                 ti,coordinate-readouts =3D <5>;
>                 ti,wire-config =3D <0x00 0x11 0x22 0x33>;
>                 ti,charge-delay =3D <0x400>;
>         };
>=20
>         adc {
>                 ti,adc-channels =3D <4 5 6 7>;
>         };
> };
>=20
> According to the doc above loading the module should create the =
following:
>=20
> >On loading the module you would see the IIO device created
>=20
> root@arago-armv7:~# ls -al /sys/bus/iio/devices/iio\:device0/
> drwxr-xr-x    5 root     root             0 Nov  1 22:06 .
> drwxr-xr-x    4 root     root             0 Nov  1 22:06 ..
> drwxr-xr-x    2 root     root             0 Nov  1 22:06 buffer
> -r--r--r--    1 root     root          4096 Nov  1 22:06 dev
> -rw-r--r--    1 root     root          4096 Nov  1 22:06 =
in_voltage4_raw
> -rw-r--r--    1 root     root          4096 Nov  1 22:06 =
in_voltage5_raw
> -rw-r--r--    1 root     root          4096 Nov  1 22:06 =
in_voltage6_raw
> -rw-r--r--    1 root     root          4096 Nov  1 22:06 =
in_voltage7_raw
> -r--r--r--    1 root     root          4096 Nov  1 22:06 name
> lrwxrwxrwx    1 root     root             0 Nov  1 22:06 of_node -> =
../../../../../../firmware/devicetree/base/ocp/tscadc@44e0d000/adc
> drwxr-xr-x    2 root     root             0 Nov  1 22:06 power
> drwxr-xr-x    2 root     root             0 Nov  1 22:06 scan_elements
> lrwxrwxrwx    1 root     root             0 Nov  1 22:06 subsystem -> =
../../../../../../bus/iio
> -rw-r--r--    1 root     root          4096 Nov  1 22:06 uevent
>=20
> While the /sys/bus/iio directory got created when I loaded the module =
the device directory is empty
>=20
> # ls /sys/bus/iio/devices
> #
>=20
> What am I missing that is preventing the ADC interface from being =
created ?
>=20
> Any pointers would be appreciated.
>=20
> Thanks
> Chris K
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


