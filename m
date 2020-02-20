Subject: [yocto] Lots of basehash related errors
To: yocto@lists.yoctoproject.org
From: "Dmitri Toubelis" <dmitri.toubelis@litmusautomation.com>
X-Originating-Location: Toronto, Ontario, CA (72.15.50.26)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 08:02:57 -0800
Message-ID: <RlLC.1582214577544571845.5egw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cmqIn3nzmilUmXijhqKB"

--cmqIn3nzmilUmXijhqKB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm migrating from yocto morty to zeus and I'm receiving a whole lot of er=
rors like this:

>=20
> ERROR: When reparsing
> /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loo=
pedge-std.bb:do_image_wic,
> the basehash value changed from
> 8dd96e09d0b7defa552e586e626933ca37ace5180918ea65addbfcb6c1247b1c to
> e38fae3f400b3e3de114fcd668d46a1f7c3eec436ec72962e78df906714a6fb0. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake loopedge-std -cdo_image_wic -Snone
> ERROR: Then:
> ERROR: $ bitbake loopedge-std -cdo_image_wic -Sprintdiff
>=20
> ERROR: When reparsing
> /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loo=
pedge-std.bb:do_image_ext4,
> the basehash value changed from
> a8209ab35324ce59bb193b80871c12c492f69f42fd97b03801165bd4a12670f6 to
> 1ab2d25ef217fe87b4cce1106d122acd4286043b04dcd74d98df30a01aa6a0b9. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Snone
> ERROR: Then:
> ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Sprintdiff
>=20
> ERROR: When reparsing
> /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loo=
pedge-std.bb:do_image_tar,
> the basehash value changed from
> c5ab62cac832e502a338d59124efc690e66560a4e877bc4ba3487c3a734c2497 to
> bb7ca72863614cb5c9915eb502259b1ffa8b98992f7ad3280d1e049a1824b930. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake loopedge-std -cdo_image_tar -Snone
> ERROR: Then:
> ERROR: $ bitbake loopedge-std -cdo_image_tar -Sprintdiff
>=20

I search around for answers and there are here are reasons and solutions f=
or this that I found:
- to make sure any date related variables are excluded from basehash via `=
do_task_name[vardepsexclude] =3D "DATE DATETIME"`
- clears state cache with `bitbake image -c cleansstate`
- delete tmp directory and build from scratch

Here is my observation and interpretation:
- this messages occur when running with pristine build directory, i.e. it =
only contains 2 files in `conf` dir - `local.conf` and `bblatyers.conf`, so=
 I can rule out contamination from a previous run.
- same messages reapeat over and over totalling ~900 errors at the end of =
the run
- I have few custom classes and I removed them from the image to rule out =
contamination from my own code.
- Tasks that give this error are coming from image.bbclass from poky and n=
one of them have been altered in any way.
- The image build runs through the end but because bitbake exits with non-=
zero exit code it breaks lots of our tools, so just ignoring them is a bad =
option.

So, am I doing something obviously wrong? It is a known issue in zeus? And=
 if so is there a known workaround?

Thanks in advance.

--cmqIn3nzmilUmXijhqKB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm migrating from yocto morty to zeus and I'm receiving a w=
hole lot of errors like this:<br /><br />
<blockquote>
<div>ERROR: When reparsing /srv/yocto/poky/meta-loopedge/meta-loopedge-dis=
t/recipes-core/images/loopedge-std.bb:do_image_wic, the basehash value chan=
ged from 8dd96e09d0b7defa552e586e626933ca37ace5180918ea65addbfcb6c1247b1c t=
o e38fae3f400b3e3de114fcd668d46a1f7c3eec436ec72962e78df906714a6fb0. The met=
adata is not deterministic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_wic -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_wic -Sprintdiff</div>
<div>&nbsp;</div>
<div>ERROR: When reparsing /srv/yocto/poky/meta-loopedge/meta-loopedge-dis=
t/recipes-core/images/loopedge-std.bb:do_image_ext4, the basehash value cha=
nged from a8209ab35324ce59bb193b80871c12c492f69f42fd97b03801165bd4a12670f6 =
to 1ab2d25ef217fe87b4cce1106d122acd4286043b04dcd74d98df30a01aa6a0b9. The me=
tadata is not deterministic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Sprintdiff</div>
<div>&nbsp;</div>
<div>ERROR: When reparsing /srv/yocto/poky/meta-loopedge/meta-loopedge-dis=
t/recipes-core/images/loopedge-std.bb:do_image_tar, the basehash value chan=
ged from c5ab62cac832e502a338d59124efc690e66560a4e877bc4ba3487c3a734c2497 t=
o bb7ca72863614cb5c9915eb502259b1ffa8b98992f7ad3280d1e049a1824b930. The met=
adata is not deterministic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_tar -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_tar -Sprintdiff</div>
</blockquote>
<div>I search around for answers and there are here are reasons and soluti=
ons for this that I found:<br />- to make sure any date related variables a=
re excluded from basehash via `do_task_name[vardepsexclude] =3D "DATE DATET=
IME"`<br />- clears state cache with `bitbake image -c cleansstate`<br />- =
delete tmp directory and build from scratch<br /><br />Here is my observati=
on and interpretation:<br />- this messages occur when running with pristin=
e build directory, i.e. it only contains 2 files in `conf` dir - `local.con=
f` and `bblatyers.conf`, so I can rule out contamination from a previous ru=
n.<br />- same messages reapeat over and over totalling ~900 errors at the =
end of the run<br />- I have few custom classes and I removed them from the=
 image to rule out contamination from my own code.<br />- Tasks that give t=
his error are coming from image.bbclass from poky and none of them have bee=
n altered in any way.<br />- The image build runs through the end but becau=
se bitbake exits with non-zero exit code it breaks lots of our tools, so ju=
st ignoring them is a bad option.<br /><br />So, am I doing something obvio=
usly wrong? It is a known issue in zeus? And if so is there a known workaro=
und?<br /><br />Thanks in advance.<br /><br /></div>

--cmqIn3nzmilUmXijhqKB--
