Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.1759.1616103461756357345
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 14:37:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=biNO1rur;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 86BFDBD05A;
	Thu, 18 Mar 2021 21:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 86BFDBD05A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616103459;
	bh=7Xl4aZ/zz+pfBNO4dWZAAD5821ZPw9dpWI5dNcqHVBA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=biNO1rurms28eSW/NnrXPKbYCPBiIe8Hoo9IyWrTNILYckhBGQp9QDhoTcZzUDK5r
	 xrs7Ow4qBYsBN7DbO6RGxy/u2gqEhESW0ysGVqVHSMUF3Cib/OupGwBsb/B3QLR2A9
	 V+qvDJ5AS9MFP3WFkwiEe+KgF9w+mz7rye/szFsufronjScw0nUEghlWrSQxumZJ8d
	 NzNa2qAn0BkJBmUfd6sRuYX/4t/NM1ZQfw4LQluWl79lp2mQHRtL1qwMTX3t2li4XZ
	 MCxKnIGT5HvCdXkrGZwjTTOYQbxiioGTdkrZXRkq22/1QQjypKna7Z+ZN593lNm7sa
	 +zJm2uDV8bErA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KStS31f35sC5; Thu, 18 Mar 2021 21:37:35 +0000 (UTC)
Date: Thu, 18 Mar 2021 17:37:35 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net C9A72BFED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616103455;
	bh=7Xl4aZ/zz+pfBNO4dWZAAD5821ZPw9dpWI5dNcqHVBA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=aUTKnsWWpqhzHzsAWmhmMr8RLaK3Gs3f+iUzpKVTi/kGBhlHFP1mzrNiw74O20ufd
	 wgPHwqhxMtB0E28DLKjxRuvYlkV4t3wkuNyMpi0KWeN74JNN6BLEgXs4DT+BBPqMji
	 Gq+w6z3erMs8IMnjf4e4TAxJpfmwlVxrMSvwSAGufExUlBqDfe/PHVqW7S3R8aa5l/
	 FPbih4YCkhZFhvqdiFYNpMLB6I/j4KsyassXkutZAqzDy+6Ca6Yr35rhWGQJbuvm9X
	 yPbVXaIitFZ3AKdFYwL/c/60mh1fww796Lr27JFb3nRiGHNRtc+HeN9aIJSwMP+qGQ
	 RVpaqrenFJogg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: jchludzinski@vivaldi.net
Cc: Zoran <zoran.stojsavljevic@gmail.com>, Yocto
 <yocto@lists.yoctoproject.org>, "jchludzinski via lists.yoctoproject.org"
 <jchludzinski=vivaldi.net@lists.yoctoproject.org>
Subject: Re: [yocto] spidev.c ?
In-Reply-To: <166D8C297B807E2E.10096@lists.yoctoproject.org>
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
 <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
 <166D8BE856B10A7D.21354@lists.yoctoproject.org>
 <166D8C297B807E2E.10096@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <5f3722f1a232f9f3f0e64eb89c0bfbf1@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_c337c6295127d547daeb7416dd41e0e1"

--=_c337c6295127d547daeb7416dd41e0e1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

But there are NO udev files for the SPI devices defined in the DTSI
file. 

On 2021-03-18 17:12, jchludzinski via lists.yoctoproject.org wrote: 

