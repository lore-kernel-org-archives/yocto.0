Subject: Re: Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: yocto@lists.yoctoproject.org
From: stefan.wenninger@evopro-ag.de
X-Originating-Location: Regensburg, Bavaria, DE (88.133.236.129)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Mar 2020 05:26:23 -0700
References: <CANNYZj943hZyGefTNaAvjtcL=wK38N4pWB=RVQE89Aa_skJGWg@mail.gmail.com>
In-Reply-To: <CANNYZj943hZyGefTNaAvjtcL=wK38N4pWB=RVQE89Aa_skJGWg@mail.gmail.com>
Message-ID: <15437.1585311983365540635@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bGTrvqQpJgdQpF2FhMWa"

--bGTrvqQpJgdQpF2FhMWa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think the relevant part for me in that script is the func exec_postinst_s=
criplets(). It looks to me as if this function iterates through all scripts=
 in the /etc/deb-postinsts directory in my case and executes them with "sh"=
.
My problem seems to have stemmed from confusion on my part about what pack=
age the postinst attaches to.
The postinst belongs to the package with the same name as my recipe becaus=
e of the _${PN}. However I specified that my recipe produces another packag=
e with the PROVIDES =3D"" variable.
In my IMAGE_INSTALL I only added the package I specifically provide. There=
fore the recipe package with the postinst did not end up in my rootfs.

When changing the IMAGE_INSTALL I get my commands to be executed on the sy=
stem on first boot.
I realize now that my current method of having every recipe create an extr=
a package with PROVIDES is not really necessary.

Your hint about the run-postinsts directory was what lead me to understand=
 the mechanism further.
And on the way I recognized a bad or at least confusing practice on my beh=
alf.

I consider this question/problem solved, thank you very much.

Stefan

--bGTrvqQpJgdQpF2FhMWa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think the relevant part for me in that script is the func <em>exec_postin=
st_scriplets().</em> It looks to me as if this function iterates through al=
l scripts in the /etc/deb-postinsts directory in my case and executes them =
with "sh".<br />My problem seems to have stemmed from confusion on my part =
about what package the postinst attaches to.<br />The postinst belongs to t=
he package with the same name as my recipe because of the _${PN}. However I=
 specified that my recipe produces another package with the PROVIDES =3D"" =
variable.<br />In my IMAGE_INSTALL I only added the package I specifically =
provide. Therefore the recipe package with the postinst did not end up in m=
y rootfs.<br /><br />When changing the IMAGE_INSTALL I get my commands to b=
e executed on the system on first boot.<br />I realize now that my current =
method of having every recipe create an extra package with PROVIDES is not =
really necessary.<br /><br />Your hint about the run-postinsts directory wa=
s what lead me to understand the mechanism further.<br />And on the way I r=
ecognized a bad or at least confusing practice on my behalf.<br /><br />I c=
onsider this question/problem solved, thank you very much.<br /><br />Stefa=
n

--bGTrvqQpJgdQpF2FhMWa--
