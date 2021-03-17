Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web08.278.1615999285134677912
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 09:41:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=a/hvmBtR;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id CBEF5BD053
	for <yocto@lists.yoctoproject.org>; Wed, 17 Mar 2021 16:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net CBEF5BD053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615999271;
	bh=5HrqRGpWZYAOo0of6amqbey1RRvenHer0+sfRCofpIM=;
	h=Date:From:To:Subject:From;
	b=a/hvmBtRbBDyNQKG0m0sO8KezJpBh8bb52qvAupDcb8rzmiKf4ghGzWmlytGAkjwd
	 sIQ3XX8CelmRcEMogc1WKS+UMZWUU6Qq5XQqQp5BpcXQnkay/qpWNkdJJOPEkduJU+
	 VJnSWiOjdwPeqhvWBSTlWlii/ytcEnJqBbXhflaicmdO1tQkpw2HjBX0JFV8eQyi1e
	 BC7S0FFgq0ON8ywGbBjRYVfJBZGA6QEb2y75N3bWjgNgPDoqoaAklptglI+H3IdRrO
	 qry0eTNZPav9ybeBDCzpqH8v+zMUk8ezKKGwMNR/1BFEiFo8yOB7YlsWWgM8KCl6Zv
	 /7wscndwXu6bA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TrKmzu_s4KMW for <yocto@lists.yoctoproject.org>;
	Wed, 17 Mar 2021 16:41:09 +0000 (UTC)
Date: Wed, 17 Mar 2021 12:41:08 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 4279CBD029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615999269;
	bh=5HrqRGpWZYAOo0of6amqbey1RRvenHer0+sfRCofpIM=;
	h=Date:From:To:Subject:From;
	b=frl2EaJvFzIMluBQq/+0BaI6AsgBgmFdZzjX5e0kaHTXGfGCCZHxW/vL/T/3J8j2c
	 nwJcKD7kUKY1AyJn0E1cPZ/IXdoNLInxC8UTpf+RzjH5CZV5Ni1PUncTwl62TIP1zF
	 jPLkVRaxqF0+8BcHbkRXdIxN2FfTtetrUI6kpg3perCzSRJPJhlFRklFtRs9CGz3Y2
	 l63soMeBXvL5Orohv19Bf1vCaJeW2EKL5zwBfrKfLs8UvzmbHDZhck84Lx9ETEmiM9
	 Rr+JElSe6hmpI08X0bKguXAwHELmgIamrOs1jPM0ecoaXb/59+2TKtN+DF+2f2eJ7h
	 O5N1527U6rfAA==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: spidev.c ?
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_7431c210b054a314e1dea94a6d07c337"

--=_7431c210b054a314e1dea94a6d07c337
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

In the YOCTO/Linux source tree there's _drivers/spi/_ which has all the
source for SPI drivers. There's only 1 file, _spidev.c_, which has: 

static int __init spidev_init(void)
{
        int status;

        /* Claim our 256 reserved device numbers.  Then register a class
         * that will key udev/mdev to add/remove /dev nodes.  Last,
register
         * the driver which manages those device numbers.
         */
        BUILD_BUG_ON(N_SPI_MINORS > 256);
        status = register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);
        if (status < 0)
                return status;

        spidev_class = class_create(THIS_MODULE, "spidev");
        if (IS_ERR(spidev_class)) {
                unregister_chrdev(SPIDEV_MAJOR,
spidev_spi_driver.driver.name);
                return PTR_ERR(spidev_class);
        }

        status = spi_register_driver(&spidev_spi_driver);
        if (status < 0) {
                class_destroy(spidev_class);
                unregister_chrdev(SPIDEV_MAJOR,
spidev_spi_driver.driver.name);
        }
        return status;
}
module_init(spidev_init); 

... for creating device files in _udev_. 

So when I use '_make nconfig_' to specifiy that I want a loadable module
for the ALTERA SPI driver, why don't I see a _spidev.o_ file in
_drivers/spi/_ ? 

How does _spi-altera.ko_ create device files without a call to
register_chrdev(...). 

How is it a loadable module without module_init(...)? 

