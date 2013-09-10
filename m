Return-Path: <prvs=958d07d94=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C91E01549
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:42:27 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhEKAPfLLlKsEApK/2dsb2JhbABbhBCWDawkgTx0gicFOlEBFRUULxMmAQQbyWiPKoNVgQADjkqQAox4gT2CKg
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Yocto Project Discussion ML (yocto@yoctoproject.org)"
	<yocto@yoctoproject.org>
Thread-Topic: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d
	purge (use -f to force)
Thread-Index: Ac6t+Unp9V7yb7I4Ty2dvFEJHhw5EQ==
Date: Tue, 10 Sep 2013 07:42:24 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064FACB0C@sdexmbx1srv.skidata.net>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.112.215]
MIME-Version: 1.0
Subject: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d purge (use -f to force)
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
X-List-Received-Date: Tue, 10 Sep 2013 07:42:28 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I have problems with the update-rc.d class in my recipes.

When I want to update a package which inherits update-rc.d (in my case samb=
a) using dpkg -i I get the following error:
>root@host:~# dpkg -i /media/USBSTICK/samba-ads_3.5.22-r4_armel.deb=20
>(Reading database ... 11931 files and directories currently installed.)
>Preparing to replace samba-ads 3.5.22-r3 (using .../samba-ads_3.5.22-r4_ar=
mel.deb) ...
>Stopping Samba: smbd nmbd winbindd
>Unpacking replacement samba-ads ...
>update-rc.d: /etc/init.d/samba exists during rc.d purge (use -f to force)
>dpkg: warning: subprocess old post-removal script returned error exit stat=
us 1
>dpkg: trying script from the new package instead ...
>update-rc.d: /etc/init.d/samba exists during rc.d purge (use -f to force)
>dpkg: error processing /media/USBSTICK/samba-ads_3.5.22-r4_armel.deb (--in=
stall):
> subprocess new post-removal script returned error exit status 1
>update-rc.d: /etc/init.d/samba exists during rc.d purge (use -f to force)
>dpkg: error while cleaning up:
> subprocess new post-removal script returned error exit status 1
>Errors were encountered while processing:
> /media/USBSTICK/samba-ads_3.5.22-r4_armel.deb


When I afterwards want to remove/purge the package it fails with the follow=
ing message:
>root@host:~# dpkg -P samba-ads
>dpkg: error processing samba-ads (--purge):
> Package is in a very bad inconsistent state - you should
> reinstall it before attempting a removal.
>Errors were encountered while processing:
> samba-ads

The only way how to fix that problem is to manually remove the initscript a=
nd then install the update:
>root@000C320C08C0:~# rm /etc/init.d/samba=20
>root@000C320C08C0:~# dpkg -i /media/USBSTICK/samba-ads_3.5.22-r4_armel.deb=
=20
>(Reading database ... 11931 files and directories currently installed.)
>Preparing to replace samba-ads 3.5.22-r3 (using .../samba-ads_3.5.22-r4_ar=
mel.deb) ...
>Unpacking replacement samba-ads ...
> Removing any system startup links for samba ...
>  /etc/rc0.d/K20samba
>  /etc/rc1.d/K20samba
>  /etc/rc2.d/S20samba
>  /etc/rc3.d/S20samba
>  /etc/rc4.d/S20samba
>  /etc/rc5.d/S20samba
>  /etc/rc6.d/K20samba
>Setting up samba-ads (3.5.22-r4) ...
> Adding system startup for /etc/init.d/samba.
>Starting Samba: smbd nmbd winbindd.

The update-rc.d part of my recipe is shown below.
>inherit autotools update-rc.d
>...
>INITSCRIPT_NAME =3D "samba"
>INITSCRIPT_PARAMS =3D "defaults"
>...
>do_install_append() {
>	...
>	install -D -m 755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/samba
>	...
>}

Does anybody have an idea how to fix that issue? Would be really great!

Thank you!

Regards,
Richard

