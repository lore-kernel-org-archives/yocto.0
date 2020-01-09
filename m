Subject: Re: i.MX6 screen rotation
To: yocto@lists.yoctoproject.org
From: "Bert" <bert.boehne@systec.de>
X-Originating-Location: Leinfelden-Echterdingen, Baden-Württemberg, DE (82.100.205.122)
X-Originating-Platform: Windows Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Jan 2020 01:25:54 -0800
References: <em2f6fb73f-c8b6-4fa3-94c2-e530827f90ec@andys-imac.leeshillfarm.local>
In-Reply-To: <em2f6fb73f-c8b6-4fa3-94c2-e530827f90ec@andys-imac.leeshillfarm.local>
Message-ID: <11981.1578561954374527180@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="E81cLCADHtg5TDxxwl9K"

--E81cLCADHtg5TDxxwl9K
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy,

this sounds like you have to check your hardware and your framebuffer driv=
er. How is the display connected to the display controller? This is may not=
 set correctly in your framebuffer driver.

I had the same issues with a SSD1305 display conrtoller. (https://www.adaf=
ruit.com/images/product-files/2720/2719%20data.pdf) If you look at "10.1.26=
=
=C2=A0 Set COM Pins Hardware Configuration (DAh)" in this datasheet you wi=
ll understand what I mean.

Kind regards,

Bert

--E81cLCADHtg5TDxxwl9K
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy,<br /><br />this sounds like you have to check your hardware and yo=
ur framebuffer driver. How is the display connected to the display controll=
er? This is may not set correctly in your framebuffer driver. <br /><br />I=
 had the same issues with a SSD1305 display conrtoller. (https://www.adafru=
it.com/images/product-files/2720/2719%20data.pdf) If you look at "10.1.26&n=
bsp; Set COM Pins Hardware Configuration (DAh)" in this datasheet you will =
understand what I mean. <br /><br />Kind regards,<br /><br />Bert

--E81cLCADHtg5TDxxwl9K--
