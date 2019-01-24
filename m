Return-Path: <karl@auto-is.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3E3CE00D21; Thu, 24 Jan 2019 11:56:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [207.126.101.38 listed in list.dnswl.org]
X-Greylist: delayed 439 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Jan 2019 11:56:36 PST
Received: from S15-GW101.mycloudmailbox.com (s15-gw101.mycloudmailbox.com
	[207.126.101.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E9C7E00D05
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 11:56:36 -0800 (PST)
Received: from relay301.mycloudmailbox.com (unknown [207.126.101.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by S15-GW101.mycloudmailbox.com (Postfix) with ESMTPS id
	43lt5T1Lk3z2SvGv
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 14:49:17 -0500 (EST)
Received: from S12-MBX12-21.S12.local (10.40.128.63) by S15-MBX101.S15.local
	(10.40.140.13) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10;
	Thu, 24 Jan 2019 14:49:16 -0500
Received: from S12-MBX12-15.S12.local (10.40.128.57) by S12-MBX12-21.S12.local
	(10.40.128.63) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 24 Jan 2019 14:49:15 -0500
Received: from S12-MBX12-15.S12.local ([fe80::9995:d57a:7592:3a52]) by
	S12-MBX12-15.S12.local ([fe80::9995:d57a:7592:3a52%12]) with mapi id
	15.00.1395.000; Thu, 24 Jan 2019 14:49:15 -0500
From: Karl Eaves <karl@auto-is.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trouble Enabling UART on Raspberry Pi  when booting with U-Boot
Thread-Index: AQHUtB3iVP94+SnGoU+oAE3ll1fGpg==
Date: Thu, 24 Jan 2019 19:49:15 +0000
Message-ID: <d0397cb02ed44328a32d3f81d3edb6f7@S12-MBX12-15.S12.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.40.130.250]
x-routingagent: Treated
MIME-Version: 1.0
X-CrossPremisesHeadersFilteredBySendConnector: S15-MBX101.S15.local
X-OrganizationHeadersPreserved: S15-MBX101.S15.local
Subject: Trouble Enabling UART on Raspberry Pi when booting with U-Boot
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
X-List-Received-Date: Thu, 24 Jan 2019 19:56:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
=0A=
I am a fairly new to developing with yocto. I have been able to=0A=
successfully build a raspberry pi image with all the dtoverlays required=0A=
to enable UART and RTC on the raspberry pi. However, when I added the=0A=
meta-updater and meta-updater-raspberry pi layers, they required me to=0A=
boot using U-Boot, which does not work when using  dtoverlays =3D=0A=
"pi3-disable-bt", etc in the config.txt.=0A=
=0A=
Following other hints online, I was able to create a patch that added my=0A=
own custom dtb=0A=
=0A=
 1.=0A=
    From 8582311b1921f5a6de4322531c141a93f902637d Mon Sep 17 00:00:00 2001=
=0A=
 2.=0A=
    From: Mike Allen <mallen3699@gmail.com>=0A=
 3.=0A=
    Date: Fri, 4 Jan 2019 13:02:51 -0600=0A=
 4.=0A=
    Subject: [PATCH] custom dts=0A=
 5.=0A=
     =0A=
 6.=0A=
    ---=0A=
 7.=0A=
     .../boot/dts/bcm2710-rpi-3-b-plus-wispr.dts   | 27 +++++++++++++++++++=
=0A=
 8.=0A=
     1 file changed, 27 insertions(+)=0A=
 9.=0A=
     create mode 100644 arch/arm/boot/dts/bcm2710-rpi-3-b-plus-wispr.dts=0A=
10.=0A=
     =0A=
11.=0A=
    diff --git a/arch/arm/boot/dts/bcm2710-rpi-3-b-plus-wispr.dts=0A=
    b/arch/arm/boot/dts/bcm2710-rpi-3-b-plus-wispr.dts=0A=
12.=0A=
    new file mode 100644=0A=
13.=0A=
    index 000000000000..1e26363b3eed=0A=
14.=0A=
    --- /dev/null=0A=
15.=0A=
    +++ b/arch/arm/boot/dts/bcm2710-rpi-3-b-plus-wispr.dts=0A=
16.=0A=
    @@ -0,0 +1,43 @@=0A=
17.=0A=
    +/* Custom dts file for raspberry pi 3 b plus for WISPr Systems */=0A=
18.=0A=
    +=0A=
19.=0A=
    +#include "bcm2710-rpi-3-b-plus.dts"=0A=
20.=0A=
    +=0A=
21.=0A=
    +&i2c1 {=0A=
22.=0A=
    +    #address-cells =3D <1>;=0A=
23.=0A=
    +    #size-cells =3D <0>;=0A=
24.=0A=
    +    status =3D "okay";=0A=
25.=0A=
    +=0A=
26.=0A=
    +    pcf8523: pcf8523@68 {=0A=
27.=0A=
    +        compatible =3D "nxp,pcf8523";=0A=
28.=0A=
    +        reg =3D <0x68>;=0A=
29.=0A=
    +        status =3D "okay";=0A=
30.=0A=
    +    };=0A=
31.=0A=
    +};=0A=
32.=0A=
    +=0A=
33.=0A=
    +&uart0{=0A=
34.=0A=
    +   pinctrl-names =3D "default";=0A=
35.=0A=
    +   pinctrl-0 =3D <&uart0_pins>;    =0A=
36.=0A=
    +   status =3D "okay";=0A=
37.=0A=
    +};=0A=
38.=0A=
    +=0A=
39.=0A=
    +&uart0_pins{=0A=
40.=0A=
    +   brcm,pins;=0A=
41.=0A=
    +   brcm,function;=0A=
42.=0A=
    +   brcm,pull;=0A=
43.=0A=
    +};=0A=
44.=0A=
    +=0A=
45.=0A=
    +&uart1{=0A=
46.=0A=
    +   status =3D "disabled";=0A=
47.=0A=
    +};=0A=
48.=0A=
    +=0A=
49.=0A=
    +/ {=0A=
50.=0A=
    +    __overrides__ {=0A=
51.=0A=
    +        pcf8523 =3D <0>,"+7";=0A=
52.=0A=
    +        addr =3D <&pcf8523>, "reg:0";=0A=
53.=0A=
    +    };=0A=
54.=0A=
    +=0A=
55.=0A=
    +    aliases {=0A=
56.=0A=
    +        serial0 =3D "/soc/serial@7e201000";=0A=
57.=0A=
    +        serial1 =3D "/soc/serial@7e215040";=0A=
58.=0A=
    +    };=0A=
59.=0A=
    +};=0A=
60.=0A=
    \ No newline at end of file=0A=
61.=0A=
    --=0A=
62.=0A=
    2.17.1=0A=
=0A=
I'm pretty sure the patch is working for i2c, because i2cdetect -y 1=0A=
produces the correct result with the patch and fails when I take it out.=0A=
=0A=
The pi3-disable-bt patches are not working however. Using gpio=0A=
allreadall I was able to see that the GPIO pins are somehow being set to=0A=
ALT1 and ALT5, with the values respectively being HIGH and LOW as shown=0A=
below=0A=
=0A=
 1.=0A=
    |--------|-----------|----------|=0A=
 2.=0A=
    | Pin | Mode | Value |=0A=
 3.=0A=
    |--------|-----------|----------|=0A=
 4.=0A=
    |---0---|-ALT1---|--HIGH-|=0A=
 5.=0A=
    |---1---|-ALT5---|--LOW-|=0A=
 6.=0A=
    |---2---|-ALT1---|--HIGH-|=0A=
 7.=0A=
    |---3---|-ALT5---|--Low-|=0A=
 8.=0A=
    |---4---|-ALT1---|--HIGH-|=0A=
=0A=
This pattern continues throughout except for pin 19 which is set to IN=0A=
and pin 43 which is set to ALT2. On my working image  all of these pins=0A=
are set to IN, except pin 15 and 16 which are set to ALT0 (this is the=0A=
correct behavior).=0A=
=0A=
I was able to change the modes of pin 15 and 16, (pins on the raspberry=0A=
pi which allow for UART serial communication) using gpio -g mode 15 ALT0=0A=
and gpio -g mode 16 ALT0. However, on my image that works correctly, pin=0A=
15 and 16 are both set to HIGH. On the image with u-boot, pin 16 is set=0A=
to LOW. I have tried to set it to high but it always changes back to=0A=
default, which I cannot figure out how to change...=0A=
=0A=
Thanks for any help or ideas,=0A=
=0A=
Karl=0A=
=0A=

