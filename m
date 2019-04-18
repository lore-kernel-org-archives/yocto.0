Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F245E00D50; Wed, 17 Apr 2019 23:57:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9AFCE00AC5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 23:57:13 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id k2so1120696qtm.1
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 23:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uWb6p7mrBbTfk/kPIUQdfVHTAkJMADAmS87T54GcrbA=;
	b=aLNIYnRlg+/sxIq1B01ckvu0TveRCPpHx/mH1UHVln3WzPeXrd5yK4Vb2RZe607wdD
	7wGZ4YnQ7BuN+BwH/kMzz6s/qZ/fFYpbA279qAqRitI1Yt5YQWTs3/lbwTLZQzu64yQB
	qSjT82q5BYRe36RNzIf3Y6XwqsjI+N/LZi4Ol8IIPi89hi2huSJKpGAlpJ/QIAMiMmLH
	Pik2tUY9Ix7xgehkp6p5lGUwDImF06DTkGbbJdyLc/ZvZuhdk89XUaQd7h1XB2M6uf0g
	/pqw2JBXYVCDjiVF2HyBbXa5UQ1gzpE7GELWjn+dUBC9byOf/wYyz4rhxRTMhW+6wnwv
	/Fog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uWb6p7mrBbTfk/kPIUQdfVHTAkJMADAmS87T54GcrbA=;
	b=NHWftaEwSu4fHn1Pm38IOxfW87nJe2NO09ydfBLbZSwH6cmsCrtojoyB6nosSe1/mq
	x3kcLmGteTDODFAEC0Iq7O9CitzQ7DxltchIprs5wz3qyEeryJ4vBAFY7wpwCqw6aIPw
	m/+UnAnHask6KhbO9EWiUoBbvI4IvccQC6KQ+rE13q7Cz2VBWM/XFJZw+vOEznJc8u4J
	GSUWR/m/CNGN6fk9wYNzCpD75fR2XdIzsJoi+3EkqMLmybfHx5UMIcr3KtmCerzAPzDP
	oyoTkdZeODpWWBC1ca9WvO076EXmupqpvBilk2uTCW3s4ul2cAnMd0RnSiNCCIkUwBVD
	apTQ==
X-Gm-Message-State: APjAAAV72DEvij76irpa7JzcIPFShV2GnePwwuVPuHwCQOxt8Gv/fUlD
	ZzBpz2Tg2atYvGtAGCET3IOradkuamiufM37scLWdsJL600=
X-Google-Smtp-Source: APXvYqznAu5k5pJzRaB1a+QMSZcVN1Ospb/OOkbPM/BidiHEYuJS6abHvaT3oHRsqqz337tfsb1E7ua8j5JsAHTaruE=
X-Received: by 2002:aed:3641:: with SMTP id e59mr4189643qtb.235.1555570632896; 
	Wed, 17 Apr 2019 23:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <e6fc119b-6216-9dc2-b0d4-8692e081ab29@bisdn.de>
	<CAGAf8Lw0jeS5En90TQfFQzYGAF5x6ZhVzLy4xvXu+GZHoq8-ww@mail.gmail.com>
	<bb00f911-35d6-d8b2-195c-c95e59fa12fc@bisdn.de>
In-Reply-To: <bb00f911-35d6-d8b2-195c-c95e59fa12fc@bisdn.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 18 Apr 2019 08:57:01 +0200
Message-ID: <CAGAf8Lz2Z33aCGUUNUoeE5E78Y2fB1Z5PZqdCCzJJGShgn03WA@mail.gmail.com>
To: Pierluigi Greto <pierluigi.greto@bisdn.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: fitImage: hangs at "Starting kernel ..."
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
X-List-Received-Date: Thu, 18 Apr 2019 06:57:16 -0000
Content-Type: multipart/alternative; boundary="000000000000ff33610586c88207"

--000000000000ff33610586c88207
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello PierLuigi,

I almost immediately read your attached log file. And this cot my eye:
*>>> U-Boot SPL 2012.10-gcbef171* (Mar 09 2016 - 17:01:14)

Seems, that you have U-Boot version from Y2012 (2012.10)???

For the starters, could you, please, update your FW to U-boot version
2019.01 at least! And try the same conditions again?

Thank you,
Zoran
_______

On Wed, Apr 17, 2019 at 9:06 PM Pierluigi Greto <pierluigi.greto@bisdn.de>
wrote:

