Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E12D8E00B6F; Tue, 18 Jul 2017 08:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.46 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC04E00B28
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 08:51:53 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id d78so13526786lfg.3;
	Tue, 18 Jul 2017 08:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=A/IzOiQoIJ+zMbSfk16v48wKO3n5F3CMi6NzJwfmzrI=;
	b=EwkD/NTYsk3w+8OGrRFQMOq+Q82z8oxgxhSMDBYfXG3OQsCxADejpov1MnIoPYAKCE
	y5NU34n0GeSv23snGHfjuvn2PsgGgSvjrn5Xw62+CW/TPxxocgj7fnPsmh3bIe8XS74X
	e5Nh5q3DM7G+X3VN+ViUwD83AiyhYQV/a1/wUpO8tiWopytC9NNK9kEAtkZSOf/R7tYX
	4suNkS0qxNhFFsZHU8vCN86/KSsR0EV4zI0hbMJGF3MBbmZ9VvX3z+241sp+tiXcGj30
	JMjsClcPwBTpwpZAg/nyJDDYRZKe+6LXoCHHMNIR3e3M242unY6NOU3m1b6wDFAMl1oj
	LYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=A/IzOiQoIJ+zMbSfk16v48wKO3n5F3CMi6NzJwfmzrI=;
	b=Bzm1IS010ijZUGaEBRIWAJWa7XJjlonsV04ZYXUVtxaEKKI1LLGQwrKZStmcpBeLuH
	AaxV0T+1c8Huw/5JwXsMaR9sFSFH90VS2szLXUxagbR1/Knq/YlFtUeaDE3hMIajMvTE
	WCl/g3y3FXMa1y+U0jDmQGSFZ4sXNXywH0tIoYv4P8N/otGdRyaowKCowgS8NIW3I1Lk
	Hjj/c+Y6rH6lsaF1JRdxYgh0ceytAsXtmSR1jfsW1tQK8ROUwGuEmKiDhhbzGfRrtAPG
	9SuWOZJc1LHbrwC/65jPjrdCs133XiV4scTtezOT+bceZeJwaxW9k6y8ATJjNQ6Cj3Ku
	cIhg==
X-Gm-Message-State: AIVw111plpJQHn3ujpcRjvM73XWNj6z6BML6ujI+3dSizXp/+ny0maXh
	LsUzKe71nb9Qy0G8K1pj35b1XEbcHg==
X-Received: by 10.80.164.185 with SMTP id w54mr2590202edb.76.1500393111532;
	Tue, 18 Jul 2017 08:51:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.173 with HTTP; Tue, 18 Jul 2017 08:51:21 -0700 (PDT)
In-Reply-To: <20170718150316.30062.87859@packages.yoctoproject.org>
References: <20170718150316.30062.87859@packages.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Jul 2017 11:51:21 -0400
Message-ID: <CAMKF1so2kb+yieHLGByTnRZq2fzthbOuN=5JjUhJT9e-sXR3vg@mail.gmail.com>
To: recipe-report@yoctoproject.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 18 Jul 2017 15:51:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 18, 2017 at 11:03 AM,  <recipe-report@yoctoproject.org> wrote:
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
> Package               Version       Upstream version      Maintainer     =
      NoUpgradeReason
> --------------------  ------------  --------------------  ---------------=
----  ------------------------------
> python3               3.5.3         3.6.2                 Alejandro Herna=
ndez
> eudev                 3.2.1         3.2.2                 Alejandro Herna=
ndez
> python3-native        3.5.3         3.6.2                 Alejandro Herna=
ndez
> libnl                 3.2.29        3.3.0                 Alexander Kanav=
in
> openssl               1.0.2l        1.1.0f                Alexander Kanav=
in
> icu                   58.2          59.1                  Alexander Kanav=
in
> valgrind              3.13.0        3.13.0.RC2            Alexander Kanav=
in

this seems to be a false positive.

