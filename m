Subject: 2038 time problem fix in yocto #kernel #linux #yocto #zeus
To: yocto@lists.yoctoproject.org
From: dhandhukiya.paresh@gmail.com
X-Originating-Location: Mumbai, Maharashtra, IN (165.225.121.62)
X-Originating-Platform: Windows Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Feb 2021 23:13:01 -0800
Message-ID: <M0f4.1612336381258288837.tdxI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NMCZRCvjRZWTmP70mpKv"

--NMCZRCvjRZWTmP70mpKv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We need to have a fix for 2038 problem for out 32 bit based product which =
is running Yocto (Linux).
2038 time problem was fixed in Linux kernel recently https://www.theregist=
er.com/2020/10/19/linux_5_10_y2k38_fixes/

This issue is fixed and kernel and glibc, these version of kernel is not p=
art of the yocto yet.
Does anyone know the timeline for this?

Also, There are other packages also affected by 2038 time problem in Linux=
.
Is there any timeline to fix these issues in other packages.
Its understandable that yocto project include these packages when new vers=
ion of the package comes and doesnt maintain it.
But is there any central monitoring in yocto community about fixing this i=
ssue throughout yocto ?
Can any one please help me with above detail?

Thanks,
Paresh Dhandhukiya

--NMCZRCvjRZWTmP70mpKv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />We need to have a fix for 2038 problem for out 32 bit based =
product which is running Yocto (Linux).<br />2038 time problem was fixed in=
 Linux kernel recently&nbsp;<a href=3D"https://www.theregister.com/2020/10/=
19/linux_5_10_y2k38_fixes/">https://www.theregister.com/2020/10/19/linux_5_=
10_y2k38_fixes/</a><br /><br />This issue is fixed and kernel and glibc, th=
ese version of kernel is not part of the yocto yet.<br />Does anyone know t=
he timeline for this?<br /><br />Also, There are other packages also affect=
ed by 2038 time problem in Linux.<br />Is there any timeline to fix these i=
ssues in other packages.<br />Its understandable that yocto project include=
 these packages when new version of the package comes and doesnt maintain i=
t.<br />But is there any central monitoring in yocto community about fixing=
 this issue throughout yocto ?<br />Can any one please help me with above d=
etail?<br /><br />Thanks,<br />Paresh Dhandhukiya

--NMCZRCvjRZWTmP70mpKv--
