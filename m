Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC2A7E010A0; Wed, 14 Mar 2018 00:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 306 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Mar 2018 00:25:05 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DD4FE00CE2
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 00:25:04 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs60.server.lan (via HTTP); Wed, 14 Mar 2018 08:19:54 +0100
MIME-Version: 1.0
Message-ID: <trinity-b075509f-f7f7-4a59-847d-6b2043b4fd25-1521011994266@3c-app-gmx-bs60>
From: "Arno Steffens" <star@gmx.li>
To: "Maxin B. John" <maxin.john@intel.com>
Date: Wed, 14 Mar 2018 08:19:54 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20180312082140.GA18406@mbabyjoh-desk.ger.corp.intel.com>
References: <trinity-070c6a88-6217-4f78-be8a-24fb5b744253-1520576346077@3c-app-gmx-bs48>
	<20180312082140.GA18406@mbabyjoh-desk.ger.corp.intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:6IcEOE/1buXmxN3pP2K7+91Q7FYtNjfeGdz2gbVfl7O
	jQbXcwQaaMZqIzVzwRuoQbgCbLapkv1W34p9K/RSCntl9hiHst
	e81viJmTt35a2RkMqKrZWhsPfjFiOQLS4TlDIlvt+xAxOAAJIg
	fMtIhVZ2GrgFuq/z+fGMN1o4yb7+tcD8GT9dPn2CAjAOAti4vZ
	3dKjH0WPYbJu3pf6HDtEDN69zh52P753c9a+8ct2TbClnGGJf4
	kbNwgERSSWYFDw2dJBRa03px944hXxDQlhzNgwtqsZCu6cqGJJ 5Ahp+o=
X-UI-Out-Filterresults: notjunk:1;V01:K0:w5+6de9e58g=:6v+GTlTLOonHhH51fE3HkM
	nqh87W8SQXRp+gkOLT7LSgNJNeDM7g5jioZ9K3SOYp/RLBuph6/TpK48N+zcloJjRVP8D9+ws
	C1sVmHfDppuMrxlQBWXFDunWV/i9me73DEeUULNYr2SIeBwcbCyXFPC7TFHsFiFY+W0VmRl4E
	LqrId1d5Vi/uH7XbJt9iatgKhP0h3dCqzq6pOxe7yUkSWC6LUPepx0SckJMvoZI1Ot0k5s5rr
	H1VtnHw9cU6NFz+3bbOid+pTJxH0cA6OUmAVDRHNdtbZlYB/jLMWB7xQwAB7ef3pX/tXD7Vii
	qkffUlnxP2RqUKdTFT89XRyZZ3zfoWHaTtii+B4gJXFFaCUVtRWXHDZex1eONmUdMKuoDNvla
	4rC9oQVd5G0klPJio9niUH6ItQ6dkCpPPyrkgzQ6wNa12NqOnrgKXZFO/aBTXxxg094SOiE9W
	fCz0pdcPfScomr9yzhXf74tl2sePtXmcu2fdxqYeaex0wv/Cn0QH
Cc: yocto@yoctoproject.org
Subject: Re: passwd fails for other users than root
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
X-List-Received-Date: Wed, 14 Mar 2018 07:25:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Montag, 12=2E M=C3=A4rz 2018 um 09:21 Uhr
> Von: "Maxin B=2E John" <maxin=2Ejohn@intel=2Ecom>
> An: "Arno Steffens" <star@gmx=2Eli>
> Cc: yocto@yoctoproject=2Eorg
> Betreff: Re: [yocto] passwd fails for other users than root
>
> Hi Arno,
>=20
> On Fri, Mar 09, 2018 at 07:19:06AM +0100, Arno Steffens wrote:
> > I have 2 extra users (added with useradd_example=2Ebb)=2E Login works =
for all 3 parties=2E
> >=20
> > While login works, passwd (to change it) doesn't work for the extra us=
ers=2E They will asked for the old one - which fails=2E
> > Root is not to be asked for old password=2E That's way root can change=
 password for all=2E=20
> >=20
> > The strange issue is, that after root changes password for users, they=
 can do it by themselves=2E
> > Seems that login and passwd use different algos!?!?
> >=20
> > Same password, but different hashes:
> > before (created by yocto)
> > user:$6$bk=2EAz/8KVV$v3TyAlroQeBZA3faJ=2EDxCVsCUBZaSAvB4FkuNkLDdsIchrm=
z6OnUGRnQI5BOgOjQ3mvj9QL3US6Amf2VWr0=2Ej/:17598:0:99999:7:::
> > behind (changed by root):
> > user:$1$d3Uo1g82$Il2kYQj8qadzQvkwUU4Ia=2E:17598:0:99999:7:::
> >=20
> > Edit: After a few further test I found that this has an effect:
> > I used EXTRA_IMAGE_FEATURES +=3D "read-only-rootfs" to create a read-o=
nly-rootf (by default)=2E=20
> > But of course I did make the partition writeable before attempting to =
change the password=2E
> > But for some strange reasons this is not same=2E What might be the rea=
son?
>=20
> Can you please share the version details and the useradd_example=2Ebb th=
at was mentioned here ?
> or even better, file a bug in Yocto's bugzilla (https://bugzilla=2Eyocto=
project=2Eorg) ?
>=20
> Best Regards,
> Maxin
>

I have been using the Yocto 2=2E3=2E3 version=2E
It is mainly unchanged useradd_example=2E The according line is

# USERADD_PARAM specifies command line options to pass to the
# useradd command=2E Multiple users can be created by separating
# the commands with a semicolon=2E Here we'll create two users,
# user1 and user2:
USERADD_PARAM_${PN} =3D "-u 1200 -d /home/user -r -s /bin/sh -P '' user; -=
u 1201 -d /home/guest -r -s /bin/sh -P '' guest"

and in the image-recipe I added:

EXTRA_IMAGE_FEATURES +=3D "read-only-rootfs"

CORE_IMAGE_EXTRA_INSTALL +=3D "useradd-example"
inherit extrausers
EXTRA_USERS_PARAMS =3D "usermod -P root root; usermod -P user user; usermo=
d -P guest guest"


=2E=2E=2E

But I also tried to leave the usermod command and add the password here:
USERADD_PARAM_${PN} =3D "-u 1200 -d /home/user -r -s /bin/sh -P 'user' use=
r; -u 1201 -d /home/guest -r -s /bin/sh -P 'guest' guest"

=2E=2E=2E

The "read-only-rootfs" seems to make the difference, but I don't understan=
d why=2E=20

