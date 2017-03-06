Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C216E00ADB; Sun,  5 Mar 2017 21:40:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C1CBE00ACD
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 21:40:38 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 9514D8766923
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 00:40:37 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 06 Mar 2017 05:40:37 -0000
Message-ID: <20170306054037.14715.74497@packages.yoctoproject.org>
Subject: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Mon, 06 Mar 2017 05:40:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade at this time, they can fill
RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainder
until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON = "Version 2.0 is unstable"

You can check the detail information at:

http://recipes.yoctoproject.org/

Package               Version      Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------  --------------------  -------------------  ------------------------------
python3               3.5.2        3.6.0                 Alejandro Hernandez
python3-native        3.5.2        3.6.0                 Alejandro Hernandez
dtc                   1.4.2        1.4.3                 Alexander Kanavin
openssl               1.0.2k       1.1.0e                Alexander Kanavin
mpg123                1.23.8       1.24.0                Alexander Kanavin
vala                  0.34.4       0.34.5                Alexander Kanavin
libiconv              1.14         1.15                  Alexander Kanavin
ed                    1.14.1       1.14.2                Alexander Kanavin
lzo                   2.09         2.10                  Alexander Kanavin
kconfig-frontends     3.12.0.0     4.7.0.0               Alexander Kanavin
gperf                 3.0.4        3.1                   Alexander Kanavin
mkelfimage            4.0+gitX     4.5+gitAUTOINC+0b...  Alexander Kanavin    mkelfimage has been removed...
libarchive            3.2.2        3.3.1                 Alexander Kanavin
dpkg                  1.18.10      1.18.22               Aníbal Limón
pinentry              0.9.2        1.0.0                 Armin Kuster
linux-libc-headers    4.10         4.10.1                Bruce Ashfield
libunwind             1.1+gitX     1.2+gitAUTOINC+cc...  Bruce Ashfield
util-linux            2.29.1       2.29.2                Chen Qi
pciutils              3.5.2        3.5.4                 Chen Qi
zlib                  1.2.8        1.2.11                Chen Qi
kmod                  23+gitX      24+gitAUTOINC+ef4...  Chen Qi
sed                   4.2.2        4.4                   Chen Qi
sysstat               11.5.4       11.5.5                Chen Qi
systemd               232          233                   Chen Qi
curl                  7.53.0       7.53.1                Chen Qi
busybox               1.25.0+gitX  1.26.2+gitAUTOINC...  Chen Qi
flex                  2.6.0        2.6.3                 Chen Qi
dbus-test             1.10.14      1.10.16               Chen Qi
dbus                  1.10.14      1.10.16               Chen Qi
grep                  2.27         3.0                   Chen Qi
byacc                 20161202     20170201              Chen Qi
kmod-native           23+gitX      24+gitAUTOINC+ef4...  Chen Qi
systemd-boot          232          233                   Chen Qi
build-appliance-i...  15.0.0       16.0.1                Cristian Iorga
python3-setuptools    32.1.1       34.3.1                Edwin Plauchu
python-setuptools     32.1.1       34.3.1                Edwin Plauchu
createrepo            0.4.11       0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
libgpg-error          1.26         1.27                  Hongxu Jia
bash                  4.3.30       4.4                   Hongxu Jia
gnupg                 2.1.18       2.1.19                Hongxu Jia
pango                 1.40.3       1.40.4                Jussi Kukkonen
libinput              1.6.1        1.6.901               Jussi Kukkonen
xserver-xorg          1.19.1       1.19.2                Jussi Kukkonen
gtk-icon-utils-na...  3.22.8       3.22.9                Jussi Kukkonen
libx11-diet           1.6.4        1.6.5                 Jussi Kukkonen
libx11                1.6.4        1.6.5                 Jussi Kukkonen
gtk+3                 3.22.8       3.22.9                Jussi Kukkonen
libevent              2.0.22       2.1.8                 Jussi Kukkonen
mesa                  17.0.0       17.0.1                Jussi Kukkonen
mesa-gl               17.0.0       17.0.1                Jussi Kukkonen
binutils              2.27         2.28                  Khem Raj
nfs-utils             1.3.4        2.1.1                 Mariano Lopez
prelink               1.0+gitX     20151030.+gitAUTO...  Mark Hatle
rpm                   5.4.16       5.4.17                Mark Hatle
db                    6.0.35       6.2.23                Mark Hatle           latest db does not work wit...
libpfm4               4.6.0        4.8.0                 Matthew McClintock
libsolv               0.6.24       0.6.26                Maxin B. John
mc                    4.8.18       4.8.19                Maxin B. John
ifupdown              0.8.16       0.8.19                Maxin B. John
bluez5                5.43         5.44                  Maxin B. John
screen                4.4.0        4.5.1                 Maxin B. John
harfbuzz              1.4.1        1.4.4                 Maxin B. John
binutils-cross-ca...  2.27         2.28                  No maintainer
libpcre2              10.22        10.23                 No maintainer
binutils-cross-i586   2.27         2.28                  No maintainer
binutils-crosssdk...  2.27         2.28                  No maintainer
git                   2.11.1       2.12.0                Robert Yang
lsbinitscripts        9.68         9.70                  Ross Burton
base-passwd           3.5.29       3.5.43                Ross Burton          Version 3.5.38 requires cde...

