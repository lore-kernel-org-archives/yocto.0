Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0293DE00C59; Mon,  7 Jan 2019 02:35:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A19DFE00BFB
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 02:35:12 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id b16so14812135ior.1
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 02:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hGMZ79n+yz7FfTaXSUmstR20Sv2jEvEzDM1CYSJcQBs=;
	b=wt0TjjqOlZyMe271f+ZZ2m/mdRrOn380hoZZxvggAlkkQLPKu9TXLE2vQR5D1BDk4t
	Z6nnPfSPX7XYXTLiSKXhEckTxO/CHqW2nJcLe1RpiPnvlCeerxORAXg3qShZUvszHnUj
	DVKUxJRvOJKfBh6MclEGrzcnnJjcoi1v6XcOhtu7DNGcZ6rdldIYA8XqrHEWxLgZjSQ4
	auNopzCO+RyykiQs9qdvkdrOk7iak4ZqFCEgu0RNp00UGVlCySZc4G8DmupJuAPT92CJ
	9RtWpUfDhWUx7QwUrgJQ08M9UWDqht3n19MgF5HHAzVkN5IO8aLpEllk+/le155rvLc6
	+Uag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hGMZ79n+yz7FfTaXSUmstR20Sv2jEvEzDM1CYSJcQBs=;
	b=I/ZDm+uzpOLTksSJ5B2hAFPZjNqr4LQDaUO+ItofZs8MdlMNxOLg0DHtbs4AvzkxK0
	chrr40tObNwoo/0fKFja7NQAcZkj7BjGxaPsNXKMwgIV1t1FEdpYnUnUuNWAxEGWCb1r
	mJsEb3hYYNgCT4r6FtR7qOOT13WhwxxiPEj0Z5M9OGO5v31vVv4PLEaqfCOY613HvSO/
	MLiaNkROj8iEkpLyFmrS9EqdrCQx+OHK2QxGvlpZKQbMmcIKIpwgC1p8flXlF0Q0OhXk
	xsEnN55yeolXuKPlC/nRAwwGi2TOV3VepatPMrV9Cm8DDU2xC6qfGHRYHkGrQRKJV5R4
	d00A==
X-Gm-Message-State: AJcUukc/rW089PO7O9cyYLf2GhCG//8C834L1+dj0OdtNr7SX1tqAl50
	ZMBNZyLfXu6UuCWFDOfzb84kL7wJWavOXZG3rzYTp6L3
X-Google-Smtp-Source: ALg8bN4wbJI4ThPWRD1cNSZ9qTzdUuSlkmBYvJyIT38W3xv54RO280Hsy6BTtUKiyzicGRjq2Uu241ms5ZHKSq3DOHY=
X-Received: by 2002:a5e:820d:: with SMTP id l13mr12237097iom.201.1546857312367;
	Mon, 07 Jan 2019 02:35:12 -0800 (PST)
MIME-Version: 1.0
References: <20190107050058.27491.16171@packages.yoctoproject.org>
	<CANNYZj_VuJT4Z04eVc22yGHrAaPx+iaBJHXDN9QN938zahDJxg@mail.gmail.com>
In-Reply-To: <CANNYZj_VuJT4Z04eVc22yGHrAaPx+iaBJHXDN9QN938zahDJxg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Jan 2019 10:35:01 +0000
Message-ID: <CAJTo0Lau=yftGi8+3KktfUoaVH8ZuFrg+8nYVY5uH5z-PE-t9g@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Mon, 07 Jan 2019 10:35:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, AUH pretty much replaces this I'd say.

Ross

On Mon, 7 Jan 2019 at 10:26, Alexander Kanavin <alex.kanavin@gmail.com> wro=
te:
>
> Looks like this has regressed and is sending out outdated, misleading
> information (probably related to recent distrodata-releated changes).
>
> Shall we switch it off for now?
>
> AUH has largely superseded this report anyway, and I have a feeling
> most people tune it out already.
>
> Alex
>
> On Mon, 7 Jan 2019 at 06:01, <recipe-report@yoctoproject.org> wrote:
> >
> > This mail was sent out by Recipe reporting system.
> >
> > This message list those recipes which need to be upgraded. If maintaine=
rs
> > believe some of them needn't to upgrade at this time, they can fill
> > RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remain=
der
> > until newer upstream version was detected.
> >
> > Example:
> > RECIPE_NO_UPDATE_REASON =3D "Version 2.0 is unstable"
> >
> > You can check the detail information at:
> >
> > http://recipes.yoctoproject.org/
> >
> > Package               Version          Upstream version      Maintainer=
           NoUpgradeReason
