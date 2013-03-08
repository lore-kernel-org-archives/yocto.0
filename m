Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F279DE003AB
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 13:35:15 -0800 (PST)
Received: by mail-pb0-f42.google.com with SMTP id xb4so1622172pbc.1
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 13:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=Ib+NwQynvc+UD+ONX/88AwmefuwbxqT+a40EednovzQ=;
	b=w9JntF7v26VHSqoLyrZKEMl3PoePikQRqysOereN9jZJzsKvqGJMOP0cG5lvJwq38q
	eJ5LjCOksYKnMvbte1/8tmASi19mj/qD4A3UIEAWUmw96J1acRPQ9Mx6KEbxSAZT0eMF
	jzWx6XJsQavVmbGi7hmXmfHN6AmKLfjyZZDwH1TUsNHzgZZWBd5gm9h9lECco4syUNjj
	ap110S0jNfmIbCH2tXKmJfG+UPwrd4C4B+modkbPAld3ZT7wXzu6t1lLM4xhfk89VkEX
	byYwhbmhDhlVzKoX4+5cJIpRqJYnmVzS4qVknQA9HGuFRDlwjQOIN9TVhKTYrVRoI/To
	o9VA==
X-Received: by 10.68.211.194 with SMTP id ne2mr5695105pbc.201.1362778515566;
	Fri, 08 Mar 2013 13:35:15 -0800 (PST)
Received: from sa-nc-apg-191.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id in5sm6826478pbc.20.2013.03.08.13.35.13
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 13:35:14 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFyqS9pKMm6HikCU4cdGEE0KBpNOQHCsZaO=4ccWRNfZ7++4uA@mail.gmail.com>
Date: Fri, 8 Mar 2013 13:35:11 -0800
Message-Id: <19BB3D1D-3EDE-45A5-A9D8-97CF27A387C5@gmail.com>
References: <CAFyqS9pKMm6HikCU4cdGEE0KBpNOQHCsZaO=4ccWRNfZ7++4uA@mail.gmail.com>
To: =?iso-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Nothing RPROVIDES 'mdev'
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
X-List-Received-Date: Fri, 08 Mar 2013 21:35:16 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_806574C3-9324-4315-9B5C-A813DC7E1E53"

--Apple-Mail=_806574C3-9324-4315-9B5C-A813DC7E1E53
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Mar 8, 2013, at 7:02 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:

> Hi. I get his error when trying to override udev with mdev
>=20
> ERROR: Nothing RPROVIDES 'mdev' (but =
/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb RDEPENDS =
on or otherwise requires it)
>=20
> is it not possible to replace udev with mdev?
>=20
> What I have done is adding the following to the distro/mydistro.conf
>=20
> VIRTUAL-RUNTIME_dev_manager =3D "mdev"
>=20
> In packagegroup-core-boot.bb it looks like it should be possible, but =
then how to do it?
>=20
> packagegroup-core-boot.bb:
> ...
> # Distro can override the following VIRTUAL-RUNTIME providers:
> VIRTUAL-RUNTIME_dev_manager ?=3D "udev"
> VIRTUAL-RUNTIME_login_manager ?=3D "tinylogin"
> VIRTUAL-RUNTIME_init_manager ?=3D "sysvinit"
> VIRTUAL-RUNTIME_initscripts ?=3D "initscripts"
> VIRTUAL-RUNTIME_keymaps ?=3D "keymaps"
> =85
>=20

Look ar poky-tiny.conf distro


> Hans
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_806574C3-9324-4315-9B5C-A813DC7E1E53
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Mar 8, 2013, at 7:02 AM, Hans Beck=E9rus &lt;<a =
href=3D"mailto:hans.beckerus@gmail.com">hans.beckerus@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite">Hi. I get his error when trying to override udev with =
mdev<br><br>ERROR: Nothing RPROVIDES 'mdev' (but =
/poky/meta/recipes-core/packagegroups/<a =
href=3D"http://packagegroup-core-boot.bb/">packagegroup-core-boot.bb</a> =
RDEPENDS on or otherwise requires it)<br>
<br>is it not possible to replace udev with mdev?<br><br>What I have =
done is adding the following to the =
distro/mydistro.conf<br><br><i>VIRTUAL-RUNTIME_dev_manager =3D =
"mdev"</i><br><br>In <a =
href=3D"http://packagegroup-core-boot.bb/">packagegroup-core-boot.bb</a> =
it looks like it should be possible, but then how to do it?<br>
<br><a =
href=3D"http://packagegroup-core-boot.bb/">packagegroup-core-boot.bb</a>:<=
br>...<br><i># Distro can override the following VIRTUAL-RUNTIME =
providers:<br>VIRTUAL-RUNTIME_dev_manager ?=3D =
"udev"<br>VIRTUAL-RUNTIME_login_manager ?=3D "tinylogin"<br>
VIRTUAL-RUNTIME_init_manager ?=3D =
"sysvinit"<br>VIRTUAL-RUNTIME_initscripts ?=3D =
"initscripts"<br>VIRTUAL-RUNTIME_keymaps ?=3D =
"keymaps"</i><br>=85<br><br></blockquote><div><br></div><div>Look ar =
poky-tiny.conf distro</div><br><br><blockquote =
type=3D"cite">Hans<br><br><br><br><br><br>
_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_806574C3-9324-4315-9B5C-A813DC7E1E53--
