Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.1345.1616101950452628583
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 14:12:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=Oatp/I9m;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 0D4D9BFED0;
	Thu, 18 Mar 2021 21:12:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 0D4D9BFED0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616101949;
	bh=jrnA6CAP/Itp2dvA8cqqlS0n5tQWra4BnEnlunE2xLo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Oatp/I9mCLDELiz4ndBzntJ9KuOMi1M4dkBut6VbWyFwm17D3vTJ/8cssgY1c4CJ1
	 OvGgBOym0171Yo6xzSKIZQ142T7YQOOihnN3Nl1DAUhSCyvLKZvs8R+dqWGfd2Td0+
	 eSgu0zrImb4tL4Io/b4VYIdwVjdQVoYaqtx/xBHfnqisKYgzPii4/uaNbNRKmM//q/
	 bzwg3eX8/FOsKkqEQ+4QqdpwBelEuBtlobPEUuiGJTjPoeZWvMt9lZ/S2GGf85zfXb
	 /LXq0lxcPOtvAyZEpcXGTB6XhXvUmtDP9WGgGRuI0G4tf16Z61aHkcoQ3bLLy0G8jw
	 QwZ7FUald4o8g==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-oL7CEXQMKZ; Thu, 18 Mar 2021 21:12:24 +0000 (UTC)
Date: Thu, 18 Mar 2021 17:12:24 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net D221CBD05A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616101944;
	bh=jrnA6CAP/Itp2dvA8cqqlS0n5tQWra4BnEnlunE2xLo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jRVhwEJCNa32KCBF/f1SmTRBamQR1FbIvK6ziH9qx00ohT63gdlhzpA54+WxicAvQ
	 iIK8j/rW38Obbu9Lt31qg9e15/BRfEW6y1pEntBN56jxuILHPUKDZbPelhkVW0YVlO
	 hkAfMUR10JbUFd04AtOYcDc7YKlLSG1ffNZGJopQHBqLAlWneG4rIaSloTdELycFjn
	 XLqLD7HFKJlDRRAvJxSjZpD3NbTtQb7AyC13D3yEI5gKoZBEuyPKqMsdbZJoz1zfSi
	 lI5Ntc0hWQbVaDAVDsqyQ1nHVK8pqqiP7Wf/ryFzxrH7VvY/NWWYrFjxTjRIATHHaI
	 KG3EOIPO2rsrg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: jchludzinski@vivaldi.net
Cc: Zoran <zoran.stojsavljevic@gmail.com>, Yocto
 <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] spidev.c ?
In-Reply-To: <166D8BE856B10A7D.21354@lists.yoctoproject.org>
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
 <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
 <166D8BE856B10A7D.21354@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <b557a3958932c22d426df925e116c98a@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_22000808d71074320b197c006ac771a1"

--=_22000808d71074320b197c006ac771a1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

That's with: 

root@arria10:~# lsmod
Module                  Size  Used by
spi_altera             16384  0
spidev                 20480  0

On 2021-03-18 17:07, jchludzinski via lists.yoctoproject.org wrote: 