> That's with: 
> 
> root@arria10:~# lsmod
> Module                  Size  Used by
> spi_altera             16384  0
> spidev                 20480  0
> 
> On 2021-03-18 17:07, jchludzinski via lists.yoctoproject.org wrote: 
> 
>> root@arria10:~# find /sys/ -name 'spi*'
>> 
>> /sys/kernel/debug/clk/spi_m_clk
>> /sys/kernel/debug/tracing/events/spi
>> /sys/kernel/debug/tracing/events/spi/spi_controller_idle
>> /sys/kernel/debug/tracing/events/spi/spi_controller_busy
>> /sys/kernel/debug/tracing/events/spi/spi_message_submit
>> /sys/kernel/debug/tracing/events/spi/spi_message_start
>> /sys/kernel/debug/tracing/events/spi/spi_message_done
>> /sys/kernel/debug/tracing/events/spi/spi_transfer_start
>> /sys/kernel/debug/tracing/events/spi/spi_transfer_stop
>> /sys/kernel/debug/regmap/spi0.0
>> /sys/devices/platform/soc/ffda5000.spi/spi_master
>> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0
>> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_async/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync_immediate/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_async/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync_immediate 
> 
>> /sys/class/spidev
>> /sys/class/spi_master
>> /sys/class/spi_master/spi0
>> /sys/firmware/devicetree/base/__symbols__/spi2
>> /sys/firmware/devicetree/base/__symbols__/spi0
>> /sys/firmware/devicetree/base/__symbols__/spin_ctrl_1
>> /sys/firmware/devicetree/base/__symbols__/spi_m_clk
>> /sys/firmware/devicetree/base/__symbols__/spi1
>> /sys/firmware/devicetree/base/__symbols__/spin_ctrl_2
>> /sys/firmware/devicetree/base/soc/spi@ff809000
>> /sys/firmware/devicetree/base/soc/spi@ffda5000
> /sys/firmware/devicetree/base/soc/spi@ffda5000/resource-manager@0/spi-max-frequency 
> 
>> /sys/firmware/devicetree/base/soc/clkmgr@ffd04000/clocks/spi_m_clk
>> /sys/firmware/devicetree/base/soc/spi@ffda4000
>> /sys/firmware/devicetree/base/spi@0xc00c0800
>> /sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0
> /sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0/spi-max-frequency/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-controller/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-rph/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller-names/sys/firmware/devicetree/base/testcase-data-2/substation@100/motor-1/spin 
> 
>> /sys/bus/platform/drivers/spi_altera
>> /sys/bus/spi
>> /sys/bus/spi/devices/spi0.0
>> /sys/bus/spi/drivers/spi-nor
>> /sys/bus/spi/drivers/altr_a10sr/spi0.0
>> /sys/bus/spi/drivers/spidev
>> /sys/module/spidev
>> /sys/module/spidev/drivers/spi:spidev
>> /sys/module/spi_altera
>> 
>> On 2021-03-18 03:44, Zoran wrote:
>> 
>> I am guessing here.... But what do you have while executing the
>> following command being in /sys
>> as root?
>> 
>> root@arm:/sys# find . -name spi*
>> 
>> Zee
>> _______
>> 
>> On Wed, Mar 17, 2021 at 5:41 PM jchludzinski via
>> lists.yoctoproject.org
>> <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>> 
>> In the YOCTO/Linux source tree there's drivers/spi/ which has all
>> the source for SPI drivers. There's only 1 file, spidev.c, which
>> has:
>> 
>> static int __init spidev_init(void)
>> {
>> int status;
>> 
>> /* Claim our 256 reserved device numbers.  Then register a
>> class
>> * that will key udev/mdev to add/remove /dev nodes.
>> Last, register
>> * the driver which manages those device numbers.
>> */
>> BUILD_BUG_ON(N_SPI_MINORS > 256);
>> status = register_chrdev(SPIDEV_MAJOR, "spi",
>> &spidev_fops);
>> if (status < 0)
>> return status;
>> 
>> spidev_class = class_create(THIS_MODULE, "spidev");
>> if (IS_ERR(spidev_class)) {
>> unregister_chrdev(SPIDEV_MAJOR,
>> spidev_spi_driver.driver.name);
>> return PTR_ERR(spidev_class);
>> }
>> 
>> status = spi_register_driver(&spidev_spi_driver);
>> if (status < 0) {
>> class_destroy(spidev_class);
>> unregister_chrdev(SPIDEV_MAJOR,
>> spidev_spi_driver.driver.name);
>> }
>> return status;
>> }
>> module_init(spidev_init);
>> 
>> ... for creating device files in udev.
>> 
>> So when I use 'make nconfig' to specifiy that I want a loadable
>> module for the ALTERA SPI driver, why don't I see a spidev.o file
>> in drivers/spi/ ?
>> 
>> How does spi-altera.ko create device files without a call to
>> register_chrdev(...).
>> 
>> How is it a loadable module without module_init(...)?
>> 
>> When I separately build spidev.c as an .ko and try loading it, I
>> get: "Device or resourse busy"
>> 
>> ---John
>> 
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#52767):
>> https://lists.yoctoproject.org/g/yocto/message/52767
>> Mute This Topic: https://lists.yoctoproject.org/mt/81407811/5071304
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>> [jchludzinski@vivaldi.net]
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#52768): https://lists.yoctoproject.org/g/yocto/message/52768
> Mute This Topic: https://lists.yoctoproject.org/mt/81407811/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]

