Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web11.9839.1616277778126273755
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Mar 2021 15:02:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net header.s=default header.b=F4F5sk7U;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id AAF1BBD03F;
	Sat, 20 Mar 2021 22:02:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net AAF1BBD03F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616277775;
	bh=Rhkhx1L6e33FxIK32IzM5p/orxWVtfqqpLZlzp+YxKM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=F4F5sk7UZiinyFPSiIx/+XxOUXx1neGuyilYx7I0Ou4UpUJlutmaL9FGflg9pmccy
	 ZAqo/BBvcmHNax41Dx1YaELIXyfO74Eg676NmJ4fCRjbtp5FY79ZRtSeFmCcn+yuRd
	 l89Vp8n7+g8KPY9mrv01vHLM8O3O0iswDqbPMZ/O+FYQaq6n64IetYvnNAXfZHrda0
	 MIhsv0vvK2NM1uF8dsrS3yOJEeRrO/PAibq0Kf+e6al+o6giO5S3FZqWWbp1Zxysqd
	 lHmxGw4LEmVuBvmaoAstu2UbQ8Tchh0fsdsssHyw5b0xiDNehkTo5W9XEWHkHXx7mh
	 cWMcUkw22Oxpg==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uo2_qoSkPtBo; Sat, 20 Mar 2021 22:02:51 +0000 (UTC)
Date: Sat, 20 Mar 2021 18:02:51 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 75C65BFEF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616277771;
	bh=Rhkhx1L6e33FxIK32IzM5p/orxWVtfqqpLZlzp+YxKM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PtU3X+UX4vvq0e2mMEbhj8IRLZxqfnvsyyNVLFJRqI3pNXNTYTrP/qFz3eRfhjy+5
	 QRfpb/BUFhyVW4d2Y0SMoPr5Pgdne3Tecte6P5oj75Fy1q2G6Dd0v6acNdkpP2/+HJ
	 6eW2Or73m7T0pNcnTu6ktbSZIREmCtB2hfi2J3031fL7wjUfN8kOXd3XA/oJ5HNLzw
	 tDQeEQMGVHy5qQXU3rBrr3XYVLI57MBtaM6lhczZSykdbpdwr3BPHMLB+2HJ8V/STv
	 jEDtbjoL5AnT6EDNVBAHND5BPZMRF8KDJjT5SsuO/iI4gbRvbeFPin0kMbgCg+ak3T
	 r4oLvgSzWIbkg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] spidev.c ?
In-Reply-To: <CAGAf8LwWHLjHNmG5v9xtpzgJnsUfYnLn5RCnCr+uKFhBH=QWCA@mail.gmail.com>
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
 <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
 <37f6a78e6f0df8502f3df7201354f931@vivaldi.net>
 <CAGAf8LwWHLjHNmG5v9xtpzgJnsUfYnLn5RCnCr+uKFhBH=QWCA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <c451ff742c7fd6debcc9a8dbb02c88a2@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_d01465e1859bfd7779d5cc9baaaabe7a"

--=_d01465e1859bfd7779d5cc9baaaabe7a
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Using '_make nconfig_' I selected the following options:
(_Keep in mind I using an Altera/Intel Arria 10 SoC which uses
DesignWare hard SPI controllers. BUT the SPI controllers I'm concerned
with now are soft controllers defined in the FPGA code)_.=20

                     .config - Linux/arm 5.4.74 Kernel Configuration
 =E2=94=8C=E2=94=80=E2=94=80 SPI support
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=90
 =E2=94=82                                                               =
      =20
                                                             =E2=94=82
 =E2=94=82                            --- SPI support                    =
      =20
                                                             =E2=94=82
 =E2=94=82                            [*]   Debug support for SPI drivers=
      =20
                                                             =E2=94=82
 =E2=94=82                            -*-   SPI memory extension         =
      =20
                                                             =E2=94=82
 =E2=94=82                                  *** SPI Master Controller Dri=
vers
***                                                             =E2=94=82
 =E2=94=82                            <M>   Altera SPI Controller        =
      =20
                            =20
 ...=20

 =E2=94=82                            <*>   Utilities for Bitbanging SPI =
