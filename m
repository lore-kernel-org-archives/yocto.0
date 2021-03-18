Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.1278.1616101670635681630
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 14:07:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=PKE2vd++;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id AEA48BFED5;
	Thu, 18 Mar 2021 21:07:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net AEA48BFED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616101668;
	bh=DwI6Jid6lR3mpsyx6IvLqFDsK5pmjRZ+cnieOyfxLFQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PKE2vd++YzHarg1MUZh1mjiEDrvUmkIsCzRzdUNrvyaqbGNc/9meEzRgaJUAB73SC
	 qGbwIZ7iY7LMrmPeQEOSEVTIjDGSnxsvJdQPpuCB7DVvqHPFwt/rcf2+mGll4a6UcI
	 O2Dpn8DMoJT6BWfDcZGtxzqwGlAsEi4F0b2QeCgHxWA2WjgEqduTwBZWvenEIdQV7Z
	 CaVnPl7ut6LRSwOcIoDNc6qT17i3mXQPgco3NtsljOf5qK2w0eLgNGOadycFUMuHAA
	 s0YbJi/0lJTfKVSGxtPzgzwIVq5yXyrdStriR+4q0cNNQfIGP4E7OqECE60HDXT3Gq
	 /KZHOapiXPZmQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0NEkDoNLKL1I; Thu, 18 Mar 2021 21:07:45 +0000 (UTC)
Date: Thu, 18 Mar 2021 17:07:44 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 04359BFED4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616101665;
	bh=DwI6Jid6lR3mpsyx6IvLqFDsK5pmjRZ+cnieOyfxLFQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=noaaxGK17D9o32kHph5zVD/kwG+9zf2Qu2KfPbgx4gVlbJvVH2Z6jXuGg5TE+s232
	 GrV2NuUhYVrnQSbLXXOP6KFxPRHVovCAMFReyASLtzKIj0cuy2sCEUkWwyLjDvnlaU
	 oO/XnHuERZ8EMuHo4Qvr0X4TYTrmDbM/kR3kc8Jrn7FurVNHJY7+cLCawlelfw163B
	 7r26cIpv7philKEiwBU2FJPV2gYHJMY3Gt4B0RPjTlCGNI1W9LGjptQ/lg17OwqmBU
	 Kr2CJuaMUsru3K+gHpor12I/X+AWg1BNOuyelpM/vRqqGww0tp+1133DO9//Gkkb24
	 F6y+j2DGX9BsQ==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] spidev.c ?
In-Reply-To: <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
 <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <37f6a78e6f0df8502f3df7201354f931@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_d8161f12cb83415483661bf167ea8239"

--=_d8161f12cb83415483661bf167ea8239
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

root@arria10:~# find /sys/ -name 'spi*'

/sys/kernel/debug/clk/spi_m_clk
/sys/kernel/debug/tracing/events/spi
/sys/kernel/debug/tracing/events/spi/spi_controller_idle
/sys/kernel/debug/tracing/events/spi/spi_controller_busy
/sys/kernel/debug/tracing/events/spi/spi_message_submit
/sys/kernel/debug/tracing/events/spi/spi_message_start
/sys/kernel/debug/tracing/events/spi/spi_message_done
/sys/kernel/debug/tracing/events/spi/spi_transfer_start
/sys/kernel/debug/tracing/events/spi/spi_transfer_stop
/sys/kernel/debug/regmap/spi0.0
/sys/devices/platform/soc/ffda5000.spi/spi_master
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_async
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync_immediate
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_async
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync_immediate
/sys/class/spidev
/sys/class/spi_master
/sys/class/spi_master/spi0
/sys/firmware/devicetree/base/__symbols__/spi2
/sys/firmware/devicetree/base/__symbols__/spi0
/sys/firmware/devicetree/base/__symbols__/spin_ctrl_1
/sys/firmware/devicetree/base/__symbols__/spi_m_clk
/sys/firmware/devicetree/base/__symbols__/spi1
/sys/firmware/devicetree/base/__symbols__/spin_ctrl_2
/sys/firmware/devicetree/base/soc/spi@ff809000
/sys/firmware/devicetree/base/soc/spi@ffda5000
/sys/firmware/devicetree/base/soc/spi@ffda5000/resource-manager@0/spi-max-frequency
/sys/firmware/devicetree/base/soc/clkmgr@ffd04000/clocks/spi_m_clk
/sys/firmware/devicetree/base/soc/spi@ffda4000
/sys/firmware/devicetree/base/spi@0xc00c0800
/sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0
/sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0/spi-max-frequency
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-controller
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-rph
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller-names
/sys/firmware/devicetree/base/testcase-data-2/substation@100/motor-1/spin
/sys/bus/platform/drivers/spi_altera
/sys/bus/spi
/sys/bus/spi/devices/spi0.0
/sys/bus/spi/drivers/spi-nor
/sys/bus/spi/drivers/altr_a10sr/spi0.0
/sys/bus/spi/drivers/spidev
/sys/module/spidev
/sys/module/spidev/drivers/spi:spidev
/sys/module/spi_altera

