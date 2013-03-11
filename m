Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409FAE00709
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:17:11 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id un15so3958285pbc.24
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=0OYvp8UsYMx8HZTGK7bFdji6W7pa3DntouEmuJ//BGY=;
	b=0zojhdLmNAwqDiFGAgQySYNDNEOsSzmC2/BjmOE7fEwF1ZbJ5aZdW4v1H3N+ewnM5Z
	EtDCtlsAp3xRgqhwnS/E72m3Hf6Uum8B/VPzu65QOFw6LH5EpT8cf8HcMC/ishXLJwEI
	MDQc7+9SmBl7DJZzPjQ8NTStSNmnWM/4uUHaxuKUC222lQbeAWx88okkv5gTxreC71S6
	T18SLycMdPsxMnofpvrjp+tW11K62DGr4Cy17+o+9uzb6Fz5ZuWVRyVV6PDS1HiOizk1
	sTNgNstcU6NQQ17F67KBg30mRmbVmw9XxJ9s4002bVFN/hIxHT7U9s7LoXW9fEfubPub
	hXeg==
X-Received: by 10.68.50.231 with SMTP id f7mr30032249pbo.221.1363022230804;
	Mon, 11 Mar 2013 10:17:10 -0700 (PDT)
Received: from [172.23.7.5] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id y1sm1731742pbg.10.2013.03.11.10.17.09
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Mar 2013 10:17:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAE_REAuMoVX4RPkVN4UFKX0XvVPK5-b07M-53ueVeKtzWBCFWQ@mail.gmail.com>
Date: Mon, 11 Mar 2013 10:17:07 -0700
Message-Id: <4C570CD8-26A9-42D0-994E-5329CE7687D5@gmail.com>
References: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
	<CAE_REAuMoVX4RPkVN4UFKX0XvVPK5-b07M-53ueVeKtzWBCFWQ@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: Regarding Licensing of "mbsalign.c" available in util-linux-2.21.2 version (Yocto-1.3-Danny)
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
X-List-Received-Date: Mon, 11 Mar 2013 17:17:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E1146214-1E54-485F-B24A-27EF23E76983"

--Apple-Mail=_E1146214-1E54-485F-B24A-27EF23E76983
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Mar 11, 2013, at 3:45 AM, Gaurang Shastri <gmshastri@gmail.com> =
wrote:

> Hi All,
>=20
> Any shades of light for below query ???
>=20

I would suggest to open a bug for it.

> //Gaurang Shastri
>=20
> On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri <gmshastri@gmail.com> =
wrote:
> Hi All,
>=20
> I have some concerns regarding util-linux-2.21.2 version . As per =
Yocto-1.3 (danny) recipe,
> {{{
>=20
> LICENSE_${PN}-lscpu =3D "GPLv3+"  <-- util-linux_2.21.2.bb
>=20
> LICENSE =3D "GPLv2+ & LGPLv2.1+ & BSD"   <-- util-linux.inc
>=20
> }}}
>=20
> So as per the above description, only lscpu is GPLv3.=20
>=20
> But while looking into the source of util-linux-2.21.2, I found out =
that "util-linux-2.21.2/lib/mbsalign.c" is GPLv3 and it is used by =
following binaries while building:
> {{{
>   -  fdisk=20
>   -  partx
> }}}
>=20
> So does it mean that the above binaries should also be GPLv3 and need =
to take care in util-linux.{bb,inc} ???
>=20
> Regards,
> Gaurang Shastri
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_E1146214-1E54-485F-B24A-27EF23E76983
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Mar 11, 2013, at 3:45 AM, Gaurang Shastri &lt;<a href="mailto:gmshastri@gmail.com">gmshastri@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite">Hi All,<br><br>Any shades of light for below query ???<br><br></blockquote><div><br></div><div>I would suggest to open a bug for it.</div><br><blockquote type="cite">//Gaurang Shastri<br><br><div class="gmail_quote">On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri <span dir="ltr">&lt;<a href="mailto:gmshastri@gmail.com" target="_blank">gmshastri@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi All,<br><br>I have some concerns regarding util-linux-2.21.2 version . As per Yocto-1.3 (danny) recipe,<br>{{{<br><br>
LICENSE_${PN}-lscpu = "GPLv3+"&nbsp; &lt;-- <a href="http://util-linux_2.21.2.bb/" target="_blank">util-linux_2.21.2.bb</a><br>
<br>LICENSE = "GPLv2+ &amp; LGPLv2.1+ &amp; BSD"&nbsp;&nbsp; &lt;-- util-linux.inc<br><br>}}}<br><br>So as per the above description, only lscpu is GPLv3. <br><br>But while looking into the source of util-linux-2.21.2, I found out that "util-linux-2.21.2/lib/mbsalign.c" is GPLv3 and it is used by following binaries while building:<br>

{{{<br>&nbsp; -&nbsp; fdisk <br>&nbsp; -&nbsp; partx<br>}}}<br><br>So does it mean that the above binaries should also be GPLv3 and need to take care in util-linux.{bb,inc} ???<br><br>Regards,<br>Gaurang Shastri<br>
</blockquote></div><br>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_E1146214-1E54-485F-B24A-27EF23E76983--
