Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04232E00524; Tue, 28 Mar 2017 15:41:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCE3E004E5
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 15:41:26 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id n21so77154255qta.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 15:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G7E3hcwPFmXvfgg5UW4JnjIYcchHEyjNXgqcJc3KMc4=;
	b=fZ71jn25X8oDbXOv6A9PfbM9sg4NWrtxR6b18aoUByVLaAndAczIsILardnLau5ET5
	Ityc3M/gYlNsK3ouBzMiq9owX3vrb0qflrM7xZeOHxJm4YxmKHs8F2O2cT4Jm56uhBPt
	5aesqpkrq6H15zMGnKZ9thBVKzlaDqAV31ILT0RRnkTSQ08vh0Q6LV8QKnl9A306L23U
	ZJYiIeJepc2TqHY/7u2eyCdJKBI3VTFaVz4NKJhjcyI4blPnSY3EKtbcMY/olAlNh+yF
	JRBqrcNC1jVLHp314tRdIcudfkF32xoiSTNu0R48cUcrFzpe0lV1wHEx/QjSDBQC1pKC
	8jFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G7E3hcwPFmXvfgg5UW4JnjIYcchHEyjNXgqcJc3KMc4=;
	b=VZP32yD+AbPWqwt9MQYSulmQz1RQQSSsCBRkDBmH62PY+O5bsw6yCVkPdjHUQT66Z8
	p4tV2Ib5SNttTt6Hm2VMTQNbRGFECeg7UDJy+Nm3SR60JgUDIepEPMy6kKb6UsxgFvxz
	cIMir9WefJY3WBpipexl785gfpLnpAgea5+22mzE4SR15LqoThqcLjI0P0BWECZCFRvp
	Mj+zkd9AV3w0r08fCr5R5oH9A4E8rM+pkZhJozda9yzVMIjOIIg6IU82+yVU0pVcldYv
	kk7I9VVgKiEcnUSiwXCo76iM04lBmJ55Zqyvd6+dNVBOZuPK20ZkyTa9UuJ11n6ivSpv
	RAjg==
X-Gm-Message-State: AFeK/H0XvGW7p0dnWB1uSGryf0YQRw+U4LCuKucBD/Nn/IA91mM/hVBLtW7RcGnmjt0axv3c0aNWUUBDGWHuzg==
X-Received: by 10.200.48.174 with SMTP id v43mr29046538qta.263.1490740885700; 
	Tue, 28 Mar 2017 15:41:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Tue, 28 Mar 2017 15:41:25 -0700 (PDT)
In-Reply-To: <CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
	<CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 29 Mar 2017 00:41:25 +0200
Message-ID: <CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Tue, 28 Mar 2017 22:41:37 -0000
Content-Type: multipart/alternative; boundary=001a11466f02f1d20b054bd228d7

--001a11466f02f1d20b054bd228d7
Content-Type: text/plain; charset=UTF-8

I'm not sure, I started with yocto about a week ago. What I did is exactly:
1. Added to bblayers.conf the layer
/home/alvaro/poky/meta-openembedded/meta-oe (previously I downloaded this
meta, needed for x11vnc)
2. Added a custom layer /home/alvaro/poky/meta-unclutter (it just compile
the application and copy it to /usr/bin)
3. In local.conf, added CORE_IMAGE_EXTRA_INSTALL += "xf86-video-nouveau
unclutter alsa-utils x11vnc gconf"
4. Run MACHINE=genericx86-64 bitbake core-image-x11

Then I installed the image into my device. Everything worked as expected
but the nouveau driver. Is this correct or I forgot some step?

2017-03-29 0:09 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

>
> On 28 March 2017 at 22:47, Alvaro Garcia <maxpowel@gmail.com> wrote:
>
>> I tried this guacamayo recipe https://layers.openembedded.or
>> g/layerindex/recipe/3272/ but can't compile (too old, maybe
>> unmaintained?). Also tried the recipe xf86-video-nouveau (it is blacklisted
>> but in krogoth it compiles right) but when I boot the image, the nouveau
>> driver is not used. My knowledges are very low to even try to cross compile
>> the nvidia propietary drivers (and can't find any reference) so now I'm
>> stucked. My machine is a zotac zbox, it came with angstrom but now I want
>> to build my own image.
>>
>
> When you built the nouveux driver, did you add it to the image?  Bitbaking
> something doesn't add it to the image.
>
> Ross
>

--001a11466f02f1d20b054bd228d7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I&#39;m not sure, I started with yocto about a w=
eek ago. What I did is exactly:<br></div>1. Added to bblayers.conf the laye=
r /home/alvaro/poky/meta-openembedded/meta-oe (previously I downloaded this=
 meta, needed for x11vnc)<br></div>2. Added a custom layer /home/alvaro/pok=
y/meta-unclutter (it just compile the application and copy it to /usr/bin)<=
br><div><div>3. In local.conf, added CORE_IMAGE_EXTRA_INSTALL +=3D &quot;xf=
86-video-nouveau unclutter alsa-utils x11vnc gconf&quot;<br></div><div>4. R=
un MACHINE=3Dgenericx86-64 bitbake core-image-x11<br><br></div><div>Then I =
installed the image into my device. Everything worked as expected but the n=
ouveau driver. Is this correct or I forgot some step?<br></div></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-03-29 0:09 G=
MT+02:00 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@i=
ntel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span =
class=3D""><br><div class=3D"gmail_quote">On 28 March 2017 at 22:47, Alvaro=
 Garcia <span dir=3D"ltr">&lt;<a href=3D"mailto:maxpowel@gmail.com" target=
=3D"_blank">maxpowel@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div>I tried this guacamayo recipe <a href=3D"https://layers.=
openembedded.org/layerindex/recipe/3272/" target=3D"_blank">https://layers.=
openembedded.or<wbr>g/layerindex/recipe/3272/</a> but can&#39;t compile (to=
o old, maybe unmaintained?). Also tried the recipe xf86-video-nouveau (it i=
s blacklisted but in krogoth it compiles right) but when I boot the image, =
the nouveau driver is not used. My knowledges are very low to even try to c=
ross compile the nvidia propietary drivers (and can&#39;t find any referenc=
e) so now I&#39;m stucked. My machine is a zotac zbox, it came with angstro=
m but now I want to build my own image.<br></div></blockquote></div><br></s=
pan>When you built the nouveux driver, did you add it to the image?=C2=A0 B=
itbaking something doesn&#39;t add it to the image.</div><span class=3D"HOE=
nZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a11466f02f1d20b054bd228d7--
