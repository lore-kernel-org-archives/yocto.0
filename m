Return-Path: <sgh@sgh.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CDD3E006EC; Wed,  7 May 2014 02:27:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.10.10.13 listed in list.dnswl.org]
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 May 2014 02:27:28 PDT
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5704E003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 02:27:28 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Why8M-0000Tp-32; Wed, 07 May 2014 11:27:26 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 997707EC22;
	Wed,  7 May 2014 11:27:26 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Wed, 07 May 2014 11:27:26 +0200
Message-ID: <3279428.eKNovLj74Y@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-24-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <lkcshi$dep$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>
MIME-Version: 1.0
Cc: Neuer User <auslands-kv@gmx.de>
Subject: Re: replace udhcpc
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
X-List-Received-Date: Wed, 07 May 2014 09:27:32 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Use ifplugd recipe I just submitted.

Onsdag den 7. maj 2014 10:57:22 skrev Neuer User:
> Hi
>=20
> I encounter a problem with the DHCP network setup during boot:
>=20
> System starts. During start ifup is called. ifup calls udhcpc. Networ=
k
> is, however, not yet up! udhcpc exits with failure. Then network is u=
p.
> But, of course, no connection, because no IP address.
>=20
> In earlier times I used debian based system, which seem to rely on
> dhclient3. My experiences here were that dhclient remained as a deamo=
n
> continuing trying to get a dhcp address.
>=20
> What should I do best on Yocto? Replace udhcpc with dhclient? If so, =
how
> should that be done?
>=20
> Or can udhcpc be configured to remain in the background and try to ge=
t
> an IP address when network is finally up?
>=20
> Thanks for any help
>=20
> Michael

--=20
S=F8ren Holm