Upgradable count: 65
Upgradable total count: 69

The based commit is:

commit 784a8379260759700ab8482b1699c9567d6e9f3f
Author: Armin Kuster <akuster@mvista.com>
Date:   Tue Feb 28 19:48:31 2017 -0800

    tzdata: update to 2017a
    
     Briefly: Southern Chile moves from -04/-03 to -03, and Mongolia
      discontinues DST.
    
      Changes to future time stamps
    
        Mongolia no longer observes DST.  (Thanks to Ganbold Tsagaankhuu.)
    
        Chile's Region of Magallanes moves from -04/-03 to -03 year-round.
        Its clocks diverge from America/Santiago starting 2017-05-13 at
        23:00, hiving off a new zone America/Punta_Arenas.  Although the
        Chilean government says this change expires in May 2019, for now
        assume it's permanent.  (Thanks to Juan Correa and Deborah
        Goldsmith.)  This also affects Antarctica/Palmer.
    
      Changes to past time stamps
    
        Fix many entries for historical time stamps for Europe/Madrid
        before 1979, to agree with tables compiled by Pere Planesas of the
        National Astronomical Observatory of Spain.  As a side effect,
        this changes some time stamps for Africa/Ceuta before 1929, which
        are probably guesswork anyway.  (Thanks to Steve Allen and
        Pierpaolo Bernardi for the heads-ups, and to Michael Deckers for
        correcting the 1901 transition.)
    
        Ecuador observed DST from 1992-11-28 to 1993-02-05.
        (Thanks to Alois Treindl.)
    
        Asia/Atyrau and Asia/Oral were at +03 (not +04) before 1930-06-21.
        (Thanks to Stepan Golosunov.)
    
      Changes to past and future time zone abbreviations
    
        Switch to numeric time zone abbreviations for South America, as
        part of the ongoing project of removing invented abbreviations.
        This avoids the need to invent an abbreviation for the new Chilean
        new zone.  Similarly, switch from invented to numeric time zone
        abbreviations for Afghanistan, American Samoa, the Azores,
        Bangladesh, Bhutan, the British Indian Ocean Territory, Brunei,
        Cape Verde, Chatham Is, Christmas I, Cocos (Keeling) Is, Cook Is,
        Dubai, East Timor, Eucla, Fiji, French Polynesia, Greenland,
        Indochina, Iran, Iraq, Kiribati, Lord Howe, Macquarie, Malaysia,
        the Maldives, Marshall Is, Mauritius, Micronesia, Mongolia,
        Myanmar, Nauru, Nepal, New Caledonia, Niue, Norfolk I, Palau,
        Papua New Guinea, the Philippines, Pitcairn, Qatar, Réunion, St
        Pierre & Miquelon, Samoa, Saudi Arabia, Seychelles, Singapore,
        Solomon Is, Tokelau, Tuvalu, Wake, Vanuatu, Wallis & Futuna, and
        Xinjiang; for 20-minute daylight saving time in Ghana before 1943;
        for half-hour daylight saving time in Belize before 1944 and in
        the Dominican Republic before 1975; and for Canary Islands before
        1946, for Guinea-Bissau before 1975, for Iceland before 1969, for
        Indian Summer Time before 1942, for Indonesia before around 1964,
        for Kenya before 1960, for Liberia before 1973, for Madeira before
        1967, for Namibia before 1943, for the Netherlands in 1937-9, for
        Pakistan before 1971, for Western Sahara before 1977, and for
        Zaporozhye in 1880-1924.
    
        For Alaska time from 1900 through 1967, instead of "CAT" use the
        abbreviation "AST", the abbreviation commonly used at the time
        (Atlantic Standard Time had not been standardized yet).  Use "AWT"
        and "APT" instead of the invented abbreviations "CAWT" and "CAPT".
    
        Use "CST" and "CDT" instead of invented abbreviations for Macau
        before 1999 and Taiwan before 1938, and use "JST" instead of the
        invented abbreviation "JCST" for Japan and Korea before 1938.
    
      Change to database entry category
    
        Move the Pacific/Johnston link from 'australasia' to 'backward',
        since Johnston is now uninhabited.
    
    Signed-off-by: Armin Kuster <akuster@mvista.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 


