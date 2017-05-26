Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8254EE0085D; Fri, 26 May 2017 14:36:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A8EDE0077F
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 14:36:24 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id o5so3518940ith.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 14:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yZHNU87Yb6WtOl8qZqwKzZi7DGopjWQuIpvdFS4NVEs=;
	b=xYRLe4OLv2HU/NqdxaRghIFOZeBpWzEPm2NxM0FkgOhdOO4W5YHht3SYFhpFc9wLP+
	Npa5jHJSKPGFFSG2MwyjVj96fLirzzzqXReIHYVCunIQWQ/aGY8CR73PCthJzc0mi+1+
	1JfUChjDsO2fq/3nRC6YkOkYxnPGzlIVoe2BeCYyFNcToeY9MKgjIBjhGlthVMQuVLi+
	j19x8HNyWUjnOxFZjMi6fX4XNhC8mAvY2wmZGXT9sjccm4ldwsqC9+0MtJZdc5+4zpEL
	iAydVVgMWTfocASrsF8dyxbJrdyf5kTGD9G0XVYgPG4s6W36VSnKtmdQLD0ex0+YqK3n
	PGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yZHNU87Yb6WtOl8qZqwKzZi7DGopjWQuIpvdFS4NVEs=;
	b=DraULb/qL6gJ/FbXK38pCxKQqS9NeyfaaLDqgpY0I2g3jaOriYZiH1qxmDKAj/ONFe
	30ojGD60hQh24Psdy0wnmFbdkSkDZnVQ3mYYHh4GfDtx72NfgzLskuTgodVH59I1ERjv
	tigZZEAd//vNdekhD67kAObMVnVVMwG0ntu57xij14rdRMQHOGyXTc2zU1Fpj7AoRwSC
	pzv+mmvfwKTMK1EhS1lwvL9D3rTAUzJExgb2Fz1kiKzlOZw2p9tfPOtcC6x7AHY7otLd
	GE/z72ixGDphKwyYQymGSUHOWJpbUsQXoBtOe3HoeAWYc/HJqnEjmhH6xeUtlMMDhGra
	UVag==
X-Gm-Message-State: AODbwcBkKToEJ8jAdEQpoeQJjeI9VS10BIufJgsWtz4fIwOuC0g7C4MS
	4B3HAdcWSR1538xBZNzDmQ9hXD+6hhuk/w0=
X-Received: by 10.36.193.134 with SMTP id e128mr4579316itg.43.1495834581696;
	Fri, 26 May 2017 14:36:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Fri, 26 May 2017 14:35:41 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAMKF1sreUL-JNJ7jR-1enGtwyNQU0y+W2sCx1JWBs5E7kgT+8Q@mail.gmail.com>
References: <CAK18fxHPsQ9XUZq1v3cZ0MymeNA9t+dUhcvtV==XTHF-i6RFnQ@mail.gmail.com>
	<CAMKF1sreUL-JNJ7jR-1enGtwyNQU0y+W2sCx1JWBs5E7kgT+8Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 26 May 2017 22:35:41 +0100
Message-ID: <CAK18fxFoxtO_Q+aAJJi-UvwwzGHOEcyGm7BKn0PWSKXSg-Qx2Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Very strange issue where bitbake hangs at do_rootfs
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
X-List-Received-Date: Fri, 26 May 2017 21:36:39 -0000
Content-Type: multipart/alternative; boundary="94eb2c08ebd2e29b3705507420d8"

--94eb2c08ebd2e29b3705507420d8
Content-Type: text/plain; charset="UTF-8"

On Fri, May 26, 2017 at 5:19 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, May 26, 2017 at 5:52 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Hello all,
> >
> > I moved recently on a new arch linux host and everything works fine with
> one
> > exception: when I build a custom distribution based on morty with many
> > packages including kernel-modules (beaglebone), the build system hangs
> > without any details. I hooked into package_manager.py RPM install and
> > streamed output from `process = subprocess.Popen(cmd.split(),
> > stderr=subprocess.STDOUT, stdout=subprocess.PIPE)` and it seems that it
> > hangs in different places every time. Output example:
> >
> > ---
> >
> > Result of kernel-module-industrialio-sw-trigger postinst: 0
> > debug: Processing
> > kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone in
> > /work/resin/resinos/resin-beaglebone/build/tmp/work/
> beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/
> beaglebone/kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b.beaglebone.rpm
> > 1428:Installing kernel-module.. ########################################
> [
> > 55%]
> > Output from kernel-module-lm8333-4.4.55+git0+903eb64c68-r22b@beaglebone:
> > Executing kernel-module-lm8333 postinst with: /bin/sh
> > /work/resin/resinos/resin-beaglebone/build/tmp/work/
> beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///
> oe_install/tmp/rpm-tmp.76459
> > 1
> >
> > # kernel-module-lm8333 - postinst
> > #!/bin/sh
> > if [ -z "$D" ]; then
> >         depmod -a 4.4.55+
> > else
> >         # image.bbclass will call depmodwrapper after everything is
> > installed,
> >         # no need to do it here as well
> >         :
> > fi
> > Result of kernel-module-lm8333 postinst: 0
> > debug: Processing
> > kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone in
> > /work/resin/resinos/resin-beaglebone/build/tmp/work/
> beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rpms/
> beaglebone/kernel-module-tca8418-keypad-4.4.55+git0+
> 903eb64c68-r22b.beaglebone.rpm
> > 1429:Installing kernel-module.. ########################################
> [
> > 55%]
> > Output from
> > kernel-module-tca8418-keypad-4.4.55+git0+903eb64c68-r22b@beaglebone:
> > Executing kernel-module-tca8418-keypad postinst with: /bin/sh
> > /work/resin/resinos/resin-beaglebone/build/tmp/work/
> beaglebone-poky-linux-gnueabi/resin-image/1.0-r0/rootfs///
> oe_install/tmp/rpm-tmp.76459
> > 1
> >
> > ---
> >
> > If I don't install kernel-modules build succeeds.
> >
> > Any hints on how to debug this further? I can't seem to find anything
> > relevant in smart output.
> >
>
> yeah rolling ditros are always intesting when you want to build fixed
> releases from past.
> one of things that helped me in past was to pin python3 to 3.5 but a
> clean reinstall of arch
> I got that problem solved automagically
>

