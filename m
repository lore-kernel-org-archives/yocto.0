Return-Path: <briank@RUSSOUND.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43391E0073A; Fri,  9 May 2014 12:35:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from Pegasus.RUSSOUND.COM (unknown [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B81E0E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 12:34:59 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Fri, 9 May 2014 15:34:52 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.30) by HERMES.RUSSOUND.com
	(10.0.0.30) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Fri, 9 May 2014 15:34:51 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Fri, 9 May 2014 15:34:51 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"
	failure for core-image-minimal
Thread-Index: Ac9riCi/qecn3Y3qQzK51aCH65HnbgAJ5HKAAAc038AAAtMygAAHWbqg
Date: Fri, 9 May 2014 19:34:51 +0000
Message-ID: <d86cce8551614add921e40f5899eda8c@HERMES.RUSSOUND.com>
References: <f9f1c263a9ab4a3085bf1a696f31aec6@HERMES.RUSSOUND.com>
	<536CDE17.40806@windriver.com>
	<bab902e58d8041a793958d1432e41e86@HERMES.RUSSOUND.com>
	<536D2169.80103@windriver.com>
In-Reply-To: <536D2169.80103@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.60]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrJqsTGxcLFwCCne1s3N9jg5pHbfzgt7l87zWIxYWkrkwNTAEMUa2ZeUn5FAmvG5E87mQsuB1acWbuYtYFxhm8XIxeHkMBSRoklf1azQTg7GCW2tx9j7WLk5GAWMJW48rWRBcJWlLhwrwHMZhNQl3ixdwpQDQeHiECaxPmeaJCwsECOxJGVexlBbBGBXImH+2cwQ9huEgvvPwZrZRFQkVh2/jJYnFfASWLp3S1g9UICexklTtxzALE5BbQlXr9pAqtnFBCT+H5qDRPECeISt57MB7MlBAQkluw5zwxhK0n03n4HFfeReP9oMtR8QYmTM5+wQMTNJPY+WAJVoyexuuUelB0ocW3TYhaQVySA3r36PhgibCuxZ8ZEJoiws8S8G/UQYSuJa+enskLY2hLbX+2DsnUkNl1bBbVJXuL/vfssMGMmXF4GdaWsxOlri9gg7ACJZYuvsUxgVJuFFM6zkMJ5FpKHZyF5ZgEjyypGYQ/XIF/XYL2g0OBg/1A/F73k/NxNjNBksIPx7w37Q4ySHExKorxrNXKDhfiS8lMqMxKLM+KLSnNSiw8xSnDwKInwSgCTixBvcUFibnFmOkxKhoNDSYKXAyQlWJSanlqRlplTkloEkT7FKCklzvtbBygpANKXUZoHl7vEKColzKuqCZTjKUgtys0sgYjfYhTmeMgkxJKXn5cqBXQiAxBoML5iFOdgVBLmfQ8yiyczrwTuhFdA1zEBXeernw1yXUkiQkqqgbGXLfJtmcRj46Rv6qpqomfzGQ/p1Zw3yPP4sUTp42/bzxdyC3bXByac21d7JvK78yv9myVX2r6uYl5eevN26iL5RcsyNtuuVpw+aU3xm2UpzV9fLBJldw14ue3C++nHGMoncSz3lg6uX7p/T3PF8g8dh9ID7xet2xv6PEG/4PBVyaO75kjLaEcosRRnJBpqMRcVJwIAcmMQ4nwDAAA=
MIME-Version: 1.0
Subject: Re: [meta-atmel] at91sam9x5ek: "no machine record defined" failure for core-image-minimal
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
X-List-Received-Date: Fri, 09 May 2014 19:35:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Yeah, that's the avenue I'm going to have to go down. I was hoping to avoid=
 the trial by fire approach and learn by making small mods to an existing w=
orking build, but it looks like that might not be in the cards. I was hopin=
g that one of the at91/linux4sam people or someone familiar with meta-atmel=
 might be lurking in here and have seen the same issue when following the i=
nstructions in the layer's README file and have a "oh yeah, just tweak this=
..." fix.

I'll have to take a look through some of the linux-yocto-custom log files t=
o see where the .config is getting generated from and whether the defconfig=
 from the BSP kernel recipe is playing a roll in it. I'm guessing without a=
n explicit board file (which there isn't) and the CONFIG_MACH_AT91SAM9_DT p=
arameter not making its way from defconfig to the .config, that would expla=
in why there is no machine record macro being declared.

I'll keep digging...

Thanks,
Brian

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Friday, May 09, 2014 2:42 PM
To: Brian Karcz; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-atmel] at91sam9x5ek: "no machine record defined"=
 failure for core-image-minimal

The reason I asked is that in the past, the error you are seeing was relate=
d to the machine not being properly defined in the kernel's .config.

FWIW, assuming you have a full "defconfig", and not a "save_defconfig"
variant, the path from it to the final .config is pretty much a copy into t=
he kernel and a "make oldconfig", so nothing is thrown away unless there is=
 a missing dependency, or the Kconfig doesn't exist in the given kernel.

It's worth checking via menuconfig to see if anything obvious is missing, a=
nd trying some quick builds to rule out a bad configuration.

Bruce