When I separately build _spidev.c_ as an _.ko_ and try loading it, I
get: "_Device or resourse busy_" 

---John

--=_7431c210b054a314e1dea94a6d07c337
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"v1pre"><span style=3D"font-size: 12pt;">In the YOCTO/Linux so=
urce tree there's <span style=3D"text-decoration: underline;"><em><strong>d=
rivers/spi/</strong></em></span> which has all the source for SPI drivers=
=2E There's only 1 file, <span style=3D"text-decoration: underline;"><em><s=
trong>spidev.c</strong></em></span>, which has:</span></div>
<div class=3D"v1pre">&nbsp;</div>
<div class=3D"v1pre">
<div tabindex=3D"-1">
<div tabindex=3D"0" aria-label=3D"Message Contents" aria-selected=3D"true">
<div class=3D"_rp_f5" tabindex=3D"-1" aria-label=3D"Expanded Message Conten=
ts">
<div class=3D"_rp_R4 ms-border-color-neutralLight ShowConsesusSchedulingLin=
k ShowReferenceAttachmentsLinks" tabindex=3D"-1">
<div class=3D"_rp_45 _rp_35">
<div role=3D"document">
<div id=3D"Item.MessagePartBody" class=3D"_rp_T4">
<div id=3D"Item.MessageUniqueBody" class=3D"_rp_U4 ms-font-weight-regular m=
s-font-color-neutralDark rpHighlightAllClass rpHighlightBodyClass">
<div class=3D"rps_c962">
<div>
<div class=3D"BodyFragment">
<div class=3D"PlainText" style=3D"padding-left: 30px;"><span style=3D"font-=
size: 12pt;"><strong><span style=3D"font-family: 'courier new', courier, mo=
nospace;">static int __init spidev_init(void)</span></strong></span><br /><=
span style=3D"font-size: 12pt;"><strong><span style=3D"font-family: 'courie=
r new', courier, monospace;">{</span></strong></span><br /><span style=3D"f=
ont-size: 12pt;"><strong><span style=3D"font-family: 'courier new', courier=
, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int status;</span>=
</strong></span><br /><br /><span style=3D"font-size: 12pt;"><strong><span =
style=3D"font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; /* Claim our 256 reserved device numbers.&nbsp; T=
hen register a class</span></strong></span><br /><span style=3D"font-size: =
12pt;"><strong><span style=3D"font-family: 'courier new', courier, monospac=
e;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * that will key udev/m=
dev to add/remove /dev nodes.&nbsp; Last, register</span></strong></span><b=
r /><span style=3D"font-size: 12pt;"><strong><span style=3D"font-family: 'c=
ourier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; * the driver which manages those device numbers.</span></strong></s=
pan><br /><span style=3D"font-size: 12pt;"><strong><span style=3D"font-fami=
ly: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; */</span></strong></span><br /><span style=3D"font-size: 12pt=
;"><strong><span style=3D"font-family: 'courier new', courier, monospace;">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BUILD_BUG_ON(N_SPI_MINORS &gt; 2=
56);</span></strong></span><br /><span style=3D"font-size: 12pt;"><strong><=
span style=3D"font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; status =3D register_chrdev(SPIDEV_MAJOR, "sp=
i", &amp;spidev_fops);</span></strong></span><br /><span style=3D"font-size=
: 12pt;"><strong><span style=3D"font-family: 'courier new', courier, monosp=
ace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (status &lt; 0)</span><=
/strong></span><br /><span style=3D"font-size: 12pt;"><strong><span style=
=3D"font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return=
 status;</span></strong></span><br /><br /><span style=3D"font-size: 12pt;"=
><strong><span style=3D"font-family: 'courier new', courier, monospace;">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spidev_class =3D class_create(THIS=
_MODULE, "spidev");</span></strong></span><br /><span style=3D"font-size: 1=
2pt;"><strong><span style=3D"font-family: 'courier new', courier, monospace=
;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(spidev_class)) {</=
span></strong></span><br /><span style=3D"font-size: 12pt;"><strong><span s=
tyle=3D"font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; un=
register_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);</span></stron=
g></span><br /><span style=3D"font-size: 12pt;"><strong><span style=3D"font=
-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return PTR_ERR=
(spidev_class);</span></strong></span><br /><span style=3D"font-size: 12pt;=
"><strong><span style=3D"font-family: 'courier new', courier, monospace;">&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></strong></span><br /><br=
 /><span style=3D"font-size: 12pt;"><strong><span style=3D"font-family: 'co=