masters
                                                             =E2=94=82
 =E2=94=82                            < >   Cadence SPI controller       =
      =20
                                                             =E2=94=82
 =E2=94=82                            < >   CLPS711X host SPI controller =
      =20
                                                             =E2=94=82
 =E2=94=82                            <*>   DesignWare SPI controller cor=
e
support                                                            =E2=94=
=82
 =E2=94=82                            <*>     PCI interface driver for DW=
 SPI
core                                                            =E2=94=82
 =E2=94=82                            <*>     Memory-mapped io interface =
driver
for DW SPI core                                               =E2=94=82

...=20

 =E2=94=82                                  *** SPI Protocol Masters *** =
      =20
                                                             =E2=94=82
 =E2=94=82                            <M>   User mode SPI device driver s=
upport=20
                                                             =E2=94=82
 =E2=94=82                            <M>   spi loopback test framework s=
upport=20
                                                             =E2=94=82
 =E2=94=82                            < >   Infineon TLE62X0 (for power
switching)                                                            =E2=
=94=82
 =E2=94=82                            [*]   SPI slave protocol handlers  =
      =20
                                                             =E2=94=82
 =E2=94=82                            <M>     SPI slave handler reporting=
 boot
up time                                                        =E2=94=82
 =E2=94=82                            <M>     SPI slave handler controlli=
ng
system state                                                      =E2=94=82

This got the SPI nodes to show up in _/sys/firmware/devicetree/_ but
there were no _udev_ files (_/dev/spidevXX_). So I commented out the
'_interrupts_' in the DTSI file and the _udev_ files appeared?=20

 spi2: spi@0xc00c0800 { // hps_spi_1553_int
   address-cells =3D <0x1>;=20
   #size-cells =3D <0x0>;=20
   reg =3D <0xc00c0800 0x20>;=20
   // interrupt-parent =3D <&intc>;
   // interrupts =3D <0 24 IRQ_TYPE_EDGE_FALLING>;=20
   num-cs =3D <0x1>;=20
   status =3D "okay";=20

   spidev@0 {=20
      compatible =3D "rohm,dh2228fv";
      #address-cells =3D <0x1>;=20
      #size-cells =3D <0x0>;
      reg =3D <0x0>;=20
      spi-max-frequency =3D <0x1f400>;=20
      // enable-dma =3D <0x1>;
   };=20
};

BUT I need those interrupts. Thoughts and/or suggestions?=20

---John=20

On 2021-03-19 01:10, Zoran wrote:=20

> Hello John,
>=20
> It seems that your target is configured correctly. Since you have all
> the components you should and must have as SPI framework.
>=20
> Namely I was looking for /sys/bus (since you must have an SPI bus
> driver), and then /sys/class (since as my best understanding is that
> SPI is a master/slave device), you must have class/). Others are
> assumed, you added debug directories.
>=20
>> When I separately build spidev.c as an .ko and try
>> loading it, I get: "Device or resource busy"
>=20
> This is understandable, since you already have included spidev.ko as
> menuconfig value Y, so it is already present in the kernel, but as a
> built-in part of the kernel (my best guess).
>=20
>> root@arria10:~# lsmod
>> Module                  Size  Used by
>> spi_altera             16384  0
>> spidev                 20480  0
>=20
> I see that you did change the menuconfig, and made spidev to be M.
>=20
> What I also see is that there are no dependencies between spidev and
> spi_altera. This is what you really wanted?
>=20
>> But there are NO udev files for the SPI devices
>> defined in the DTSI file.
>=20
> Could you, please, better explain this sentence? In more details (as
> much as you can)?
>=20
> Thank you,
> Zee
> _______
>=20
> On Thu, Mar 18, 2021 at 10:07 PM jchludzinski <jchludzinski@vivaldi.net=
> wrote:=20
>=20
>> root@arria10:~# find /sys/ -name 'spi*'
>>=20
>> /sys/kernel/debug/clk/spi_m_clk
>> /sys/kernel/debug/tracing/events/spi
>> /sys/kernel/debug/tracing/events/spi/spi_controller_idle
>> /sys/kernel/debug/tracing/events/spi/spi_controller_busy
 ...=20

