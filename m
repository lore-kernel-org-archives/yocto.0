Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FE78E00C59; Mon,  7 Jan 2019 02:26:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DD9E006F1
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 02:26:53 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id a11so37321813otr.10
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 02:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qGP9OV2iBTP3wncAtdBdxa2S3Hc61oiUh5tH/iUQbiE=;
	b=Tjpo0eVuKP+IaJ6Nf4JazsKU82CqPp3HZZrB5BwcsKSnAy2zqGPVlrPQyVElOyD85S
	wYelRBouey+8JZIgt2nEhJa0xSFD0G0KHkgqxY8Edz/QTelz0vOjzZb2sVjK5VXQAq/M
	Bbn8weL0VPl+MdyDoU/AneMr4JrMLOqnMsel4pAWi2AhiazLfxcclEon0ibD2k/9U4PA
	WmbtyFX96AzWCSKQFFZooPFgQR790DWMRrKAZTre8u3tf/cC9VW1/9+LOF/zdkdlQ+KR
	N6t3Lb+oRB9x15PF2Hr1DhTLdSXZVa1GiwB343z1borBgGL6likd5VbSFkYYrtGfIS8L
	gi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qGP9OV2iBTP3wncAtdBdxa2S3Hc61oiUh5tH/iUQbiE=;
	b=ccXIWOwW60buQPpgkgygWybjlQuwDS6JPMatkPg+KI54CnmzdTru1gufsMPDONUGGp
	UMgmBVLbKqlPYaBMDGu2uBoc4pFcAQflAT+fBuWGUFvtrpyvy1hlkmYz9HFAsfT6ArTT
	gZzHnadj9ny3iJxeFB2Fx6+EiTCgQe4ZJeWOTgnwJ9hzL48S5ons3kXs1EvRP9ahl51r
	sGtnNP5Ebnx3MqC+O57t6glzZ4B4laocUsyvJvzJPKjwCb1vwMqLcfdMS9h8VZfZwfsy
	+z7x91pUapFoR9gGZQL7B9JgFVcHiy6JBm7QTvCZI7PK74TVVndx5cMG2y9vuoeoBWsi
	UnmQ==
X-Gm-Message-State: AJcUukeUpt2zCy4L9guqvJszW3uKMHVb0BpquQYnYYTVeYZxajlheNFV
	YvS70IRHhS2VVQqoULR2qKtD+v2Tg2Om8zZd4TI=
X-Google-Smtp-Source: ALg8bN6es94Xb3BnqEe5W7M+2j/BBaAwi6kNcb5TWn4ML0cqgCp8PBaAo7PJMMni5WcbwItpVjeeeMLIm+oacb79gws=
X-Received: by 2002:a9d:c06:: with SMTP id 6mr43889512otr.326.1546856813271;
	Mon, 07 Jan 2019 02:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20190107050058.27491.16171@packages.yoctoproject.org>
In-Reply-To: <20190107050058.27491.16171@packages.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Jan 2019 11:26:41 +0100
Message-ID: <CANNYZj_VuJT4Z04eVc22yGHrAaPx+iaBJHXDN9QN938zahDJxg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Mon, 07 Jan 2019 10:26:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks like this has regressed and is sending out outdated, misleading
information (probably related to recent distrodata-releated changes).

Shall we switch it off for now?

AUH has largely superseded this report anyway, and I have a feeling
most people tune it out already.

Alex

On Mon, 7 Jan 2019 at 06:01, <recipe-report@yoctoproject.org> wrote:
>
> This mail was sent out by Recipe reporting system.
>
> This message list those recipes which need to be upgraded. If maintainers
> believe some of them needn't to upgrade at this time, they can fill
> RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainde=
r
> until newer upstream version was detected.
>
> Example:
> RECIPE_NO_UPDATE_REASON =3D "Version 2.0 is unstable"
>
> You can check the detail information at:
>
> http://recipes.yoctoproject.org/
>
> Package               Version          Upstream version      Maintainer  =
         NoUpgradeReason
