Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f52.google.com (mail-bk0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 553B2E016FB
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 03:50:59 -0700 (PDT)
Received: by mail-bk0-f52.google.com with SMTP id e11so3044357bkh.39
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 03:50:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=OaMo/nl25mz0ERSi+J0tUsh8R5mlKyORQz277inAOsY=;
	b=Oqq++kBfklkqo0isbdB9WTx03yl3puMfnofWvz4X+cv7v6FpH4VpfjF4nXpIcj8Ntn
	F3905tk3Ih1GUrRzvQ77euBbHKhoWONlKOXw+wDMHvyb7pIr75SxbI7eBMCznGKKY8QG
	KN+4zG9Qo3e+Ow86TWGFrorswb0W/FM6v9FJDh1WU5AS9Jfk3MoiWE80RAZQ0TGY47ZX
	zLQ4gOmyBG5F6RCZkCOqxGYiEk7LvWXaSBOaCS+WHK4v3lPecxsuv1owsePmk4yhdHLs
	grKIVJZCe7pa8sD4XFqsxpJysmi7HnVJXX7QYj68svfzTVm3L7YBZThQIOwJuW+d/PGf
	EDjA==
X-Gm-Message-State: ALoCoQlbpu3nFTPk2i99vDRUvllPDJ2hKAqlsaBa4BpkVkDndK8UEtGJp0RbGC0a9gnu+YV4owNa
X-Received: by 10.205.24.131 with SMTP id re3mr34566941bkb.8.1381834258371;
	Tue, 15 Oct 2013 03:50:58 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id
	pn6sm43178975bkb.14.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 15 Oct 2013 03:50:57 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 15 Oct 2013 12:50:53 +0200
Message-ID: <5932378.AygSxG1lDq@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.3-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <4902772.MP4sNkXC8r@helios>
References: <2654026.GvoHhChOvl@fedora-fisso> <4902772.MP4sNkXC8r@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: preserving file owners in do_package
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
X-List-Received-Date: Tue, 15 Oct 2013 10:51:03 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data marted=EC 15 ottobre 2013 11:38:21, Paul Eggleton ha scritto:
> Hi Davide,
>=20
> On Tuesday 15 October 2013 12:02:20 Davide Soldan wrote:
> > in my recipe I want to change owner and permission of a file, so I =
wrote:
> >=20
> > do_install() {
> >         ls -la ${D}/opt/user
> >         chown -R user ${D}/opt/user
> >         chgrp -R user ${D}/opt/user
> >         ls -la ${D}/opt/user
> >         chmod 754 ${D}/opt/user/user.sh
> >         ls -la ${D}/opt/user
> > }
> >=20
> > the output of ls commands is:
> >=20
> > drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
> > drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
> > -rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh
> >=20
> > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > -rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh
> >=20
> > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > *-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh
> >=20
> > So the change of owner and permission works fine in do_install phas=
e.
> > Opening the final rootfs tarball, however, the file user.sh has sti=
ll 754
> > permission but root as owner...so do_package doesn't preserve owner=
 change
> > done in do_install? Or maybe I'm doing something wrong in changing =
file
> > owner? Any ideas? Thanks to all!
>=20
> Does your recipe create the specified user via useradd.bbclass?
>=20
> Cheers,
> Paul
>=20
>=20
Hi Paul,
I've got a useradd recipe (myuseradd.bbclass) that create that specific=
 user. Also in my recipe I've got the
DEPENDS =3D "myuseradd"
to be sure that the specific user is created before my recipe is proces=
sed.
Within myuseradd recipe I've got some chown command that works fine, bu=
t outside that recipe I've got the problem stated in the previous mail.=
..

Davide

