Subject: How to dynamically set PKGV? #yocto #python
To: yocto@lists.yoctoproject.org
From: Bill.Kulp@azuresummit.com
X-Originating-Location: Fairfax, Virginia, US (174.79.185.74)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 12:38:19 -0800
Message-ID: <YaI2.1579120699599107204.Yscm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wrxkVDsruC0q3l1cpdjT"

--wrxkVDsruC0q3l1cpdjT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe that builds an application from the master branch of a loca=
l git repository.=C2=A0 AUTOREV is working, so the recipe automatically reb=
uilds whenever the repository is updated.=C2=A0 The source code has its own=
 version number.=C2=A0 I'm wondering if it is possible to grab that version=
 number during the do_compile step, and set the package version based on th=
at?

As a first step, I tried to change the value of PKGV from a bitbake task.

PKGV =3D "BadBad"
python do_foo ()=C2=A0{
d.setVar( "PKGV" , "GoodGood" )
print ( "PKGV=C2=A0set=C2=A0to=C2=A0" +=C2=A0d.getVar( "PKGV" ))
}
addtask=C2=A0foo=C2=A0after=C2=A0do_compile=C2=A0before=C2=A0do_package

However, this did not work - the resulting RPM packages are named "my_pack=
age-BadBad-r0.noarch.rpm".=C2=A0 Can anyone suggest a fix, or a different m=
ethod?

Thanks!

--wrxkVDsruC0q3l1cpdjT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe that builds an application from the master branch of a loca=
l git repository.&nbsp; AUTOREV is working, so the recipe automatically reb=
uilds whenever the repository is updated.&nbsp; The source code has its own=
 version number.&nbsp; I'm wondering if it is possible to grab that version=
 number during the do_compile step, and set the package version based on th=
at?<br /><br />As a first step, I tried to change the value of PKGV from a =
bitbake task.<br />
<div style=3D"color: #000000; font-size: 14.3px; line-height: 19px; white-=
space: pre;"><br />
<div><span style=3D"color: #001080;">PKGV</span>=3D<span style=3D"color: #=
a31515;">"BadBad"</span></div>
<div><span style=3D"color: #0000ff;">python</span>&nbsp;<span style=3D"col=
or: #795e26;">do_foo</span>&nbsp;()&nbsp;{</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;d.setVar(<span style=3D"color: #a31515;">"PKG=
V"</span>,&nbsp;<span style=3D"color: #a31515;">"GoodGood"</span>)</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D"color: #795e26;">print</span>(=
<span style=3D"color: #a31515;">"PKGV&nbsp;set&nbsp;to&nbsp;"</span>&nbsp;+=
&nbsp;d.getVar(<span style=3D"color: #a31515;">"PKGV"</span>))</div>
<div>}</div>
<div>addtask&nbsp;foo&nbsp;after&nbsp;do_compile&nbsp;before&nbsp;do_packa=
ge<br /><span style=3D"color: #333333; font-size: 14px; white-space: normal=
;"><br />However, this did not work - the resulting RPM packages are named =
"my_package-BadBad-r0.noarch.rpm".&nbsp; Can anyone suggest a fix, or a dif=
ferent method?</span><br style=3D"color: #333333; font-size: 14px; white-sp=
ace: normal;" /><br style=3D"color: #333333; font-size: 14px; white-space: =
normal;" /><span style=3D"color: #333333; font-size: 14px; white-space: nor=
mal;">Thanks!</span></div>
</div>

--wrxkVDsruC0q3l1cpdjT--