> gperf                 3.0.4         3.1                   Alexander Kanav=
in
> bash-completion       2.5           2.7                   Alexander Kanav=
in
> mkelfimage            4.0+gitX      4.6+gitAUTOINC+db...  Alexander Kanav=
in    mkelfimage has been removed...
> oprofile              1.1.0         1.2.0rc2              Alexander Kanav=
in
> vala                  0.36.3        0.36.4                Alexander Kanav=
in
> mpg123                1.25.0        1.25.2                Alexander Kanav=
in
> psmisc                22.21         23.1                  Alexander Kanav=
in
> btrfs-tools           4.11          4.11.1                Alexander Kanav=
in
> epiphany              3.24.2        3.24.3                Alexander Kanav=
in
> qemu                  2.8.1.1       2.9.0                 An=C3=ADbal Lim=
=C3=B3n
> perl                  5.24.1        5.26.0                An=C3=ADbal Lim=
=C3=B3n
> apt                   1.2.12        1.4.7                 An=C3=ADbal Lim=
=C3=B3n
> libxml-namespaces...  1.12          1.12.9                An=C3=ADbal Lim=
=C3=B3n
> apt-native            1.2.12        1.4.7                 An=C3=ADbal Lim=
=C3=B3n
> dpkg                  1.18.10       1.18.24               An=C3=ADbal Lim=
=C3=B3n
> perl-native           5.24.1        5.26.0                An=C3=ADbal Lim=
=C3=B3n
> bind                  9.10.5-P3     9.11.1-P3             Armin Kuster
> iproute2              4.11.0        4.12.0                Armin Kuster
> busybox               1.24.1        1.27.0                Armin Kuster
> lz4                   1.7.4         131                   Armin Kuster
> nspr                  4.14          4.15                  Armin Kuster
> go-native             1.8.3         1.9beta2              Armin Kuster
> gnutls                3.5.13        3.5.14                Armin Kuster
> kexec-tools           2.0.14        2.0.15                Armin Kuster
> linux-libc-headers    4.10          4.12.2                Bruce Ashfield
> libunwind             1.2           1.2.1                 Bruce Ashfield
> pciutils              3.5.4         3.5.5                 Chen Qi
> systemd               232           234                   Chen Qi
> cups                  2.2.3         2.2.4                 Chen Qi
> diffutils             3.5           3.6                   Chen Qi
> dbus-test             1.10.18       1.10.20               Chen Qi
> dbus                  1.10.18       1.10.20               Chen Qi
> sed                   4.2.2         4.4                   Chen Qi
> sudo                  1.8.19p2      1.8.20p2              Chen Qi
> sysstat               11.5.6        11.5.7                Chen Qi
> systemd-boot          232           234                   Chen Qi
> systemd-bootchart     231+gitX      232+gitAUTOINC+79...  Chen Qi
> flex                  2.6.0         2.6.4                 Chen Qi
> build-appliance-i...  15.0.0        17.0.0                Cristian Iorga
> avahi-ui              0.6.32        0.7                   Dengke Du
> avahi                 0.6.32        0.7                   Dengke Du
> expat                 2.2.1         2.2.2                 Dengke Du
> json-glib             1.2.8         1.3.2                 Dengke Du
> chkconfig             1.3.58        1.8                   Dengke Du      =
      Version 1.5 requires selinux
