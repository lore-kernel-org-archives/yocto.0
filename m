Subject: [poky][PATCH] devtool: deploy-target: Fix preserving attributes when using --strip
To: yocto@lists.yoctoproject.org
From: "Florian Amstutz" <florian.amstutz@scs.ch>
X-Originating-Location: Zurich, CH (212.126.165.68)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Jun 2021 05:00:12 -0700
Message-ID: <6Kkj.1625054412785534212.IkcA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qkqXs5NGljajcMvEQ9RM"

--qkqXs5NGljajcMvEQ9RM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Commit a2db4fa127a3347fc6df31f895fb0b552669119e added ${WORKDIR}/deploy-* t=
o
PSEUDO_IGNORE_PATHS. This breaks the --strip mode since ${D} is copied to
deploy-target-stripped. Use the directory devtool-deploy-target-stripped
instead.

[YOCTO #14451]

Signed-off-by: Florian Amstutz <florian.amstutz@scs.ch>
---
scripts/lib/devtool/deploy.py | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py
index e5af2c95ae..833322571f 100644
--- a/scripts/lib/devtool/deploy.py
+++ b/scripts/lib/devtool/deploy.py
@@ -168,7 +168,7 @@ def deploy(args, config, basepath, workspace):
if args.strip and not args.dry_run:
# Fakeroot copy to new destination
srcdir =3D recipe_outdir
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe_outdir =3D os.path.join(=
rd.getVar('WORKDIR'), 'deploy-target-stripped')
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe_outdir =3D os.path.join(=
rd.getVar('WORKDIR'), 'devtool-deploy-target-stripped')
if os.path.isdir(recipe_outdir):
bb.utils.remove(recipe_outdir, True)
exec_fakeroot(rd, "cp -af %s %s" % (os.path.join(srcdir, '.'), recipe_outd=
ir), shell=3DTrue)
--
2.17.1

--qkqXs5NGljajcMvEQ9RM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Commit a2db4fa127a3347fc6df31f895fb0b552669119e added ${WORKDIR}/deplo=
y-* to</div>
<div>PSEUDO_IGNORE_PATHS. This breaks the --strip mode since ${D} is copie=
d to</div>
<div>deploy-target-stripped. Use the directory devtool-deploy-target-strip=
ped</div>
<div>instead.</div>
<div><br /><span style=3D"white-space: pre-wrap;">[YOCTO #14451]</span><br=
 /><br /></div>
<div>Signed-off-by: Florian Amstutz &lt;florian.amstutz@scs.ch&gt;</div>
<div>---</div>
<div>&nbsp;scripts/lib/devtool/deploy.py | 2 +-</div>
<div>&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)</div>
<div>&nbsp;</div>
<div>diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/depl=
oy.py</div>
<div>index e5af2c95ae..833322571f 100644</div>
<div>--- a/scripts/lib/devtool/deploy.py</div>
<div>+++ b/scripts/lib/devtool/deploy.py</div>
<div>@@ -168,7 +168,7 @@ def deploy(args, config, basepath, workspace):</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if args.strip and not args.dry_run:=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Fakeroot copy to ne=
w destination</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;srcdir =3D recipe_out=
dir</div>
<div>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; recipe_outdir =3D os.path.=
join(rd.getVar('WORKDIR'), 'deploy-target-stripped')</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; recipe_outdir =3D os.path.=
join(rd.getVar('WORKDIR'), 'devtool-deploy-target-stripped')</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if os.path.isdir(reci=
pe_outdir):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bb.util=
s.remove(recipe_outdir, True)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;exec_fakeroot(rd, "cp=
 -af %s %s" % (os.path.join(srcdir, '.'), recipe_outdir), shell=3DTrue)</di=
v>
<div>--&nbsp;</div>
<div>2.17.1</div>
<div>&nbsp;</div>

--qkqXs5NGljajcMvEQ9RM--
