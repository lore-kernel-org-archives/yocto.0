Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E505E00CDE; Tue, 22 Jan 2019 14:20:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B441E006F1
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 14:20:54 -0800 (PST)
Received: by mail-pl1-f174.google.com with SMTP id p8so74803plo.2
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 14:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zfT2HDT5V/BIsUS5BQC+W+GlVxb5qmexjjpitTxJ+Dw=;
	b=SHS+XAMnY5Z8Nxf3X7icKAEvBCYOk38qrDyCRIhqA53mS3l9uB6CrMQ8tdNXjU3hCj
	KOjVtJ/ogWnK3Hj7Jm9us0LKGRdJxJPPmIehbODDGS5goc28P6Zpr+f+75N2EhhnCPd5
	6qJg5xfTSsh4JTV0+gaL3KRrHdLbrqG9uXmwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=zfT2HDT5V/BIsUS5BQC+W+GlVxb5qmexjjpitTxJ+Dw=;
	b=qMDWF75rZ+JTNHMcrDUTh5fzTmjEchexPKBaSujIhzG2+UVKvpSvYRuoXeGlST3ru4
	DDst4I6Mcmtq2a/usnm8rEJJ6q4DxE8LPrgHypRNDfwrG3SSX8P4lwZ4j/7LJ2qWC7Zx
	fye5eOPF0HqdksHNYSJAFvPjJRcxcc5RDdLinFkNM7+UJmvF87JEUU27s6jB2r8ccl5B
	+7cqxseEAZ2l30SdTZ8H3SOXpFK3kR4HXR+9dHsGm/vAN8pZbrOuJdikykYlmV4tJxw3
	Fuy0CtXd3U/4aC/LuEpsMxtJACOkLKWrM93hgb1UbPl802lbsbdSJEraqnj1LlJOm+67
	Z5JA==
X-Gm-Message-State: AJcUukeatpcxUl5CjW0B8zYjuGTjEedgtYR1b/vV8v5okYxIUVjK6gnZ
	FH0ebZhLHphuuzHhcU5dtg1Nu73PbnQ=
X-Google-Smtp-Source: ALg8bN7o2eDj2jiCEtM9/HIN2ButOiKhYpg8qgKEfDpPREEWwqfTfuI572w9f4z985wSzE/4zCb4HQ==
X-Received: by 2002:a17:902:704b:: with SMTP id
	h11mr36273485plt.157.1548195653543; 
	Tue, 22 Jan 2019 14:20:53 -0800 (PST)
Received: from ?IPv6:2601:1c0:ce01:2bef::5286? ([2601:1c0:ce01:2bef::5286])
	by smtp.gmail.com with ESMTPSA id t3sm198415pfa.50.2019.01.22.14.20.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Jan 2019 14:20:52 -0800 (PST)
To: Alexander Kanavin <alex.kanavin@gmail.com>,
	"Paul Eggleton (paul.eggleton@linux.intel.com)"
	<paul.eggleton@linux.intel.com>
References: <20190121050049.18609.14821@packages.yoctoproject.org>
	<CANNYZj92dZ_VLN5gszu-oW+G3_s0ECss=C+MkgBT0Ov-MhvYkw@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <f8dfecb8-a7b3-b3fb-7ecc-1f3e545af655@linuxfoundation.org>
Date: Tue, 22 Jan 2019 14:20:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj92dZ_VLN5gszu-oW+G3_s0ECss=C+MkgBT0Ov-MhvYkw@mail.gmail.com>
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
X-List-Received-Date: Tue, 22 Jan 2019 22:20:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

E-mails from the previous version are stopped now and the upgraded 
version is nearly ready.

