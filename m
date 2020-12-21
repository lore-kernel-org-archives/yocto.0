Subject: Re: hostapd_free_hapd_data: Interface wlan0 wasn't started #dunfell #linux #kernel
To: yocto@lists.yoctoproject.org
From: "Shamil Khan" <shamil.khan@exaleapsemi.com>
X-Originating-Location: Bengaluru, Karnataka, IN (171.76.82.62)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Dec 2020 04:35:08 -0800
References: <24964.1607180365056712552@lists.yoctoproject.org>
In-Reply-To: <24964.1607180365056712552@lists.yoctoproject.org>
Message-ID: <30285.1608554108327352414@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="h97LgZoR79eGDRlYZjKT"

--h97LgZoR79eGDRlYZjKT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi VR,

Please make sure that the interface name in hostapd.conf matches with the =
wireless interface name of your target.
By default it is set to wlan0, but it could be different in your target (f=
or ex, wlp2s0...).

Best regards,
Shamil

--h97LgZoR79eGDRlYZjKT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi VR,</p>
<p>Please make sure that the interface name in hostapd.conf matches with t=
he wireless interface name of your target.&nbsp;<br />By default it is set =
to wlan0, but it could be different in your target (for ex, wlp2s0...).<br =
/><br />Best regards,<br />Shamil</p>

--h97LgZoR79eGDRlYZjKT--