>> /sys/bus/spi/devices/spi0.0
>> /sys/bus/spi/drivers/spi-nor
>> /sys/bus/spi/drivers/altr_a10sr/spi0.0
>> /sys/bus/spi/drivers/spidev
>> /sys/module/spidev
>> /sys/module/spidev/drivers/spi:spidev
>> /sys/module/spi_altera
>>=20
>> On 2021-03-18 03:44, Zoran wrote:
>>=20
>> I am guessing here.... But what do you have while executing the
>> following command being in /sys
>> as root?
>>=20
>> root@arm:/sys# find . -name spi*
>>=20
>> Zee
>> _______
>>=20
>> On Wed, Mar 17, 2021 at 5:41 PM jchludzinski via
>> lists.yoctoproject.org
>> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>>=20
>> In the YOCTO/Linux source tree there's drivers/spi/ which has all the =
source for SPI drivers. There's only 1 file, spidev.c, which has:
>>=20
>> static int __init spidev_init(void)
>> {
>> int status;
>>=20
>> /* Claim our 256 reserved device numbers.  Then register a class
>> * that will key udev/mdev to add/remove /dev nodes.  Last, register
>> * the driver which manages those device numbers.
>> */
>> BUILD_BUG_ON(N_SPI_MINORS > 256);
>> status =3D register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);
>> if (status < 0)
>> return status;
>>=20
>> spidev_class =3D class_create(THIS_MODULE, "spidev");
>> if (IS_ERR(spidev_class)) {
>> unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
>> return PTR_ERR(spidev_class);
>> }
>>=20
>> status =3D spi_register_driver(&spidev_spi_driver);
>> if (status < 0) {
>> class_destroy(spidev_class);
>> unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
>> }
>> return status;
>> }
>> module_init(spidev_init);
>>=20
>> ... for creating device files in udev.
>>=20
>> So when I use 'make nconfig' to specifiy that I want a loadable module=
 for the ALTERA SPI driver, why don't I see a spidev.o file in drivers/sp=
i/ ?
>>=20
>> How does spi-altera.ko create device files without a call to register_=
chrdev(...).
>>=20
>> How is it a loadable module without module_init(...)?
>>=20
>> When I separately build spidev.c as an .ko and try loading it, I get: =
"Device or resourse busy"
>>=20
>> ---John

--=_d01465e1859bfd7779d5cc9baaaabe7a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">Using '<span style=3D"text-decoration: underline;"><em><strong>make n=
config</strong></em></span>' I selected the following options:</span><br />=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">(<em>Keep in mind I using an Altera/Intel Arria 10 SoC which uses Des=
ignWare hard SPI controllers. BUT the SPI controllers I'm concerned with no=
w are soft controllers defined in the FPGA code)</em>.</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<br />
<pre><span style=3D"font-family: 'courier new', courier, monospace; font-si=
ze: 12pt;"><span style=3D"color: #a347ba; font-size: 14pt;">               =
      <u><strong>.config - Linux/arm 5.4.74 Kernel Configuration</strong></=
u>
</span> <span style=3D"color: #a2734c;">=E2=94=8C=E2=94=80=E2=94=80</span><=
span style=3D"color: #26a269;"><strong> SPI support </strong></span><span s=
tyle=3D"color: #a2734c;">=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
                                                                           =
                               <span style=3D"color: #a2734c;">=E2=94=82</s=
pan>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  <span style=3D"color: #fdf6e3;">--- SPI support                          =
                               </span>                                <span=
 style=3D"color: #a2734c;">=E2=94=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  [*]   Debug support for SPI drivers                                      =
                               <span style=3D"color: #a2734c;">=E2=94=82</s=
pan>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  -*-   SPI memory extension                                               =
                               <span style=3D"color: #a2734c;">=E2=94=82</s=
pan>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
        *** SPI Master Controller Drivers ***                              =
                               <span style=3D"color: #a2734c;">=E2=94=82</s=
pan>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;M&gt;   Altera SPI Controller                                        =
     </span></pre>
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">...</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<pre><span style=3D"font-family: 'courier new', courier, monospace; font-si=
ze: 12pt;"> <span style=3D"color: #a2734c;">=E2=94=82</span>               =
             &lt;*&gt;   Utilities for Bitbanging SPI masters              =
                                                <span style=3D"color: #a273=
