Subject: regd pTest #systemd #yocto
To: yocto@lists.yoctoproject.org
From: rpaluri@codeaurora.org
X-Originating-Location: Hyderabad, Telangana, IN (136.185.227.253)
X-Originating-Platform: Windows Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Sep 2021 03:59:12 -0700
Message-ID: <l5B2.1631185152502385599.WABY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SBxUSIKdmiK6sgdMfgUY"

--SBxUSIKdmiK6sgdMfgUY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
* I'm aware that yocto picks up packages from respective open source commun=
ity. For e.g. dbus package is picked from freedesktop.org etc. In this rega=
rd, what kind of tests does yocto runs to ensure that the package that is g=
etting picked-up is stable enough?
* Is it Yocto, that writes pTest's to ensure that the package that is getti=
ng picked up is stable enough?
* I could find pTest report for e.g. on Dunfell @ http://downloads.yoctopro=
ject.org/releases/yocto/yocto-3.1.1/testreport.txt (Refer "qemuarm64 PTest =
Result Summary" or "qemux86-64 PTest Result Summary" section for details). =
The test report only details the number of pTest's that passed, failed or s=
kipped for respective package. Is there any report that *details* the pTest=
's, which failed, passed or skipped?
Additionally, I'm looking for pTest's for systemd, udev and glibc packages.
Below are my observations on these packages w.r.t pTests.
* pTest for systemd package has been removed with http://git.yoctoproject.o=
rg/cgit/cgit.cgi/poky/commit/meta/recipes-core/systemd?h=3Ddunfell&id=3D40d=
b00818e3b1cce8aa85ee30f3081ae9a5f8e66 commit.
* Similarly pTest for udev has been removed with http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/commit/meta/recipes-core?h=3Ddunfell&id=3D3e5e54051366=
5105b963262c2eaf33f197a0a36c.
* I don't find ptest's for glibc package either.
As there aren't any pTests for these three packages, are there any other ex=
isting tests that can be run to validate these packages?

Thanks,
Ravi

--SBxUSIKdmiK6sgdMfgUY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />
<ol>
<li>I'm aware that yocto picks up packages from respective open source comm=
unity. For e.g. dbus package is picked from freedesktop.org etc. In this re=
gard, what kind of tests does yocto runs to ensure that the package that is=
 getting picked-up is stable enough?</li>
<li>Is it Yocto, that writes pTest's to ensure that the package that is get=
ting picked up is stable enough?</li>
<li>I could find pTest report for e.g. on Dunfell @&nbsp;<a href=3D"http://=
downloads.yoctoproject.org/releases/yocto/yocto-3.1.1/testreport.txt" targe=
t=3D"_blank" rel=3D"noopener">http://downloads.yoctoproject.org/releases/yo=
cto/yocto-3.1.1/testreport.txt</a>&nbsp;(Refer "qemuarm64 PTest Result Summ=
ary" or "qemux86-64 PTest Result Summary" section for details). The test re=
port only details the number of pTest's that passed, failed or skipped for =
respective package. Is there any report that <strong>details</strong> the p=
Test's, which failed, passed or skipped?</li>
</ol>
Additionally, I'm looking for pTest's for systemd, udev and glibc packages.=
<br />Below are my observations on these packages w.r.t pTests.<br />
<ol>
<li>pTest for systemd package has been removed with <a href=3D"http://git.y=
octoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core/systemd?h=3Ddun=
fell&amp;id=3D40db00818e3b1cce8aa85ee30f3081ae9a5f8e66" target=3D"_blank" r=
el=3D"noopener">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/=
recipes-core/systemd?h=3Ddunfell&amp;id=3D40db00818e3b1cce8aa85ee30f3081ae9=
a5f8e66</a>&nbsp;commit.&nbsp;</li>
<li>Similarly pTest for udev has been removed with <a href=3D"http://git.yo=
ctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core?h=3Ddunfell&amp;=
id=3D3e5e540513665105b963262c2eaf33f197a0a36c" target=3D"_blank" rel=3D"noo=
pener">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-c=
ore?h=3Ddunfell&amp;id=3D3e5e540513665105b963262c2eaf33f197a0a36c</a>.</li>
<li>I don't find ptest's for glibc package either.</li>
</ol>
As there aren't any pTests for these three packages, are there any other ex=
isting tests that can be run to validate these packages?<br /><br />Thanks,=
<br />Ravi

--SBxUSIKdmiK6sgdMfgUY--