> --------------------  ---------------  --------------------  ------------=
-------  ------------------------------
> libgloss              3.0.0            3.0.0.20180831        Alejandro He=
rnandez
> newlib                3.0.0            3.0.0.20180831        Alejandro He=
rnandez
> libmodulemd           1.7.0            2.0.0                 Alexander Ka=
navin
> pcmanfm               1.3.0            1.3.1                 Alexander Ka=
navin
> webkitgtk             2.22.4           2.22.5                Alexander Ka=
navin
> boost                 1.68.0           1.69.0                Alexander Ka=
navin
> libfm-extra           1.3.0.2          1.3.1                 Alexander Ka=
navin
> libfm                 1.3.0.2          1.3.1                 Alexander Ka=
navin
> nativesdk-meson       0.47.2           0.49.0                Alexander Ka=
navin
> ffmpeg                4.0.2            4.1                   Alexander Ka=
navin
> libcomps              0.1.8+gitX       0.1.9                 Alexander Ka=
navin
> librepo               1.9.2            1.9.3                 Alexander Ka=
navin
> meson                 0.47.2           0.49.0                Alexander Ka=
navin
> dnf                   4.0.9            4.0.10                Alexander Ka=
navin
> libdnf                0.22.3           0.24.1                Alexander Ka=
navin
> lighttpd              1.4.51           1.4.52                Alexander Ka=
navin
> gobject-introspec...  1.58.1           1.58.2                Alexander Ka=
navin
> btrfs-tools           4.19             4.19.1                Alexander Ka=
navin
> bjam-native           1.68.0           1.69.0                Alexander Ka=
navin
> createrepo-c          0.11.1+gitX      0.12.0                Alexander Ka=
navin
> busybox               1.29.2           1.29.3                Andrej Valek
> apt                   1.2.24           1.4.8                 An=C3=ADbal =
Lim=C3=B3n
> apt-native            1.2.24           1.4.8                 An=C3=ADbal =
Lim=C3=B3n
> dpkg                  1.18.24          1.19.2                An=C3=ADbal =
Lim=C3=B3n
> puzzles               0.0+gitX         0.0-new-commits-a...  Anuj Mittal
> libpcap               1.8.1            1.9.0                 Anuj Mittal
> base-passwd           3.5.29           3.5.45                Anuj Mittal =
         Version 3.5.38 requires cde...
> ifupdown              0.8.16           0.8.33                Anuj Mittal
> glib-2.0              2.58.0           2.58.1                Anuj Mittal
> glib-networking       2.54.1           2.58.0                Anuj Mittal
> pixman                0.34.0           0.36.0                Anuj Mittal
> harfbuzz              2.1.3            2.2.0                 Anuj Mittal
> gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
> sqlite3               3.25.3           3.26.0                Anuj Mittal
> vte                   0.52.2           0.54.3                Anuj Mittal
> gsettings-desktop...  3.28.0           3.28.1                Anuj Mittal
> libsolv               0.7.1            0.7.2                 Anuj Mittal
> eudev                 3.2.5            3.2.7                 Anuj Mittal
> atk                   2.28.1           2.30.0                Anuj Mittal
> librsvg               2.40.20          2.44.10               Anuj Mittal =
         Versions from 2.41.0 requir...
> cairo                 1.14.12          1.16.2                Anuj Mittal
> i2c-tools             4.0              4.1                   Anuj Mittal
> libatomic-ops         7.6.6+gitX       7.6.8                 Anuj Mittal
> libpng                1.6.35           1.6.36                Anuj Mittal
> at-spi2-atk           2.26.2           2.30.0                Anuj Mittal
> mmc-utils             0.1              0.1-new-commits-a...  Anuj Mittal
> libjpeg-turbo         2.0.0            2.0.1                 Anuj Mittal
> mtools                4.0.19           4.0.23                Anuj Mittal
> libassuan             2.5.1            2.5.2                 Armin Kuster
> netbase               5.4              5.5                   Armin Kuster
> openssh               7.9p1+git        7.9.                  Armin Kuster
> curl                  7.62.0           7.63.0                Armin Kuster
> gnutls                3.6.4            3.6.5                 Armin Kuster
> nss                   3.40             3.41                  Armin Kuster
> bind                  9.11.5           9.13.5                Armin Kuster=
         9.11 is LTS 2021
