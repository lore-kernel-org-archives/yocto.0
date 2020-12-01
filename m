Subject: hostapd_free_hapd_data: Interface wlan0 wasn't started #dunfell #linux #kernel
To: yocto@lists.yoctoproject.org
From: vijayrakeshmunganda@gmail.com
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Dec 2020 00:09:24 -0800
Message-ID: <EmR9.1606810164534751899.iJoI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SljlKoAYOdNM2wxrQ9tH"

--SljlKoAYOdNM2wxrQ9tH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm new to Yocto Project/Embedded Linux. I had added hostapd recipe (https=
://layers.openembedded.org/layerindex/recipe/28409/) into my build image, a=
nd when I try to run "hostapd hostapd.conf" in terminal, I get the below er=
ror.

Configuration file: hostapd.conf
nl80211: Could not configure driver mode
nl80211: deinit ifname=3Dwlan0 disabled_11b_rates=3D0
nl80211 driver initialization failed.
wlan0: interface state UNINITIALIZED->DISABLED
wlan0: AP-DISABLED
wlan0: CTRL-EVENT-TERMINATING
hostapd_free_hapd_data: Interface wlan0 wasn't started

I had also killed wpa_supplicant, but still I get same error. Kindly pleas=
e help me with this issue.

Thanks & Regards,
VR.

--SljlKoAYOdNM2wxrQ9tH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm new to Yocto Project/Embedded Linux. I had added hostapd=
 recipe (https://layers.openembedded.org/layerindex/recipe/28409/) into my =
build image, and when I try to run "hostapd hostapd.conf" in terminal, I ge=
t the below error.<br /><br />
<div>Configuration file: hostapd.conf</div>
<div>nl80211: Could not configure driver mode</div>
<div>nl80211: deinit ifname=3Dwlan0 disabled_11b_rates=3D0</div>
<div>nl80211 driver initialization failed.</div>
<div>wlan0: interface state UNINITIALIZED-&gt;DISABLED</div>
<div>wlan0: AP-DISABLED</div>
<div>wlan0: CTRL-EVENT-TERMINATING</div>
<div>hostapd_free_hapd_data: Interface wlan0 wasn't started</div>
<div><br />I had also killed wpa_supplicant, but still I get same error. K=
indly please help me with this issue.<br /><br />Thanks &amp; Regards,<br /=
>VR.</div>

--SljlKoAYOdNM2wxrQ9tH--
