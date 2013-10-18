Return-Path: <David.Andrey@netmodule.com>
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D8B6E016D7
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 00:14:38 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=gila.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1VX4GY-0001k9-Ty;
	Fri, 18 Oct 2013 09:14:34 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Fri, 18 Oct 2013 09:14:30 +0200
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B8DD503B@pluto.melinkcorp.local>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: default root password
Thread-Index: Ac7Kb1TizN6hUBudQ++daBgOUauCWwAxngqwACbdGOA=
References: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B8DD503B@pluto.melinkcorp.local>
From: "David Andrey" <David.Andrey@netmodule.com>
To: "Bryan Evenson" <bevenson@melinkcorp.com>,
	<yocto@yoctoproject.org>
Message-Id: <1VX4GY-0001k9-Ty@wolf.netmodule.com>
Subject: Re: default root password
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
X-List-Received-Date: Fri, 18 Oct 2013 07:14:41 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

Hi Bryan,

Solved this using the ROOTFS_POSTPROCESS_COMMAND, but without the
patches series for > 8 characters password. Thanks for that input :-)

Using danny in this particular case.

Hope someone will update the FAQ !

Thanks
David

-----Original Message-----
From: Bryan Evenson [mailto:bevenson@melinkcorp.com]=20
Sent: jeudi 17 octobre 2013 15:23
To: David Andrey; yocto@yoctoproject.org
Subject: RE: default root password

David,

I've had similar issues, and this is what I've done to get the root
password set properly in my image.  I am using poky/Dylan-9.0.1 for a
starting point.

1. In my case, I want a root password that is longer than 8 characters.
With poky/dylan, it is using tinylogin for password management which has
an issue with passwords longer than 8 characters; it looks like it is
using them, but it only pays attention to the first 8 characters.  If
you want to use a root password that is longer than 8 characters, there
is a 10 patch series under poky/master submitted by Chen Qi on
2013-06-25.  Cherry-pick these 10 patches and apply them to your local
poky repository.  Rebuild your image with "debug-tweaks" set in
local.conf.
2. Boot up your newly built image with the default blank password (or
some other password you know what it is).  Then, change the root
password using the passwd command.  If you want a root password that is
longer than 8 characters, use "passwd -m".
3. Look at the contents of /etc/shadow.  Everything between the first
two colons on root's line is its password.  For example, if it looked
like this:
	root:$QAGQ$%Y#QTRAG%^J#$#QR$@:15924:0:99999:7:::
then $QAGQ$%Y#QTRAG%^J#$#QR$@ would be root's encrypted password.  Copy
that text.
4. Add the following to the end of your image recipe:

ROOTFS_POSTPROCESS_COMMAND +=3D "\
    sed 's%^root:[^:]*:%root:<encrypted_password_goes_here>:%' \
        < ${IMAGE_ROOTFS}/etc/shadow \
        > ${IMAGE_ROOTFS}/etc/shadow.new;\
    mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;"

and that will change root's password in your image.

I know there is the EXTRA_USER_PARAMS feature for adding users and
modifying a user's password, but I couldn't get it to work for root.  I
tried adding:

INHERIT +=3D "extrausers"
EXTRA_USERS_PARAMS =3D "\
    usermod -p '<encrypted_password_goes_here>' root; \
    "

and I would get errors when building the image.  I can't remember the
errors I got, but I couldn't get the build to complete when I tried to
modify the root password in this manner.  The other way worked so I went
with that.

Hope that helps.

-Bryan Evenson

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-=20
> bounces@yoctoproject.org] On Behalf Of David Andrey
> Sent: Wednesday, October 16, 2013 8:58 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] default root password
>=20
> Hi,
>=20
> There are lot of threads floating around, and a FAQ without answer.
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root
> _
> p
> assword
>=20
> So what is the official way to set a default root password ?
> Using a sed command on /etc/passwd through ROOTFS_POSTPROCESS_COMMAND=20
> or is there any other built-in solution ?
>=20
> regards
> David
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

