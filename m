Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.4878.1616324707326183683
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Mar 2021 04:05:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=QmHfNsmi;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id AC505BD15B
	for <yocto@lists.yoctoproject.org>; Sun, 21 Mar 2021 11:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net AC505BD15B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616324694;
	bh=zjnkeyDi1cV1gutvfaOf7heCS86zeblIkfyql7+U3Ts=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=QmHfNsmi1w0OHFeTUvrpXYkMxWH32Bxzr6qBSm/sxs7dkZYl28l9EyoA9DTyR3rtU
	 dfi4jQxDJjdWYV/AsfBEOBJrcvAc5tvRrNfGjOdZ1aEoQo5iVloK6bDg3LnAoIuTQR
	 v9rwCZbRMpJiJWFQHO5ebcCQmEZO1nLn/h2giXvpXUa84NGXrGsbKEQ/zrAQ6AquJp
	 /WSZv5Pufhp/HGBqC38yszCKQJ2trvDeglYc6ozCtK/5iHKwbg+QuUckCD6H/sIpvS
	 Ut5yBhhl/E1QbwGN2oPOImPq+NEKFFU3wtUVz8EZAuoCtquMGvyW3xvm3V3Fh9hd3J
	 HAldq4AyWf3Mw==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZ5YWcs3OqZC for <yocto@lists.yoctoproject.org>;
	Sun, 21 Mar 2021 11:04:52 +0000 (UTC)
Date: Sun, 21 Mar 2021 07:04:52 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 80C25BD11F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616324692;
	bh=zjnkeyDi1cV1gutvfaOf7heCS86zeblIkfyql7+U3Ts=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=mSL5aTIRjarqn5jGPa9O/OlPzkQ3xkAHkCDfSyzVkB2UDapb0pKBBFLE3h3ZDFGKJ
	 sj+iVP22RatANRdJedAvFEIAEfNAD75CxAmKncsNqhKZA89jSStpt78rLCJlqYwv4R
	 FeOHvreEqv6BcoXPc99XsKErFeCkqhWW2oHrwMHaBm2Qnya370YnYfWTTIKLwez0Nc
	 sJ/WL2GSX4bEWkb1xGVKNA0Ly28AagWH5cttSqS00P/ALpH9YkXMQPufiDLgjKlSdB
	 RaO8YEDRfo7334ZHRX1MZgpMJi+KMDLvRyCOwZfkg0dcRGR61hyX+ZK7cvQu8++/y2
	 kYzsEig8FfmUQ==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: =?UTF-8?B?UmU6IEhvdyBpcyBpdCBwb3NzaWJsZSB0byBidWlsZCBhwqBsb2FkYWJsZSBtb2R1bGUgZnJvbcKgc3BpLWFsdGVyYS5jIC4uLj8=?=
In-Reply-To: <60a267db4053b71066630618e053bcf4@vivaldi.net>
References: <60a267db4053b71066630618e053bcf4@vivaldi.net>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <4dc18bb77b316bbc9a4e487b8fc3ab9c@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_6a1b939a3fe2ad61e195e52a7efbdcc3"

--=_6a1b939a3fe2ad61e195e52a7efbdcc3
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

My problem is I have an 1553 chip (an avionic data bus) connected to the
HPS master (an ARM processor) via an FPGA (soft) SPI controller. This is
where the spi-altera.c comes in. It provides the driver/interface to the
soft SPI controller on the Arria 10 SoC. 

I need an interface now to communicate between the SPI slave (the 1553
chip) and the SPI master (the Arria 10 HPS/ARM).

When I load _spi-altera.ko_ I get the _udev_ files (_/dev/spidevXX_) but
not when I load _spidev.ko._ Why? _spi-altera.c _doesn't have an _init_
routine and consequently no call to _register_chrdev_(..) but _spidev.c_
does. What's the relationship between _spi-altera_ and _spidev_? What's
the purpose of _spi.c_?

On 2021-03-20 18:14, jchludzinski wrote: 

> How is it possible to build a loadable module from _spi-altera.c_ when
> it has no code for creating _udev_ files (i.e., _/dev/spidevXX_); it
> has no:
> 
> static int __init spidev_init(void)
> {
> int status;
> 
> printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,
> __LINE__);
> 
> /* Claim our 256 reserved device numbers.  Then register a class
> * that will key udev/mdev to add/remove /dev nodes.  Last,
> register
> * the driver which manages those device numbers.
> */
> BUILD_BUG_ON(N_SPI_MINORS > 256);
> status = register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);
> 
> printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,
> __LINE__);
> 
> if (status < 0)
> return status;
> 
> printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,
> __LINE__);
> 
> spidev_class = class_create(THIS_MODULE, "spidev");
> if (IS_ERR(spidev_class)) {
> unregister_chrdev(SPIDEV_MAJOR,
> spidev_spi_driver.driver.name);
> return PTR_ERR(spidev_class);
> }
> 
> printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,
> __LINE__);
> 
> status = spi_register_driver(&spidev_spi_driver);
> if (status < 0) {
> class_destroy(spidev_class);
> unregister_chrdev(SPIDEV_MAJOR,
> spidev_spi_driver.driver.name);
> }
> 
> printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,
> __LINE__);
> 
> return status;
> }
> module_init(spidev_init);
> 
> The _printk_'s are of course mine.
> 
> ---John

