Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BC83E00C25; Thu, 11 Feb 2016 13:30:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBE3CE00C1C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 13:30:30 -0800 (PST)
Received: by mail-lf0-f50.google.com with SMTP id 78so40264794lfy.3
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 13:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=aEvTFPpcaGtT7R1NtQrhdudymRaPyW+XFMapjM8jSn0=;
	b=H8/eOtxuzaFwTp/QSqex4dM5k9Pl6pFD9l1wfWMkwVYq22ZxJGNHJFX7phDkMmVZ6S
	9q0KviCKUkIqCDH86BukkKaPggaZTgauvIxgdxDPis7zD0RhOvSX/VOn0DrAo3Y8W7ra
	9DzPakYJUmxkrrhcuvoJ6xmkInFnPko+pablyg7xpA7wwF7w7W/cwvGa1UEnN+zs7bXy
	UFKrnq87XdWmUPjIVKtslwsFYsbLXDMhwXvlU8DgN0VoWr19PW8cDVtlx2emhn5eZBsD
	Y5p8D3GkmvPzDkxDuyqSNOBg18gJB3M7jnAIoCflm44ptUXftd1CWdukTEZfkhCPhTym
	TpoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=aEvTFPpcaGtT7R1NtQrhdudymRaPyW+XFMapjM8jSn0=;
	b=KwNoKJITyLWOA6bYtHJ04PnDaKM7uAi/Ilzjds0Dm2xGnb4qrmGdh1S9y32RmssbwM
	i+1QbczzrwazgI9VvBrwaPAECi8h9M4RC/KgEh65Cv7j4f8ptk5w1KlHOsRd+bbVPDJv
	c6rL6EEOOHgR7edNetAHhdRRqAgkl64+o3CDteGO2r1Y1zGs/mE1Uvc21D9uc1zK+98E
	b9Eg1zH6nLVHLTLcXuk8H5KBK3XDgkowb0uErURAJcnKp+mktmBfKdZkPtrQJNuSAdFo
	hht+0Uk4f3vea0F49z2445mYrvgyUQ//GiX4utsdnYWXeijXEFk5DnomvYopvuGOLxOv
	ck9w==
X-Gm-Message-State: AG10YORQliLI7j6ZUt1qN6f+aetS1C1jRGtZUm6YNSjMZ6AbS9FVAxDulECYG4g+HQlGgPlTSD3JDXWdcf8dfA==
MIME-Version: 1.0
X-Received: by 10.25.142.136 with SMTP id q130mr20825098lfd.56.1455226229001; 
	Thu, 11 Feb 2016 13:30:29 -0800 (PST)
Received: by 10.25.137.85 with HTTP; Thu, 11 Feb 2016 13:30:28 -0800 (PST)
In-Reply-To: <CABatt_xxvB+FTJfVaXWj4i=FdYYLNr0C3ALuayoXBV7pUnKJ3Q@mail.gmail.com>
References: <CABatt_xxvB+FTJfVaXWj4i=FdYYLNr0C3ALuayoXBV7pUnKJ3Q@mail.gmail.com>
Date: Thu, 11 Feb 2016 21:30:28 +0000
Message-ID: <CABatt_zmzoQXUa88VQaf9M8ccnQaTQmBvWzmDacThVA8hCrRqQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: ERROR: busybox-udhcpd not found in the base feeds
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
X-List-Received-Date: Thu, 11 Feb 2016 21:30:34 -0000
Content-Type: multipart/alternative; boundary=001a114035ac72953d052b854296

--001a114035ac72953d052b854296
Content-Type: text/plain; charset=UTF-8

Hi,

I think I understand what has happened.
It's just occured to me that the udhcpd code is probably part of busybox by
default and is in the busybox package, so I checked the defconfig and
CONFIG_UDHCPD is set to y.   I'm assuming that the busybox-udhcpd package
contains just the init script which of course doesn't get installed as
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit" has been set which means I
have an empty package which then results in the not found in base feeds
error.
Does this sound right??

I can remove busybox-udhcpd from the image but it does seem wrong to remove
this from the image when in fact all I'm removing is in the initscript.

Maybe something like
IMAGE_REMOVE += "
${@bb.utils.contains('DISTRO_FEATURES','systemd','busybox-udhcpd','',d)}"
in busybox recipe, if there is such a thing to stop people like me hitting
this problem again

One question that springs to mind is that if udhcpd is part of busybox by
default how do you override this with another DHCP server? Which is
something I may have to look into.

