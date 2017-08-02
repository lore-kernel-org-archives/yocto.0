Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 711B8E00C9E; Wed,  2 Aug 2017 02:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.85 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.85 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout11.t-online.de (mailout11.t-online.de [194.25.134.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA44E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 02:36:23 -0700 (PDT)
Received: from fwd32.aul.t-online.de (fwd32.aul.t-online.de [172.20.26.144])
	by mailout11.t-online.de (Postfix) with SMTP id BA22E42554D3
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 11:36:22 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(Gt8ZSBZF8h6beZ+6xYv2s577k6b2b-eeNHfydLLwoGx40aY4uorpHFpOLStrdXWwc8@[84.146.40.121])
	by fwd32.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dcq4j-1L0ZLk0; Wed, 2 Aug 2017 11:36:21 +0200
Date: Wed, 2 Aug 2017 11:36:20 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170802113620.06f412707b6b725c4b37eead@t-online.de>
In-Reply-To: <45217eb6b5da40db93f9a86af0436077@DEBEMAIL001.kostal.int>
References: <45217eb6b5da40db93f9a86af0436077@DEBEMAIL001.kostal.int>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: Gt8ZSBZF8h6beZ+6xYv2s577k6b2b-eeNHfydLLwoGx40aY4uorpHFpOLStrdXWwc8
X-TOI-MSGID: b853d0ee-e859-4214-b1dc-4afb227fac81
Subject: Re: postinstall intercept hooks fail because of missing qemuwrapper
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
X-List-Received-Date: Wed, 02 Aug 2017 09:36:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

hi,

this could be fixed by adding "qemuwrapper-cross" to the depends of your im=
age.bb

regards
Markus

On Wed, 2 Aug 2017 09:24:06 +0000
"Andersen, Christian" <c.andersen@kostal.com> wrote:

> Hello,
>=20
> we are using the current version of pyro. When building an image recipe w=
e get some warnings, that some postinstall intercept hooks failed. The log-=
file of do_rootfs shows:
>=20
> NOTE: Running intercept scripts:
> NOTE: > Executing update_gio_module_cache intercept ...
> /home/anders05/Dev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-i=
mage-basic/1.0-r0/intercept_scripts/update_gio_module_cache: 9: /home/ander=
s05/Dev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-image-basic/1.=
0-r0/intercept_scripts/update_gio_module_cache: qemuwrapper: not found
> WARNING: The postinstall intercept hook 'update_gio_module_cache' failed =
(exit code: 127)! See log for details! (Output: b'')
> WARNING: The postinstalls for the following packages will be postponed fo=
r first boot: libglib-2.0-0
> NOTE: > Executing update_font_cache intercept ...
> /home/anders05/Dev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-i=
mage-basic/1.0-r0/intercept_scripts/update_font_cache: 11: /home/anders05/D=
ev/build-puck/build/tmp/work/abc-def-linux-gnueabi/puck-image-basic/1.0-r0/=
intercept_scripts/update_font_cache: qemuwrapper: not found
> WARNING: The postinstall intercept hook 'update_font_cache' failed (exit =
code: 127)! See log for details! (Output: b'')
> WARNING: The postinstalls for the following packages will be postponed fo=
r first boot: ttf-sazanami-mincho ttf-arphic-uming ttf-dejavu-sans ttf-deja=
vu-sans-mono ttf-devanagari
>=20
> So qemuwrapper is missing. How can I fix this?
>=20
> Kind regards
> Christian
>=20
>=20
> KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iser=
lohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
> Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49 =
 2351 16-0 * Telefax: +49  2351 16-2400
> Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fa=
x +49 2331 8040-602
> Gesch=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing=
. Marwin Kinzl, Dipl.-Oec. Andreas Kostal
>=20


--=20
Markus Volk <f_l_k@t-online.de>

