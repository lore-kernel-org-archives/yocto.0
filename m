Received: from mail.rogue-research.com (mail.rogue-research.com [207.115.102.146])
 by mx.groups.io with SMTP id smtpd.web08.1292.1623871121643560859
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 12:18:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: rogue-research.com, ip: 207.115.102.146, mailfrom: simon@rogue-research.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id C2B5C9B9F90C;
	Wed, 16 Jun 2021 15:18:39 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dc2xZnOnOGTt; Wed, 16 Jun 2021 15:18:38 -0400 (EDT)
Received: from webmail.rogue-research.com (sedna.rogue-research.com [10.29.19.74])
	by mail.rogue-research.com (Postfix) with ESMTPSA id A833D9B9F8F0;
	Wed, 16 Jun 2021 15:18:38 -0400 (EDT)
MIME-Version: 1.0
Date: Wed, 16 Jun 2021 15:18:38 -0400
From: "simon" <simon@rogue-research.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-intel]: support for NUC11
In-Reply-To: <CANNYZj-GGpd2Kk0XkoGOJP22RMVkhT=H84XC1QnVrPsjDHVixA@mail.gmail.com>
References: <16874B1938B81CC8.31512@lists.yoctoproject.org>
 <0088e07248160343a9b7a01dd29d278d@rogue-research.com>
 <CANNYZj-GGpd2Kk0XkoGOJP22RMVkhT=H84XC1QnVrPsjDHVixA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <f417548ef63f202ff9ba58681ab81171@rogue-research.com>
X-Sender: simon@rogue-research.com
Content-Type: multipart/alternative;
 boundary="=_ccd54e5f6bd0ea7915fb4a7e7686a03f"

--=_ccd54e5f6bd0ea7915fb4a7e7686a03f
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

On 2021-06-16 1:24 pm, Alexander Kanavin wrote:

> On Wed, 16 Jun 2021 at 16:58, simon <simon@rogue-research.com> wrote:
> 
>> - There's a warning about not finding the IRIS driver:
>> MESA_LOADER: failed to open iris: /usr/lib/dri/iris_dri.so: cannot 
>> open
>> shared object file: No such file or directory
>> failed to load driver: iris
>> 
>> But from what I was able to understand, I was expecting it would be
>> available with mesa 21.0.3 since I've seen some commit about fixing
>> issue with it in the change logs.
>> 
>> I've tried to force the driver to both i965 and i915 but I either got 
>> a
>> warning that this GEN cannot use it or still got the same fps.
>> Am I right to assume that it goes to a default driver that uses the 
>> CPU
>> instead of the GPU?
> 
> Hello Simon,
> 
> I honestly don't know how Intel folks have overlooked this, but mesa in 
> yocto not only does not enable iris, the mesa recipe does not even have 
> an option to enable it.
> 
> However, it should be pretty easy to add. Please take a look at 
> poky/meta/recipes-graphics/mesa/mesa.inc, specificially any lines that 
> mention GALLIUMDRIVERS and matching PACKAGECONFIG,
> and you should be able to add iris there, and rebuild your image. Then 
> you can submit your first patch to yocto via oe-core mailing list ;)
> 
> Alex

Hello Alex,

I was able to fix the iris driver issue with the following added to 
mesa.inc

GALLIUMDRIVERS_append = "${@bb.utils.contains('PACKAGECONFIG', 'iris', 
',iris', '', d)}"

I will look into sending the patch

thanks a lot for your help

Simon

--=_ccd54e5f6bd0ea7915fb4a7e7686a03f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<p id=3D"reply-intro">On 2021-06-16 1:24 pm, Alexander Kanavin wrote:</p>
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">
<div id=3D"replybody1">
<div dir=3D"ltr">
<div class=3D"v1gmail_quote">
<div class=3D"v1gmail_attr" dir=3D"ltr">On Wed, 16 Jun 2021 at 16:58, simon=
 &lt;<a href=3D"mailto:simon@rogue-research.com" rel=3D"noreferrer">simon@r=
ogue-research.com</a>&gt; wrote:</div>
<blockquote class=3D"v1gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; bor=
der-left: 1px solid #cccccc; padding-left: 1ex;">- There's a warning about =
not finding the IRIS driver:<br />MESA_LOADER: failed to open iris: /usr/li=
b/dri/iris_dri.so: cannot open <br />shared object file: No such file or di=
rectory<br />failed to load driver: iris<br /><br />But from what I was abl=
e to understand, I was expecting it would be <br />available with mesa 21=
=2E0.3 since I've seen some commit about fixing <br />issue with it in the =
change logs.<br /><br />I've tried to force the driver to both i965 and i91=
5 but I either got a <br />warning that this GEN cannot use it or still got=
 the same fps.<br />Am I right to assume that it goes to a default driver t=
hat uses the CPU <br />instead of the GPU?</blockquote>
</div>
<br />
<div class=3D"v1gmail_quote">Hello Simon,</div>
<div class=3D"v1gmail_quote">&nbsp;</div>
<div class=3D"v1gmail_quote">I honestly don't know how Intel folks have ove=
rlooked this, but mesa in yocto not only does not enable iris, the mesa rec=
ipe does not even have an option to enable it.</div>
<div class=3D"v1gmail_quote">&nbsp;</div>
<div class=3D"v1gmail_quote">However, it should be pretty easy to add. Plea=
se take a look at poky/meta/recipes-graphics/mesa/mesa.inc, specificially a=
ny lines that mention GALLIUMDRIVERS and matching PACKAGECONFIG,</div>
<div class=3D"v1gmail_quote">and you should be able to add iris there, and =
rebuild your image. Then you can submit your first patch to yocto via oe-co=
re mailing list ;)</div>
<div class=3D"v1gmail_quote">&nbsp;</div>
<div class=3D"v1gmail_quote">Alex</div>
</div>
</div>
</blockquote>
<p><br /></p>
<p>Hello Alex, </p>
<p>I was able to fix the iris driver issue with the following added to mesa=
=2Einc<br /><br />GALLIUMDRIVERS_append =3D "${@bb.utils.contains('PACKAGEC=
ONFIG', 'iris', ',iris', '', d)}"</p>
<p>I will look into sending the patch</p>
<p>thanks a lot for your help</p>
<p>Simon</p>
<p><br /></p>

</body></html>

--=_ccd54e5f6bd0ea7915fb4a7e7686a03f--
