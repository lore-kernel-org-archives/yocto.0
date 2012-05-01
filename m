Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D504EE01363
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 06:44:09 -0700 (PDT)
Received: from eb-e6520 (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 60F00A61E6
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:44:02 +0200 (CEST)
Date: Tue, 1 May 2012 15:44:01 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: yocto@yoctoproject.org
Message-ID: <20120501154401.5bf57b8b@eb-e6520>
In-Reply-To: <OF41F9B7AE.FA4B98D4-ONC12579E2.0026189F-C12579E2.00264CB0@Sitek.it>
References: <OF41F9B7AE.FA4B98D4-ONC12579E2.0026189F-C12579E2.00264CB0@Sitek.it>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Subject: Re: Failure building qte4-demo-image
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
X-List-Received-Date: Tue, 01 May 2012 13:44:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Giovanni,

Le Mon, 16 Apr 2012 08:58:19 +0200,
giovanni.pavoni@exorint.it a =C3=A9crit :

> I am getting a do_rootfs failure building qte4-demo-image=20
> (poky-1.2_M4.rc3)
> Full log in attachment. Any suggestion?
>=20
This error message is strange :
Processing module-init-tools...
Unable to find package (module-init-tools)!

Can you do a bitbake  module-init-tools
ti see if module-init-tools was built.

> ATTENZIONE: Privacy Policy =E2=80=93 D.Lgs. 196/2003
>  Le informazioni contenute in questo messaggio di posta elettronica sono =
di=20
> carattere privato e confidenziale ed esclusivamente rivolte al destinatar=
io=20
> sopra indicato. Nel caso aveste ricevuto questo messaggio di posta elettr=
onica=20
> per errore, vi comunichiamo che ai sensi del suddetto decreto =C3=A8 viet=
ato l=E2=80=99uso,=20
> la diffusione, distribuzione o riproduzione da parte di ogni altra person=
a.=20
> Siete pregati di segnalarlo immediatamente rispondendo al mittente e di=20
> distruggere quanto ricevuto (compresi i file allegati) senza farne copia =
o=20
> leggerne il contenuto.
>=20
;-)

Eric

