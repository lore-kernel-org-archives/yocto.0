Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30381E01458
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 21:50:44 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id bj3so1839562pad.15
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 21:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=VtmNuXwpWVeiKIID+u62M8qGBsqnJk1WImJ8f23RTfE=;
	b=EA9kp5gLJfs5QQJz1zDCFuXEQUos6Qmp4LTQIvJQ5MfbbAbyL6mlUoFA0UXbRSUFVT
	kp+rWnSfR4MfqwAvJpmYiGeIkPZpSRw+JRC6dZNTbMpk5CeZWpFfcSPpcepjI6Ns8NMl
	DnxCDithjunYgyq+mCGXVugsz+MUPMihe6ekzAwXNae6zzzyMpepY7dbZ8VvfPHr/jOD
	E5NMNUlUknzpFBhp6R7LR93VbnHu0vcl7/XjhkDxlE67KQHmybje8/07Z3CqiS2zc2Qp
	VRkcVXiIPos6BOAdHCDvCWOsR4zytY15EkS3niUDZ5Fguis2NGm73nSCyYw3gekhbN6U
	Fglw==
X-Received: by 10.66.145.161 with SMTP id sv1mr11600544pab.69.1368075043964;
	Wed, 08 May 2013 21:50:43 -0700 (PDT)
Received: from stafford-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id iy2sm1422747pbb.31.2013.05.08.21.50.42
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 May 2013 21:50:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABx0rKGmaDs2DZDU8dssc0j0Hr8CkJy7jfgF85Eck3AapxC4tg@mail.gmail.com>
Date: Wed, 8 May 2013 21:50:42 -0700
Message-Id: <607EC63B-1417-4CDE-84A2-1D57AF81F845@gmail.com>
References: <CABx0rKGmaDs2DZDU8dssc0j0Hr8CkJy7jfgF85Eck3AapxC4tg@mail.gmail.com>
To: Zaif upb <zaifupb@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: how to edit gumstix-console-image.bb?
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
X-List-Received-Date: Thu, 09 May 2013 04:50:44 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F6813998-0C7B-45AC-A4EE-F22C93AFE84D"

--Apple-Mail=_F6813998-0C7B-45AC-A4EE-F22C93AFE84D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On May 7, 2013, at 4:58 AM, Zaif upb <zaifupb@gmail.com> wrote:

> HI all,
>=20
> After successfully build of gumstix-consol-image How to edit =
gumstix-console-image.bb to create our own custom image?
>=20
> (I want to add OpenCV to the image)

Several ways.=20

see

=
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingp=
oky-extend-customimage



>=20
> Any Ideas?
>=20
> Thank You,
>=20
> Regards,
> Zaifupb
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F6813998-0C7B-45AC-A4EE-F22C93AFE84D
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On May 7, 2013, at 4:58 AM, Zaif upb &lt;<a href="mailto:zaifupb@gmail.com">zaifupb@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">HI all,<div><br></div><div style="">After successfully build of gumstix-consol-image How to edit <a href="http://gumstix-console-image.bb/">gumstix-console-image.bb</a> to create our own custom image?</div><div style="">
<br></div><div style="">(I want to add OpenCV to the image)</div></div></blockquote><div><br></div><div>Several ways.&nbsp;</div><div><br></div><div>see</div><div><br></div><div><a href="http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage">http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage</a></div><div><br></div><div><br></div><br><blockquote type="cite"><div dir="ltr"><div style=""><br></div><div style="">Any Ideas?</div><div style=""><br></div><div style="">Thank You,</div><div style=""><br></div><div style="">Regards,</div><div style="">Zaifupb</div>
</div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_F6813998-0C7B-45AC-A4EE-F22C93AFE84D--