> root@arria10:~# find /sys/ -name 'spi*'
> 
> /sys/kernel/debug/clk/spi_m_clk
> /sys/kernel/debug/tracing/events/spi
> /sys/kernel/debug/tracing/events/spi/spi_controller_idle
> /sys/kernel/debug/tracing/events/spi/spi_controller_busy
> /sys/kernel/debug/tracing/events/spi/spi_message_submit
> /sys/kernel/debug/tracing/events/spi/spi_message_start
> /sys/kernel/debug/tracing/events/spi/spi_message_done
> /sys/kernel/debug/tracing/events/spi/spi_transfer_start
> /sys/kernel/debug/tracing/events/spi/spi_transfer_stop
> /sys/kernel/debug/regmap/spi0.0
> /sys/devices/platform/soc/ffda5000.spi/spi_master
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_async
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync_immediate
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_async
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync_immediate
> /sys/class/spidev
> /sys/class/spi_master
> /sys/class/spi_master/spi0
> /sys/firmware/devicetree/base/__symbols__/spi2
> /sys/firmware/devicetree/base/__symbols__/spi0
> /sys/firmware/devicetree/base/__symbols__/spin_ctrl_1
> /sys/firmware/devicetree/base/__symbols__/spi_m_clk
> /sys/firmware/devicetree/base/__symbols__/spi1
> /sys/firmware/devicetree/base/__symbols__/spin_ctrl_2
> /sys/firmware/devicetree/base/soc/spi@ff809000
> /sys/firmware/devicetree/base/soc/spi@ffda5000
> /sys/firmware/devicetree/base/soc/spi@ffda5000/resource-manager@0/spi-max-frequency
> /sys/firmware/devicetree/base/soc/clkmgr@ffd04000/clocks/spi_m_clk
> /sys/firmware/devicetree/base/soc/spi@ffda4000
> /sys/firmware/devicetree/base/spi@0xc00c0800
> /sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0
> /sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0/spi-max-frequency
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-controller
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-rph
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller-names
> /sys/firmware/devicetree/base/testcase-data-2/substation@100/motor-1/spin
> /sys/bus/platform/drivers/spi_altera
> /sys/bus/spi
> /sys/bus/spi/devices/spi0.0
> /sys/bus/spi/drivers/spi-nor
> /sys/bus/spi/drivers/altr_a10sr/spi0.0
> /sys/bus/spi/drivers/spidev
> /sys/module/spidev
> /sys/module/spidev/drivers/spi:spidev
> /sys/module/spi_altera
> 
> On 2021-03-18 03:44, Zoran wrote: 
> 
> I am guessing here.... But what do you have while executing the
> following command being in /sys
> as root?
> 
> root@arm:/sys# find . -name spi*
> 
> Zee
> _______
> 
> On Wed, Mar 17, 2021 at 5:41 PM jchludzinski via
> lists.yoctoproject.org
> <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
> 
> In the YOCTO/Linux source tree there's drivers/spi/ which has all
> the source for SPI drivers. There's only 1 file, spidev.c, which
> has:
> 
> static int __init spidev_init(void)
> {
> int status;
> 
> /* Claim our 256 reserved device numbers.  Then register a
> class
> * that will key udev/mdev to add/remove /dev nodes.
> Last, register
> * the driver which manages those device numbers.
> */
> BUILD_BUG_ON(N_SPI_MINORS > 256);
> status = register_chrdev(SPIDEV_MAJOR, "spi",
> &spidev_fops);
> if (status < 0)
> return status;
> 
> spidev_class = class_create(THIS_MODULE, "spidev");
> if (IS_ERR(spidev_class)) {
> unregister_chrdev(SPIDEV_MAJOR,
> spidev_spi_driver.driver.name);
> return PTR_ERR(spidev_class);
> }
> 
> status = spi_register_driver(&spidev_spi_driver);
> if (status < 0) {
> class_destroy(spidev_class);
> unregister_chrdev(SPIDEV_MAJOR,
> spidev_spi_driver.driver.name);
> }
> return status;
> }
> module_init(spidev_init);
> 
> ... for creating device files in udev.
> 
> So when I use 'make nconfig' to specifiy that I want a loadable
> module for the ALTERA SPI driver, why don't I see a spidev.o file
> in drivers/spi/ ?
> 
> How does spi-altera.ko create device files without a call to
> register_chrdev(...).
> 
> How is it a loadable module without module_init(...)?
> 
> When I separately build spidev.c as an .ko and try loading it, I
> get: "Device or resourse busy"
> 
> ---John 
> 
Links: You receive all messages sent to this group.
View/Reply Online (#52767):
https://lists.yoctoproject.org/g/yocto/message/52767
Mute This Topic: https://lists.yoctoproject.org/mt/81407811/5071304
Group Owner: yocto+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
[jchludzinski@vivaldi.net]

--=_22000808d71074320b197c006ac771a1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Ge=
neva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>That's with:</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>
<pre><span style=3D"font-family: 'courier new', courier, monospace; font-s=
ize: 12pt;">root@arria10:~# lsmod
Module                  Size  Used by
spi_altera             16384  0
spidev                 20480  0
</span></pre>
<br /><br />On 2021-03-18 17:07, jchludzinski via lists.yoctoproject.org w=
rote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0"><a href=3D"mailto:root@arria10:">root@arria10:</a>~# =
find /sys/ -name 'spi*'<br /><br />/sys/kernel/debug/clk/spi_m_clk<br />/sy=
s/kernel/debug/tracing/events/spi<br />/sys/kernel/debug/tracing/events/spi=
/spi_controller_idle<br />/sys/kernel/debug/tracing/events/spi/spi_controll=
er_busy<br />/sys/kernel/debug/tracing/events/spi/spi_message_submit<br />/=
sys/kernel/debug/tracing/events/spi/spi_message_start<br />/sys/kernel/debu=
g/tracing/events/spi/spi_message_done<br />/sys/kernel/debug/tracing/events=
/spi/spi_transfer_start<br />/sys/kernel/debug/tracing/events/spi/spi_trans=
fer_stop<br />/sys/kernel/debug/regmap/spi0.0<br />/sys/devices/platform/so=
c/ffda5000.spi/spi_master<br />/sys/devices/platform/soc/ffda5000.spi/spi_m=
aster/spi0<br />/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0=
.0<br />/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/stati=
stics/spi_sync<br />/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/=
spi0.0/statistics/spi_async<br />/sys/devices/platform/soc/ffda5000.spi/spi=
_master/spi0/spi0.0/statistics/spi_sync_immediate<br />/sys/devices/platfor=
m/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync<br />/sys/devices/pl=
atform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_async<br />/sys/devi=
ces/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync_immediate=
<br />/sys/class/spidev<br />/sys/class/spi_master<br />/sys/class/spi_mast=
er/spi0<br />/sys/firmware/devicetree/base/__symbols__/spi2<br />/sys/firmw=
are/devicetree/base/__symbols__/spi0<br />/sys/firmware/devicetree/base/__s=
ymbols__/spin_ctrl_1<br />/sys/firmware/devicetree/base/__symbols__/spi_m_c=
lk<br />/sys/firmware/devicetree/base/__symbols__/spi1<br />/sys/firmware/d=
evicetree/base/__symbols__/spin_ctrl_2<br /><a href=3D"mailto:/sys/firmware=
/devicetree/base/soc/spi@ff809000">/sys/firmware/devicetree/base/soc/spi@ff=
809000</a><br /><a href=3D"mailto:/sys/firmware/devicetree/base/soc/spi@ffd=
a5000">/sys/firmware/devicetree/base/soc/spi@ffda5000</a><br /><a href=3D"m=
ailto:/sys/firmware/devicetree/base/soc/spi@ffda5000">/sys/firmware/devicet=
ree/base/soc/spi@ffda5000</a>/resource-manager@0/spi-max-frequency<br /><a =
href=3D"mailto:/sys/firmware/devicetree/base/soc/clkmgr@ffd04000">/sys/firm=
ware/devicetree/base/soc/clkmgr@ffd04000</a>/clocks/spi_m_clk<br /><a href=
=3D"mailto:/sys/firmware/devicetree/base/soc/spi@ffda4000">/sys/firmware/d=
evicetree/base/soc/spi@ffda4000</a><br /><a href=3D"mailto:/sys/firmware/de=
vicetree/base/spi@0xc00c0800">/sys/firmware/devicetree/base/spi@0xc00c0800<=
/a><br /><a href=3D"mailto:/sys/firmware/devicetree/base/spi@0xc00c0800">/s=
ys/firmware/devicetree/base/spi@0xc00c0800</a>/spidev@0<br /><a href=3D"mai=
lto:/sys/firmware/devicetree/base/spi@0xc00c0800">/sys/firmware/devicetree/=
base/spi@0xc00c0800</a>/spidev@0/spi-max-frequency<br /><a href=3D"mailto:/=
sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200">/sys/firmw=
are/devicetree/base/testcase-data-2/fairway-1/ride@200</a>/spin-controller<=
br /><a href=3D"mailto:/sys/firmware/devicetree/base/testcase-data-2/fairwa=
y-1/ride@200">/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@=
200</a>/spin-rph<br /><a href=3D"mailto:/sys/firmware/devicetree/base/testc=
ase-data-2/fairway-1/ride@100">/sys/firmware/devicetree/base/testcase-data-=
2/fairway-1/ride@100</a>/spin-controller<br /><a href=3D"mailto:/sys/firmwa=
re/devicetree/base/testcase-data-2/fairway-1/ride@100">/sys/firmware/device=
tree/base/testcase-data-2/fairway-1/ride@100</a>/spin-controller-names<br /=
><a href=3D"mailto:/sys/firmware/devicetree/base/testcase-data-2/substation=
@100">/sys/firmware/devicetree/base/testcase-data-2/substation@100</a>/moto=
r-1/spin<br />/sys/bus/platform/drivers/spi_altera<br />/sys/bus/spi<br />/=
sys/bus/spi/devices/spi0.0<br />/sys/bus/spi/drivers/spi-nor<br />/sys/bus/=
spi/drivers/altr_a10sr/spi0.0<br />/sys/bus/spi/drivers/spidev<br />/sys/mo=
dule/spidev<br />/sys/module/spidev/drivers/spi:spidev<br />/sys/module/spi=
_altera<br /><br />On 2021-03-18 03:44, Zoran wrote: <br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">I am guessing here.... But what do you have while exe=
cuting the<br />following command being in /sys<br />as root?<br /><br /><a=
 href=3D"mailto:root@arm:">root@arm:</a>/sys# find . -name spi*<br /><br />=
Zee<br />_______<br /><br />On Wed, Mar 17, 2021 at 5:41 PM jchludzinski vi=
a<br />lists.yoctoproject.org<br />&lt;<a href=3D"mailto:jchludzinski=3Dviv=
aldi.net@lists.yoctoproject.org">jchludzinski=3Dvivaldi.net@lists.yoctoproj=
ect.org</a>&gt; wrote:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">In the YOCTO/Linux source tree there's drivers/spi/ w=
hich has all<br />the source for SPI drivers. There's only 1 file, spidev.c=
, which<br />has:<br /><br />static int __init spidev_init(void)<br />{<br =
/>int status;<br /><br />/* Claim our 256 reserved device numbers. &nbsp;Th=
en register a<br />class<br />* that will key udev/mdev to add/remove /dev =
nodes.<br />Last, register<br />* the driver which manages those device num=
bers.<br />*/<br />BUILD_BUG_ON(N_SPI_MINORS &gt; 256);<br />status =3D reg=
ister_chrdev(SPIDEV_MAJOR, "spi",<br />&amp;spidev_fops);<br />if (status &=
lt; 0)<br />return status;<br /><br />spidev_class =3D class_create(THIS_MO=
DULE, "spidev");<br />if (IS_ERR(spidev_class)) {<br />unregister_chrdev(SP=
IDEV_MAJOR,<br />spidev_spi_driver.driver.name);<br />return PTR_ERR(spidev=
_class);<br />}<br /><br />status =3D spi_register_driver(&amp;spidev_spi_d=
river);<br />if (status &lt; 0) {<br />class_destroy(spidev_class);<br />un=
register_chrdev(SPIDEV_MAJOR,<br />spidev_spi_driver.driver.name);<br />}<b=
r />return status;<br />}<br />module_init(spidev_init);<br /><br />... for=
 creating device files in udev.<br /><br />So when I use 'make nconfig' to =
specifiy that I want a loadable<br />module for the ALTERA SPI driver, why =
don't I see a spidev.o file<br />in drivers/spi/ ?<br /><br />How does spi-=
altera.ko create device files without a call to<br />register_chrdev(...).<=
br /><br />How is it a loadable module without module_init(...)?<br /><br /=
>When I separately build spidev.c as an .ko and try loading it, I<br />get:=
 "Device or resourse busy"<br /><br />---John</blockquote>
<br /><br />Links: You receive all messages sent to this group.<br />View/=
Reply Online (#52767): <a href=3D"https://lists.yoctoproject.org/g/yocto/me=
ssage/52767" target=3D"_blank" rel=3D"noopener noreferrer">https://lists.yo=
ctoproject.org/g/yocto/message/52767</a><br />Mute This Topic: <a href=3D"h=
ttps://lists.yoctoproject.org/mt/81407811/5071304" target=3D"_blank" rel=3D=
"noopener noreferrer">https://lists.yoctoproject.org/mt/81407811/5071304</a=
><br />Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org">y=
octo+owner@lists.yoctoproject.org</a><br />Unsubscribe: <a href=3D"https://=
lists.yoctoproject.org/g/yocto/unsub" target=3D"_blank" rel=3D"noopener nor=
eferrer">https://lists.yoctoproject.org/g/yocto/unsub</a><br />[<a href=3D"=
mailto:jchludzinski@vivaldi.net">jchludzinski@vivaldi.net</a>]</blockquote>
</div>
</body></html>

--=_22000808d71074320b197c006ac771a1--
