Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14708E0082A; Sun, 22 Jan 2017 23:52:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98433E00823
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2017 23:52:35 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue104
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0Lsi5p-1cObG40mPR-012JNc;
	Mon, 23 Jan 2017 08:47:29 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Leon Woestenberg'" <leon@sidebranch.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
	<093001d27325$7dc14cd0$7943e670$@ln-systems.com>
	<CAMjhiJiRY9cC_+cGL9j0AfVqjhPnBz2hZZur6k2iOGOyUPhBgw@mail.gmail.com>
In-Reply-To: <CAMjhiJiRY9cC_+cGL9j0AfVqjhPnBz2hZZur6k2iOGOyUPhBgw@mail.gmail.com>
Date: Mon, 23 Jan 2017 07:47:28 -0000
Organization: LN Systems Limited
Message-ID: <0aa701d2754c$f26ba1b0$d742e510$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHftmx71IEooMCGrNMDnT4mUuYiOAMHaxycAYiQnzUArlHioQJ0NfAEAmWA6MIBhWNA5gFrJTMTAkMZaPugsL68IA==
X-Provags-ID: V03:K0:/adhABrbKU+um80UgaM+xqG+NvMJrGRUadhubM9ShdsEsQrMck0
	MTxqyyxNG0P9qPzZI0saM3qecHAnA2/ge8OeeLgxncaUtI8T67NSvyhXrISol2hSA6dB+GI
	kapOznRTr4NwZvzQ1XvdfG0jrBVhnNc42nobjlhyB7RA/koSCyA8XWKP+aFlt4eOe3QwaOS
	Sxu4LMBnpULw3Pe9L83GA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MNzKYSPTbgM=:wzkqO3ZrDVjfnsGuZahdaH
	hgUJJ/7+J8fbU0PApq3XghrGcWE1gcHIiOLCNKSmjaojKT6VwFIeLbcu9TCBgj9WMlxsI+IWB
	bXLpfK+UFglTpxSkOXqBcTCriQIPpX1K0nM9acn+HMzCu8fVY9x0D4mz6lsseWBiGU/Flkajh
	6Mfl48zNTKLUPj/YGW6GlM39Zs59o671IzRVJ10A0n8/gHHVjlZH8NZVX0hzaZYV4W95XcmPj
	KNrZ3zN2sVXfuCUw6souTVUjzQRJG5dJ3iAH0FUmFfVo0Stk3BnJJJMV+b/wgQD4OSLfSevlr
	+xwsD4jayAsLXrDOdbKZibhD/2OangOgNLWqhg4MMRi7ITL6SZQmOJM8NiNa7/j4jP5KMm9Ua
	ZdxxRBU6MEskH0l1AbMYdtyrDCSVIjLEjRv/PhJ2HMrNQwUaGc4qhu9ItP8nGtaIMhJiRG4Qg
	RgR7QvP+3at8n/FaEYf1b2C+sjvF0hXpZgnQisFqCvemBn7/SALOjcDjW9ULH6hBjkS50Ilii
	jCxgTyGKXCAKDZGoentbkixjOThZ4onk0AIWGElqbhtebpJ3KrBBeOmyFieNBIn464Hf51O8H
	HWV5hcpZLpuf/8E29mt5QohgJJ3JfaEGiJQCxa3HvPDBV2kvDgIyFv1UGFY2gQO5V7H3K+icc
	HxzH+aDWohITJLqKMytodNEeaZlMFWnXYN+o2axwU6Rrkhsn5jjStrMosHtj8tN6xHIWrmM3c
	oR2t/1zljc5XvU1D
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Jan 2017 07:52:40 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Looking at it in more detail, it's perhaps more that not everything is =
taken up by systemd i.e. I have lots of symlinks to /dev/null in =
etc/systemd/system, with the corresponding/original SysV script still in =
/etc/init.d.  Things like banner, sysfs, urandom, dmesg (to name just a =
few).
Maybe these don't matter but, as I say, it just seems like a bit of =
'clutter'

Looking at one which does seem to switch over cleanly - dropbear - I'm =
puzzled how the recipe [dropbear.inc, in poky/meta/recipes-core] appears =
to install both init.d script and .service in its do_install, yet only =
one or the other ultimately shows up in the rootfs..? (Relates to my =
other question about how to determine the init type in do_install)

-----Original Message-----
From: Leon Woestenberg [mailto:leon@sidebranch.com]=20
Sent: 21 January 2017 13:09
To: colin.helliwell@ln-systems.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] Changing over to systemd (no dhcp)

Hi Colin,

On Fri, Jan 20, 2017 at 2:59 PM, <colin.helliwell@ln-systems.com> wrote:
>
> DISTRO_FEATURES_remove =3D " sysvinit"
>
> I suspect there=E2=80=99s also some de-cluttering needed e.g. init.d =
scripts still being installed as well as a .service.
>
I wouldn't expect these to be installed.  Which ones specifically?

Regards,

Leon.


