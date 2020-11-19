Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.8077.1605787433232680738
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 04:03:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=AlpQf8VA;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1605787433; x=1763467433;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=4XM03bQdrykqaCLxK0v8LcgnSQDifU+ub43Ptzn/OGY=;
  b=AlpQf8VA+XPMw/SWm0X8N+Rd6Atut+wSXQq/x2V2oGXI35eu48PUB1pP
   sPjXHkV5tmHs3cZcawi5eGKTJ8rtxd25YWIWynphbEqpdstPKHMY03DgT
   bJuWv9XtdStOL6ePuXCBHt+AqtFYLV5WfIEcAS+Avj3n55Yb8mXYNJyCU
   U=;
IronPort-PHdr: =?us-ascii?q?9a23=3AjqCGlBx1729uZ73XCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?0usULPad9pjvdHbS+e9qxAeQG9mCtLQd0LWd6PyocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTiwbalvIBi4rwjduccbjIR/Iast1xXFpWdFdf?=
 =?us-ascii?q?5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPGAz/83rqALM?=
 =?us-ascii?q?TRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VSi+46ptVRTlkz?=
 =?us-ascii?q?kMOSIn/27Li8xwlKNbrwynpxxj2I7ffYWZOONjcq/BYd8WQGxMVdtTWSNcGIOx?=
 =?us-ascii?q?d4sBAfQcM+ZEoYfzpFUOohm/BQawC+3gxSRFhmPv3a04z+gtDR3K0BImEtkTsH?=
 =?us-ascii?q?rUttL1NKIKXOy7y6fIyjPDb+hI1jjj84jEag0qr+yQXb1ub8re108vHB7bg16N?=
 =?us-ascii?q?rYDqMS6b2uEDv2OG6OdgTv6vhHA5qw5vpDij3MIsio7PhoIO1F/L6z55zZ0uKt?=
 =?us-ascii?q?KiVkF7et6lEIBMty6EMot2WdkuTH1vuCY/07ALv4OwcycWxpo93RHfd+CHfJaS?=
 =?us-ascii?q?4hLlTOucPCl1iXZqdr+xiBu//lStx+/8W8e7zFtHsjZInNnCu30O1BHe6MaJRu?=
 =?us-ascii?q?V980muxTqC2APe5v9LLEwolafWK50sz7gtnZQdtkTDGzX5mETwjKKOdkQk/fSn?=
 =?us-ascii?q?6/jgYrX+vJ+cMI10hR/iPaQygMC/Bv44MgcIUmOG+uq8zKXu8VDlTLlQgPA7kL?=
 =?us-ascii?q?PVvI3eKMkVvKK0Ag9Y3p4+5xqjFTur39sVkWMDIV5fex+KjY7kMEzULv/iF/ew?=
 =?us-ascii?q?mVGsnS9ux/DBI7LuHI3ALmPGkLf9ZbZ97FNcyBYrwdBf+Z1UDrYBLertWkDrtN?=
 =?us-ascii?q?zYCBo5MxewzuvjDNhxyp4SVXiJAqCDKq/dqkWH6fw0I+iMf48VpCjyK/0+5/L0?=
 =?us-ascii?q?kXA5nlodcbGo3ZsRdn+4AuxrL1iFbXb2jNoME30Gshc6QeHkklGPUD5ea263X6?=
 =?us-ascii?q?0m5zE7DIymDZ3ERoComLGBxzu7EYNIZm9YDFCAC3Lod4KCW/cXdi2dPNRhnycf?=
 =?us-ascii?q?Wre7VYAhzhGvtBTmy7V5K+rU4TcUuo7k1Nhw/+HTjw099SRoD8SB1GGAV2F1nm?=
 =?us-ascii?q?QUSD8q26Byukh9ylaY0ahkmPxUD9xS5/RVXQcmMp7c1/Z6C9fwWg3fYtiJVEyq?=
 =?us-ascii?q?QtK8ATE+HZoNxIo0akBxCp2Hhxvn0i2mS+sPnrqHFdox+6nY0n/9D9l8zXrc1b?=
 =?us-ascii?q?cslR8tRc4ZcSXsl6l06w/7A4/Sj17fhqGhaaMExinP+Wyfi22UswsQBB93WrnC?=
 =?us-ascii?q?dXQefVfN68X+7V/FV6WpC7ksLk1G08HUeYVQbdi8x3BBQuzuNc+aK1mtlnm9A1?=
 =?us-ascii?q?6jjvOxV8ugMzEGwCjDBU5ClgcV5nuLLiA0Dyq6snnCATl1U1noZhW/oqFFtHqn?=
 =?us-ascii?q?QxpsnEmxZEp72u/wo0ZNiA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DeAwDiXbZf/0HBJQpigQmEbYE2CpVbm?=
 =?us-ascii?q?kWBaAsBAQEBAQEBAQEIARgNCgQBAYRKAoIqJjgTAhABAQYBAQEBAQYEAYZRDII?=
 =?us-ascii?q?3KQGDEQEBAQQBOUsEAgEIEQQBAQEeCQcoChQJCAEBBAESCIMfgxWtfXSBNIRSQ?=
 =?us-ascii?q?YU8CQGBLo8dPoQjPoI+HwMCgScBEgFThUQEuDQHA4JtiRKLIYZeK4REnTiTVIs?=
 =?us-ascii?q?BlVgCBAIEBQIVgWuBCnBwgzkJRxcCDZckhUR0AjUCBgoBAQMJjTeBEQEB?=
