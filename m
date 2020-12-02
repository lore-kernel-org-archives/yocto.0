Subject: Re: How to write custom recipe to install AWS C SDK from github #dunfell #linux #yocto
To: yocto@lists.yoctoproject.org
From: vijayrakeshmunganda@gmail.com
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Dec 2020 04:33:05 -0800
References: <20201202112955.hzixftbs6ap73zox@qschulz>
In-Reply-To: <20201202112955.hzixftbs6ap73zox@qschulz>
Message-ID: <22775.1606912385876656682@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Q0NdUJ1W4vv8iAMRaw3Q"

--Q0NdUJ1W4vv8iAMRaw3Q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin Schulz & Ross,

Thanks for the information. Based on meta-aws I had written the recipe and=
 do_compile has completed. Now I want to install demos in to the build whic=
h are located at tmp/work/aarch64-poky-linux/aws/1.0-r0/git/demos/mqtt/mqtt=
_demo_mutual_auth, so how do I write do_install? ( https://github.com/aws/a=
ws-iot-device-sdk-embedded-C/tree/main/demos/mqtt/mqtt_demo_mutual_auth )

do_install() {
install -d ${D}${bindir}
install -m 0755 mqtt_demo_mutual_auth ${D}${bindir}
}

Does above code works?

Thanks & Regards,
VR.

--Q0NdUJ1W4vv8iAMRaw3Q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"white-space: pre-wrap;">Hi Quentin Schulz &amp; Ross,<br /><=
br /></span>Thanks for the information. Based on meta-aws I had written the=
 recipe and do_compile has completed. Now I want to install demos in to the=
 build which are located at tmp/work/aarch64-poky-linux/aws/1.0-r0/git/demo=
s/mqtt/mqtt_demo_mutual_auth, so how do I write do_install? ( <a href=3D"ht=
tps://github.com/aws/aws-iot-device-sdk-embedded-C/tree/main/demos/mqtt/mqt=
t_demo_mutual_auth" target=3D"_blank" rel=3D"noopener">https://github.com/a=
ws/aws-iot-device-sdk-embedded-C/tree/main/demos/mqtt/mqtt_demo_mutual_auth=
</a> )&nbsp;<br /><br />
<div>do_install() {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -d ${D}${bindir}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 0755 mqtt_demo_mutual_au=
th ${D}${bindir}</div>
<div>}<br /><br />Does above code works?<br /><br />Thanks &amp; Regards,<=
br />VR.</div>

--Q0NdUJ1W4vv8iAMRaw3Q--
