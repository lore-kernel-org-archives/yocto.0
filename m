Return-Path: <peachj@lexmark.com>
Received: from exprod8og113.obsmtp.com (exprod8og113.obsmtp.com [64.18.3.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65B64E006CC
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 02:41:09 -0800 (PST)
Received: from mail-vc0-f198.google.com ([209.85.220.198]) (using TLSv1) by
	exprod8ob113.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUNQ8xbMTbyP2IsmIwQi3Bj9Jf3qjqaAw@postini.com;
	Fri, 21 Dec 2012 02:41:09 PST
Received: by mail-vc0-f198.google.com with SMTP id n11so6415118vch.1
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 02:41:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=6688ta+zt5VAPqH/W05Hh1tcWFKwB0+sHrE4IZe9DIk=;
	b=QcZYLXkxIeXO4wqmeHP23MtJfb5BN8nmFCyQHHNZGcz64BSSpSJXlbDDqiZNHDlBm1
	cc62Py+f4aEd683Lh13d3PFOghaPbT0FgeAe1jMPvRDzTzqIOJonNumIC1h1qu8Z6367
	ylb3NqhULf/0q4RsyYbSDkaBGlv5kY4JO6ymZz3g9Mg2MRRFSEd8/URaNjx50WVaImpp
	OVgrwiD2NPQSqBiIus+xcENK9M6nKf3nuXQndupy+pjTmbAN5+B6zGutsE0O9xrwvL6Y
	IBF6W8g/cBz9dGOLuLaHHfX+jVSf0EGLfPQlPOAs3JULKC8XYirfVD05Rmewo1E4T2Ec
	Hp/w==
X-Received: by 10.49.75.102 with SMTP id b6mr7280150qew.14.1356086468309;
	Fri, 21 Dec 2012 02:41:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.75.102 with SMTP id b6mr7280144qew.14.1356086468018; Fri,
	21 Dec 2012 02:41:08 -0800 (PST)
Received: by 10.49.50.97 with HTTP; Fri, 21 Dec 2012 02:41:07 -0800 (PST)
Date: Fri, 21 Dec 2012 05:41:07 -0500
Message-ID: <CA+QkY1C41Mh8q7c3b74CNip0i2nFN95ZuGob6FkZfYFz90C4eQ@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQnhZwjdlytznqnYKUnAgkd9Y67TohliukrnrBjt27lFFfoxOU3fXtmHZ7uAPNjcVYHnZvoy97NOaZVc7H/xY/qWZb2mE6/gIJ4vcFG/Ie/L08IOXLpyJwIHHROIufkmxrzWHLAEHt2mzOY5HTq4Cnn3U11l6Zo0He6el/HNHcrzPwCEaLw=
Subject: Can't build systemd from meta-systemd
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
X-List-Received-Date: Fri, 21 Dec 2012 10:41:09 -0000
Content-Type: multipart/alternative; boundary=047d7bdcabb236017004d15a7c44

--047d7bdcabb236017004d15a7c44
Content-Type: text/plain; charset=ISO-8859-1

All,

I'm getting a failure in do_configure when trying to build systemd from
meta-systemd:

<my
path>/poky/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/../../lib/i586-poky-linux/gcc/i586-poky-
linux/4.7.2/include-fixed/limits.h:169:61: error: no include path in which
to search for limits.h

(You can find a little more context at http://pastebin.com/3EeHMTtG, if
it'll help)

Thoughts as to what's going wrong?

Kind regards,

Jerrod

--047d7bdcabb236017004d15a7c44
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<div><br></div><div>I&#39;m getting a failure in do_configure when tryi=
ng to build systemd from meta-systemd:=A0</div><div><br></div><div>&lt;my p=
ath&gt;/poky/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/../../=
lib/i586-poky-linux/gcc/i586-poky-</div>
<div>linux/4.7.2/include-fixed/limits.h:169:61: error: no include path in w=
hich to search for limits.h</div><div><br></div><div>(You can find a little=
 more context at=A0<a href=3D"http://pastebin.com/3EeHMTtG">http://pastebin=
.com/3EeHMTtG</a>, if it&#39;ll help)</div>
<div><br></div><div>Thoughts as to what&#39;s going wrong?</div><div><br></=
div><div>Kind regards,</div><div><br></div><div>Jerrod</div>

--047d7bdcabb236017004d15a7c44--
