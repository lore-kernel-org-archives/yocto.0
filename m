Return-Path: <josh@hipro.co.in>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D161E0049B
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2012 07:42:46 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so2612083pab.35
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2012 07:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=HYdT1VD7ibi0OJVy11trvKpOeKhUh7ku0XdmpRgLWnI=;
	b=lp9fWrRtmWiD8oCMKCWSRf9BuyZLuYTJ0MiGloNLBqiwr4wcSmjf6BE58vvvINTUFq
	FZU3P3n89IVWBKpemUeGaDlOrJi3NTlgvVPgWipdRtKCPfEzxKteSATsudKa8JIa2uP2
	8eVi5zTDBwbtp56pUglHwNA22DaNNvwBQ/K1rJIx7TZJco8bG0RJ+6fdDS7gKRf1mgLx
	MERv6KA6ddra5Kpi17kCNSZ5u9WMY7f8H/cIsGP+jj8/vYOSKGQllqdGos8pEDG3bPEu
	6dBALD/Um71KvytpSQZP4pt9LYLiCyGvOAEhmDtxV+LiCWZEwn8NjjKH9lAPvW9FwAPd
	0TeA==
Received: by 10.66.73.230 with SMTP id o6mr5889184pav.45.1351867365599;
	Fri, 02 Nov 2012 07:42:45 -0700 (PDT)
Received: from [192.168.10.241] ([59.99.251.45])
	by mx.google.com with ESMTPS id sy1sm5850151pbc.66.2012.11.02.07.42.41
	(version=SSLv3 cipher=OTHER); Fri, 02 Nov 2012 07:42:44 -0700 (PDT)
Message-ID: <1351867349.4142.15.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 02 Nov 2012 20:12:29 +0530
In-Reply-To: <1351755981.5181.14.camel@babel.joshhome>
References: <1351755981.5181.14.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQkkPaNsUcB8//gfY8+Vx+RoypSveoTnr+apdhcOKgoSUWukFmAla3QjIR5ipU/akgybptjI
Subject: Re: how to add a task via anonymous python function
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
X-List-Received-Date: Fri, 02 Nov 2012 14:42:46 -0000
X-Groupsio-MsgNum: 10436
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Fc/e3FHeIE6sNkD9TDHy"

--=-Fc/e3FHeIE6sNkD9TDHy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, 2012-11-01 at 13:16 +0530, Joshua Immanuel wrote:
> I want to do the following in anonymous python function
>=20
>         addtask some_task after do_compile before do_install
>=20
> Getting some clue from externalsrc.bbclass I did the following
>=20
>         python __anonymous () {
>             tasks =3D d.getVar('__BBTASKS')
>             tasks.insert(tasks.index('do_install'), 'do_some_task')
>             d.setVar('__BBTASKS', tasks)
>             d.setVarFlag('do_some_task', 'deps', 'do_compile')
>             d.setVarFlag('do_install', 'deps', 'do_some_task')
>             tasklist =3D filter(lambda k: d.getVarFlag(k, "task"),
>         d.keys())
>             print tasklist
>         }
>        =20
> The above printed tasklist doesn't contain 'do_some_task'.=20

If we have a recipe which has the BBCLASSEXTEND =3D "native" set and if we
want to add a task just for the <recipe>-native alone. I thought, I
could check the ${PN} and add the task dynamically. Since the above
method is flawed. I followed a simpler and straight forward approach
without tweaking the bitbake's internal variable. (Hope this helps
someone)

        BBCLASSEXTEND =3D "native"
        addtask some_task after do_compile before do_install
       =20
        python __anonymous () {
            pn =3D d.getVar('PN', True)
            if not pn.endswith("native"):
                d.setVarFlag('do_some_task', 'noexec', '1')
        }

--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-Fc/e3FHeIE6sNkD9TDHy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAlCT29UACgkQWw85XwuSFML6+QCgln+qs8KSYCIC1YwhJezthEtg
4+wAoIBqnxw7IJvlaK4QIaWXJ6Fnue0W
=xEV6
-----END PGP SIGNATURE-----

--=-Fc/e3FHeIE6sNkD9TDHy--