urier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 status =3D spi_register_driver(&amp;spidev_spi_driver);</span></strong></s=
pan><br /><span style=3D"font-size: 12pt;"><strong><span style=3D"font-fami=
ly: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (status &lt; 0) {</span></strong></span><br /><span style=3D"fon=
t-size: 12pt;"><strong><span style=3D"font-family: 'courier new', courier, =
monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; class_destroy(spidev_class);</span></strong></s=
pan><br /><span style=3D"font-size: 12pt;"><strong><span style=3D"font-fami=
ly: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unregister_chrdev(S=
PIDEV_MAJOR, spidev_spi_driver.driver.name);</span></strong></span><br /><s=
pan style=3D"font-size: 12pt;"><strong><span style=3D"font-family: 'courier=
 new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</s=
pan></strong></span><br /><span style=3D"font-size: 12pt;"><strong><span st=
yle=3D"font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; return status;</span></strong></span><br /><span st=
yle=3D"font-size: 12pt;"><strong><span style=3D"font-family: 'courier new',=
 courier, monospace;">}</span></strong></span><br /><span style=3D"font-siz=
e: 12pt;"><strong><span style=3D"font-family: 'courier new', courier, monos=
pace;">module_init(spidev_init);</span></strong></span></div>
</div>
</div>
</div>
</div>
</div>
<div class=3D"_pe_d _pe_62" style=3D"padding-left: 30px;" tabindex=3D"-1" a=
ria-expanded=3D"false" aria-haspopup=3D"false">&nbsp;</div>
</div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;">... for creating dev=
ice files in <span style=3D"text-decoration: underline;"><em><strong>udev</=
strong></em></span>.</span></div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;">&nbsp;</span></div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;">So when I use '<span=
 style=3D"text-decoration: underline;"><em><strong>make nconfig</strong></e=
m></span>' to specifiy that I want a loadable module for the ALTERA SPI dri=
ver, why don't I see a <span style=3D"text-decoration: underline;"><em><str=
ong>spidev.o</strong></em></span>&nbsp;file in <span style=3D"text-decorati=
on: underline;"><em><strong>drivers/spi/</strong></em></span> ? </span></di=
v>
<div class=3D"_rp_Z4">&nbsp;</div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;">How does&nbsp;<span =
style=3D"text-decoration: underline;"><em><strong>spi-altera.ko</strong></e=
m></span> create device files without a call to&nbsp;<strong><span style=3D=
"font-family: 'courier new', courier, monospace;">register_chrdev(...)</spa=
n></strong>. </span></div>
<div class=3D"_rp_Z4">&nbsp;</div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;"><span style=3D"font-=
size: 12pt;">How is it a loadable module without&nbsp;</span></span><span s=
tyle=3D"font-size: 12pt;"><strong><span style=3D"font-family: 'courier new'=
, courier, monospace;">module_init(...)</span></strong></span><span style=
=3D"font-size: 12pt;">?</span></div>
<div class=3D"_rp_Z4">&nbsp;</div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;">When I separately bu=
ild <span style=3D"text-decoration: underline;"><em><strong>spidev.c</stron=
g></em></span> as an&nbsp;<span style=3D"text-decoration: underline;"><em><=
strong>.ko</strong></em></span> and try loading it, I get: "<strong><em>Dev=
ice or resourse busy</em></strong>"</span></div>
<div class=3D"_rp_Z4">&nbsp;</div>
<div class=3D"_rp_Z4"><span style=3D"font-size: 12pt;">---John</span></div>
</div>
</div>
</div>
</div>
</div>
</div>
</body></html>

--=_7431c210b054a314e1dea94a6d07c337--