> > --------------------  ---------------  --------------------  ----------=
---------  ------------------------------
> > libgloss              3.0.0            3.0.0.20180831        Alejandro =
Hernandez
> > newlib                3.0.0            3.0.0.20180831        Alejandro =
Hernandez
> > libmodulemd           1.7.0            2.0.0                 Alexander =
Kanavin
> > pcmanfm               1.3.0            1.3.1                 Alexander =
Kanavin
> > webkitgtk             2.22.4           2.22.5                Alexander =
Kanavin
> > boost                 1.68.0           1.69.0                Alexander =
Kanavin
> > libfm-extra           1.3.0.2          1.3.1                 Alexander =
Kanavin
> > libfm                 1.3.0.2          1.3.1                 Alexander =
Kanavin
> > nativesdk-meson       0.47.2           0.49.0                Alexander =
Kanavin
> > ffmpeg                4.0.2            4.1                   Alexander =
Kanavin
> > libcomps              0.1.8+gitX       0.1.9                 Alexander =
Kanavin
> > librepo               1.9.2            1.9.3                 Alexander =
Kanavin
> > meson                 0.47.2           0.49.0                Alexander =
Kanavin
> > dnf                   4.0.9            4.0.10                Alexander =
Kanavin
> > libdnf                0.22.3           0.24.1                Alexander =
Kanavin
> > lighttpd              1.4.51           1.4.52                Alexander =
Kanavin
> > gobject-introspec...  1.58.1           1.58.2                Alexander =
Kanavin
> > btrfs-tools           4.19             4.19.1                Alexander =
Kanavin
> > bjam-native           1.68.0           1.69.0                Alexander =
Kanavin
> > createrepo-c          0.11.1+gitX      0.12.0                Alexander =
Kanavin
> > busybox               1.29.2           1.29.3                Andrej Val=
ek
> > apt                   1.2.24           1.4.8                 An=C3=ADba=
l Lim=C3=B3n
> > apt-native            1.2.24           1.4.8                 An=C3=ADba=
l Lim=C3=B3n
> > dpkg                  1.18.24          1.19.2                An=C3=ADba=
l Lim=C3=B3n
> > puzzles               0.0+gitX         0.0-new-commits-a...  Anuj Mitta=
l
> > libpcap               1.8.1            1.9.0                 Anuj Mitta=
l
> > base-passwd           3.5.29           3.5.45                Anuj Mitta=
l          Version 3.5.38 requires cde...
> > ifupdown              0.8.16           0.8.33                Anuj Mitta=
l
> > glib-2.0              2.58.0           2.58.1                Anuj Mitta=
l
> > glib-networking       2.54.1           2.58.0                Anuj Mitta=
l
> > pixman                0.34.0           0.36.0                Anuj Mitta=
l
> > harfbuzz              2.1.3            2.2.0                 Anuj Mitta=
l
> > gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mitta=
l
> > sqlite3               3.25.3           3.26.0                Anuj Mitta=
l
> > vte                   0.52.2           0.54.3                Anuj Mitta=
l
> > gsettings-desktop...  3.28.0           3.28.1                Anuj Mitta=
l
> > libsolv               0.7.1            0.7.2                 Anuj Mitta=
l
> > eudev                 3.2.5            3.2.7                 Anuj Mitta=
l
> > atk                   2.28.1           2.30.0                Anuj Mitta=
l
> > librsvg               2.40.20          2.44.10               Anuj Mitta=
l          Versions from 2.41.0 requir...
> > cairo                 1.14.12          1.16.2                Anuj Mitta=
l
> > i2c-tools             4.0              4.1                   Anuj Mitta=
l
> > libatomic-ops         7.6.6+gitX       7.6.8                 Anuj Mitta=
l
> > libpng                1.6.35           1.6.36                Anuj Mitta=
l
> > at-spi2-atk           2.26.2           2.30.0                Anuj Mitta=
l
> > mmc-utils             0.1              0.1-new-commits-a...  Anuj Mitta=
l
> > libjpeg-turbo         2.0.0            2.0.1                 Anuj Mitta=
l
> > mtools                4.0.19           4.0.23                Anuj Mitta=
l
> > libassuan             2.5.1            2.5.2                 Armin Kust=
er
> > netbase               5.4              5.5                   Armin Kust=
er
> > openssh               7.9p1+git        7.9.                  Armin Kust=
er
> > curl                  7.62.0           7.63.0                Armin Kust=
er
> > gnutls                3.6.4            3.6.5                 Armin Kust=
er
> > nss                   3.40             3.41                  Armin Kust=
er
> > bind                  9.11.5           9.13.5                Armin Kust=
er         9.11 is LTS 2021
> > nettle                3.4              3.4.1                 Armin Kust=
er
> > linux-libc-headers    4.18             4.19.10               Bruce Ashf=
ield
> > kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashf=
ield
> > linux-yocto           4.18.14+gitX     4.19.8                Bruce Ashf=
ield
> > linux-yocto-rt        4.18.14+gitX     4.19.8                Bruce Ashf=
ield
> > linux-yocto-tiny      4.18.14+gitX     4.19.8                Bruce Ashf=
ield
> > kmscube               git              git-new-commits-a...  Carlos Raf=
ael Giani
> > wpa-supplicant        2.6              2.7                   Changhyeok=
 Bae