On 2021-03-18 03:44, Zoran wrote: 

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
>> In the YOCTO/Linux source tree there's drivers/spi/ which has all the source for SPI drivers. There's only 1 file, spidev.c, which has:
>> 
>> static int __init spidev_init(void)
>> {
>> int status;
>> 
>> /* Claim our 256 reserved device numbers.  Then register a class
>> * that will key udev/mdev to add/remove /dev nodes.  Last, register
>> * the driver which manages those device numbers.
>> */
>> BUILD_BUG_ON(N_SPI_MINORS > 256);
>> status = register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);
>> if (status < 0)
>> return status;
>> 
>> spidev_class = class_create(THIS_MODULE, "spidev");
>> if (IS_ERR(spidev_class)) {
>> unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
>> return PTR_ERR(spidev_class);
>> }
>> 
>> status = spi_register_driver(&spidev_spi_driver);
>> if (status < 0) {
>> class_destroy(spidev_class);
>> unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
>> }
>> return status;
>> }
>> module_init(spidev_init);
>> 
>> ... for creating device files in udev.
>> 
>> So when I use 'make nconfig' to specifiy that I want a loadable module for the ALTERA SPI driver, why don't I see a spidev.o file in drivers/spi/ ?
>> 
>> How does spi-altera.ko create device files without a call to register_chrdev(...).
>> 
>> How is it a loadable module without module_init(...)?
>> 
>> When I separately build spidev.c as an .ko and try loading it, I get: "Device or resourse busy"
>> 
>> ---John
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#52762): https://lists.yoctoproject.org/g/yocto/message/52762
> Mute This Topic: https://lists.yoctoproject.org/mt/81407811/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]

--=_d8161f12cb83415483661bf167ea8239
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<pre><span style=3D"color: #3366ff; font-family: 'times new roman', times, =
serif; font-size: 12pt;">root@arria10:~# find /sys/ -name 'spi*'</span><br =
/><span style=3D"font-family: 'times new roman', times, serif; font-size: 1=
2pt;">
/sys/kernel/debug/clk/spi_m_clk
/sys/kernel/debug/tracing/events/spi
/sys/kernel/debug/tracing/events/spi/spi_controller_idle
/sys/kernel/debug/tracing/events/spi/spi_controller_busy
/sys/kernel/debug/tracing/events/spi/spi_message_submit
/sys/kernel/debug/tracing/events/spi/spi_message_start
/sys/kernel/debug/tracing/events/spi/spi_message_done
/sys/kernel/debug/tracing/events/spi/spi_transfer_start
/sys/kernel/debug/tracing/events/spi/spi_transfer_stop
/sys/kernel/debug/regmap/spi0.0
/sys/devices/platform/soc/ffda5000.spi/spi_master
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/sp=
i_sync
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/sp=
i_async
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/sp=
i_sync_immediate
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_async
/sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync_=
immediate
/sys/class/spidev
/sys/class/spi_master
/sys/class/spi_master/spi0
/sys/firmware/devicetree/base/__symbols__/spi2
/sys/firmware/devicetree/base/__symbols__/spi0
/sys/firmware/devicetree/base/__symbols__/spin_ctrl_1
/sys/firmware/devicetree/base/__symbols__/spi_m_clk
/sys/firmware/devicetree/base/__symbols__/spi1
/sys/firmware/devicetree/base/__symbols__/spin_ctrl_2
/sys/firmware/devicetree/base/soc/spi@ff809000
/sys/firmware/devicetree/base/soc/spi@ffda5000
/sys/firmware/devicetree/base/soc/spi@ffda5000/resource-manager@0/spi-max-f=
requency
/sys/firmware/devicetree/base/soc/clkmgr@ffd04000/clocks/spi_m_clk
/sys/firmware/devicetree/base/soc/spi@ffda4000
/sys/firmware/devicetree/base/spi@0xc00c0800
/sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0
/sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0/spi-max-frequency
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-contr=
oller
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-rph
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-contr=
oller
/sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-contr=
oller-names
/sys/firmware/devicetree/base/testcase-data-2/substation@100/motor-1/spin
/sys/bus/platform/drivers/spi_altera
/sys/bus/spi
/sys/bus/spi/devices/spi0.0
/sys/bus/spi/drivers/spi-nor
/sys/bus/spi/drivers/altr_a10sr/spi0.0
/sys/bus/spi/drivers/spidev
/sys/module/spidev
/sys/module/spidev/drivers/spi:spidev
/sys/module/spi_altera
</span></pre>
<br /><br /><br />On 2021-03-18 03:44, Zoran wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">I am guessing here.... But what do you have while exec=
uting the<br />following command being in /sys<br />&nbsp;as root?<br /><br=
 /><a href=3D"mailto:root@arm:">root@arm:</a>/sys# find . -name spi*<br /><=
