Return-Path: <davide.soldan@kynetics.it>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25D92E016CA
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 09:12:49 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id h14so4105945eak.15
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 09:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=SU/Db4fk1srWMF7NDcftZ/Kw9yLdI6R0LOckFyrGfPA=;
	b=RGwSWG+pAS5AQ7Y4U9fPosApx203lvyooDJh7bt6evzqIkVme1eIP3Q15Qbq9uf7rI
	dvhs20pNRhFS4GziYq2Uv539Tsu819Lmyl4xApHsa5ec2xgBHG2DMmiIpcAXx13jEfil
	kgtUcfw4Bh8dY2Y28IqXMh9MLOmeDdabZAD4smSJbQqeYAiLId59RuBLECT6QfRuTcc7
	EwiF1fi7BqL8/zcts8eiDKz+Ssv/siAG80KxGa4BUHcigUD6R9ejBwlrd0/3tJPsJ5/r
	pR/BbLyep5CvoCIFZiAbEQDiiQLzf3V4gOFarWquaoWmcHSTEng77EHs63Bdro/qRvdZ
	L6KA==
X-Gm-Message-State: ALoCoQnrv+dzsk3spbf21ApdcwXYRFiSsqvrfajC1bUkI3tR0maK8CsvnIjqS2CRXszj+ZIcXh17
X-Received: by 10.15.64.1 with SMTP id n1mr1793356eex.15.1381853568658;
	Tue, 15 Oct 2013 09:12:48 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id
	x47sm168403506eea.16.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 15 Oct 2013 09:12:47 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 15 Oct 2013 18:12:42 +0200
Message-ID: <2594354.j31pHjW9di@fedora-fisso>
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
X-List-Received-Date: Tue, 15 Oct 2013 16:12:51 -0000
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
I solved with a postinstall script (that run at boot):

pkg_postinst_${PN}() {
        #!/bin/sh -e
        if [ x"$D" =3D "x" ]; then
          chown -R user /opt/user
          chgrp -R user /opt/user
        else
          exit 1
        fi
}

Cheers
Davide

