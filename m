Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5FCFE00C8B; Mon, 14 Aug 2017 06:37:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 068E8E00B8E
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 06:37:28 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id v189so47373384pgd.2
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 06:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=aP1E2T4+LP7Tqk9d+38ClVlQfm9I000t1zXCERc1+G0=;
	b=EX514UOIjjTRSC4O4ACY7h2bAjCREcC1bimnkx72IiBTCssBlMEucXU+WLTYgaW3rK
	42CRCw1/Al0OwNx+K7Oz6R7ksUuRmfoSjupeydhnYqmiHS9nKP4BBCcjheiVmUn97zTS
	SZkVE+hzPgnkm8N7HlOHdVTRkgE1QGcXnszO9Lw0NRM3uhqgCcoS76vwdG0WP4slfgBS
	fwST8iHJrFxs0L3KCMUOUbq8Qm8BLuDRIWExc8gTti96UxwM4MQhTo9zJbbvBjASAsBK
	iNhrTzNoWfr6kGqJWm+7UAIY8/NtuHiYquhEW1nKM+6ArPD1GNho0wjkbAFFYvT3Efug
	3msw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=aP1E2T4+LP7Tqk9d+38ClVlQfm9I000t1zXCERc1+G0=;
	b=HDCeQfkHVWZrM06dHdSz+pQpk88HOEf/ZS9MqK0DqrKkZmSRA7bxNIZdH0CrXRkjbj
	NZpsUonzvM7Yy1mXceDX/acLSKBLGCxZi9PjEBrux54krTEYo82TD43VVCGQhAtNlaYq
	n6dcQXABdDg0qWEOSyhzjCVGzv0BIvKLBGtZJEcaB0/9l8vWiEje1BtrTIR+WZYw7ikj
	BNO4NX5E1Zs7ytwyKs3H17qXFgITVtQPQeOWih/v22S6i+cQavgmgkLtgRqihwmpMika
	rawmoGUdLoUYFdMJMH5GC5q7H6vl0ypJy3KBHtsNi1dVUy/kh0f4T+5colkX/Qr4Ua6H
	1oKQ==
X-Gm-Message-State: AHYfb5j8qqAdtg2ZRKdgpD+CaIzUImSXwnXOG2+2cGBCs7c1AqtVogs5
	N7HYTyrP7hhp09nmMmfEu7an4uk5jQ==
X-Received: by 10.98.150.8 with SMTP id c8mr2057734pfe.283.1502717848243; Mon,
	14 Aug 2017 06:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <1502455978267.42486@ysoft.com>
	<CAMKF1sq7UyCVO4hW_D0Z==5AVi9Ua-R_bd+NhSj0LHykvY50Xw@mail.gmail.com>
	<d2639fe8-813e-69e3-5e85-c1687e1663a4@ysoft.com>
In-Reply-To: <d2639fe8-813e-69e3-5e85-c1687e1663a4@ysoft.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Aug 2017 13:37:17 +0000
Message-ID: <CAMKF1spW6ev2U2pn+qiNTfi9yEagQ_urBZO6n31bjW2FVLyH5A@mail.gmail.com>
To: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to generate cpio.gz AND cpio.gz.u-boot image from single recipe?
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
X-List-Received-Date: Mon, 14 Aug 2017 13:37:29 -0000
Content-Type: multipart/alternative; boundary="94eb2c0dfda68ad32f0556b6c3fc"

--94eb2c0dfda68ad32f0556b6c3fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please open a bugzilla entry for it

On Mon, Aug 14, 2017 at 6:11 AM Michal Vok=C3=A1=C4=8D <michal.vokac@ysoft.=
com> wrote:

> On 11.8.2017 18:31, Khem Raj wrote:
> > On Fri, Aug 11, 2017 at 5:52 AM, Vok=C3=A1=C4=8D Michal <Michal.Vokac@y=
soft.com>
> wrote:
> >> Hi,
> >>
> >> I am in a process of upgrading our project from Jethro to Morty.
> >> For a while I am trying to solve an issue with generating initramfs
> images.
> >>
> >> We have an image recipe that says:
> >>
> >> IMAGE_FSTYPES =3D "tar.bz2 cpio.gz cpio.gz.u-boot"
> >> inherit core-image
> >> inherit image_types_uboot
> >>
> >> With the Jethro branch of the openembedded-core layer all thee defined
> image types are generated.
> >>
> >> After upgrade to Morty, the cpio.gz image is deleted somewhere in the
> process of generating
> >> the cpio.gz.u-boot image (which is probably the right behavior of
> image_types_uboot.bbclass).
> >>
> >> I wonder why it worked before and how to make it work again, properly.
> >
> > it is intentional. See
> >
> https://github.com/01org/luv-yocto/commit/09a5cb0cca109395a4835e25d483019=
ddd5e773c
> >
>
> Thank you Raj, that explain why the gziped image is being removed.
>
> I still need to figure out, how to produce both image types from one
> recipe.
> Lets imagine I went through these steps.
>
>    1. I set up the recipe so that the tar.bz2 and cpio.gz images are
> generated.
>
>    IMAGE_FSTYPES =3D "tar.bz2 cpio.gz"
>    inherit core-image
>
>    The tar is just for development debugging and the cpio.gz is packed in=
to
>    a FIT image that goes into production.
>
>    2. After some unspecified time a need arose to produce also
>    the cpio.gz.u-boot image that can be loaded manually in U-Boot during
> development.
>
>    I changed the recipe like this:
>
>    IMAGE_FSTYPES =3D "tar.bz2 cpio.gz cpio.gz.u-boot"
>    inherit core-image
>    inherit image_types_uboot
>
>  From my point of view, the image_types_uboot class is removing
> the cpio.gz image that was generated by someone else.
> In my situation it is not "a middle file" as the commit you referenced
> says.
>
> I would understand that the cpio.gz is removed when it is not stated in
> the IMAGE_FSTYPES variable.
>
>  From reading the IMAGE_FSTYPES variable documentation a user/developer
> can never
> get the idea that some image types can not be generated simultaneously.
> IMHO a proper behavior would be to generate and preserve all supported
> image
> types stated in the IMAGE_FSTYPES variable.
>
> Any ideas how to achieve that?
>
> ________________________________
>
> CONFIDENTIALITY NOTICE
> This message is for the named person's use only. It may contain
> confidential, proprietary or legally privileged information.
> If you receive this message in error, please immediately delete it and al=
l
> copies of it from your system, destroy any hard copies of it and notify u=
s
> by email to info@ysoft.com with a copy of this message. You must not,
> directly or indirectly, use, disclose, distribute, print or copy any part
> of this message if you are not the intended recipient. Y Soft and any of
> its subsidiaries each reserves the right to monitor all e-mail
> communications through its networks.
> Y Soft is neither liable for the proper, complete transmission of the
> information contained in this communication nor any delay in its receipt.
> This email was scanned for the presence of computer viruses. In the
> unfortunate event of infection Y Soft does not accept liability.
> Any views expressed in this message are those of the individual sender,
> except where the message states otherwise and the sender is authorised to
> state them.
>

--94eb2c0dfda68ad32f0556b6c3fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Please open a bugzilla entry for it</div><br><div cl=
ass=3D"gmail_quote"><div>On Mon, Aug 14, 2017 at 6:11 AM Michal Vok=C3=A1=
=C4=8D &lt;<a href=3D"mailto:michal.vokac@ysoft.com">michal.vokac@ysoft.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 11.8.2017 18:31,=
 Khem Raj wrote:<br>