4c;">=E2=94=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt; &gt;   Cadence SPI controller                                       =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt; &gt;   CLPS711X host SPI controller                                 =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;*&gt;   DesignWare SPI controller core support                       =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;*&gt;     PCI interface driver for DW SPI core                       =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;*&gt;     Memory-mapped io interface driver for DW SPI core          =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
</span></pre>
</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
=2E..</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<pre><span style=3D"font-family: 'courier new', courier, monospace; font-si=
ze: 12pt;"> <span style=3D"color: #a2734c;">=E2=94=82</span>               =
                   *** SPI Protocol Masters ***                            =
                                          <span style=3D"color: #a2734c;">=
=E2=94=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;M&gt;   User mode SPI device driver support                          =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;M&gt;   spi loopback test framework support                          =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt; &gt;   Infineon TLE62X0 (for power switching)                       =
                                     <span style=3D"color: #a2734c;">=E2=94=
=82</span>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  [*]   SPI slave protocol handlers                                        =
                               <span style=3D"color: #a2734c;">=E2=94=82</s=
pan>
 <span style=3D"color: #a2734c;">=E2=94=82</span>                          =
  &lt;M&gt;     SPI slave handler reporting boot up time          <span sty=
le=3D"color: #000000;">                                              =E2=94=
=82
 =E2=94=82                            &lt;M&gt;     SPI slave handler contr=
olling system state                                                      =
=E2=94=82
</span></span></pre>
</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">This got the SPI nodes to show up in&nbsp;<span style=3D"text-decorat=
ion: underline;"><em><strong>/sys/firmware/devicetree/</strong></em></span>=
 but there were no <span style=3D"text-decoration: underline;"><em><strong>=