> > iptables              1.6.2            1.8.2                 Changhyeok=
 Bae
> > dbus-test             1.12.10          1.12.12               Chen Qi
> > acl                   2.2.52           2.2.53                Chen Qi
> > attr                  2.4.47           2.4.48                Chen Qi
> > systemd-conf          1.0              239                   Chen Qi
> > dbus                  1.12.10          1.12.12               Chen Qi
> > cups                  2.2.9            2.2.10                Chen Qi
> > flex                  2.6.0            2.6.4                 Chen Qi
> > util-linux            2.32.1           2.33                  Chen Qi
> > bison                 3.0.4            3.2.2                 Chen Qi
> > sed                   4.2.2            4.5                   Chen Qi
> > sysstat               12.1.1           12.1.2                Chen Qi
> > lzop                  1.03             1.04                  Denys Dmyt=
riyenko
> > lz4                   1.8.2            1.8.3                 Denys Dmyt=
riyenko
> > hdparm                9.56             9.58                  Denys Dmyt=
riyenko
> > wayland-protocols     1.16             1.17                  Denys Dmyt=
riyenko
> > python3-pygobject     3.28.3           3.30.4                Derek Stra=
ka
> > python3               3.5.6            3.7.1                 Derek Stra=
ka
> > python3-pbr           4.2.0            5.1.1                 Derek Stra=
ka
> > python3-setuptools    40.0.0           40.6.3                Derek Stra=
ka
> > python3-pip           18.0             18.1                  Derek Stra=
ka
> > python-numpy          1.14.5           1.15.4                Derek Stra=
ka
> > python3-numpy         1.14.5           1.15.4                Derek Stra=
ka
> > python-setuptools     40.0.0           40.6.3                Derek Stra=
ka
> > python3-six           1.11.0           1.12.0                Derek Stra=
ka
> > python3-gitdb         2.0.4            2.0.5                 Derek Stra=
ka
> > python3-pycairo       1.15.6           1.18.0                Derek Stra=
ka
> > python3-native        3.5.6            3.7.1                 Derek Stra=
ka
> > acpica                20180508         20181213              Fathi Boud=
ra
> > libgpg-error          1.32             1.33                  Hongxu Jia
> > gnupg                 2.2.11           2.2.12                Hongxu Jia
> > help2man-native       1.47.6           1.47.8                Hongxu Jia
> > libxcrypt             4.1.1            4.4.1                 Khem Raj
> > go-runtime            1.11.1           1.11.4                Khem Raj
> > go                    1.11.1           1.11.4                Khem Raj
> > binutils              2.31             2.31.1                Khem Raj
> > go-native             1.11.1           1.11.4                Khem Raj
> > prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
> > db                    5.3.28           5.3.28+dfsg1          Mark Hatle
> > binutils-cross-ca...  2.31             2.31.1                No maintai=
ner
> > binutils-cross-i586   2.31             2.31.1                No maintai=
ner
> > go-cross-canadian...  1.11.1           1.11.4                No maintai=
ner
> > go-crosssdk-x86_6...  1.11.1           1.11.4                No maintai=
ner
> > binutils-crosssdk...  2.31             2.31.1                No maintai=
ner
> > go-cross-i586         1.11.1           1.11.4                No maintai=
ner
> > mesa                  18.1.9           18.3.1                Otavio Sal=
vador
> > linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Sal=
vador
> > mesa-gl               18.1.9           18.3.1                Otavio Sal=
vador
> > cmake                 3.12.2           3.13.2                Pascal Bac=
h
> > cmake-native          3.12.2           3.13.2                Pascal Bac=
h
> > build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggle=
ton
> > build-appliance-i...  15.0.0           20.0.0                Richard Pu=
rdie
> > gnu-config            20180713+gitX    20180713-new-comm...  Robert Yan=
g
> > squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yan=
g
> > e2fsprogs             1.44.3           1.44.5                Robert Yan=
g
> > ccache                3.4.2            3.5                   Robert Yan=
g
> > git                   2.18.1           2.20.1                Robert Yan=
g
> > mklibs-native         0.1.43           0.1.44                Robert Yan=
g
> > piglit                1.0+gitrX        1.0-new-commits-a...  Ross Burto=
n
> > acpid                 2.0.30           2.0.31                Ross Burto=
n
> > libinput              1.12.3           1.12.4                Ross Burto=
n
> > vulkan-demos          git              git-new-commits-a...  Ross Burto=
n
> > perl                  5.24.4           5.28.1                Ross Burto=
n
> > gtk-icon-utils-na...  3.22.30          3.24.2                Ross Burto=
n
> > ofono                 1.25             1.26                  Ross Burto=
n
> > libical               2.0.0            3.0.4                 Ross Burto=
n
> > vulkan                1.1.73.0         1.1.92.1              Ross Burto=
n
> > lsbinitscripts        9.79             10.01                 Ross Burto=
n
> > sysvinit              2.88dsf          2.93                  Ross Burto=
n
> > adwaita-icon-theme    3.28.0           3.30.1                Ross Burto=
n
> > fontconfig            2.12.6           2.13.1                Ross Burto=
n
> > gdk-pixbuf            2.36.11          2.38.0                Ross Burto=
n
> > gtk+3                 3.24.1           3.24.2                Ross Burto=
n
> > pkgconf               1.5.3            1.5.4                 Ross Burto=
n
> > perl-native           5.24.4           5.28.1                Ross Burto=
n
> > alsa-tools            1.1.6            1.1.7                 Tanu Kaski=
nen
> > alsa-plugins          1.1.6            1.1.7                 Tanu Kaski=
nen
> > alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kaski=
nen
> > alsa-lib              1.1.6            1.1.7                 Tanu Kaski=
nen
> > alsa-utils            1.1.6            1.1.7                 Tanu Kaski=
nen
> > gnu-efi               3.0.8            3.0.9                 Yi Zhao
> > libcap                2.25             2.26                  Yi Zhao
> > chkconfig             1.3.58           1.8                   Yi Zhao   =
           Version 1.5 requires selinux
> > logrotate             3.14.0           3.15.0                Yi Zhao
> > file                  5.34             5.35                  Yi Zhao
> > wget                  1.19.5           1.20                  Yi Zhao
> > json-glib             1.4.2            1.4.4                 Yi Zhao
> > libsdl2               2.0.8            2.0.9                 Yi Zhao
> >
> > Upgradable count: 147
> > Upgradable total count: 151
> >
> > The based commit is:
> >
> > commit c22b0bf66a28324da66caf0660f171cc279a1f2b
> > Author: Robert Yang <liezhi.yang@windriver.com>
> > Date:   Tue Dec 18 17:48:22 2018 +0800
> >
> >     cmake-native: Set --parallel for configure
> >
> >     This can save do_configure's time from 330s to 60s on my host.
> >
> >     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> >     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > Any problem, please contact Jose Lamego <jose.a.lamego@intel.com>
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