--=_c337c6295127d547daeb7416dd41e0e1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
But there are NO udev files for the SPI devices defined in the DTSI file.</=
div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
On 2021-03-18 17:12, jchludzinski via lists.yoctoproject.org wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">That's with: <br /><br /><a href=3D"mailto:root@arria1=
0:">root@arria10:</a>~# lsmod<br />Module &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Size &=
nbsp;Used by<br />spi_altera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;16384 &nbsp;0<br />spidev &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20=
480 &nbsp;0<br /><br />On 2021-03-18 17:07, jchludzinski via lists.yoctopro=
ject.org wrote: <br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><a href=3D"mailto:root@arria10:">root@arria10:</a>~# f=
ind /sys/ -name 'spi*'<br /><br />/sys/kernel/debug/clk/spi_m_clk<br />/sys=
/kernel/debug/tracing/events/spi<br />/sys/kernel/debug/tracing/events/spi/=
spi_controller_idle<br />/sys/kernel/debug/tracing/events/spi/spi_controlle=
r_busy<br />/sys/kernel/debug/tracing/events/spi/spi_message_submit<br />/s=
ys/kernel/debug/tracing/events/spi/spi_message_start<br />/sys/kernel/debug=
/tracing/events/spi/spi_message_done<br />/sys/kernel/debug/tracing/events/=
spi/spi_transfer_start<br />/sys/kernel/debug/tracing/events/spi/spi_transf=
er_stop<br />/sys/kernel/debug/regmap/spi0.0<br />/sys/devices/platform/soc=
/ffda5000.spi/spi_master<br />/sys/devices/platform/soc/ffda5000.spi/spi_ma=
ster/spi0<br />/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0=
=2E0<br /><br /></blockquote>
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/sp=
i_sync/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statist=
ics/spi_async/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/=
statistics/spi_sync_immediate/sys/devices/platform/soc/ffda5000.spi/spi_mas=
ter/spi0/statistics/spi_sync/sys/devices/platform/soc/ffda5000.spi/spi_mast=
er/spi0/statistics/spi_async/sys/devices/platform/soc/ffda5000.spi/spi_mast=
er/spi0/statistics/spi_sync_immediate
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">/sys/class/spidev<br />/sys/class/spi_master<br />/sys=
/class/spi_master/spi0<br />/sys/firmware/devicetree/base/__symbols__/spi2<=
br />/sys/firmware/devicetree/base/__symbols__/spi0<br />/sys/firmware/devi=
cetree/base/__symbols__/spin_ctrl_1<br />/sys/firmware/devicetree/base/__sy=
mbols__/spi_m_clk<br />/sys/firmware/devicetree/base/__symbols__/spi1<br />=
/sys/firmware/devicetree/base/__symbols__/spin_ctrl_2<br /><a href=3D"mailt=
o:/sys/firmware/devicetree/base/soc/spi@ff809000">/sys/firmware/devicetree/=
base/soc/spi@ff809000</a><br /><a href=3D"mailto:/sys/firmware/devicetree/b=
ase/soc/spi@ffda5000">/sys/firmware/devicetree/base/soc/spi@ffda5000</a><br=
 /><br /></blockquote>
<a href=3D"mailto:/sys/firmware/devicetree/base/soc/spi@ffda5000">/sys/firm=
ware/devicetree/base/soc/spi@ffda5000</a>/resource-manager@0/spi-max-freque=
ncy
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><a href=3D"mailto:/sys/firmware/devicetree/base/soc/cl=
kmgr@ffd04000">/sys/firmware/devicetree/base/soc/clkmgr@ffd04000</a>/clocks=
/spi_m_clk<br /><a href=3D"mailto:/sys/firmware/devicetree/base/soc/spi@ffd=
a4000">/sys/firmware/devicetree/base/soc/spi@ffda4000</a><br /><a href=3D"m=
ailto:/sys/firmware/devicetree/base/spi@0xc00c0800">/sys/firmware/devicetre=
e/base/spi@0xc00c0800</a><br /><a href=3D"mailto:/sys/firmware/devicetree/b=
ase/spi@0xc00c0800">/sys/firmware/devicetree/base/spi@0xc00c0800</a>/spidev=
@0<br /><br /></blockquote>
<a href=3D"mailto:/sys/firmware/devicetree/base/spi@0xc00c0800">/sys/firmwa=
re/devicetree/base/spi@0xc00c0800</a>/spidev@0/spi-max-frequency<a href=3D"=
mailto:/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200">/s=
ys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200</a>/spin-con=
troller<a href=3D"mailto:/sys/firmware/devicetree/base/testcase-data-2/fair=
way-1/ride@200">/sys/firmware/devicetree/base/testcase-data-2/fairway-1/rid=
e@200</a>/spin-rph<a href=3D"mailto:/sys/firmware/devicetree/base/testcase-=
data-2/fairway-1/ride@100">/sys/firmware/devicetree/base/testcase-data-2/fa=
irway-1/ride@100</a>/spin-controller<a href=3D"mailto:/sys/firmware/devicet=
ree/base/testcase-data-2/fairway-1/ride@100">/sys/firmware/devicetree/base/=
testcase-data-2/fairway-1/ride@100</a>/spin-controller-names<a href=3D"mail=
to:/sys/firmware/devicetree/base/testcase-data-2/substation@100">/sys/firmw=
are/devicetree/base/testcase-data-2/substation@100</a>/motor-1/spin
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">/sys/bus/platform/drivers/spi_altera<br />/sys/bus/spi=
<br />/sys/bus/spi/devices/spi0.0<br />/sys/bus/spi/drivers/spi-nor<br />/s=
ys/bus/spi/drivers/altr_a10sr/spi0.0<br />/sys/bus/spi/drivers/spidev<br />=
/sys/module/spidev<br />/sys/module/spidev/drivers/spi:spidev<br />/sys/mod=
ule/spi_altera<br /><br />On 2021-03-18 03:44, Zoran wrote:<br /><br />I am=
 guessing here.... But what do you have while executing the<br />following =