udev</strong></em></span> files (<span style=3D"text-decoration: underline;=
"><em><strong>/dev/spidevXX</strong></em></span>). So I commented out the '=
<em>interrupts</em>' in the DTSI file and the <span style=3D"text-decoratio=
n: underline;"><em><strong>udev</strong></em></span> files appeared?</span>=
</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;"> spi2: spi@0xc00c0800 { // hps_spi_1553_int<br />&nbsp; &nbsp;address=
-cells =3D &lt;0x1&gt;; <br />&nbsp; &nbsp;#size-cells =3D &lt;0x0&gt;; <br=
 />&nbsp; &nbsp;reg =3D &lt;0xc00c0800 0x20&gt;; <br />&nbsp; &nbsp;// inte=
rrupt-parent =3D &lt;&amp;intc&gt;;<br />&nbsp; &nbsp;// interrupts =3D &lt=
;0 24 IRQ_TYPE_EDGE_FALLING&gt;; <br />&nbsp; &nbsp;num-cs =3D &lt;0x1&gt;;=
 <br />&nbsp; &nbsp;status =3D "okay"; <br /><br />&nbsp; &nbsp;spidev@0 { =
<br />&nbsp; &nbsp; &nbsp; compatible =3D "rohm,dh2228fv";<br />&nbsp; &nbs=
p; &nbsp; #address-cells =3D &lt;0x1&gt;; <br />&nbsp; &nbsp; &nbsp; #size-=
cells =3D &lt;0x0&gt;;<br />&nbsp; &nbsp; &nbsp; reg =3D &lt;0x0&gt;; <br /=
>&nbsp; &nbsp; &nbsp; spi-max-frequency =3D &lt;0x1f400&gt;; <br />&nbsp; &=
nbsp; &nbsp; // enable-dma =3D &lt;0x1&gt;;<br />&nbsp; &nbsp;}; <br />};<b=
r /></span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">BUT I need those interrupts. Thoughts and/or suggestions?</span></div=
>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">---John</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<br /><br />On 2021-03-19 01:10, Zoran wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">Hello John,<br /><br />It seems that your target is co=
nfigured correctly. Since you have all<br />the components you should and m=
ust have as SPI framework.<br /><br />Namely I was looking for /sys/bus (si=
nce you must have an SPI bus<br />driver), and then /sys/class (since as my=
 best understanding is that<br />SPI is a master/slave device), you must ha=
ve class/). Others are<br />assumed, you added debug directories.<br /><br =
/>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">When I separately build spidev.c as an .ko and try<br =
/>loading it, I get: "Device or resource busy"</blockquote>
<br />This is understandable, since you already have included spidev.ko as<=
br />menuconfig value Y, so it is already present in the kernel, but as a<b=
r />built-in part of the kernel (my best guess).<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><a href=3D"mailto:root@arria10:">root@arria10:</a>~# l=
smod<br />Module &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Size &nbsp;Used by<br />spi_alt=
era &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;16384 &nbsp;0<br />spidev &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20480 &nbsp;0</blockquote>
<br />I see that you did change the menuconfig, and made spidev to be M.<br=
 /><br />What I also see is that there are no dependencies between spidev a=
nd<br />spi_altera. This is what you really wanted?<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">But there are NO udev files for the SPI devices<br />d=
efined in the DTSI file.</blockquote>
<br />Could you, please, better explain this sentence? In more details (as<=
br />much as you can)?<br /><br />Thank you,<br />Zee<br />_______<br /><br=
 /><br />On Thu, Mar 18, 2021 at 10:07 PM jchludzinski &lt;<a href=3D"mailt=
o:jchludzinski@vivaldi.net">jchludzinski@vivaldi.net</a>&gt; wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br /><a href=3D"mailto:root@arria10:">root@arria10:</=
a>~# find /sys/ -name 'spi*'<br /><br />/sys/kernel/debug/clk/spi_m_clk<br =
/>/sys/kernel/debug/tracing/events/spi<br />/sys/kernel/debug/tracing/event=
s/spi/spi_controller_idle<br />/sys/kernel/debug/tracing/events/spi/spi_con=
troller_busy</blockquote>
</blockquote>
=2E..
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">/sys/bus/spi/devices/spi0.0<br />/sys/bus/spi/drivers/=
spi-nor<br />/sys/bus/spi/drivers/altr_a10sr/spi0.0<br />/sys/bus/spi/drive=
rs/spidev<br />/sys/module/spidev<br />/sys/module/spidev/drivers/spi:spide=
v<br />/sys/module/spi_altera<br /><br /><br /><br /><br />On 2021-03-18 03=
:44, Zoran wrote:<br /><br />I am guessing here.... But what do you have wh=
ile executing the<br />following command being in /sys<br />&nbsp;as root?<=
br /><br /><a href=3D"mailto:root@arm:">root@arm:</a>/sys# find . -name spi=
*<br /><br />Zee<br />_______<br /><br />On Wed, Mar 17, 2021 at 5:41 PM jc=
hludzinski via<br />lists.yoctoproject.org<br />&lt;<a href=3D"mailto:jchlu=
dzinski=3Dvivaldi.net@lists.yoctoproject.org">jchludzinski=3Dvivaldi.net@li=
sts.yoctoproject.org</a>&gt; wrote:<br /><br /><br />In the YOCTO/Linux sou=
rce tree there's drivers/spi/ which has all the source for SPI drivers. The=
re's only 1 file, spidev.c, which has:<br /><br />static int __init spidev_=
init(void)<br />{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int =
status;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Claim=
 our 256 reserved device numbers. &nbsp;Then register a class<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* that will key udev/mdev to =
add/remove /dev nodes. &nbsp;Last, register<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;* the driver which manages those device numbers=
=2E<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BUILD_BUG_ON(N_SPI_MINORS &gt; =
256);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;status =3D regis=
ter_chrdev(SPIDEV_MAJOR, "spi", &amp;spidev_fops);<br />&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &lt; 0)<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r=
eturn status;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sp=
idev_class =3D class_create(THIS_MODULE, "spidev");<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_ERR(spidev_class)) {<br />&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;return PTR_ERR(spidev_class);<br />&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;status =3D spi_register_driver(&amp;spidev_spi_driver);<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &lt; 0) {<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;class_destroy(spidev_class);<br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);<br />&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;return status;<br />}<br />module_init(spidev_ini=
t);<br /><br />... for creating device files in udev.<br /><br />So when I =
use 'make nconfig' to specifiy that I want a loadable module for the ALTERA=
 SPI driver, why don't I see a spidev.o file in drivers/spi/ ?<br /><br />H=
ow does spi-altera.ko create device files without a call to register_chrdev=
(...).<br /><br />How is it a loadable module without module_init(...)?<br =
/><br />When I separately build spidev.c as an .ko and try loading it, I ge=
t: "Device or resourse busy"<br /><br />---John</blockquote>
</blockquote>
</div>
</body></html>

--=_d01465e1859bfd7779d5cc9baaaabe7a--
