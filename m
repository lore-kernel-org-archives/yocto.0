Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Jan 2021 06:48:17 -0800
References: <2283.1611063703258428427@lists.yoctoproject.org>
In-Reply-To: <2283.1611063703258428427@lists.yoctoproject.org>
Message-ID: <2283.1611067697958905459@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZwsvjBtzK5SdojkVhjPf"

--ZwsvjBtzK5SdojkVhjPf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My modeles.dep file looks like this on target:

kernel/fs/nfs/flexfilelayout/nfs_layout_flexfiles.ko:
kernel/crypto/echainiv.ko:
kernel/crypto/gcm.ko:
kernel/crypto/ccm.ko:
kernel/crypto/ghash-generic.ko:
kernel/drivers/char/hw_random/rng-core.ko:
kernel/net/ipv4/tcp_bic.ko:
kernel/net/ipv4/tcp_westwood.ko:
kernel/net/ipv4/tcp_htcp.ko:
kernel/net/bridge/br_netfilter.ko:
kernel/net/wireless/cfg80211.ko: kernel/net/rfkill/rfkill.ko
kernel/net/mac80211/mac80211.ko: kernel/net/wireless/cfg80211.ko kernel/ne=
t/rfkill/rfkill.ko
kernel/net/rfkill/rfkill.ko:
kernel/net/rfkill/rfkill-regulator.ko: kernel/net/rfkill/rfkill.ko
kernel/net/rfkill/rfkill-gpio.ko: kernel/net/rfkill/rfkill.ko
extra/cdc-ncm.ko: extra/cdc-wdm.ko
extra/hello.ko:
extra/cdc-wdm.ko:
extra/huawei_cdc_ncm.ko: extra/cdc-wdm.ko

--
Zolee

--ZwsvjBtzK5SdojkVhjPf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My modeles.dep file looks like this on target:<br /><br />kernel/fs/nfs/fle=
xfilelayout/nfs_layout_flexfiles.ko:<br />kernel/crypto/echainiv.ko:<br />k=
ernel/crypto/gcm.ko:<br />kernel/crypto/ccm.ko:<br />kernel/crypto/ghash-ge=
neric.ko:<br />kernel/drivers/char/hw_random/rng-core.ko:<br />kernel/net/i=
pv4/tcp_bic.ko:<br />kernel/net/ipv4/tcp_westwood.ko:<br />kernel/net/ipv4/=
tcp_htcp.ko:<br />kernel/net/bridge/br_netfilter.ko:<br />kernel/net/wirele=
ss/cfg80211.ko: kernel/net/rfkill/rfkill.ko<br />kernel/net/mac80211/mac802=
11.ko: kernel/net/wireless/cfg80211.ko kernel/net/rfkill/rfkill.ko<br />ker=
nel/net/rfkill/rfkill.ko:<br />kernel/net/rfkill/rfkill-regulator.ko: kerne=
l/net/rfkill/rfkill.ko<br />kernel/net/rfkill/rfkill-gpio.ko: kernel/net/rf=
kill/rfkill.ko<br />extra/cdc-ncm.ko: extra/cdc-wdm.ko<br />extra/hello.ko:=
<br />extra/cdc-wdm.ko:<br />extra/huawei_cdc_ncm.ko: extra/cdc-wdm.ko<br /=
><br />-- <br />Zolee

--ZwsvjBtzK5SdojkVhjPf--
