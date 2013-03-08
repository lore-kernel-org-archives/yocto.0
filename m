Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B330FE01483
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 07:02:13 -0800 (PST)
Received: by mail-oa0-f54.google.com with SMTP id n12so2038517oag.27
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 07:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=hHJn4dWdOPAEXid+4nyudcqb9RzGz1RVC0w2hgfr8IY=;
	b=uJQg716bn8F+G/ut6jey9ohWR3tPe5p2yaun6K+rcNj0QdeS+TGORJOmXMq8UqMqFR
	ybQkqS9gaQxcZV+DtyCUAur9lWisg1li8jq0PaOu0mR1RuZ0CTIDHUAoO+L0T/EHIZUW
	taSxjAqkDGwVaQSdsykjaCfgj6ST6w1ZAjelEf8sZoJ7hzqtVxmG0zA8lOO5iBDIZClN
	4fUFmVQSaQ0+SOzeGKdzp3m1g7/lAzmHJdalWGQiTKYouHkgtujR5Acew3eZ0J9Ucp95
	PQiUTn2ANAZDApTJaqqTmrk9kOP/ZJfSDSrlZebeYoT7F5TYX9ur/4vIcGqcAoi5J+97
	ZKCA==
MIME-Version: 1.0
X-Received: by 10.60.30.131 with SMTP id s3mr1722359oeh.106.1362754932677;
	Fri, 08 Mar 2013 07:02:12 -0800 (PST)
Received: by 10.182.141.73 with HTTP; Fri, 8 Mar 2013 07:02:12 -0800 (PST)
Date: Fri, 8 Mar 2013 16:02:12 +0100
Message-ID: <CAFyqS9pKMm6HikCU4cdGEE0KBpNOQHCsZaO=4ccWRNfZ7++4uA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: ERROR: Nothing RPROVIDES 'mdev'
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
X-List-Received-Date: Fri, 08 Mar 2013 15:02:13 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c036ada12104d76b1bdd

--e89a8ff1c036ada12104d76b1bdd
Content-Type: text/plain; charset=ISO-8859-1

Hi. I get his error when trying to override udev with mdev

ERROR: Nothing RPROVIDES 'mdev' (but /poky/meta/recipes-core/packagegroups/
packagegroup-core-boot.bb RDEPENDS on or otherwise requires it)

is it not possible to replace udev with mdev?

What I have done is adding the following to the distro/mydistro.conf

*VIRTUAL-RUNTIME_dev_manager = "mdev"*

In packagegroup-core-boot.bb it looks like it should be possible, but then
how to do it?

packagegroup-core-boot.bb:
...
*# Distro can override the following VIRTUAL-RUNTIME providers:
VIRTUAL-RUNTIME_dev_manager ?= "udev"
VIRTUAL-RUNTIME_login_manager ?= "tinylogin"
VIRTUAL-RUNTIME_init_manager ?= "sysvinit"
VIRTUAL-RUNTIME_initscripts ?= "initscripts"
VIRTUAL-RUNTIME_keymaps ?= "keymaps"*
...

Hans

--e89a8ff1c036ada12104d76b1bdd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi. I get his error when trying to override udev with mdev<br><br>ERROR: No=
thing RPROVIDES &#39;mdev&#39; (but /poky/meta/recipes-core/packagegroups/<=
a href=3D"http://packagegroup-core-boot.bb">packagegroup-core-boot.bb</a> R=
DEPENDS on or otherwise requires it)<br>
<br>is it not possible to replace udev with mdev?<br><br>What I have done i=
s adding the following to the distro/mydistro.conf<br><br><i>VIRTUAL-RUNTIM=
E_dev_manager =3D &quot;mdev&quot;</i><br><br>In <a href=3D"http://packageg=
roup-core-boot.bb">packagegroup-core-boot.bb</a> it looks like it should be=
 possible, but then how to do it?<br>
<br><a href=3D"http://packagegroup-core-boot.bb">packagegroup-core-boot.bb<=
/a>:<br>...<br><i># Distro can override the following VIRTUAL-RUNTIME provi=
ders:<br>VIRTUAL-RUNTIME_dev_manager ?=3D &quot;udev&quot;<br>VIRTUAL-RUNTI=
ME_login_manager ?=3D &quot;tinylogin&quot;<br>
VIRTUAL-RUNTIME_init_manager ?=3D &quot;sysvinit&quot;<br>VIRTUAL-RUNTIME_i=
nitscripts ?=3D &quot;initscripts&quot;<br>VIRTUAL-RUNTIME_keymaps ?=3D &qu=
ot;keymaps&quot;</i><br>...<br><br>Hans<br><br><br><br><br><br>

--e89a8ff1c036ada12104d76b1bdd--