> Hi Zoran,
>
> thank you for the reply.
> [1] In this you can find some information about the device (link
> <https://github.com/opencomputeproject/OpenNetworkLinux/blob/master/packa=
ges/platforms/delta/armel/arm-delta-ag6248c/arm-delta-ag6248c-poe/platform-=
config/r0/src/lib/arm-delta-ag6248c-poe-r0.yml>).
> In this patch the dts (link
> <https://github.com/opencomputeproject/OpenNetworkLinux/blob/663642e817c3=
3d44d5e4dd1f98247addd68c9f5c/packages/base/any/kernels/3.2-lts/configs/arm-=
iproc-all/patches/platform-delta-ag6248c-device-drivers.patch>).
> The platform is an arm cortexa9.
> [2] This is how I install the image
>
> install_uimage() {    echo "Format Nand Flash region\n"    flash_erase /d=
ev/mtd-open 0 0    nandwrite -p /dev/mtd-open fitImage-core-image-base-delt=
a-ag6248c-poe.bin    sync; sync}hw_load() {    echo "nand read \$loadaddr o=
pen 0x1000000 && run fpboot && bootm"}
>
> I'll attach the log from when I install the image to when it the kernel
> hangs.
>
> Thank you,
> Pierluigi
> On 17/04/19 17:26, Zoran Stojsavljevic wrote:
>
> Hello PierLuigi,
>
> [1] Which arm platform (based upon which arm Open Sorce platform) you are=
 using?
> [2] Please, can we see your added proprietary ash script to U-Boot defaul=
t env?
>
> Thank you,
> Zoran
> _______
>
> On Wed, Apr 17, 2019 at 5:13 PM Pierluigi Greto<pierluigi.greto@bisdn.de>=
 <pierluigi.greto@bisdn.de> wrote:
>
> Hi all,
>
> I'm trying to build an image for an arm platform with uboot. After the
> installation, when the system is starting it hangs at "Starting kernel
> ...". In the log I can see that the kernel uncompressed image, the
> ramdisk subimage and  the Flat Device Tree are found. But the kernel
> doesn't start.
> Any hints on how to check what it's wrong with the image? For example if
> the kernel is correctly compiled, the FTD is the right one ecc.
> The loaded kernel is shown as "uncompressed", there is some way to
> define the compression type in yocto (I have an image that works and the
> kernel is shown as "gzip compressed")? Could the compression type be a
> problem?
>
> Any hint is very welcome.
>
> Thank you,
> Pierluigi
>
> --
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/li=
stinfo/yocto
>
>

--000000000000ff33610586c88207
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello PierLuigi,</div><div><br></div=
><div>I almost immediately read your attached log file. And this cot my eye=
:</div><div><span style=3D"color:rgb(255,0,0)"><i><b>&gt;&gt;&gt; U-Boot SP=
L 2012.10-gcbef171</b></i></span> (Mar 09 2016 - 17:01:14)</div><div><br></=
div><div>Seems, that you have U-Boot version from Y2012 (2012.10)???</div><=
div><br></div><div>For the starters, could you, please, update your FW to U=
-boot version</div><div>2019.01 at least! And try the same conditions again=
?<br></div><div><br></div><div>Thank you,</div><div>Zoran</div><div>_______=
<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Apr 17, 2019 at 9:06 PM Pierluigi Greto &lt;<a href=
=3D"mailto:pierluigi.greto@bisdn.de">pierluigi.greto@bisdn.de</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi Zoran,</p>
    <p>thank you for the reply. <br>
      [1] In this you can find some information about the device (<a href=
=3D"https://github.com/opencomputeproject/OpenNetworkLinux/blob/master/pack=
ages/platforms/delta/armel/arm-delta-ag6248c/arm-delta-ag6248c-poe/platform=
-config/r0/src/lib/arm-delta-ag6248c-poe-r0.yml" target=3D"_blank">link</a>=
).
      In this patch the dts (<a href=3D"https://github.com/opencomputeproje=
ct/OpenNetworkLinux/blob/663642e817c33d44d5e4dd1f98247addd68c9f5c/packages/=
base/any/kernels/3.2-lts/configs/arm-iproc-all/patches/platform-delta-ag624=
8c-device-drivers.patch" target=3D"_blank">link</a>).
      The platform is an arm cortexa9.<br>
      [2] This is how I install the image <br>
      <br>
    </p>
    <pre class=3D"gmail-m_6149398634572178530code gmail-m_61493986345721785=
30highlight" lang=3D"conf"><span id=3D"gmail-m_6149398634572178530LC5" clas=
s=3D"gmail-m_6149398634572178530line" lang=3D"conf"><span class=3D"gmail-m_=
6149398634572178530n">install_uimage</span>() {</span>
<span id=3D"gmail-m_6149398634572178530LC6" class=3D"gmail-m_61493986345721=
78530line" lang=3D"conf">    <span class=3D"gmail-m_6149398634572178530n">e=
cho</span> <span class=3D"gmail-m_6149398634572178530s2">&quot;Format Nand =
Flash region\n&quot;</span></span>
<span id=3D"gmail-m_6149398634572178530LC7" class=3D"gmail-m_61493986345721=
78530line" lang=3D"conf">    <span class=3D"gmail-m_6149398634572178530n">f=
lash_erase</span> /<span class=3D"gmail-m_6149398634572178530n">dev</span>/=
<span class=3D"gmail-m_6149398634572178530n">mtd</span>-<span class=3D"gmai=
l-m_6149398634572178530n">open</span> <span class=3D"gmail-m_61493986345721=
78530m">0</span> <span class=3D"gmail-m_6149398634572178530m">0</span></spa=
n>
<span id=3D"gmail-m_6149398634572178530LC8" class=3D"gmail-m_61493986345721=
78530line" lang=3D"conf">    <span class=3D"gmail-m_6149398634572178530n">n=
andwrite</span> -<span class=3D"gmail-m_6149398634572178530n">p</span> /<sp=
an class=3D"gmail-m_6149398634572178530n">dev</span>/<span class=3D"gmail-m=
_6149398634572178530n">mtd</span>-<span class=3D"gmail-m_614939863457217853=
0n">open</span> <span class=3D"gmail-m_6149398634572178530n">fitImage</span=
>-<span class=3D"gmail-m_6149398634572178530n">core</span>-<span class=3D"g=
mail-m_6149398634572178530n">image</span>-<span class=3D"gmail-m_6149398634=
572178530n">base</span>-<span class=3D"gmail-m_6149398634572178530n">delta<=
/span>-<span class=3D"gmail-m_6149398634572178530n">ag6248c</span>-<span cl=
ass=3D"gmail-m_6149398634572178530n">poe</span>.<span class=3D"gmail-m_6149=
398634572178530n">bin</span></span>
<span id=3D"gmail-m_6149398634572178530LC9" class=3D"gmail-m_61493986345721=
78530line" lang=3D"conf">    <span class=3D"gmail-m_6149398634572178530n">s=
ync</span>; <span class=3D"gmail-m_6149398634572178530n">sync</span></span>
<span id=3D"gmail-m_6149398634572178530LC10" class=3D"gmail-m_6149398634572=
178530line" lang=3D"conf">}</span>
<span id=3D"gmail-m_6149398634572178530LC11" class=3D"gmail-m_6149398634572=
178530line" lang=3D"conf"></span>
<span id=3D"gmail-m_6149398634572178530LC12" class=3D"gmail-m_6149398634572=
178530line" lang=3D"conf"><span class=3D"gmail-m_6149398634572178530n">hw_l=
oad</span>() {</span>
<span id=3D"gmail-m_6149398634572178530LC13" class=3D"gmail-m_6149398634572=
178530line" lang=3D"conf">    <span class=3D"gmail-m_6149398634572178530n">=
echo</span> <span class=3D"gmail-m_6149398634572178530s2">&quot;nand read \=
$loadaddr open 0x1000000 &amp;&amp; run fpboot &amp;&amp; bootm&quot;</span=
></span>
<span id=3D"gmail-m_6149398634572178530LC14" class=3D"gmail-m_6149398634572=
178530line" lang=3D"conf">}</span>
</pre>
    <p>I&#39;ll attach the log from when I install the image to when it the
      kernel hangs.<br>
      <br>
      Thank you,<br>
      Pierluigi<br>
    </p>
    <div class=3D"gmail-m_6149398634572178530moz-cite-prefix">On 17/04/19 1=
7:26, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre class=3D"gmail-m_6149398634572178530moz-quote-pre">Hello PierLui=
gi,

[1] Which arm platform (based upon which arm Open Sorce platform) you are u=
sing?
[2] Please, can we see your added proprietary ash script to U-Boot default =
env?

Thank you,
Zoran
_______

On Wed, Apr 17, 2019 at 5:13 PM Pierluigi Greto
<a class=3D"gmail-m_6149398634572178530moz-txt-link-rfc2396E" href=3D"mailt=
o:pierluigi.greto@bisdn.de" target=3D"_blank">&lt;pierluigi.greto@bisdn.de&=
gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"gmail-m_6149398634572178530moz-quote-pre">Hi all,

I&#39;m trying to build an image for an arm platform with uboot. After the
installation, when the system is starting it hangs at &quot;Starting kernel
...&quot;. In the log I can see that the kernel uncompressed image, the
ramdisk subimage and  the Flat Device Tree are found. But the kernel
doesn&#39;t start.
Any hints on how to check what it&#39;s wrong with the image? For example i=
f
the kernel is correctly compiled, the FTD is the right one ecc.
The loaded kernel is shown as &quot;uncompressed&quot;, there is some way t=
o
define the compression type in yocto (I have an image that works and the
kernel is shown as &quot;gzip compressed&quot;)? Could the compression type=
 be a
problem?

Any hint is very welcome.

Thank you,
Pierluigi

--
_______________________________________________
yocto mailing list
<a class=3D"gmail-m_6149398634572178530moz-txt-link-abbreviated" href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>
<a class=3D"gmail-m_6149398634572178530moz-txt-link-freetext" href=3D"https=
://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.y=
octoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
    </blockquote>
  </div>

</blockquote></div>

--000000000000ff33610586c88207--