Many Thanks,
Martin.




On Thu, Feb 11, 2016 at 5:57 PM, Martin Townsend <mtownsend1973@gmail.com>
wrote:

> Hi,
>
> I've just moved over to using systemd on a project but am seeing the error
> listed in the subject.
> I added the following to local.conf as there is no distribution config
> file.
>
> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_append = " systemd"
> # Prevent the SysVinit distribution feature from being automatically
> enabled
> # Breaks busybox-udhcpd for some reason.
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>
> My understanding is that the last line will stop init scripts being
> installed if the recipe has systemd support.  Adding
> VIRTUAL-RUNTIME_initscripts = "" would completely disable init scripts I
> think so I didn't put this in.  So the above should use systemd where
> appropriate otherwise use sysV init scripts.
>
> I then blew away all sstate, cache and tmp directories and rebuilt and get
> the error.  If I comment out the last line the error goes away but I get
> all the sys V init scripts.  I checked the recipe and it inherits systemd
> and update-rc.d and I think the problem may be that busybox builds syslog
> with a systemd service but all the remaining components use init scripts as
> far as I can see, including udhcpd.  I looked in packages-split and
> busybox-udhcpd is empty.
>
> Any help appreciated,
> Martin.
>

--001a114035ac72953d052b854296
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br></div><div><br>I think I understand what =
has happened.<br>It&#39;s just occured to me that the udhcpd code is probab=
ly part of busybox by default and is in the busybox package, so I checked t=
he defconfig and CONFIG_UDHCPD is set to y. =C2=A0 I&#39;m assuming that th=
e busybox-udhcpd package contains just the init script which of course does=
n&#39;t get installed as DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysv=
init&quot; has been set which means I have an empty package which then resu=
lts in the not found in base feeds error. <br></div>Does this sound right??=
<br><br></div><div>I can remove busybox-udhcpd from the image but it does s=
eem wrong to remove this from the image when in fact all I&#39;m removing i=
s in the initscript.<br><br>Maybe something like<br>IMAGE_REMOVE +=3D &quot=
; ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;,&#39;systemd&#39;,&#39;bus=
ybox-udhcpd&#39;,&#39;&#39;,d)}&quot;<br></div><div>in busybox recipe, if t=
here is such a thing to stop people like me hitting this problem again<br><=
br></div><div>One question that springs to mind is that if udhcpd is part o=
f busybox by default how do you override this with another DHCP server? Whi=
ch is something I may have to look into.=C2=A0 <br></div><div><br></div><di=
v>Many Thanks,<br></div><div>Martin.<br></div><div><br></div><div><br></div=
><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu=
, Feb 11, 2016 at 5:57 PM, Martin Townsend <span dir=3D"ltr">&lt;<a href=3D=
"mailto:mtownsend1973@gmail.com" target=3D"_blank">mtownsend1973@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div><div>Hi,<br><br></div>I&#39;ve just moved over to using systemd on =
a project but am seeing the error listed in the subject.<br></div>I added t=
he following to local.conf as there is no distribution config file.<br><br>=
VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>DISTRO_FEATURES_app=
end =3D &quot; systemd&quot;<br># Prevent the SysVinit distribution feature=
 from being automatically enabled<br># Breaks busybox-udhcpd for some reaso=
n.<br>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;<br><br><=
/div><div>My understanding is that the last line will stop init scripts bei=
ng installed if the recipe has systemd support.=C2=A0 Adding VIRTUAL-RUNTIM=
E_initscripts =3D &quot;&quot; would completely disable init scripts I thin=
k so I didn&#39;t put this in.=C2=A0 So the above should use systemd where =
appropriate otherwise use sysV init scripts. <br></div><div><br></div><div>=
I then blew away all sstate, cache and tmp directories and rebuilt and get =
the error.=C2=A0 If I comment out the last line the error goes away but I g=
et all the sys V init scripts.=C2=A0 I checked the recipe and it inherits s=
ystemd and update-rc.d and I think the problem may be that busybox builds s=
yslog with a systemd service but all the remaining components use init scri=
pts as far as I can see, including udhcpd.=C2=A0 I looked in packages-split=
 and busybox-udhcpd is empty.<br><br></div><div>Any help appreciated,<br></=
div><div>Martin.=C2=A0 <br></div></div>
</blockquote></div><br></div>

--001a114035ac72953d052b854296--