> wayland               1.13.0        1.13.91               Denys Dmytriyen=
ko
> weston                2.0.0         2.99.91               Denys Dmytriyen=
ko
> apr-util              1.5.4         1.6.0                 Hongxu Jia
> gpgme                 1.8.0         1.9.0                 Hongxu Jia
> libgcrypt             1.7.7         1.8.0                 Hongxu Jia
> bash                  4.3.30        4.4                   Hongxu Jia
> ncurses               6.0+20161126  6.0+20170715          Hongxu Jia
> elfutils              0.168         0.169                 Hongxu Jia
> gnupg                 2.1.20        2.1.21                Hongxu Jia
> python3-docutils      0.13.1        0.14rc1               Jose Lamego
> bc                    1.06          1.07.1                Jose Lamego
> python3-mako          1.0.6         1.0.7                 Jose Lamego
> python3-setuptools    32.1.1        36.2.0                Jose Lamego
> python-setuptools     32.1.1        36.2.0                Jose Lamego
> python3-git           2.1.3         2.1.5                 Jose Lamego
> pango                 1.40.6        1.40.7                Jussi Kukkonen
> libinput              1.7.3         1.8.0                 Jussi Kukkonen
> gsettings-desktop...  3.22.0        3.24.0                Jussi Kukkonen
> glib-2.0              2.52.2        2.52.3                Jussi Kukkonen
> xdg-utils             1.1.1         1.1.2                 Jussi Kukkonen
> cairo                 1.14.8        1.14.10               Jussi Kukkonen
> fontconfig            2.12.1        2.12.4                Jussi Kukkonen
> texinfo               6.3           6.4                   Leonardo Sandov=
al
> u-boot-fw-utils       2017.05       2017.07               Marek Vasut
> u-boot-mkimage        2017.05       2017.07               Marek Vasut
> u-boot                2017.05       2017.07               Marek Vasut
> prelink               1.0+gitX      20151030.+gitAUTO...  Mark Hatle
> libpfm4               4.6.0         4.8.0                 Matthew McClint=
ock
> gstreamer1.0-rtsp...  1.10.4        1.12.2                Maxin B. John
> bluez5                5.45          5.46                  Maxin B. John
> ifupdown              0.8.16        0.8.21                Maxin B. John
> gstreamer1.0-libav    1.10.4        1.12.2                Maxin B. John
> gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
> gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
> gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
> gstreamer1.0          1.10.4        1.12.2                Maxin B. John
> gstreamer1.0-omx      1.10.4        1.12.2                Maxin B. John
> sqlite3               3.19.2        3.19.3                Maxin B. John
> libtirpc              1.0.1         1.0.2                 Maxin B. John
> libsolv               0.6.27        0.6.28                Maxin B. John
> screen                4.5.1         4.6.1                 Maxin B. John
> libpng                1.6.29        1.6.30                Maxin B. John
> gstreamer1.0-plug...  1.10.4        1.12.2                Maxin B. John
> libjpeg-turbo         1.5.1         1.5.2                 Maxin B. John
> orc                   0.4.26        0.4.27                Maxin B. John
> gstreamer1.0-vaapi    1.10.4        1.12.2                No maintainer
> go-bootstrap-native   1.4.3         1.9beta2              No maintainer
> acpica                20170303      20170629              No maintainer
> go-cross-i586         1.8.3         1.9beta2              No maintainer
> go                    1.8.3         1.9beta2              No maintainer
> libdnf                0.9.1         0.9.2                 No maintainer
> gcc-source-6.3.0      6.3.0         7.1.0                 No maintainer
> mesa                  17.1.4        17.1.5                Otavio Salvador
> mesa-gl               17.1.4        17.1.5                Otavio Salvador
> subversion            1.9.5         1.9.6                 Richard Purdie
> strace                4.17          4.18                  Robert Yang
> libbsd                0.8.5         0.8.6                 Robert Yang
> libpcre               8.40          8.41                  Robert Yang
> logrotate             3.9.1         3.12.3                Robert Yang
> cryptodev-linux       1.8           1.9                   Robert Yang
> cryptodev-module      1.8           1.9                   Robert Yang
> cryptodev-tests       1.8           1.9                   Robert Yang
> git                   2.13.2        2.13.3                Robert Yang
> base-passwd           3.5.29        3.5.43                Ross Burton    =
      Version 3.5.38 requires cde...
>
> Upgradable count: 112
> Upgradable total count: 115
>
> The based commit is:
>
> commit ef68005a8c527e9b1d05b7769f0ec8ebe9ec3f91
> Author: Carlos Alberto Lopez Perez <clopez@igalia.com>
> Date:   Thu Jul 13 14:49:54 2017 +0200
>
>     webkitgtk: Upgrade to 2.16.5
>
>     Adjust some dependencies: libgcrypt is now required (instead of gnutl=
s)
>     and the following build deps where missing: gettext-native, glib-2.0
>     and glib-2.0-native.
>
>     Also the CMake argument ENABLE_CREDENTIAL_STORAGE has been renamed to
>     USE_LIBSECRET.
>
>     This new upstream release (2.16.4 actually) includes security fixes f=
or
>     CVE: CVE-2017-2538
>
>     Signed-off-by: Carlos Alberto Lopez Perez <clopez@igalia.com>
>     Signed-off-by: Ross Burton <ross.burton@intel.com>
>
> Any problem, please contact Anibal Limon <anibal.limon@intel.com>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