--=_6a1b939a3fe2ad61e195e52a7efbdcc3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">My problem is I have an 1553 chip (an avionic data bus) connected to =
the HPS master (an ARM processor) via an FPGA (soft) SPI controller. This i=
s where the spi-altera.c comes in. It provides the driver/interface to the =
soft SPI controller on the Arria 10 SoC. </span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">I need an interface now to communicate between the SPI slave (the 155=
3 chip) and the SPI master (the Arria 10 HPS/ARM).</span><br /><br /><span =
style=3D"font-family: 'courier new', courier, monospace; font-size: 12pt;">=
When I load <span style=3D"text-decoration: underline;"><em><strong>spi-alt=
era.ko</strong></em></span> I get the <span style=3D"text-decoration: under=
line;"><em><strong>udev</strong></em></span> files (<span style=3D"text-dec=
oration: underline;"><em><strong>/dev/spidevXX</strong></em></span>) but no=
t when I load <span style=3D"text-decoration: underline;"><em><strong>spide=
v.ko.</strong></em></span>&nbsp;Why?&nbsp;<span style=3D"text-decoration: u=
nderline;"><em><strong>spi-altera.c&nbsp;</strong></em></span>doesn't have =
an <em>init</em> routine and consequently no call to&nbsp;<span style=3D"te=
xt-decoration: underline;"><em><strong>register_chrdev</strong></em></span>=
(..) but&nbsp;<span style=3D"text-decoration: underline;"><em><strong>spide=
v.c</strong></em></span>&nbsp;does. What's the relationship between&nbsp;<s=
pan style=3D"text-decoration: underline;"><em><strong>spi-altera</strong></=
em></span> and&nbsp;<span style=3D"text-decoration: underline;"><em><strong=
>spidev</strong></em></span>? What's the purpose of <span style=3D"text-dec=
oration: underline;"><em><strong>spi.c</strong></em></span>?</span><br /><b=
r /><br />On 2021-03-20 18:14, jchludzinski wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">How is it possible to build a loadable module from _sp=
i-altera.c_ when<br />it has no code for creating _udev_ files (i.e., _/dev=
/spidevXX_); it<br />has no:<br /><br />static int __init spidev_init(void)=
<br />{<br />&nbsp;&nbsp;&nbsp;&nbsp;int status;<br /><br />&nbsp;&nbsp;&nb=
sp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,<br />__L=
INE__);<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;/* Claim our 256 reserved device=
 numbers. &nbsp;Then register a class<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* =
that will key udev/mdev to add/remove /dev nodes. &nbsp;Last,<br />register=
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* the driver which manages those device=
 numbers.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/<br />&nbsp;&nbsp;&nbsp;&nbs=
p;BUILD_BUG_ON(N_SPI_MINORS &gt; 256);<br />&nbsp;&nbsp;&nbsp;&nbsp;status =
=3D register_chrdev(SPIDEV_MAJOR, "spi", &amp;spidev_fops);<br /><br />&nbs=
p;&nbsp;&nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION_=
_,<br />__LINE__);<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;if (status &lt; 0)<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return status;<br /><br =
/>&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUN=
CTION__,<br />__LINE__);<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;spidev_class =
=3D class_create(THIS_MODULE, "spidev");<br />&nbsp;&nbsp;&nbsp;&nbsp;if (I=
S_ERR(spidev_class)) {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;unregister_chrdev(SPIDEV_MAJOR,<br />spidev_spi_driver.driver.name);<br />=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return PTR_ERR(spidev_class=
);<br />&nbsp;&nbsp;&nbsp;&nbsp;}<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;printk=
(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__,<br />__LINE__);<br /><b=
r />&nbsp;&nbsp;&nbsp;&nbsp;status =3D spi_register_driver(&amp;spidev_spi_=
driver);<br />&nbsp;&nbsp;&nbsp;&nbsp;if (status &lt; 0) {<br />&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;class_destroy(spidev_class);<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unregister_chrdev(SPIDEV_MAJOR,=
<br />spidev_spi_driver.driver.name);<br />&nbsp;&nbsp;&nbsp;&nbsp;}<br /><=
br />&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __=
FUNCTION__,<br />__LINE__);<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;return statu=
s;<br />}<br />module_init(spidev_init);<br /><br />The _printk_'s are of c=
ourse mine.<br /><br />---John</blockquote>
</div>
</body></html>

--=_6a1b939a3fe2ad61e195e52a7efbdcc3--
