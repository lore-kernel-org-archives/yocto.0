Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94079E016C5
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:23:12 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 17 Oct 2013 09:23:12 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: David Andrey <David.Andrey@netmodule.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 17 Oct 2013 09:23:10 -0400
Thread-Topic: default root password
Thread-Index: Ac7Kb1TizN6hUBudQ++daBgOUauCWwAxngqw
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B8DD503B@pluto.melinkcorp.local>
References: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
In-Reply-To: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 17 Oct 2013 13:23:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

David,

I've had similar issues, and this is what I've done to get the root passwor=
d set properly in my image.  I am using poky/Dylan-9.0.1 for a starting poi=
nt.

1. In my case, I want a root password that is longer than 8 characters.  Wi=
th poky/dylan, it is using tinylogin for password management which has an i=
ssue with passwords longer than 8 characters; it looks like it is using the=
m, but it only pays attention to the first 8 characters.  If you want to us=
e a root password that is longer than 8 characters, there is a 10 patch ser=
ies under poky/master submitted by Chen Qi on 2013-06-25.  Cherry-pick thes=
e 10 patches and apply them to your local poky repository.  Rebuild your im=
age with "debug-tweaks" set in local.conf.
2. Boot up your newly built image with the default blank password (or some =
other password you know what it is).  Then, change the root password using =
the passwd command.  If you want a root password that is longer than 8 char=
acters, use "passwd -m".
3. Look at the contents of /etc/shadow.  Everything between the first two c=
olons on root's line is its password.  For example, if it looked like this:
	root:$QAGQ$%Y#QTRAG%^J#$#QR$@:15924:0:99999:7:::
then $QAGQ$%Y#QTRAG%^J#$#QR$@ would be root's encrypted password.  Copy tha=
t text.
4. Add the following to the end of your image recipe:

ROOTFS_POSTPROCESS_COMMAND +=3D "\
    sed 's%^root:[^:]*:%root:<encrypted_password_goes_here>:%' \
        < ${IMAGE_ROOTFS}/etc/shadow \
        > ${IMAGE_ROOTFS}/etc/shadow.new;\
    mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;"

and that will change root's password in your image.

I know there is the EXTRA_USER_PARAMS feature for adding users and modifyin=
g a user's password, but I couldn't get it to work for root.  I tried addin=
g:

INHERIT +=3D "extrausers"
EXTRA_USERS_PARAMS =3D "\
    usermod -p '<encrypted_password_goes_here>' root; \
    "

and I would get errors when building the image.  I can't remember the error=
s I got, but I couldn't get the build to complete when I tried to modify th=
e root password in this manner.  The other way worked so I went with that.

Hope that helps.

-Bryan Evenson

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of David Andrey
> Sent: Wednesday, October 16, 2013 8:58 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] default root password
>=20
> Hi,
>=20
> There are lot of threads floating around, and a FAQ without answer.
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_
> p
> assword
>=20
> So what is the official way to set a default root password ?
> Using a sed command on /etc/passwd through ROOTFS_POSTPROCESS_COMMAND
> or is there any other built-in solution ?
>=20
> regards
> David
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

