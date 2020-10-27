Subject: Recent issues with BB_DONT_CACHE?
To: yocto@lists.yoctoproject.org
From: "Andrew Geissler" <geissonator@gmail.com>
X-Originating-Location: Austin, Texas, US (45.18.127.186)
X-Originating-Platform: Mac Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Oct 2020 11:04:54 -0700
Message-ID: <vd2P.1603821894021570632.tZcu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8taca4JMEFx1ml2PWeeP"

--8taca4JMEFx1ml2PWeeP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Over in the OpenBMC project, we rebased on yocto master ( https://gerrit.op=
enbmc-project.xyz/c/openbmc/openbmc/+/37488 ). After this we started seeing=
 intermittent issues with our os-release.bb recipe. We have a .bbappend in =
our meta-phosphor layer ( https://github.com/openbmc/openbmc/blob/583147ea4=
5f94ee363e9ae30ccb65b9ed1561b54/meta-phosphor/recipes-core/os-release/os-re=
lease.bbappend ) that issues git commands to use the git hash to fill in ou=
r os-release.

After updating to the latest poky, sometimes the build works fine, other t=
imes we run into https://github.com/openbmc/openbmc/issues/3720

ERROR=EF=BF=BD[0m: =EF=BF=BD[31mWhen reparsing /var/lib/jenkins-slave/work=
space/ci-meta/distro/ubuntu/label/docker-builder/target/witherspoon/openbmc=
/meta/recipes-core/os-release/os-release.bb:do_compile, the basehash value =
changed from 5da39bb75d4e4256ff7e589f6204c0ee79f16031e54aa78a23d630633becce=
ac to c266b6051c26e27a7f5585d632b703511a7a9657fa2960515b570d3ef54a8ef2. The=
 metadata is not deterministic and this needs to be fixed.=EF=BF=BD[0m

After some debug, it appears as if occasionally, bitbake is using the ssta=
te cached os-release initially, and then during the build process it moves =
to using the correct hash id. This then causes the above error. We had issu=
es with this way back in the day when we first introduced this bbappend and=
 the solution was to add this to that recipe:

BB_DONT_CACHE =3D "1"

I don't see anything in that commit list from poky that looks suspicious b=
ut it definitely started happening when we brought that in. I tried modifyi=
ng our os-release.bbappend to only run once during the compile phase but th=
at caused issues where sometimes the os-release field in our flash image wa=
s incorrect ( https://gerrit.openbmc-project.xyz/c/openbmc/meta-phosphor/+/=
37705 is the revert of that try)

--8taca4JMEFx1ml2PWeeP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Over in the OpenBMC project, we rebased on yocto master (<a href=3D"https:/=
/gerrit.openbmc-project.xyz/c/openbmc/openbmc/+/37488" target=3D"_blank" re=
l=3D"noopener">https://gerrit.openbmc-project.xyz/c/openbmc/openbmc/+/37488=
</a>). After this we started seeing intermittent issues with our os-release=
.bb recipe. We have a .bbappend in our meta-phosphor layer (<a href=3D"http=
s://github.com/openbmc/openbmc/blob/583147ea45f94ee363e9ae30ccb65b9ed1561b5=
4/meta-phosphor/recipes-core/os-release/os-release.bbappend" target=3D"_bla=
nk" rel=3D"noopener">https://github.com/openbmc/openbmc/blob/583147ea45f94e=
e363e9ae30ccb65b9ed1561b54/meta-phosphor/recipes-core/os-release/os-release=
.bbappend</a>) that issues git commands to use the git hash to fill in our =
os-release.<br /><br />After updating to the latest poky, sometimes the bui=
ld works fine, other times we run into <a href=3D"https://github.com/openbm=
c/openbmc/issues/3720" target=3D"_blank" rel=3D"noopener">https://github.co=
m/openbmc/openbmc/issues/3720</a><br /><br />
<pre><code>ERROR=EF=BF=BD[0m: =EF=BF=BD[31mWhen reparsing /var/lib/jenkins=
-slave/workspace/ci-meta/distro/ubuntu/label/docker-builder/target/withersp=
oon/openbmc/meta/recipes-core/os-release/os-release.bb:do_compile, the base=
hash value changed from 5da39bb75d4e4256ff7e589f6204c0ee79f16031e54aa78a23d=
630633becceac to c266b6051c26e27a7f5585d632b703511a7a9657fa2960515b570d3ef5=
4a8ef2. The metadata is not deterministic and this needs to be fixed.=EF=BF=
=
=BD[0m</code></pre>
<p>After some debug, it appears as if occasionally, bitbake is using the s=
state cached os-release initially, and then during the build process it mov=
es to using the correct hash id. This then causes the above error. We had i=
ssues with this way back in the day when we first introduced this bbappend =
and the solution was to add this to that recipe:</p>
<p>BB_DONT_CACHE =3D "1"<br /><br />I don't see anything in that commit li=
st from poky that looks suspicious but it definitely started happening when=
 we brought that in. I tried modifying our os-release.bbappend to only run =
once during the compile phase but that caused issues where sometimes the os=
-release field in our flash image was incorrect (<a href=3D"https://gerrit.=
openbmc-project.xyz/c/openbmc/meta-phosphor/+/37705" target=3D"_blank" rel=
=3D"noopener">https://gerrit.openbmc-project.xyz/c/openbmc/meta-phosphor/+=
/37705</a> is the revert of that try)<code></code></p>

--8taca4JMEFx1ml2PWeeP--