On 1/21/19 3:22 AM, Alexander Kanavin wrote:
> Hello,
>
> just to remind you that RRS continues to send these badly outdated,
> misleading reports once a week to yocto@. Please switch them off
> and/or take the new RRS into use (if the new RRS addresses the
> problem).
>
> Alex
>
>
> On Mon, 21 Jan 2019 at 06:01, <recipe-report@yoctoproject.org> wrote:
>> This mail was sent out by Recipe reporting system.
>>
>> This message list those recipes which need to be upgraded. If maintainers
>> believe some of them needn't to upgrade at this time, they can fill
>> RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainder
>> until newer upstream version was detected.
>>
>> Example:
>> RECIPE_NO_UPDATE_REASON = "Version 2.0 is unstable"
>>
>> You can check the detail information at:
>>
>> http://recipes.yoctoproject.org/
>>
>> Package               Version          Upstream version      Maintainer           NoUpgradeReason
>> --------------------  ---------------  --------------------  -------------------  ------------------------------
>> libgloss              3.0.0            3.0.0.20180831        Alejandro Hernandez
>> newlib                3.0.0            3.0.0.20180831        Alejandro Hernandez
>> libmodulemd           1.7.0            2.0.0                 Alexander Kanavin
>> pcmanfm               1.3.0            1.3.1                 Alexander Kanavin
>> webkitgtk             2.22.4           2.22.5                Alexander Kanavin
>> boost                 1.68.0           1.69.0                Alexander Kanavin
>> libfm-extra           1.3.0.2          1.3.1                 Alexander Kanavin
>> libfm                 1.3.0.2          1.3.1                 Alexander Kanavin
>> nativesdk-meson       0.47.2           0.49.0                Alexander Kanavin
>> ffmpeg                4.0.2            4.1                   Alexander Kanavin
>> libcomps              0.1.8+gitX       0.1.9                 Alexander Kanavin
>> librepo               1.9.2            1.9.3                 Alexander Kanavin
>> meson                 0.47.2           0.49.0                Alexander Kanavin
>> dnf                   4.0.9            4.0.10                Alexander Kanavin
>> libdnf                0.22.3           0.24.1                Alexander Kanavin
>> lighttpd              1.4.51           1.4.52                Alexander Kanavin
>> gobject-introspec...  1.58.1           1.58.2                Alexander Kanavin
>> btrfs-tools           4.19             4.19.1                Alexander Kanavin
>> bjam-native           1.68.0           1.69.0                Alexander Kanavin
>> createrepo-c          0.11.1+gitX      0.12.0                Alexander Kanavin
>> busybox               1.29.2           1.29.3                Andrej Valek
>> apt                   1.2.24           1.4.8                 Aníbal Limón
>> apt-native            1.2.24           1.4.8                 Aníbal Limón
>> dpkg                  1.18.24          1.19.2                Aníbal Limón
>> puzzles               0.0+gitX         0.0-new-commits-a...  Anuj Mittal
>> libpcap               1.8.1            1.9.0                 Anuj Mittal
>> base-passwd           3.5.29           3.5.45                Anuj Mittal          Version 3.5.38 requires cde...
>> ifupdown              0.8.16           0.8.33                Anuj Mittal
>> glib-2.0              2.58.0           2.58.1                Anuj Mittal
>> glib-networking       2.54.1           2.58.0                Anuj Mittal
>> pixman                0.34.0           0.36.0                Anuj Mittal
>> harfbuzz              2.1.3            2.2.0                 Anuj Mittal
>> gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
>> sqlite3               3.25.3           3.26.0                Anuj Mittal
>> vte                   0.52.2           0.54.3                Anuj Mittal
>> gsettings-desktop...  3.28.0           3.28.1                Anuj Mittal
>> libsolv               0.7.1            0.7.2                 Anuj Mittal
>> eudev                 3.2.5            3.2.7                 Anuj Mittal
>> atk                   2.28.1           2.30.0                Anuj Mittal
>> librsvg               2.40.20          2.44.10               Anuj Mittal          Versions from 2.41.0 requir...
>> cairo                 1.14.12          1.16.2                Anuj Mittal
>> i2c-tools             4.0              4.1                   Anuj Mittal
>> libatomic-ops         7.6.6+gitX       7.6.8                 Anuj Mittal
>> libpng                1.6.35           1.6.36                Anuj Mittal
>> at-spi2-atk           2.26.2           2.30.0                Anuj Mittal
>> mmc-utils             0.1              0.1-new-commits-a...  Anuj Mittal
>> libjpeg-turbo         2.0.0            2.0.1                 Anuj Mittal
>> mtools                4.0.19           4.0.23                Anuj Mittal
>> libassuan             2.5.1            2.5.2                 Armin Kuster
>> netbase               5.4              5.5                   Armin Kuster
>> openssh               7.9p1+git        7.9.                  Armin Kuster
>> curl                  7.62.0           7.63.0                Armin Kuster
>> gnutls                3.6.4            3.6.5                 Armin Kuster
>> nss                   3.40             3.41                  Armin Kuster
>> bind                  9.11.5           9.13.5                Armin Kuster         9.11 is LTS 2021
>> nettle                3.4              3.4.1                 Armin Kuster
>> linux-libc-headers    4.18             4.19.10               Bruce Ashfield
>> kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
>> linux-yocto           4.18.14+gitX     4.19.8                Bruce Ashfield
>> linux-yocto-rt        4.18.14+gitX     4.19.8                Bruce Ashfield
>> linux-yocto-tiny      4.18.14+gitX     4.19.8                Bruce Ashfield
>> kmscube               git              git-new-commits-a...  Carlos Rafael Giani
>> wpa-supplicant        2.6              2.7                   Changhyeok Bae
>> iptables              1.6.2            1.8.2                 Changhyeok Bae
>> dbus-test             1.12.10          1.12.12               Chen Qi
>> acl                   2.2.52           2.2.53                Chen Qi
>> attr                  2.4.47           2.4.48                Chen Qi
>> systemd-conf          1.0              239                   Chen Qi
>> dbus                  1.12.10          1.12.12               Chen Qi
>> cups                  2.2.9            2.2.10                Chen Qi
>> flex                  2.6.0            2.6.4                 Chen Qi
>> util-linux            2.32.1           2.33                  Chen Qi
>> bison                 3.0.4            3.2.2                 Chen Qi
>> sed                   4.2.2            4.5                   Chen Qi
>> sysstat               12.1.1           12.1.2                Chen Qi
>> lzop                  1.03             1.04                  Denys Dmytriyenko
>> lz4                   1.8.2            1.8.3                 Denys Dmytriyenko
>> hdparm                9.56             9.58                  Denys Dmytriyenko
>> wayland-protocols     1.16             1.17                  Denys Dmytriyenko
>> python3-pygobject     3.28.3           3.30.4                Derek Straka
>> python3               3.5.6            3.7.1                 Derek Straka
>> python3-pbr           4.2.0            5.1.1                 Derek Straka
>> python3-setuptools    40.0.0           40.6.3                Derek Straka
>> python3-pip           18.0             18.1                  Derek Straka
>> python-numpy          1.14.5           1.15.4                Derek Straka
>> python3-numpy         1.14.5           1.15.4                Derek Straka
>> python-setuptools     40.0.0           40.6.3                Derek Straka
>> python3-six           1.11.0           1.12.0                Derek Straka
>> python3-gitdb         2.0.4            2.0.5                 Derek Straka
>> python3-pycairo       1.15.6           1.18.0                Derek Straka
>> python3-native        3.5.6            3.7.1                 Derek Straka
>> acpica                20180508         20181213              Fathi Boudra
>> libgpg-error          1.32             1.33                  Hongxu Jia
>> gnupg                 2.2.11           2.2.12                Hongxu Jia
>> help2man-native       1.47.6           1.47.8                Hongxu Jia
>> libxcrypt             4.1.1            4.4.1                 Khem Raj
>> go-runtime            1.11.1           1.11.4                Khem Raj
>> go                    1.11.1           1.11.4                Khem Raj
>> binutils              2.31             2.31.1                Khem Raj
>> go-native             1.11.1           1.11.4                Khem Raj
>> prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
>> db                    5.3.28           5.3.28+dfsg1          Mark Hatle
>> binutils-cross-ca...  2.31             2.31.1                No maintainer
>> binutils-cross-i586   2.31             2.31.1                No maintainer
>> go-cross-canadian...  1.11.1           1.11.4                No maintainer
>> go-crosssdk-x86_6...  1.11.1           1.11.4                No maintainer
>> binutils-crosssdk...  2.31             2.31.1                No maintainer
>> go-cross-i586         1.11.1           1.11.4                No maintainer
>> mesa                  18.1.9           18.3.1                Otavio Salvador
>> linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
>> mesa-gl               18.1.9           18.3.1                Otavio Salvador
>> cmake                 3.12.2           3.13.2                Pascal Bach
>> cmake-native          3.12.2           3.13.2                Pascal Bach
>> build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleton
>> build-appliance-i...  15.0.0           20.0.0                Richard Purdie
>> gnu-config            20180713+gitX    20180713-new-comm...  Robert Yang
>> squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
>> e2fsprogs             1.44.3           1.44.5                Robert Yang
>> ccache                3.4.2            3.5                   Robert Yang
>> git                   2.18.1           2.20.1                Robert Yang
>> mklibs-native         0.1.43           0.1.44                Robert Yang
>> piglit                1.0+gitrX        1.0-new-commits-a...  Ross Burton
>> acpid                 2.0.30           2.0.31                Ross Burton
>> libinput              1.12.3           1.12.4                Ross Burton
>> vulkan-demos          git              git-new-commits-a...  Ross Burton
>> perl                  5.24.4           5.28.1                Ross Burton
>> gtk-icon-utils-na...  3.22.30          3.24.2                Ross Burton
>> ofono                 1.25             1.26                  Ross Burton
>> libical               2.0.0            3.0.4                 Ross Burton
>> vulkan                1.1.73.0         1.1.92.1              Ross Burton
>> lsbinitscripts        9.79             10.01                 Ross Burton
>> sysvinit              2.88dsf          2.93                  Ross Burton
>> adwaita-icon-theme    3.28.0           3.30.1                Ross Burton
>> fontconfig            2.12.6           2.13.1                Ross Burton
>> gdk-pixbuf            2.36.11          2.38.0                Ross Burton
>> gtk+3                 3.24.1           3.24.2                Ross Burton
>> pkgconf               1.5.3            1.5.4                 Ross Burton
>> perl-native           5.24.4           5.28.1                Ross Burton
>> alsa-tools            1.1.6            1.1.7                 Tanu Kaskinen
>> alsa-plugins          1.1.6            1.1.7                 Tanu Kaskinen
>> alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kaskinen
>> alsa-lib              1.1.6            1.1.7                 Tanu Kaskinen
>> alsa-utils            1.1.6            1.1.7                 Tanu Kaskinen
>> gnu-efi               3.0.8            3.0.9                 Yi Zhao
>> libcap                2.25             2.26                  Yi Zhao
>> chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
>> logrotate             3.14.0           3.15.0                Yi Zhao
>> file                  5.34             5.35                  Yi Zhao
>> wget                  1.19.5           1.20                  Yi Zhao
>> json-glib             1.4.2            1.4.4                 Yi Zhao
>> libsdl2               2.0.8            2.0.9                 Yi Zhao
>>
>> Upgradable count: 147
>> Upgradable total count: 151
>>
>> The based commit is:
>>
>> commit 9908b7955e75e10d6a1384e4c08417ef534464af
>> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>> Date:   Sun Jan 20 12:18:52 2019 +0000
>>
>>      scripts/contrib/build-perf-test.sh: Remove it
>>
>>      This is the older script which the code in lib/oeqa/buildperf replaces so
>>      delete the obsolete script to avoid confusion.
>>
>>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>
>> Any problem, please contact Jose Lamego <jose.a.lamego@intel.com>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
Michael Halstead
Linux Foundation / SysAdmin