br />Zee<br />_______<br /><br />On Wed, Mar 17, 2021 at 5:41 PM jchludzins=
ki via<br />lists.yoctoproject.org<br />&lt;<a href=3D"mailto:jchludzinski=
=3Dvivaldi.net@lists.yoctoproject.org">jchludzinski=3Dvivaldi.net@lists.yoc=
toproject.org</a>&gt; wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0"><br />In the YOCTO/Linux source tree there's drivers/s=
pi/ which has all the source for SPI drivers. There's only 1 file, spidev=
=2Ec, which has:<br /><br />static int __init spidev_init(void)<br />{<br /=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int status;<br /><br />&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Claim our 256 reserved devi=
ce numbers. &nbsp;Then register a class<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;* that will key udev/mdev to add/remove /dev nodes=
=2E &nbsp;Last, register<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;* the driver which manages those device numbers.<br />&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/<br />&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;BUILD_BUG_ON(N_SPI_MINORS &gt; 256);<br />&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;status =3D register_chrdev(SPIDEV_MAJ=
OR, "spi", &amp;spidev_fops);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;if (status &lt; 0)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return status;<br /><b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spidev_class =3D class_=
create(THIS_MODULE, "spidev");<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (IS_ERR(spidev_class)) {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unregister_c=
hrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;return PTR_ERR(spidev_class);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;}<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sta=
tus =3D spi_register_driver(&amp;spidev_spi_driver);<br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &lt; 0) {<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;class_destroy(spidev_class);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unregister_chrdev=
(SPIDEV_MAJOR, spidev_spi_driver.driver.name);<br />&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;return status;<br />}<br />module_init(spidev_init);<br /><br />... fo=
r creating device files in udev.<br /><br />So when I use 'make nconfig' to=
 specifiy that I want a loadable module for the ALTERA SPI driver, why don'=
t I see a spidev.o file in drivers/spi/ ?<br /><br />How does spi-altera.ko=
 create device files without a call to register_chrdev(...).<br /><br />How=
 is it a loadable module without module_init(...)?<br /><br />When I separa=
tely build spidev.c as an .ko and try loading it, I get: "Device or resours=
e busy"<br /><br />---John<br /><br /><br /><br /></blockquote>
<br /><br />-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br />Links: You r=
eceive all messages sent to this group.<br />View/Reply Online (#52762): <a=
 href=3D"https://lists.yoctoproject.org/g/yocto/message/52762" target=3D"_b=
lank" rel=3D"noopener noreferrer">https://lists.yoctoproject.org/g/yocto/me=
ssage/52762</a><br />Mute This Topic: <a href=3D"https://lists.yoctoproject=
=2Eorg/mt/81407811/5071304" target=3D"_blank" rel=3D"noopener noreferrer">h=
ttps://lists.yoctoproject.org/mt/81407811/5071304</a><br />Group Owner: <a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctop=
roject.org</a><br />Unsubscribe: <a href=3D"https://lists.yoctoproject.org/=
g/yocto/unsub" target=3D"_blank" rel=3D"noopener noreferrer">https://lists=
=2Eyoctoproject.org/g/yocto/unsub</a><br />[<a href=3D"mailto:jchludzinski@=
vivaldi.net">jchludzinski@vivaldi.net</a>]</blockquote>
</div>
</body></html>

--=_d8161f12cb83415483661bf167ea8239--
