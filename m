Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B6E3E013D6
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:34:28 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SDNvH-0006lD-7l; Thu, 29 Mar 2012 18:34:27 -0400
Date: Thu, 29 Mar 2012 18:34:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Rudolf Streif <rudolf.streif@linux.com>
In-Reply-To: <CA+gsK-qYyhBU5gXHAECt=udaX8DpoAz0Y-t5urya8qqimXBgDQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1203291826450.21523@oneiric>
References: <alpine.DEB.2.02.1203291746350.19207@oneiric>
	<CA+gsK-qYyhBU5gXHAECt=udaX8DpoAz0Y-t5urya8qqimXBgDQ@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: which yocto doc explains bitbake assignment variations?
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
X-List-Received-Date: Thu, 29 Mar 2012 22:34:28 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1507742001-1333060460=:21523"

--8323329-1507742001-1333060460=:21523
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE


  just to be absolutely clear so i don't misunderstand:

On Thu, 29 Mar 2012, Rudolf Streif wrote:

> VAR =3D "value"
>
>     In this example,=A0VAR=A0is set to=A0value.

  so the "=3D" assignment will *always* set the variable to that value,
regardless of what combination of =3D, ?=3D or ??=3D has come before it,
correct?

>     Early Default Value Assignment (?=3D)
>
>     A variable can be early-assigned a default value using the=A0?=3D=A0a=
ssignment operator:
>
> A ?=3D "1"
> B ?=3D "2"
> B ?=3D "3"
>
>     In this example=A0A=A0will contain=A01=A0if it was not previously set=
=2E=A0B=A0will contain=A02=A0because
>     the=A0?=3D=A0assignment operator is immediate meaning that if there a=
re multiple=A0?=3D=A0assignments
>     to a single variable, the first one will be used.

  and the first ?=3D will be processed, even if there were earlier ??=3D
assignments, correct?  (obviously not if there were earlier =3D
assignments.)

> A ??=3D "1"
> B ??=3D "2"
> B ??=3D "3"
>
>     In this example=A0A=A0will contain=A01=A0if it was not previously set=
=2E=A0B=A0will contain=A03=A0because
>     the=A0??=3D=A0assignment operator is a late or lazy assignment operat=
or and assignment will not
>     take place until the end of the parsing process. If there are multipl=
e=A0??=3D=A0assignments to a
>     single variable, the last one will be used.

  however, this "weak" assignment is cancelled by the appearance of
either a =3D or a ?=3D assignment at any time, yes?

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--8323329-1507742001-1333060460=:21523--