> nettle                3.4              3.4.1                 Armin Kuster
> linux-libc-headers    4.18             4.19.10               Bruce Ashfie=
ld
> kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfie=
ld
> linux-yocto           4.18.14+gitX     4.19.8                Bruce Ashfie=
ld
> linux-yocto-rt        4.18.14+gitX     4.19.8                Bruce Ashfie=
ld
> linux-yocto-tiny      4.18.14+gitX     4.19.8                Bruce Ashfie=
ld
> kmscube               git              git-new-commits-a...  Carlos Rafae=
l Giani
> wpa-supplicant        2.6              2.7                   Changhyeok B=
ae
> iptables              1.6.2            1.8.2                 Changhyeok B=
ae
> dbus-test             1.12.10          1.12.12               Chen Qi
> acl                   2.2.52           2.2.53                Chen Qi
> attr                  2.4.47           2.4.48                Chen Qi
> systemd-conf          1.0              239                   Chen Qi
> dbus                  1.12.10          1.12.12               Chen Qi
> cups                  2.2.9            2.2.10                Chen Qi
> flex                  2.6.0            2.6.4                 Chen Qi
> util-linux            2.32.1           2.33                  Chen Qi
> bison                 3.0.4            3.2.2                 Chen Qi
> sed                   4.2.2            4.5                   Chen Qi
> sysstat               12.1.1           12.1.2                Chen Qi
> lzop                  1.03             1.04                  Denys Dmytri=
yenko
> lz4                   1.8.2            1.8.3                 Denys Dmytri=
yenko
> hdparm                9.56             9.58                  Denys Dmytri=
yenko
> wayland-protocols     1.16             1.17                  Denys Dmytri=
yenko
> python3-pygobject     3.28.3           3.30.4                Derek Straka
> python3               3.5.6            3.7.1                 Derek Straka
> python3-pbr           4.2.0            5.1.1                 Derek Straka
> python3-setuptools    40.0.0           40.6.3                Derek Straka
> python3-pip           18.0             18.1                  Derek Straka
> python-numpy          1.14.5           1.15.4                Derek Straka
> python3-numpy         1.14.5           1.15.4                Derek Straka
> python-setuptools     40.0.0           40.6.3                Derek Straka
> python3-six           1.11.0           1.12.0                Derek Straka
> python3-gitdb         2.0.4            2.0.5                 Derek Straka
> python3-pycairo       1.15.6           1.18.0                Derek Straka
> python3-native        3.5.6            3.7.1                 Derek Straka
> acpica                20180508         20181213              Fathi Boudra
> libgpg-error          1.32             1.33                  Hongxu Jia
> gnupg                 2.2.11           2.2.12                Hongxu Jia
> help2man-native       1.47.6           1.47.8                Hongxu Jia
> libxcrypt             4.1.1            4.4.1                 Khem Raj
> go-runtime            1.11.1           1.11.4                Khem Raj
> go                    1.11.1           1.11.4                Khem Raj
> binutils              2.31             2.31.1                Khem Raj
> go-native             1.11.1           1.11.4                Khem Raj
> prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
> db                    5.3.28           5.3.28+dfsg1          Mark Hatle
> binutils-cross-ca...  2.31             2.31.1                No maintaine=
r
> binutils-cross-i586   2.31             2.31.1                No maintaine=
r
> go-cross-canadian...  1.11.1           1.11.4                No maintaine=
r
> go-crosssdk-x86_6...  1.11.1           1.11.4                No maintaine=
r
> binutils-crosssdk...  2.31             2.31.1                No maintaine=
r
> go-cross-i586         1.11.1           1.11.4                No maintaine=
r
> mesa                  18.1.9           18.3.1                Otavio Salva=
dor
> linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salva=
dor
> mesa-gl               18.1.9           18.3.1                Otavio Salva=
dor
> cmake                 3.12.2           3.13.2                Pascal Bach
> cmake-native          3.12.2           3.13.2                Pascal Bach
> build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleto=
n
> build-appliance-i...  15.0.0           20.0.0                Richard Purd=
ie
> gnu-config            20180713+gitX    20180713-new-comm...  Robert Yang
> squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
> e2fsprogs             1.44.3           1.44.5                Robert Yang
> ccache                3.4.2            3.5                   Robert Yang
> git                   2.18.1           2.20.1                Robert Yang
> mklibs-native         0.1.43           0.1.44                Robert Yang
> piglit                1.0+gitrX        1.0-new-commits-a...  Ross Burton
> acpid                 2.0.30           2.0.31                Ross Burton
> libinput              1.12.3           1.12.4                Ross Burton
> vulkan-demos          git              git-new-commits-a...  Ross Burton
> perl                  5.24.4           5.28.1                Ross Burton
> gtk-icon-utils-na...  3.22.30          3.24.2                Ross Burton
> ofono                 1.25             1.26                  Ross Burton
> libical               2.0.0            3.0.4                 Ross Burton
> vulkan                1.1.73.0         1.1.92.1              Ross Burton
> lsbinitscripts        9.79             10.01                 Ross Burton
> sysvinit              2.88dsf          2.93                  Ross Burton
> adwaita-icon-theme    3.28.0           3.30.1                Ross Burton
> fontconfig            2.12.6           2.13.1                Ross Burton
> gdk-pixbuf            2.36.11          2.38.0                Ross Burton
> gtk+3                 3.24.1           3.24.2                Ross Burton
> pkgconf               1.5.3            1.5.4                 Ross Burton
> perl-native           5.24.4           5.28.1                Ross Burton
> alsa-tools            1.1.6            1.1.7                 Tanu Kaskine=
n
> alsa-plugins          1.1.6            1.1.7                 Tanu Kaskine=
n
> alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kaskine=
n
> alsa-lib              1.1.6            1.1.7                 Tanu Kaskine=
n
> alsa-utils            1.1.6            1.1.7                 Tanu Kaskine=
n
> gnu-efi               3.0.8            3.0.9                 Yi Zhao
> libcap                2.25             2.26                  Yi Zhao
> chkconfig             1.3.58           1.8                   Yi Zhao     =
         Version 1.5 requires selinux
> logrotate             3.14.0           3.15.0                Yi Zhao
> file                  5.34             5.35                  Yi Zhao
> wget                  1.19.5           1.20                  Yi Zhao
> json-glib             1.4.2            1.4.4                 Yi Zhao
> libsdl2               2.0.8            2.0.9                 Yi Zhao
>
> Upgradable count: 147
> Upgradable total count: 151
>
> The based commit is:
>
> commit c22b0bf66a28324da66caf0660f171cc279a1f2b
> Author: Robert Yang <liezhi.yang@windriver.com>
> Date:   Tue Dec 18 17:48:22 2018 +0800
>
>     cmake-native: Set --parallel for configure
>
>     This can save do_configure's time from 330s to 60s on my host.
>
>     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Any problem, please contact Jose Lamego <jose.a.lamego@intel.com>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

