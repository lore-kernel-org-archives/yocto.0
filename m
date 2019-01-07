Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 703CDE00C93; Mon,  7 Jan 2019 14:37:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E698E00C93
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 14:37:41 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id e11so824438plt.11
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 14:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=x/AOnszbCTSAPkkDzyRS8gCTm6KxA4yNL3RRrqUWS9w=;
	b=SRWgqHsmxQqysXSa3OeHbCk8RE0R35Ar7oLHIszW9LxJuQowgaEmv1s54V2xKtmaxZ
	HMsbwN6gedAaLJbFr/uQAXF9WngYiGDdly3oo1QoXr0tmsw1eXGBmpm83otZleravWPb
	oViW2uMj7BuTxSHr8vWGN6qY1VrsJacNyF0MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=x/AOnszbCTSAPkkDzyRS8gCTm6KxA4yNL3RRrqUWS9w=;
	b=WbdifT5i5VNMQtUr3tnfwVbuOkMBFA/GNrrK3hkl6KkcpE03IZLxL2tuuAMjKKAmHg
	9kv8+hgFQnwu1GOIzdtITcxoYm2iOcvCPOv9Tg6co9g8MEoxvsUFubQ/rR441TWnDV2k
	zDovJTQ5fY+PDFQ6zGT8n/jIVeBvOoOPmD31+hRVBVjjJJDac8x/xsbrS5YaunaeLtg0
	ePMR1lzOo3NDi9GlH7eCW8vRsSzMy3Imdit9Vdp38ggdD7DHyA6ZT8VJorUMLI5Icc0E
	kHXAbWHaad1bCcK1XeUDdpELC5L21eH76fE6PAj9Qs0Vt34HypdIHmCT+k7diP8Eiloq
	zGQg==
X-Gm-Message-State: AJcUukfNv5S1txT1JXvCFtbjywzVx3qzqRbTimG7eI3epDWYnWnGulF1
	DpAun5rmSuOiBG8IH7FmeqrVWA==
X-Google-Smtp-Source: ALg8bN5Jk+wxENb51LmRZZXRMtvVzTBXM55wws21FH7jzLWf70nvE4Chuwq2wIbV75Cgi6Xk6uJzKQ==
X-Received: by 2002:a17:902:50e3:: with SMTP id
	c32mr63351995plj.318.1546900661229; 
	Mon, 07 Jan 2019 14:37:41 -0800 (PST)