command being in /sys<br />as root?<br /><br /><a href=3D"mailto:root@arm:"=
>root@arm:</a>/sys# find . -name spi*<br /><br />Zee<br />_______<br /><br =
/>On Wed, Mar 17, 2021 at 5:41 PM jchludzinski via<br />lists.yoctoproject=
=2Eorg<br />&lt;<a href=3D"mailto:jchludzinski=3Dvivaldi.net@lists.yoctopro=
ject.org">jchludzinski=3Dvivaldi.net@lists.yoctoproject.org</a>&gt; wrote:<=
br /><br />In the YOCTO/Linux source tree there's drivers/spi/ which has al=
l<br />the source for SPI drivers. There's only 1 file, spidev.c, which<br =
/>has:<br /><br />static int __init spidev_init(void)<br />{<br />int statu=
s;<br /><br />/* Claim our 256 reserved device numbers. &nbsp;Then register=
 a<br />class<br />* that will key udev/mdev to add/remove /dev nodes.<br /=
>Last, register<br />* the driver which manages those device numbers.<br />=
*/<br />BUILD_BUG_ON(N_SPI_MINORS &gt; 256);<br />status =3D register_chrde=
v(SPIDEV_MAJOR, "spi",<br />&amp;spidev_fops);<br />if (status &lt; 0)<br /=
>return status;<br /><br />spidev_class =3D class_create(THIS_MODULE, "spid=
ev");<br />if (IS_ERR(spidev_class)) {<br />unregister_chrdev(SPIDEV_MAJOR,=
<br />spidev_spi_driver.driver.name);<br />return PTR_ERR(spidev_class);<br=
 />}<br /><br />status =3D spi_register_driver(&amp;spidev_spi_driver);<br =
/>if (status &lt; 0) {<br />class_destroy(spidev_class);<br />unregister_ch=
rdev(SPIDEV_MAJOR,<br />spidev_spi_driver.driver.name);<br />}<br />return =
status;<br />}<br />module_init(spidev_init);<br /><br />... for creating d=
evice files in udev.<br /><br />So when I use 'make nconfig' to specifiy th=
at I want a loadable<br />module for the ALTERA SPI driver, why don't I see=
 a spidev.o file<br />in drivers/spi/ ?<br /><br />How does spi-altera.ko c=
reate device files without a call to<br />register_chrdev(...).<br /><br />=
How is it a loadable module without module_init(...)?<br /><br />When I sep=
arately build spidev.c as an .ko and try loading it, I<br />get: "Device or=
 resourse busy"<br /><br />---John<br /><br />Links: You receive all messag=
es sent to this group.<br />View/Reply Online (#52767):<br /><a href=3D"htt=
ps://lists.yoctoproject.org/g/yocto/message/52767" target=3D"_blank" rel=3D=
"noopener noreferrer">https://lists.yoctoproject.org/g/yocto/message/52767<=
/a><br />Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/8140=
7811/5071304" target=3D"_blank" rel=3D"noopener noreferrer">https://lists=
=2Eyoctoproject.org/mt/81407811/5071304</a><br />Group Owner: <a href=3D"ma=
ilto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org=
</a><br />Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" target=3D"_blank" rel=3D"noopener noreferrer">https://lists.yoctoproje=
ct.org/g/yocto/unsub</a><br />[<a href=3D"mailto:jchludzinski@vivaldi.net">=
jchludzinski@vivaldi.net</a>]</blockquote>
<br />-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br />Links: You receive=
 all messages sent to this group.<br />View/Reply Online (#52768): <a href=
=3D"https://lists.yoctoproject.org/g/yocto/message/52768" target=3D"_blank"=
 rel=3D"noopener noreferrer">https://lists.yoctoproject.org/g/yocto/message=
/52768</a><br />Mute This Topic: <a href=3D"https://lists.yoctoproject.org/=
mt/81407811/5071304" target=3D"_blank" rel=3D"noopener noreferrer">https://=
lists.yoctoproject.org/mt/81407811/5071304</a><br />Group Owner: <a href=3D=
"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject=
=2Eorg</a><br />Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yo=
cto/unsub" target=3D"_blank" rel=3D"noopener noreferrer">https://lists.yoct=
oproject.org/g/yocto/unsub</a><br />[<a href=3D"mailto:jchludzinski@vivaldi=
=2Enet">jchludzinski@vivaldi.net</a>]</blockquote>
</div>
</body></html>

--=_c337c6295127d547daeb7416dd41e0e1--
