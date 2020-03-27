Subject: Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Mar 2020 01:14:24 -0700
Message-ID: <WYeu.1585296864121008672.xhQJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XtGSY0dCNvh0j3pHIQIs"

--XtGSY0dCNvh0j3pHIQIs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to execute a few shell commands the first time a new image boo=
ts. The Yocto built-in mechanism for that should be pkg_postinst_ontarget_$=
{PN}.
However I can not get the commands I put within that function to execute. =
I am having a hard time trying to figure out what the problem is.
I am installing the new image to my board via SWUpdate.=C2=A0My suspicion =
is that the mechanism behind the pkg_postinst_ontarget_${PN} is somehow hin=
dered by the SWUpdate utility.
I could imagine that whatever mechanism is used might me surpressed/ignore=
d by the SWUpdate process.

That is why im asking about the exact mechanism within Linux that is used =
to execute the contents of the pkg_postinst_ontarget_${PN} function on firs=
t boot.

As a reference:
Yocto version: sumo
pkg_postinst_ontarget_${PN} () {
#!/bin/sh
file=3D$D/home/root/test.txt
printf "hello world\n" > $file
}

Thanks in advance
Stefan Wenninger

--XtGSY0dCNvh0j3pHIQIs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I am trying to execute a few shell commands the first time a new i=
mage boots. The Yocto built-in mechanism for that should be <em>pkg_postins=
t_ontarget_${PN}.<br /></em>However I can not get the commands I put within=
 that function to execute. I am having a hard time trying to figure out wha=
t the problem is.<br />I am installing the new image to my board via SWUpda=
te.&nbsp;My suspicion is that the mechanism behind the <em>pkg_postinst_ont=
arget_${PN}</em> is somehow hindered by the SWUpdate utility.<br />I could =
imagine that whatever mechanism is used might me surpressed/ignored by the =
SWUpdate process.<br /><br />That is why im asking about the exact mechanis=
m within Linux that is used to execute the contents of the&nbsp;<em>pkg_pos=
tinst_ontarget_${PN}</em> function on first boot.<br /><br />As a reference=
:<br />Yocto version: sumo<br />pkg_postinst_ontarget_${PN} () {
<div style=3D"padding-left: 30px;">#!/bin/sh<br />file=3D$D/home/root/test=
.txt<br />printf "hello world\n" &gt; $file</div>
}<br /><br />Thanks in advance<br />Stefan Wenninger

--XtGSY0dCNvh0j3pHIQIs--