Received: from [10.25.10.6] ([91.207.175.35]) by smtp.gmail.com with ESMTPSA id
	134sm80691697pgb.78.2019.01.07.14.37.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 Jan 2019 14:37:40 -0800 (PST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
References: <20190107050058.27491.16171@packages.yoctoproject.org>
	<CANNYZj_VuJT4Z04eVc22yGHrAaPx+iaBJHXDN9QN938zahDJxg@mail.gmail.com>
	<CAJTo0Lau=yftGi8+3KktfUoaVH8ZuFrg+8nYVY5uH5z-PE-t9g@mail.gmail.com>
	<3847059.mRjBMpplpY@localhost.localdomain>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <138a6938-c3bb-6a53-8829-4bc78abf08ea@linuxfoundation.org>
Date: Mon, 7 Jan 2019 14:37:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <3847059.mRjBMpplpY@localhost.localdomain>
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
X-List-Received-Date: Mon, 07 Jan 2019 22:37:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

I'm setting up a new server to host the new version. Once it's ready to 
test or when I'm blocked I'll reach out to you Paul.

On 1/7/19 11:32 AM, Paul Eggleton wrote:
> I think the RRS still serves a purpose, if it's putting out correct information of course.
> I have spent quite a bit of time reworking it, but Michael hasn't had the time to do
> the upgrade yet. I will ping him again.
>
> Cheers,
> Paul
>
> On Monday, 7 January 2019 11:35:01 PM NZDT Burton, Ross wrote:
>> Yes, AUH pretty much replaces this I'd say.
>>
>> Ross
>>
>> On Mon, 7 Jan 2019 at 10:26, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>> Looks like this has regressed and is sending out outdated, misleading
>>> information (probably related to recent distrodata-releated changes).
>>>
>>> Shall we switch it off for now?
>>>
>>> AUH has largely superseded this report anyway, and I have a feeling
>>> most people tune it out already.
>>>
>>> Alex
>>>
>>> On Mon, 7 Jan 2019 at 06:01, <recipe-report@yoctoproject.org> wrote:
>>>> This mail was sent out by Recipe reporting system.
>>>>
>>>> This message list those recipes which need to be upgraded. If maintainers
>>>> believe some of them needn't to upgrade at this time, they can fill
>>>> RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainder
>>>> until newer upstream version was detected.
>>>>
>>>> Example:
>>>> RECIPE_NO_UPDATE_REASON = "Version 2.0 is unstable"
>>>>
>>>> You can check the detail information at:
>>>>
>>>> http://recipes.yoctoproject.org/
>>>>
>>>> Package               Version          Upstream version      Maintainer           NoUpgradeReason
>>>> --------------------  ---------------  --------------------  -------------------  ------------------------------
>>>> libgloss              3.0.0            3.0.0.20180831        Alejandro Hernandez
>>>> newlib                3.0.0            3.0.0.20180831        Alejandro Hernandez
>>>> libmodulemd           1.7.0            2.0.0                 Alexander Kanavin
>>>> pcmanfm               1.3.0            1.3.1                 Alexander Kanavin
>>>> webkitgtk             2.22.4           2.22.5                Alexander Kanavin
>>>> boost                 1.68.0           1.69.0                Alexander Kanavin
>>>> libfm-extra           1.3.0.2          1.3.1                 Alexander Kanavin
>>>> libfm                 1.3.0.2          1.3.1                 Alexander Kanavin
>>>> nativesdk-meson       0.47.2           0.49.0                Alexander Kanavin
>>>> ffmpeg                4.0.2            4.1                   Alexander Kanavin
>>>> libcomps              0.1.8+gitX       0.1.9                 Alexander Kanavin
>>>> librepo               1.9.2            1.9.3                 Alexander Kanavin
>>>> meson                 0.47.2           0.49.0                Alexander Kanavin
>>>> dnf                   4.0.9            4.0.10                Alexander Kanavin
>>>> libdnf                0.22.3           0.24.1                Alexander Kanavin
>>>> lighttpd              1.4.51           1.4.52                Alexander Kanavin
>>>> gobject-introspec...  1.58.1           1.58.2                Alexander Kanavin
>>>> btrfs-tools           4.19             4.19.1                Alexander Kanavin
>>>> bjam-native           1.68.0           1.69.0                Alexander Kanavin
>>>> createrepo-c          0.11.1+gitX      0.12.0                Alexander Kanavin
>>>> busybox               1.29.2           1.29.3                Andrej Valek
>>>> apt                   1.2.24           1.4.8                 Aníbal Limón
>>>> apt-native            1.2.24           1.4.8                 Aníbal Limón
>>>> dpkg                  1.18.24          1.19.2                Aníbal Limón
>>>> puzzles               0.0+gitX         0.0-new-commits-a...  Anuj Mittal
>>>> libpcap               1.8.1            1.9.0                 Anuj Mittal
>>>> base-passwd           3.5.29           3.5.45                Anuj Mittal          Version 3.5.38 requires cde...
>>>> ifupdown              0.8.16           0.8.33                Anuj Mittal
>>>> glib-2.0              2.58.0           2.58.1                Anuj Mittal
>>>> glib-networking       2.54.1           2.58.0                Anuj Mittal
>>>> pixman                0.34.0           0.36.0                Anuj Mittal
>>>> harfbuzz              2.1.3            2.2.0                 Anuj Mittal
>>>> gst-examples          0.0.1+gitX       0.0.1-new-commits...  Anuj Mittal
>>>> sqlite3               3.25.3           3.26.0                Anuj Mittal
>>>> vte                   0.52.2           0.54.3                Anuj Mittal
>>>> gsettings-desktop...  3.28.0           3.28.1                Anuj Mittal
>>>> libsolv               0.7.1            0.7.2                 Anuj Mittal
>>>> eudev                 3.2.5            3.2.7                 Anuj Mittal
>>>> atk                   2.28.1           2.30.0                Anuj Mittal
>>>> librsvg               2.40.20          2.44.10               Anuj Mittal          Versions from 2.41.0 requir...
>>>> cairo                 1.14.12          1.16.2                Anuj Mittal
>>>> i2c-tools             4.0              4.1                   Anuj Mittal
>>>> libatomic-ops         7.6.6+gitX       7.6.8                 Anuj Mittal
>>>> libpng                1.6.35           1.6.36                Anuj Mittal
>>>> at-spi2-atk           2.26.2           2.30.0                Anuj Mittal
>>>> mmc-utils             0.1              0.1-new-commits-a...  Anuj Mittal
>>>> libjpeg-turbo         2.0.0            2.0.1                 Anuj Mittal
>>>> mtools                4.0.19           4.0.23                Anuj Mittal
>>>> libassuan             2.5.1            2.5.2                 Armin Kuster
>>>> netbase               5.4              5.5                   Armin Kuster
>>>> openssh               7.9p1+git        7.9.                  Armin Kuster
>>>> curl                  7.62.0           7.63.0                Armin Kuster
>>>> gnutls                3.6.4            3.6.5                 Armin Kuster
>>>> nss                   3.40             3.41                  Armin Kuster
>>>> bind                  9.11.5           9.13.5                Armin Kuster         9.11 is LTS 2021
>>>> nettle                3.4              3.4.1                 Armin Kuster
>>>> linux-libc-headers    4.18             4.19.10               Bruce Ashfield
>>>> kern-tools-native     0.2+gitX         0.2-new-commits-a...  Bruce Ashfield
>>>> linux-yocto           4.18.14+gitX     4.19.8                Bruce Ashfield
>>>> linux-yocto-rt        4.18.14+gitX     4.19.8                Bruce Ashfield
>>>> linux-yocto-tiny      4.18.14+gitX     4.19.8                Bruce Ashfield
>>>> kmscube               git              git-new-commits-a...  Carlos Rafael Giani
>>>> wpa-supplicant        2.6              2.7                   Changhyeok Bae
>>>> iptables              1.6.2            1.8.2                 Changhyeok Bae
>>>> dbus-test             1.12.10          1.12.12               Chen Qi
>>>> acl                   2.2.52           2.2.53                Chen Qi
>>>> attr                  2.4.47           2.4.48                Chen Qi
>>>> systemd-conf          1.0              239                   Chen Qi
>>>> dbus                  1.12.10          1.12.12               Chen Qi
>>>> cups                  2.2.9            2.2.10                Chen Qi
>>>> flex                  2.6.0            2.6.4                 Chen Qi
>>>> util-linux            2.32.1           2.33                  Chen Qi
>>>> bison                 3.0.4            3.2.2                 Chen Qi
>>>> sed                   4.2.2            4.5                   Chen Qi
>>>> sysstat               12.1.1           12.1.2                Chen Qi
>>>> lzop                  1.03             1.04                  Denys Dmytriyenko
>>>> lz4                   1.8.2            1.8.3                 Denys Dmytriyenko
>>>> hdparm                9.56             9.58                  Denys Dmytriyenko
>>>> wayland-protocols     1.16             1.17                  Denys Dmytriyenko
>>>> python3-pygobject     3.28.3           3.30.4                Derek Straka
>>>> python3               3.5.6            3.7.1                 Derek Straka
>>>> python3-pbr           4.2.0            5.1.1                 Derek Straka
>>>> python3-setuptools    40.0.0           40.6.3                Derek Straka
>>>> python3-pip           18.0             18.1                  Derek Straka
>>>> python-numpy          1.14.5           1.15.4                Derek Straka
>>>> python3-numpy         1.14.5           1.15.4                Derek Straka
>>>> python-setuptools     40.0.0           40.6.3                Derek Straka
>>>> python3-six           1.11.0           1.12.0                Derek Straka
>>>> python3-gitdb         2.0.4            2.0.5                 Derek Straka
>>>> python3-pycairo       1.15.6           1.18.0                Derek Straka
>>>> python3-native        3.5.6            3.7.1                 Derek Straka
>>>> acpica                20180508         20181213              Fathi Boudra
>>>> libgpg-error          1.32             1.33                  Hongxu Jia
>>>> gnupg                 2.2.11           2.2.12                Hongxu Jia
>>>> help2man-native       1.47.6           1.47.8                Hongxu Jia
>>>> libxcrypt             4.1.1            4.4.1                 Khem Raj
>>>> go-runtime            1.11.1           1.11.4                Khem Raj
>>>> go                    1.11.1           1.11.4                Khem Raj
>>>> binutils              2.31             2.31.1                Khem Raj
>>>> go-native             1.11.1           1.11.4                Khem Raj
>>>> prelink               1.0+gitX         1.0-new-commits-a...  Mark Hatle
>>>> db                    5.3.28           5.3.28+dfsg1          Mark Hatle
>>>> binutils-cross-ca...  2.31             2.31.1                No maintainer
>>>> binutils-cross-i586   2.31             2.31.1                No maintainer
>>>> go-cross-canadian...  1.11.1           1.11.4                No maintainer
>>>> go-crosssdk-x86_6...  1.11.1           1.11.4                No maintainer
>>>> binutils-crosssdk...  2.31             2.31.1                No maintainer
>>>> go-cross-i586         1.11.1           1.11.4                No maintainer
>>>> mesa                  18.1.9           18.3.1                Otavio Salvador
>>>> linux-firmware        0.0+gitX         0.0-new-commits-a...  Otavio Salvador
>>>> mesa-gl               18.1.9           18.3.1                Otavio Salvador
>>>> cmake                 3.12.2           3.13.2                Pascal Bach
>>>> cmake-native          3.12.2           3.13.2                Pascal Bach
>>>> build-compare         2015.02.10+gitX  2015.02.10-new-co...  Paul Eggleton
>>>> build-appliance-i...  15.0.0           20.0.0                Richard Purdie
>>>> gnu-config            20180713+gitX    20180713-new-comm...  Robert Yang
>>>> squashfs-tools        4.3+gitrX        4.3-new-commits-a...  Robert Yang
>>>> e2fsprogs             1.44.3           1.44.5                Robert Yang
>>>> ccache                3.4.2            3.5                   Robert Yang
>>>> git                   2.18.1           2.20.1                Robert Yang
>>>> mklibs-native         0.1.43           0.1.44                Robert Yang
>>>> piglit                1.0+gitrX        1.0-new-commits-a...  Ross Burton
>>>> acpid                 2.0.30           2.0.31                Ross Burton
>>>> libinput              1.12.3           1.12.4                Ross Burton
>>>> vulkan-demos          git              git-new-commits-a...  Ross Burton
>>>> perl                  5.24.4           5.28.1                Ross Burton
>>>> gtk-icon-utils-na...  3.22.30          3.24.2                Ross Burton
>>>> ofono                 1.25             1.26                  Ross Burton
>>>> libical               2.0.0            3.0.4                 Ross Burton
>>>> vulkan                1.1.73.0         1.1.92.1              Ross Burton
>>>> lsbinitscripts        9.79             10.01                 Ross Burton
>>>> sysvinit              2.88dsf          2.93                  Ross Burton
>>>> adwaita-icon-theme    3.28.0           3.30.1                Ross Burton
>>>> fontconfig            2.12.6           2.13.1                Ross Burton
>>>> gdk-pixbuf            2.36.11          2.38.0                Ross Burton
>>>> gtk+3                 3.24.1           3.24.2                Ross Burton
>>>> pkgconf               1.5.3            1.5.4                 Ross Burton
>>>> perl-native           5.24.4           5.28.1                Ross Burton
>>>> alsa-tools            1.1.6            1.1.7                 Tanu Kaskinen
>>>> alsa-plugins          1.1.6            1.1.7                 Tanu Kaskinen
>>>> alsa-utils-scripts    1.1.6            1.1.7                 Tanu Kaskinen
>>>> alsa-lib              1.1.6            1.1.7                 Tanu Kaskinen
>>>> alsa-utils            1.1.6            1.1.7                 Tanu Kaskinen
>>>> gnu-efi               3.0.8            3.0.9                 Yi Zhao
>>>> libcap                2.25             2.26                  Yi Zhao
>>>> chkconfig             1.3.58           1.8                   Yi Zhao              Version 1.5 requires selinux
>>>> logrotate             3.14.0           3.15.0                Yi Zhao
>>>> file                  5.34             5.35                  Yi Zhao
>>>> wget                  1.19.5           1.20                  Yi Zhao
>>>> json-glib             1.4.2            1.4.4                 Yi Zhao
>>>> libsdl2               2.0.8            2.0.9                 Yi Zhao
>>>>
>>>> Upgradable count: 147
>>>> Upgradable total count: 151
>>>>
>>>> The based commit is:
>>>>
>>>> commit c22b0bf66a28324da66caf0660f171cc279a1f2b
>>>> Author: Robert Yang <liezhi.yang@windriver.com>
>>>> Date:   Tue Dec 18 17:48:22 2018 +0800
>>>>
>>>>      cmake-native: Set --parallel for configure
>>>>
>>>>      This can save do_configure's time from 330s to 60s on my host.
>>>>
>>>>      Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>>>>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>>>
>>>> Any problem, please contact Jose Lamego <jose.a.lamego@intel.com>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Michael Halstead
Linux Foundation / SysAdmin


