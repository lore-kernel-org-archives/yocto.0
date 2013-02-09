Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C9871E00724
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 19:17:37 -0800 (PST)
Received: by mail-ee0-f54.google.com with SMTP id c41so2423516eek.13
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 19:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=Y0zuSI4MhBBP/d7mqkEZdlljY5jgLgkUuwdJsODfE0A=;
	b=IJ8hwy+sVqnufyKjQeZkgd4S5tmso61lHdQEksMKwV77PIoJunG9FhDDTJwYLZ4NbY
	penl46WkbLCdUrOXzrhkOjz7uz0GwqCLjIb6G8B39vzZg1ItCn6slS9h/hzhKVXYLfMl
	f5h9FuIQtqULL75iKMOrgRCbrMBtjqjeIFBb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=Y0zuSI4MhBBP/d7mqkEZdlljY5jgLgkUuwdJsODfE0A=;
	b=bYO0ALxT0Y143AcfaGt0OxPlkdPPUaeYI3sjx8vZUrDVXpCik36ZrNho0FA0KMDgJ6
	GYs1EQb6sumLuCDU+a+CLvr5QieLh60OHQGyVXVvRiWwHUf/iGiAVM3zlhQ8WJs1GjuV
	BJLi6QYHHLSuZ/LrMg0Tdgnhfv0eoFOqEybtxqZAByx1qCB55iYeuPhyXzLajVpWtv9i
	2j/vmXwpjMtqrUnyO6RZIWn5x6qWQUMJADg+DtKSddZArgUx6BKMZQ/L7nAo+IY7tLLS
	wmd/35lQLgPSuHegRZ/qlqYb4C0MC9Wg5mLHo5GIHAtKqTiYBtwUCA6Hg6YfSSpZS4XC
	4i/Q==
MIME-Version: 1.0
X-Received: by 10.14.176.133 with SMTP id b5mr22956245eem.37.1360379855571;
	Fri, 08 Feb 2013 19:17:35 -0800 (PST)
Received: by 10.223.133.193 with HTTP; Fri, 8 Feb 2013 19:17:35 -0800 (PST)
Date: Fri, 8 Feb 2013 19:17:35 -0800
Message-ID: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQnhK8seylc8ePg18V7QR2iREuuLwxBtCH9P41sPikSWtsTfOAbidR6pDChR4UX4TrvUeO1+
Subject: [danny] core-image-minimal-dev is missing dev packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 03:17:38 -0000
Content-Type: multipart/alternative; boundary=047d7b603c020d0c5104d5421e60

--047d7b603c020d0c5104d5421e60
Content-Type: text/plain; charset=ISO-8859-1

This is weird and I do not have an explanation for it. For Danny:

core-image-minimal-dev is missing the dev packages (pkg-dev)

I build it but the packages are not there. The cause does not seem to be my
setup because the core-image-minimal on the ADT download site is missing
them too.

The recipe looks ok.

However, core-image-sato-dev has the dev packages included.

:rjs

--047d7b603c020d0c5104d5421e60
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style><font face=3D"garamond, serif"><span style=3D"b=
order-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif=
;font-size:13px">This is weird and I do not have an explanation for it. For=
 Danny:</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font face=3D"garamond, serif"><span sty=
le=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,san=
s-serif;font-size:13px">core-image-minimal-dev is missing the dev packages =
(pkg-dev)</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font face=3D"garamond, serif"><span sty=
le=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,san=
s-serif;font-size:13px">I build it but the packages are not there. The caus=
e does not seem to be my setup because the core-image-minimal on the ADT do=
wnload site is missing them too.</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font face=3D"garamond, serif"><span sty=
le=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,san=
s-serif;font-size:13px">The recipe looks ok.</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font face=3D"garamond, serif"><span sty=
le=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,san=
s-serif;font-size:13px">However, core-image-sato-dev has the dev packages i=
ncluded.</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font face=3D"garamond, serif"><span sty=
le=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,san=
s-serif;font-size:13px">:rjs</span></font></div>

</div>

--047d7b603c020d0c5104d5421e60--
