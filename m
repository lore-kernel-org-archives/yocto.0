Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05987E00978; Thu, 16 Jul 2015 06:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 792E7E00957
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 06:05:06 -0700 (PDT)
Received: by qkdv3 with SMTP id v3so49267178qkd.3
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 06:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FSDMx0FLrURLPGXHvjv2aBpqPM1DEIVHvn1q8rbUKok=;
	b=DM2tOH/BukiqOeS4mcpYqGA+drikZd2EITQhKHiF8yvZGLqxDgQ9znjRdjTXUuUB1c
	zJ4HowPNT6KLAL5O28XO3w2qHl4xaw2letlggUPaq2X74FMIln/TTsCqysXHz/De16BL
	moyTNFLkjmcRYz7Z0q0rCOYgcZXKgmXzGyLToePRiIj/aO50Ov/kIAXYhs6BQF0B3ggW
	1dvgj4b/PGSba3JQC5gfW+j+RKFgqaFPfaRfNpjmJmCIMvIBWkw9w9j8eKiuDerGRsrT
	d+w9JqIFkaAbQo1MQrJ4QRyydqwGWcDNmeFTNk5sXJ0sKsXEvRTZuzjiuBpdDFEYB0Fn
	JGJQ==
MIME-Version: 1.0
X-Received: by 10.55.23.104 with SMTP id i101mr3471877qkh.23.1437051905714;
	Thu, 16 Jul 2015 06:05:05 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Thu, 16 Jul 2015 06:05:05 -0700 (PDT)
In-Reply-To: <55A79757.8010704@mlbassoc.com>
References: <55A79757.8010704@mlbassoc.com>
Date: Thu, 16 Jul 2015 10:05:05 -0300
Message-ID: <CAF3SDA7nvmgtwGAkof346adKaG-+9dw-H+WpCFot-q+-dZ3dWg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Read-only file system with persistent storage
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
X-List-Received-Date: Thu, 16 Jul 2015 13:05:21 -0000
Content-Type: multipart/alternative; boundary=001a1147a6405d2e13051afdb8ec

--001a1147a6405d2e13051afdb8ec
Content-Type: text/plain; charset=UTF-8

Hi Gary, I'm interested in that too. In my case I want to have a
reset-to-factory-defaults-button on my device. The idea was use an readonly
filesystem and, on top of it, a read-write filesystem. All modifications
goes to top-half, once the RTFD button is pressed the top-half is formated
and the system goes back to its instalattion.

I have no ideia about support for that on Yocto, I know of OverlayFS
existence only. I think its possible but I don't know really how to do it,
also never tried. I'm just fearing that dealing with OverlayFS on rootfs
could be a headache. Anyway, take a look on this:
https://www.kernel.org/doc/Documentation/filesystems/overlayfs.txt

Best regards

- dhs

2015-07-16 8:36 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:

> I'd like to set up a system with a read-only root file system
> along with some persistent read-write storage.  What are the
> [best] options in Poky/Yocto for this?  Is there any support
> for some type of overlay file system?
>
> Thanks for any ideas/pointers
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a1147a6405d2e13051afdb8ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Gary, I&#39;m interested in that too. In=
 my case I want to have a reset-to-factory-defaults-button on my device. Th=
e idea was use an readonly filesystem and, on top of it, a read-write files=
ystem. All modifications goes to top-half, once the RTFD button is pressed =
the top-half is formated and the system goes back to its instalattion.<br><=
br></div>I have no ideia about support for that on Yocto, I know of Overlay=
FS existence only. I think its possible but I don&#39;t know really how to =
do it, also never tried. I&#39;m just fearing that dealing with OverlayFS o=
n rootfs could be a headache. Anyway, take a look on this: <a href=3D"https=
://www.kernel.org/doc/Documentation/filesystems/overlayfs.txt">https://www.=
kernel.org/doc/Documentation/filesystems/overlayfs.txt</a><br><br></div>Bes=
t regards<br><br></div>- dhs<br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">2015-07-16 8:36 GMT-03:00 Gary Thomas <span dir=3D"ltr=
">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.=
com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;d like to set u=
p a system with a read-only root file system<br>
along with some persistent read-write storage.=C2=A0 What are the<br>
[best] options in Poky/Yocto for this?=C2=A0 Is there any support<br>
for some type of overlay file system?<br>
<br>
Thanks for any ideas/pointers<span class=3D"HOEnZb"><font color=3D"#888888"=
><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a1147a6405d2e13051afdb8ec--
