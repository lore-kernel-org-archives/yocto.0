Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.9930.1616278493030676412
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Mar 2021 15:14:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=pnK9TQZL;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 9C1DDBD103
	for <yocto@lists.yoctoproject.org>; Sat, 20 Mar 2021 22:14:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 9C1DDBD103
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616278490;
	bh=TXIkhs0RbjJ1X4VF9LesZ/d7tUcidtJ3T1LvuZq+R1k=;
	h=Date:From:To:Subject:From;
	b=pnK9TQZLknglJFi6nYHzbD5utfocq44Up1F08zyv3S/KXvJVrtgo01sth//hHPBE+
	 SudW1MuIX+LRA2ayWLE/NP5BIlYNloXisF19Jg2ZFjiOKoamMx2hqK8O1EhAuBpYfq
	 Otm+HzbMfZGkDlP3hABxK623z8t6UxhOGSWQHTXzpIVwWQe9qa9Wwb2sccFI67px+I
	 4zYymzTSz+i222KbZ/3psEb5KAEyWX/TgBkB6S8YIv7v+jaiD0ckaOYEYdFoFVX9kr
	 DpQ7+B18n5odBStn6rzNrqfU7Y+ZTPI39WpDX3lhzRJh/XfzQ7z7LnPvI1urzHT/b0
	 u9tJUYU2n28PA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eQUhqUD4B4gi for <yocto@lists.yoctoproject.org>;
	Sat, 20 Mar 2021 22:14:46 +0000 (UTC)
Date: Sat, 20 Mar 2021 18:14:46 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 7FF48BD02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1616278486;
	bh=TXIkhs0RbjJ1X4VF9LesZ/d7tUcidtJ3T1LvuZq+R1k=;
	h=Date:From:To:Subject:From;
	b=gKkxbj5E9tIgYUCzQnrJkmNDEpK70dA8Xrc1j4h2RsrMoL2MW2uN6tCZj3qQ2bSO6
	 P2aYm2PftSIhU0ppTJ2xW9eh0nfuMcKnvqNMvTTcdKuLMgNoGNSuDTqqa2+YETaBEr
	 JZXRJAe5LUO3DGGYLkCvbs9NeHFYp0gRYXOhvFyTlFJVz/Z3V9ZEYWddZ5ozNkYmHQ
	 FGAPtFScx0xxO07e8ZdtGfEgDiKHRrqc7UekOA47uHHgvif8btsPFjOu3z1XEU8lcz
	 4Dbw5hWVTLk15pHIU1z8tJ1vBKbWrwJle8rDEu3JYYwkP/DxzdRkXSyBZbAMdUQGTO
	 xOiZkfO80KDaw==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: =?UTF-8?B?SG93IGlzIGl0IHBvc3NpYmxlIHRvIGJ1aWxkIGHCoGxvYWRhYmxlIG1vZHVsZSBmcm9twqBzcGktYWx0ZXJhLmMgLi4uPw==?=
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <60a267db4053b71066630618e053bcf4@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_328549958d1e70e41e9c851b2cdfb33b"

--=_328549958d1e70e41e9c851b2cdfb33b
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

How is it possible to build a loadable module from _spi-altera.c_ when
it has no code for creating _udev_ files (i.e., _/dev/spidevXX_); it has
no: 

static int __init spidev_init(void)
{
    int status;

    printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE__);

    /* Claim our 256 reserved device numbers.  Then register a class
     * that will key udev/mdev to add/remove /dev nodes.  Last, register
     * the driver which manages those device numbers.
     */
    BUILD_BUG_ON(N_SPI_MINORS > 256);
    status = register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);

    printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE__);

    if (status < 0)
        return status;

    printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE__);

    spidev_class = class_create(THIS_MODULE, "spidev");
    if (IS_ERR(spidev_class)) {
        unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
        return PTR_ERR(spidev_class);
    }

    printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE__);

    status = spi_register_driver(&spidev_spi_driver);
    if (status < 0) {
        class_destroy(spidev_class);
        unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
    }

    printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE__);

    return status;
}
module_init(spidev_init);

The _printk_'s are of course mine. 

---John

--=_328549958d1e70e41e9c851b2cdfb33b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">How is it possible to build a&nbsp;loadable module from&nbsp;<span st=
yle=3D"text-decoration: underline;"><em><strong>spi-altera.c</strong></em><=
/span>&nbsp;when it has no code for creating <span style=3D"text-decoration=
: underline;"><em><strong>udev</strong></em></span> files (i.e.,&nbsp;<span=
 style=3D"text-decoration: underline;"><em><strong>/dev/spidevXX</strong></=