Downgraded to 3.5 and didn't help sadly.

Regards,
Andrei

--94eb2c08ebd2e29b3705507420d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, May 26, 2017 at 5:19 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5">On Fri, May 26, 2017 at 5:52 AM, Andrei Gherzan &lt;<a href=3D"mail=
to:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; Hello all,<br>
&gt;<br>
&gt; I moved recently on a new arch linux host and everything works fine wi=
th one<br>
&gt; exception: when I build a custom distribution based on morty with many=
<br>
&gt; packages including kernel-modules (beaglebone), the build system hangs=
<br>
&gt; without any details. I hooked into package_manager.py RPM install and<=
br>
&gt; streamed output from `process =3D subprocess.Popen(cmd.split(),<br>
&gt; stderr=3Dsubprocess.STDOUT, stdout=3Dsubprocess.PIPE)` and it seems th=
at it<br>
&gt; hangs in different places every time. Output example:<br>
&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; Result of kernel-module-industrialio-sw-<wbr>trigger postinst: 0<br>
&gt; debug: Processing<br>
&gt; kernel-module-lm8333-4.4.55+<wbr>git0+903eb64c68-r22b@<wbr>beaglebone =
in<br>
&gt; /work/resin/resinos/resin-<wbr>beaglebone/build/tmp/work/<wbr>beaglebo=
ne-poky-linux-gnueabi/<wbr>resin-image/1.0-r0/rpms/<wbr>beaglebone/kernel-m=
odule-<wbr>lm8333-4.4.55+git0+903eb64c68-<wbr>r22b.beaglebone.rpm<br>
&gt; 1428:Installing kernel-module.. ##############################<wbr>###=
####### [<br>
&gt; 55%]<br>
&gt; Output from kernel-module-lm8333-4.4.55+<wbr>git0+903eb64c68-r22b@<wbr=
>beaglebone:<br>
&gt; Executing kernel-module-lm8333 postinst with: /bin/sh<br>
&gt; /work/resin/resinos/resin-<wbr>beaglebone/build/tmp/work/<wbr>beaglebo=
ne-poky-linux-gnueabi/<wbr>resin-image/1.0-r0/rootfs///<wbr>oe_install/tmp/=
rpm-tmp.76459<br>
&gt; 1<br>
&gt;<br>
&gt; # kernel-module-lm8333 - postinst<br>
&gt; #!/bin/sh<br>
&gt; if [ -z &quot;$D&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depmod -a 4.4.55+<br>
&gt; else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# image.bbclass will call depmodwrapp=
er after everything is<br>
&gt; installed,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# no need to do it here as well<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:<br>
&gt; fi<br>
&gt; Result of kernel-module-lm8333 postinst: 0<br>
&gt; debug: Processing<br>
&gt; kernel-module-tca8418-keypad-<wbr>4.4.55+git0+903eb64c68-r22b@<wbr>bea=
glebone in<br>
&gt; /work/resin/resinos/resin-<wbr>beaglebone/build/tmp/work/<wbr>beaglebo=
ne-poky-linux-gnueabi/<wbr>resin-image/1.0-r0/rpms/<wbr>beaglebone/kernel-m=
odule-<wbr>tca8418-keypad-4.4.55+git0+<wbr>903eb64c68-r22b.beaglebone.rpm<b=
r>
&gt; 1429:Installing kernel-module.. ##############################<wbr>###=
####### [<br>
&gt; 55%]<br>
&gt; Output from<br>
&gt; kernel-module-tca8418-keypad-<wbr>4.4.55+git0+903eb64c68-r22b@<wbr>bea=
glebone:<br>
&gt; Executing kernel-module-tca8418-keypad postinst with: /bin/sh<br>
&gt; /work/resin/resinos/resin-<wbr>beaglebone/build/tmp/work/<wbr>beaglebo=
ne-poky-linux-gnueabi/<wbr>resin-image/1.0-r0/rootfs///<wbr>oe_install/tmp/=
rpm-tmp.76459<br>
&gt; 1<br>
&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; If I don&#39;t install kernel-modules build succeeds.<br>
&gt;<br>
&gt; Any hints on how to debug this further? I can&#39;t seem to find anyth=
ing<br>
&gt; relevant in smart output.<br>
&gt;<br>
<br>
</div></div>yeah rolling ditros are always intesting when you want to build=
 fixed<br>
releases from past.<br>
one of things that helped me in past was to pin python3 to 3.5 but a<br>
clean reinstall of arch<br>
I got that problem solved automagically<br></blockquote><div><br></div><div=
>Downgraded to 3.5 and didn&#39;t help sadly.</div><div><br></div><div>Rega=
rds,</div><div>Andrei=C2=A0</div></div><br></div></div>

--94eb2c08ebd2e29b3705507420d8--
