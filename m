Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E232EE00853; Wed,  4 Mar 2015 04:42:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEF28E0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 04:42:06 -0800 (PST)
Received: by oiba3 with SMTP id a3so5326020oib.7
	for <yocto@yoctoproject.org>; Wed, 04 Mar 2015 04:42:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Bj4upVILclne7jl72aDdnX4CPTPcHVVwL25vYEupYR8=;
	b=KxV7nANL6qfnVR4sid9cBZm530BRvLyf7sKusGD8WqKdv49tDXcD/VKcXb/HtULVVV
	yPcHbUBzm4gRAm37o0pqtRj7JeprzaZgCDnZOeSrRF0CLnHOy/XyHKY1ylTtiA8T4HJq
	WzYG0LBRqrYfuly+xkW4ZXwsHdU1kwR8Ayra7c6lFvOmhPlzBHpv+KYGYcexOxzcqjfb
	ENf9iqBo/BHwbCL++tHfN3xcZaJrcQOHtdgAziRSbcKVtXiC+gxJx3GZv2RrdvimQWm1
	lc0TRmHkVnTZEw4UnDeztHyh1PSu4mxxMFiYRUL9NeUFv6qtC5QDYmhMOJ0ho24wwuKs
	a4Iw==
X-Gm-Message-State: ALoCoQnv9Sx5BFL4tEC4xdxsxMjc4/9yiqqxiSPTVX3Lagn++n7Um0mN3MsKsl+vVyThqfdqRFfE
MIME-Version: 1.0
X-Received: by 10.182.130.166 with SMTP id of6mr2821800obb.53.1425472926387;
	Wed, 04 Mar 2015 04:42:06 -0800 (PST)
Received: by 10.60.102.106 with HTTP; Wed, 4 Mar 2015 04:42:06 -0800 (PST)
Date: Wed, 4 Mar 2015 18:12:06 +0530
Message-ID: <CABNKip+5h_nXGb5aK_zGmjN-_c82ts-4WON3L0A4gU-O=akHzA@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: What this Value
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
X-List-Received-Date: Wed, 04 Mar 2015 12:42:09 -0000
Content-Type: multipart/alternative; boundary=e89a8f503a5c6a255a051075c7c1

--e89a8f503a5c6a255a051075c7c1
Content-Type: text/plain; charset=UTF-8

SRCREV_machine ?= "e1aa804148370cda6f85640281af156ffa007d52"

i don't know what is this value, this value found in

linux-yocto_3.10.bb
file. if i want to upgrade or downgrade kernel version should i change this
vale?

-- 
thanks and regards,
parthiban
      +919790329795

--e89a8f503a5c6a255a051075c7c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>SRCREV_machine ?=3D &quot;e1aa804148370cda6f85640281a=
f156ffa007d52&quot;<br><br></div>i don&#39;t know what is this value, this =
value found in=C2=A0

<p style=3D"margin:0px;text-indent:0px"><a href=3D"http://linux-yocto_3.10.=
bb">linux-yocto_3.10.bb</a></p> file. if i want to upgrade or downgrade ker=
nel version should i change this vale?<br clear=3D"all"><div><div><div><br>=
-- <br><div class=3D"gmail_signature"><div style=3D"text-align:right">thank=
s and regards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-ali=
gn:right">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></di=
v></div></div>
</div></div></div></div>

--e89a8f503a5c6a255a051075c7c1--
