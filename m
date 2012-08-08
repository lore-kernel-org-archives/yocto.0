Return-Path: <Tim.Verstraete@medecbenelux.be>
Received: from mail.medecbenelux.be (mail.medecbenelux.be [81.83.14.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 060B2E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 08:50:45 -0700 (PDT)
Received: from SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407]) by
	SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407%10]) with mapi
	id 14.01.0355.002; Wed, 8 Aug 2012 17:50:43 +0200
From: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [SPAM] - Re: [yocto] image recipe gives error: has no
	buildable providers - Email found in subject
Thread-Index: AQHNdXjj3V//dNyWu06tvZUZ/XhJipdQD/qg
Date: Wed, 8 Aug 2012 15:50:43 +0000
Message-ID: <4439C3C0562087488F139C696CD862A72C1FCE@SBS-MEDEC.medecbenelux.local>
References: <4439C3C0562087488F139C696CD862A72C1CD6@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNewE-5HUwwe5euHztTLq1piN8fCbnh03gO4CeUFeQaQKA@mail.gmail.com>
	<4439C3C0562087488F139C696CD862A72C1F5D@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNe6V2_DY9ZCCYu0qVWc=19OEZzVa=i+0qBeR-sDHnLS5Q@mail.gmail.com>
	<4439C3C0562087488F139C696CD862A72C1F99@SBS-MEDEC.medecbenelux.local>
	<alpine.DEB.2.02.1208081115390.12423@oneiric>
In-Reply-To: <alpine.DEB.2.02.1208081115390.12423@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2002:5153:ef2:0:f4df:b227:47f1:52a1]
MIME-Version: 1.0
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [SPAM] - Re: image recipe gives error: has no buildable providers - Email found in subject
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
X-List-Received-Date: Wed, 08 Aug 2012 15:50:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, this was automatically generate yocto-bsp create test-test1 arm

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: woensdag 8 augustus 2012 17:17
To: Tim Verstraete
Cc: McClintock Matthew-B29882; yocto@yoctoproject.org
Subject: [SPAM] - Re: [yocto] image recipe gives error: has no buildable pr=
oviders - Email found in subject

On Wed, 8 Aug 2012, Tim Verstraete wrote:

> Hi,
>
> What i see is that when i do bitbake-layers show_layers that it shows the=
 correct layers and the correct priority of the layers.
>
> The layers.conf is the following
>
> # We have a conf and classes directory, add to BBPATH=20
> BBPATH :=3D "${BBPATH}:${LAYERDIR}"
>
> # We have a recipes directory, add to BBFILES BBFILES :=3D "${BBFILES}=20
> ${LAYERDIR}/recipes-*/*/*.bb \
>         ${LAYERDIR}/recipes-*/*/*.bbappend"
>
>  BBFILE_COLLECTIONS +=3D "test-test1"
>  BBFILE_PATTERN_ test-test1:=3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_ test-test1 =3D "25"
                   ^ space?

  did you seriously copy and paste the above?  because it's just wrong.

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

