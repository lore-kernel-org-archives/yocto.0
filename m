Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f193.google.com (mail-ve0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65864E00A63
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 07:29:08 -0800 (PST)
Received: by mail-ve0-f193.google.com with SMTP id oz11so418456veb.8
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 07:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9pbEeHvktGJOfSMySfhuOcIKWY4OZGgx5ZCkzCG/G/E=;
	b=LcnBVX0YfJuF13vUtMRqjz96Kgv9yA+T+K5PWOaydSwpO3m8itM+OebefDBnV6bntN
	MXsyAO9jV4/K2QbXXJAHO/mhv/Fd9uRoATIb40UcgqHebQg3csQhGXoRoffnEykMlr8K
	muUQALM3ZGJ3AKykHMJ0O4tU5qmABpcK70v3VHqkVZOf+ASZpIGkn/sP3LDtcjG0kErT
	7CRXbJgoRisP1TYolV7u4O6KJYKlUylCxDIDsqfXKQkexMKB2PB1I3pSQbOEYLFDpcnq
	h4AQJ890sm+5Gu6UoTRwrdj7ggMdIoRMMwK1NGQhhz6Fofuj+vrmHOi+CL7hH3oEZLoU
	/R8A==
MIME-Version: 1.0
X-Received: by 10.220.99.72 with SMTP id t8mr543196vcn.10.1394033348316; Wed,
	05 Mar 2014 07:29:08 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Wed, 5 Mar 2014 07:29:08 -0800 (PST)
Date: Wed, 5 Mar 2014 08:29:08 -0700
Message-ID: <CAA7h+EreYR9drptegiSJmnk9b3asLHdemDNLyPeSF4pyUE9ukw@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: GLIB-2.0 target compile issue
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
X-List-Received-Date: Wed, 05 Mar 2014 15:29:11 -0000
Content-Type: multipart/alternative; boundary=001a11c1d71c88137504f3ddae95

--001a11c1d71c88137504f3ddae95
Content-Type: text/plain; charset=ISO-8859-1

I have add IMAGE_INSTALL_append =" glib-2.0" to my local.conf and compile
the image on the host without any issues.

When I try to compile on the target I get the following error:

checking pkg-config is at least version 0.9.0... yes
checking for PACKAGE... no
configure: error: Package requirements (glib-2.0 >= 2.6.0) were not met:

No package 'glib-2.0' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables PACKAGE_CFLAGS
and PACKAGE_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

--001a11c1d71c88137504f3ddae95
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have add=A0IMAGE_INSTALL_append =3D&quot; glib-2.0&quot;=
 to my local.conf and compile the image on the host without any issues.=A0<=
div><br></div><div style>When I try to compile on the target I get the foll=
owing error:</div>
<div style><br></div><div style><div>checking pkg-config is at least versio=
n 0.9.0... yes</div><div>checking for PACKAGE... no</div><div>configure: er=
ror: Package requirements (glib-2.0 &gt;=3D 2.6.0) were not met:</div><div>
<br></div><div>No package &#39;glib-2.0&#39; found</div><div><br></div><div=
>Consider adjusting the PKG_CONFIG_PATH environment variable if you</div><d=
iv>installed software in a non-standard prefix.</div><div><br></div><div>
Alternatively, you may set the environment variables PACKAGE_CFLAGS</div><d=
iv>and PACKAGE_LIBS to avoid the need to call pkg-config.</div><div>See the=
 pkg-config man page for more details.</div><div><br></div></div></div>

--001a11c1d71c88137504f3ddae95--