em></span>); it has no:&nbsp;</span><br /><br /><strong><span style=3D"font=
-family: 'courier new', courier, monospace; font-size: 12pt;">static int __=
init spidev_init(void)</span></strong><br /><strong><span style=3D"font-fam=
ily: 'courier new', courier, monospace; font-size: 12pt;">{</span></strong>=
<br /><strong><span style=3D"font-family: 'courier new', courier, monospace=
; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;int status;</span></strong><br =
/><br /><strong><span style=3D"font-family: 'courier new', courier, monospa=
ce; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Pas=
sed %s %d \n", __FUNCTION__, __LINE__);</span></strong><br /><br /><strong>=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">&nbsp;&nbsp;&nbsp;&nbsp;/* Claim our 256 reserved device numbers. &nb=
sp;Then register a class</span></strong><br /><strong><span style=3D"font-f=
amily: 'courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;* that will key udev/mdev to add/remove /dev nodes. &nbsp;La=
st, register</span></strong><br /><strong><span style=3D"font-family: 'cour=
ier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;* the driver which manages those device numbers.</span></strong><br /><s=
trong><span style=3D"font-family: 'courier new', courier, monospace; font-s=
ize: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/</span></strong><br /><strong><=
span style=3D"font-family: 'courier new', courier, monospace; font-size: 12=
pt;">&nbsp;&nbsp;&nbsp;&nbsp;BUILD_BUG_ON(N_SPI_MINORS &gt; 256);</span></s=
trong><br /><strong><span style=3D"font-family: 'courier new', courier, mon=
ospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;status =3D register_chrde=
v(SPIDEV_MAJOR, "spi", &amp;spidev_fops);</span></strong><br /><strong><spa=
n style=3D"font-family: 'courier new', courier, monospace; font-size: 12pt;=
">&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><br /><strong><span style=3D"font=
-family: 'courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&=
nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE=
__);</span></strong><br /><br /><strong><span style=3D"font-family: 'courie=
r new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;if (s=
tatus &lt; 0)</span></strong><br /><strong><span style=3D"font-family: 'cou=
rier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;return status;</span></strong><br /><br /><strong><sp=
an style=3D"font-family: 'courier new', courier, monospace; font-size: 12pt=
;">&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><br /><strong><span style=3D"fon=
t-family: 'courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;=
&nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LIN=
E__);</span></strong><br /><br /><strong><span style=3D"font-family: 'couri=
er new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;spid=
ev_class =3D class_create(THIS_MODULE, "spidev");</span></strong><br /><str=
ong><span style=3D"font-family: 'courier new', courier, monospace; font-siz=
e: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;if (IS_ERR(spidev_class)) {</span></stron=
g><br /><strong><span style=3D"font-family: 'courier new', courier, monospa=
ce; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unreg=
ister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);</span></strong><=
br /><strong><span style=3D"font-family: 'courier new', courier, monospace;=
 font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return P=
TR_ERR(spidev_class);</span></strong><br /><strong><span style=3D"font-fami=
ly: 'courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;=
&nbsp;}</span></strong><br /><strong><span style=3D"font-family: 'courier n=
ew', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;</span><=
/strong><br /><strong><span style=3D"font-family: 'courier new', courier, m=
onospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_ALERT "DEBU=
G: Passed %s %d \n", __FUNCTION__, __LINE__);</span></strong><br /><br /><s=
trong><span style=3D"font-family: 'courier new', courier, monospace; font-s=
ize: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;status =3D spi_register_driver(&amp;spi=
dev_spi_driver);</span></strong><br /><strong><span style=3D"font-family: '=
courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp=
;if (status &lt; 0) {</span></strong><br /><strong><span style=3D"font-fami=
ly: 'courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;class_destroy(spidev_class);</span></strong><=
br /><strong><span style=3D"font-family: 'courier new', courier, monospace;=
 font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unregist=
er_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);</span></strong><br =
/><strong><span style=3D"font-family: 'courier new', courier, monospace; fo=
nt-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;}</span></strong><br /><strong><spa=
n style=3D"font-family: 'courier new', courier, monospace; font-size: 12pt;=
">&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><br /><strong><span style=3D"font=
-family: 'courier new', courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&=
nbsp;&nbsp;printk(KERN_ALERT "DEBUG: Passed %s %d \n", __FUNCTION__, __LINE=
__);</span></strong><br /><strong><span style=3D"font-family: 'courier new'=
, courier, monospace; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;</span></st=
rong><br /><strong><span style=3D"font-family: 'courier new', courier, mono=
space; font-size: 12pt;">&nbsp;&nbsp;&nbsp;&nbsp;return status;</span></str=
ong><br /><strong><span style=3D"font-family: 'courier new', courier, monos=
pace; font-size: 12pt;">}</span></strong><br /><strong><span style=3D"font-=
family: 'courier new', courier, monospace; font-size: 12pt;">module_init(sp=
idev_init);</span></strong><br /><br />T<span style=3D"font-family: 'courie=
r new', courier, monospace; font-size: 12pt;">he <span style=3D"text-decora=
tion: underline;"><em><strong>printk</strong></em></span>'s are of course m=
ine.</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<span style=3D"font-family: 'courier new', courier, monospace; font-size: 1=
2pt;">---John</span></div>
</body></html>

--=_328549958d1e70e41e9c851b2cdfb33b--