&gt; On Fri, Aug 11, 2017 at 5:52 AM, Vok=C3=A1=C4=8D Michal &lt;<a href=3D=
"mailto:Michal.Vokac@ysoft.com" target=3D"_blank">Michal.Vokac@ysoft.com</a=
>&gt; wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I am in a process of upgrading our project from Jethro to Morty.<b=
r>
&gt;&gt; For a while I am trying to solve an issue with generating initramf=
s images.<br>
&gt;&gt;<br>
&gt;&gt; We have an image recipe that says:<br>
&gt;&gt;<br>
&gt;&gt; IMAGE_FSTYPES =3D &quot;tar.bz2 cpio.gz cpio.gz.u-boot&quot;<br>
&gt;&gt; inherit core-image<br>
&gt;&gt; inherit image_types_uboot<br>
&gt;&gt;<br>
&gt;&gt; With the Jethro branch of the openembedded-core layer all thee def=
ined image types are generated.<br>
&gt;&gt;<br>
&gt;&gt; After upgrade to Morty, the cpio.gz image is deleted somewhere in =
the process of generating<br>
&gt;&gt; the cpio.gz.u-boot image (which is probably the right behavior of =
image_types_uboot.bbclass).<br>
&gt;&gt;<br>
&gt;&gt; I wonder why it worked before and how to make it work again, prope=
rly.<br>
&gt;<br>
&gt; it is intentional. See<br>
&gt; <a href=3D"https://github.com/01org/luv-yocto/commit/09a5cb0cca109395a=
4835e25d483019ddd5e773c" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/01org/luv-yocto/commit/09a5cb0cca109395a4835e25d483019ddd5e773c</a><b=
r>
&gt;<br>
<br>
Thank you Raj, that explain why the gziped image is being removed.<br>
<br>
I still need to figure out, how to produce both image types from one recipe=
.<br>
Lets imagine I went through these steps.<br>
<br>
=C2=A0 =C2=A01. I set up the recipe so that the tar.bz2 and cpio.gz images =
are generated.<br>
<br>
=C2=A0 =C2=A0IMAGE_FSTYPES =3D &quot;tar.bz2 cpio.gz&quot;<br>
=C2=A0 =C2=A0inherit core-image<br>
<br>
=C2=A0 =C2=A0The tar is just for development debugging and the cpio.gz is p=
acked into<br>
=C2=A0 =C2=A0a FIT image that goes into production.<br>
<br>
=C2=A0 =C2=A02. After some unspecified time a need arose to produce also<br=
>
=C2=A0 =C2=A0the cpio.gz.u-boot image that can be loaded manually in U-Boot=
 during development.<br>
<br>
=C2=A0 =C2=A0I changed the recipe like this:<br>
<br>
=C2=A0 =C2=A0IMAGE_FSTYPES =3D &quot;tar.bz2 cpio.gz cpio.gz.u-boot&quot;<b=
r>
=C2=A0 =C2=A0inherit core-image<br>
=C2=A0 =C2=A0inherit image_types_uboot<br>
<br>
=C2=A0From my point of view, the image_types_uboot class is removing<br>
the cpio.gz image that was generated by someone else.<br>
In my situation it is not &quot;a middle file&quot; as the commit you refer=
enced says.<br>
<br>
I would understand that the cpio.gz is removed when it is not stated in<br>
the IMAGE_FSTYPES variable.<br>
<br>
=C2=A0From reading the IMAGE_FSTYPES variable documentation a user/develope=
r can never<br>
get the idea that some image types can not be generated simultaneously.<br>
IMHO a proper behavior would be to generate and preserve all supported imag=
e<br>
types stated in the IMAGE_FSTYPES variable.<br>
<br>
Any ideas how to achieve that?<br>
<br>
________________________________<br>
<br>
CONFIDENTIALITY NOTICE<br>
This message is for the named person&#39;s use only. It may contain confide=
ntial, proprietary or legally privileged information.<br>
If you receive this message in error, please immediately delete it and all =
copies of it from your system, destroy any hard copies of it and notify us =
by email to <a href=3D"mailto:info@ysoft.com" target=3D"_blank">info@ysoft.=
com</a> with a copy of this message. You must not, directly or indirectly, =
use, disclose, distribute, print or copy any part of this message if you ar=
e not the intended recipient. Y Soft and any of its subsidiaries each reser=
ves the right to monitor all e-mail communications through its networks.<br=
>
Y Soft is neither liable for the proper, complete transmission of the infor=
mation contained in this communication nor any delay in its receipt. This e=
mail was scanned for the presence of computer viruses. In the unfortunate e=
vent of infection Y Soft does not accept liability.<br>
Any views expressed in this message are those of the individual sender, exc=
ept where the message states otherwise and the sender is authorised to stat=
e them.<br>
</blockquote></div></div>

--94eb2c0dfda68ad32f0556b6c3fc--
