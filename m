Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0209DE0079A; Mon,  1 Feb 2016 12:14:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA84E00444
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 12:14:05 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id p63so88494049wmp.1
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 12:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GOxq4X+slpVd8zHnZZy16p37out8uxCd7wkmGLeezPk=;
	b=ZlBgeEVe2Lwbg82IEEH5MpUVRfRIj2tRwmnTp8jI30HBtT4FMjObXSMNuexx0q0Xy5
	owdcVEL43XuPYvcnEKMqgvNELIjgYWgbwEZZtveVee/VyYL7VO+zaYV78TUVdM4OnEAU
	foJ1UTfhjL4gVe7F7hRclmdJlvP/tJd+dFMvCIqCI0NWuvRrBHYoZazO9wXdJP3Saufa
	s2Gt3lzJsz6Vo6mVMQLf+qpqPYMcbBv1ATfa7j8PE1F0EBKnyYT/plCU2g1WiX6Bol92
	utbskEMoK4pjG54Cal4V06zDycptkdKD666IL/GwKoJNl3wOhT5RkhxnUEv3jPK7lA7A
	+nVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=GOxq4X+slpVd8zHnZZy16p37out8uxCd7wkmGLeezPk=;
	b=C0qfh8PvGRcFqDP2zfUkht76jIMuRUuxId/KYS/VhCnO7IkzIT3p0Eocp39159dfER
	UcupOKl9lDQh9+atTqHki1g3qu26U/w2KdbnfnDr/5wriJp9F7zGevS+XIvzvTFhb/iz
	DCSlrdM9U7VqMK6LcFzdwvEbshUgKztbbt01zdA1gigCjDAGV+Tie+0Gzdcu4imk45oL
	qH4Bb1GtR6+m7k+0yhch3UoNbFfIXN8EouhLN/sDtVva2OEdEyhS0h41cgnIZ0LsIEBP
	Ae+9unQYHlFwpXB0iVzKWUHUM+coIyHB8l8Vk+WwrkJuK+PzRzFPIy71jM5KbAZpJOLA
	tbgg==
X-Gm-Message-State: AG10YOTBqfo8DgRDceIKhMeC/huAyYf89RFhl3cwqMU5USePefpYtuImNhVRxAUkRXWcvhP0k8akfFQjzmzpVA==
MIME-Version: 1.0
X-Received: by 10.195.12.45 with SMTP id en13mr22988240wjd.99.1454357644334;
	Mon, 01 Feb 2016 12:14:04 -0800 (PST)
Received: by 10.194.67.168 with HTTP; Mon, 1 Feb 2016 12:14:04 -0800 (PST)
In-Reply-To: <AMXPR01MB086771D7471FE3A7C7176DF92DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
References: <AMXPR01MB086771D7471FE3A7C7176DF92DE0@AMXPR01MB086.eurprd01.prod.exchangelabs.com>
Date: Mon, 1 Feb 2016 21:14:04 +0100
Message-ID: <CA+chaQdJmTyE7YVFJ-s9Shptuk1uUzHwPfGPszvHbN=eAF3=dQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Missing task queue dependencie while building qt5-image-demo: SAMBA
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
X-List-Received-Date: Mon, 01 Feb 2016 20:14:08 -0000
Content-Type: multipart/alternative; boundary=047d7bd9170ac480b2052abb0638

--047d7bd9170ac480b2052abb0638
Content-Type: text/plain; charset=UTF-8

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=samba

you need to add meta-oe layer to your setup.

On Mon, Feb 1, 2016 at 8:53 PM, Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Hi,
>
>
> I recently upgrade all my yocto tree to jethro.
>
>
> Attempting to build qt5-image-demo recipe from meta-qt5, I get the
> following error:
>
>
> *Parsing of 1617 .bb files complete (0 cached, 1617 parsed). 2139 targets,
> 362 skipped, 1 masked, 0 errors.*
> *NOTE: Resolving any missing task queue dependencies*
> *ERROR: Nothing PROVIDES 'samba' (but
> /home/kai/yocto/build-rsp2-qt5/../poky-jethro/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
> <http://omxplayer_git.bb> DEPENDS on or otherwise requires it)*
>
> Should I add something to get samba built as well ?
>
>
> K.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bd9170ac480b2052abb0638
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"http://layers.openembedded.org/layerindex/branc=
h/master/recipes/?q=3Dsamba">http://layers.openembedded.org/layerindex/bran=
ch/master/recipes/?q=3Dsamba</a><br><div><br></div><div>you need to add met=
a-oe layer to your setup.</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Mon, Feb 1, 2016 at 8:53 PM, Karim ATIKI <span dir=
=3D"ltr">&lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">k=
arim_atiki@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hi,</p>
<p><br>
</p>
<p>I recently upgrade all my yocto tree to jethro.</p>
<p><br>
</p>
<p>Attempting to build qt5-image-demo recipe from meta-qt5, I get the follo=
wing error:</p>
<p><br>
</p>
<p></p>
<div><b><i>Parsing of 1617 .bb files complete (0 cached, 1617 parsed). 2139=
 targets, 362 skipped, 1 masked, 0 errors.</i></b></div>
<div><b><i>NOTE: Resolving any missing task queue dependencies</i></b></div=
>
<div><b><i>ERROR: Nothing PROVIDES &#39;samba&#39; (but /home/kai/yocto/bui=
ld-rsp2-qt5/../poky-jethro/meta-raspberrypi/recipes-multimedia/omxplayer/<a=
 href=3D"http://omxplayer_git.bb" target=3D"_blank">omxplayer_git.bb</a> DE=
PENDS on or otherwise requires it)</i></b></div>
<div><br>
</div>
Should I add something to get samba built as well ?
<span class=3D"HOEnZb"><font color=3D"#888888"><p></p>
<p><br>
</p>
<p>K.</p>
</font></span></div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7bd9170ac480b2052abb0638--
