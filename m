Subject: Yocto uses older PV instead of newest - how to figure out why?
To: yocto@lists.yoctoproject.org
From: "Oliver Westermann" <oliver.westermann@cognex.com>
X-Originating-Location: Aachen, North Rhine-Westphalia, DE (93.159.253.219)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 Aug 2020 05:02:26 -0700
Message-ID: <Nffe.1598270546825143039.KBHO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KqXs42paUoPPlDbHIJd4"

--KqXs42paUoPPlDbHIJd4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hey,

we're porting our yocto from an older NXP iMX release to their newest BSP,=
 upgrading yocto in the process from sumo to zeus.
Using their current setup, the layers provide one recipe in two versions -=
 0.2 and 1.0. imx-boot to be precise.

I assumed yocto would use the newer version, but it uses 0.2 for some reas=
on and I can't figure out why: I 'grep'ed' everything and could not find an=
y reference to this package which has some version requirements.
Are there any tips to figure out why yocto is not using the 1.0 recipe?

Best regards, Olli

--KqXs42paUoPPlDbHIJd4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hey,<br /><br />we're porting our yocto from an older NXP iMX release to=
 their newest BSP, upgrading yocto in the process from sumo to zeus.<br />U=
sing their current setup, the layers provide one recipe in two versions - 0=
.2 and 1.0. imx-boot to be precise.</p>
<p>I assumed yocto would use the newer version, but it uses 0.2 for some r=
eason and I can't figure out why: I 'grep'ed' everything and could not find=
 any reference to this package which has some version requirements.<br />Ar=
e there any tips to figure out why yocto is not using the 1.0 recipe?<br />=
<br />Best regards, Olli</p>

--KqXs42paUoPPlDbHIJd4--