X-IPAS-Result: =?us-ascii?q?A2DeAwDiXbZf/0HBJQpigQmEbYE2CpVbmkWBaAsBAQEBAQE?=
 =?us-ascii?q?BAQEIARgNCgQBAYRKAoIqJjgTAhABAQYBAQEBAQYEAYZRDII3KQGDEQEBAQQBO?=
 =?us-ascii?q?UsEAgEIEQQBAQEeCQcoChQJCAEBBAESCIMfgxWtfXSBNIRSQYU8CQGBLo8dPoQ?=
 =?us-ascii?q?jPoI+HwMCgScBEgFThUQEuDQHA4JtiRKLIYZeK4REnTiTVIsBlVgCBAIEBQIVg?=
 =?us-ascii?q?WuBCnBwgzkJRxcCDZckhUR0AjUCBgoBAQMJjTeBEQEB?=
X-IronPort-AV: E=Sophos;i="5.77,490,1596499200"; 
   d="scan'208";a="464578443"
X-IronPort-AV: E=Sophos;i="5.77,490,1596499200"; 
   d="scan'208";a="447106802"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto
Thread-Topic: [yocto] #yocto
Thread-Index: Ada9q0Gah+MAkjdpRLyRArogF5D01gAiczoAAA16IGA=
Date: Thu, 19 Nov 2020 12:03:49 +0000
In-Reply-To: <4a1f6e6d-dcbc-044c-7ff3-22d4a7b1b667@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1648E72A44BA6104.20312@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Intel based platform, quick build under "zeus" does not show issue...

I do not see issue under "rocko"...
Currently porting "rocko" to "zeus", Gatesgarth port is next after zeus run=
s clean...

I am assuming this banner is part of Yocto, are you now attempting to reser=
ve/use a serial device (ttyS0) here ?

Can you possibly point me as to where this is being done ?, and is this a c=
onfigurable option ?

Thanks,
Steve

-----Original Message-----
From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On=
 Behalf Of Randy MacLeod
Sent: Wednesday, November 18, 2020 7:30 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; yocto@lists.yoc=
toproject.org
Subject: Re: [yocto] #yocto

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.


On 2020-11-18 8:08 a.m., Monsees, Steven C (US) via lists.yoctoproject.org =
wrote:
> I was going through the kernel boot output and saw the following=20
> output, can someone tell me why this might be popping up and how I=20
> might modify configuration to resolve? :
>=20
> .
>=20
> .
>=20
> LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default ttyS0
>=20
> -sh: cannot set terminal process group (1137): Inappropriate ioctl for=20
> device
>=20
> -sh: no job control in this shell

Hi Steve,

Can you describe your build host and environment and what steps you take to=
  encounter this error?  Does it happen with poky/gatesgarth?

What happens if you follow the steps for:
=20
http://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html

../Randy
>=20
> .
>=20
> .
>=20
> Thanks,
>=20
> Steve
>=20
>=20
>=20
>=20
>=20


--
# Randy MacLeod
# Wind River Linux
