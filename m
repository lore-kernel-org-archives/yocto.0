Return-Path: <ksmanjunath681@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D6EC433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 06:58:41 +0000 (UTC)
Subject: using Devtool upgrade with --no-patch subcommand #yocto #devtool
To: yocto@lists.yoctoproject.org
From: ksmanjunath681@gmail.com
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.4)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Jul 2022 23:58:32 -0700
Message-ID: <WrZq.1657090712005968952.2ul8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OCFFKVxUVTDqJ1jOgc9W"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 06:58:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57459

--OCFFKVxUVTDqJ1jOgc9W
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Hi i am currently understanding devtool work flow with --no-patch command=
,
> i was able to use with recipes having only src_uri to repo url only, wher=
e
> has other recipes with
> SRC_URI appended with patch pointing to local location this is giving me
> error , :
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/scripts/devtool",
> line 334, in <module>
> ret =3D main()
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/scripts/devtool",
> line 321, in main
> ret =3D args.func(args, config, basepath, workspace)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/scripts/lib/devtool/upgrade.py",
> line 552, in upgrade
> tinfoil, rd)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/scripts/lib/devtool/upgrade.py",
> line 258, in _extract_new_source
> patches =3D oe.recipeutils.get_recipe_patches(crd)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/meta/lib/oe/recipeutils.py",
> line 501, in get_recipe_patches
> patches =3D oe.patch.src_patches(d, expand=3DFalse)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/meta/lib/oe/patch.py",
> line 814, in src_patches
> local =3D patch_path(url, fetch, workdir, expand)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/meta/lib/oe/patch.py",
> line 788, in patch_path
> local =3D fetch.localpath(url)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/__init__.py",
> line 1615, in localpath
> self.ud[url].setup_localpath(self.d)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/__init__.py",
> line 1311, in setup_localpath
> self.localpath =3D self.method.localpath(self, d)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/local.py",
> line 44, in localpath
> return self.localpaths(urldata, d)[-1]
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/local.py",
> line 55, in localpaths
> filespath =3D d.getVar('FILESPATH')
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py",
> line 606, in getVar
> return self.getVarFlag(var, "_content", expand, noweakdefault, parsing)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py",
> line 804, in getVarFlag
> parser =3D self.expandWithRefs(value, cachename)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py",
> line 426, in expandWithRefs
> raise ExpansionError(varname, s, exc).with_traceback(tb) from exc
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py",
> line 413, in expandWithRefs
> s =3D __expand_python_regexp__.sub(varparse.python_sub, s)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py",
> line 114, in python_sub
> return connector.expandPythonRef(self.varname, code, self.d)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/tinfoil.py",
> line 70, in expandPythonRef
> ret =3D self.tinfoil.run_command('dataStoreConnectorExpandPythonRef', ds,
> varname, expr)
>=20
> raise TinfoilCommandFailed(result[1])
> bb.data_smart.ExpansionError: Failure expanding variable FILESPATH,
> expression was
> ${@base_set_filespath(["/home/manju/Manjunath/AUH/pipeline/iteration_5/AU=
H_test/update_auh_flow/hgv-oss-yocto-meta-manju-tools/recipes-core/manju-ut=
ility/manju-utility-${PV}",
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-meta-s-manju-tools/recipes-core/manju-utility/manju-utility",
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-meta-s-tools/recipes-core/manju-utility/files"],
> d)} which triggered exception TinfoilCommandFailed: Traceback (most recen=
t
> call last):
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/command.py",
> line 74, in runCommand
> result =3D command_method(self, commandline)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/command.py",
> line 496, in dataStoreConnectorExpandPythonRef
> return varparse.python_sub(expr)
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py",
> line 120, in python_sub
> codeobj =3D compile(code.strip(), varname, "eval")
> File "Var <FILESPATH>", line 1
> base_set_filespath(["/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_t=
est/update_auh_flow/hgv-oss-yocto-meta-manju-tools/recipes-core/manju-utili=
ty/manju-utility-${PV
>=20
> ^
> SyntaxError: EOL while scanning string literal
> File
> "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/update_auh_flow/=
hgv-oss-yocto-poky/bitbake/lib/bb/tinfoil.py",
> line 466, in run_command
>=20
>=20

is there anything i am missing here .

>=20
>=20
>

--OCFFKVxUVTDqJ1jOgc9W
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>
<div>Hi i am currently understanding devtool work flow with --no-patch comm=
and, i was able to use with recipes having only src_uri to repo url only, w=
here has other recipes with&nbsp;</div>
<div>SRC_URI appended with patch pointing to local location this is giving =
me error , :</div>
<div>&nbsp;File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/up=
date_auh_flow/hgv-oss-yocto-poky/scripts/devtool", line 334, in &lt;module&=
gt;</div>
<div>&nbsp; &nbsp; ret =3D main()</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/scripts/devtool", line 321, in main</div>
<div>&nbsp; &nbsp; ret =3D args.func(args, config, basepath, workspace)</di=
v>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/scripts/lib/devtool/upgrade.py", line 552=
, in upgrade</div>
<div>&nbsp; &nbsp; tinfoil, rd)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/scripts/lib/devtool/upgrade.py", line 258=
, in _extract_new_source</div>
<div>&nbsp; &nbsp; patches =3D oe.recipeutils.get_recipe_patches(crd)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/meta/lib/oe/recipeutils.py", line 501, in=
 get_recipe_patches</div>
<div>&nbsp; &nbsp; patches =3D oe.patch.src_patches(d, expand=3DFalse)</div=
>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/meta/lib/oe/patch.py", line 814, in src_p=
atches</div>
<div>&nbsp; &nbsp; local =3D patch_path(url, fetch, workdir, expand)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/meta/lib/oe/patch.py", line 788, in patch=
_path</div>
<div>&nbsp; &nbsp; local =3D fetch.localpath(url)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/__init__.py", line =
1615, in localpath</div>
<div>&nbsp; &nbsp; self.ud[url].setup_localpath(self.d)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/__init__.py", line =
1311, in setup_localpath</div>
<div>&nbsp; &nbsp; self.localpath =3D self.method.localpath(self, d)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/local.py", line 44,=
 in localpath</div>
<div>&nbsp; &nbsp; return self.localpaths(urldata, d)[-1]</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/fetch2/local.py", line 55,=
 in localpaths</div>
<div>&nbsp; &nbsp; filespath =3D d.getVar('FILESPATH')</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py", line 606, =
in getVar</div>
<div>&nbsp; &nbsp; return self.getVarFlag(var, "_content", expand, noweakde=
fault, parsing)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py", line 804, =
in getVarFlag</div>
<div>&nbsp; &nbsp; parser =3D self.expandWithRefs(value, cachename)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py", line 426, =
in expandWithRefs</div>
<div>&nbsp; &nbsp; raise ExpansionError(varname, s, exc).with_traceback(tb)=
 from exc</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py", line 413, =
in expandWithRefs</div>
<div>&nbsp; &nbsp; s =3D __expand_python_regexp__.sub(varparse.python_sub, =
s)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py", line 114, =
in python_sub</div>
<div>&nbsp; &nbsp; return connector.expandPythonRef(self.varname, code, sel=
f.d)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/tinfoil.py", line 70, in e=
xpandPythonRef</div>
<div>&nbsp; &nbsp; ret =3D self.tinfoil.run_command('dataStoreConnectorExpa=
ndPythonRef', ds, varname, expr)</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; raise TinfoilCommandFailed(result[1])</div>
<div>bb.data_smart.ExpansionError: Failure expanding variable FILESPATH, ex=
pression was ${@base_set_filespath(["/home/manju/Manjunath/AUH/pipeline/ite=
ration_5/AUH_test/update_auh_flow/hgv-oss-yocto-meta-manju-tools/recipes-co=
re/manju-utility/manju-utility-${PV}", "/home/manju/Manjunath/AUH/pipeline/=
iteration_5/AUH_test/update_auh_flow/hgv-oss-yocto-meta-s-manju-tools/recip=
es-core/manju-utility/manju-utility", "/home/manju/Manjunath/AUH/pipeline/i=
teration_5/AUH_test/update_auh_flow/hgv-oss-yocto-meta-s-tools/recipes-core=
/manju-utility/files"], d)} which triggered exception TinfoilCommandFailed:=
 Traceback (most recent call last):</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/command.py", line 74, in r=
unCommand</div>
<div>&nbsp; &nbsp; result =3D command_method(self, commandline)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/command.py", line 496, in =
dataStoreConnectorExpandPythonRef</div>
<div>&nbsp; &nbsp; return varparse.python_sub(expr)</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/data_smart.py", line 120, =
in python_sub</div>
<div>&nbsp; &nbsp; codeobj =3D compile(code.strip(), varname, "eval")</div>
<div>&nbsp; File "Var &lt;FILESPATH&gt;", line 1</div>
<div>&nbsp; &nbsp; base_set_filespath(["/home/manju/Manjunath/AUH/pipeline/=
iteration_5/AUH_test/update_auh_flow/hgv-oss-yocto-meta-manju-tools/recipes=
-core/manju-utility/manju-utility-${PV</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div>
<div>SyntaxError: EOL while scanning string literal</div>
<div>&nbsp; File "/home/manju/Manjunath/AUH/pipeline/iteration_5/AUH_test/u=
pdate_auh_flow/hgv-oss-yocto-poky/bitbake/lib/bb/tinfoil.py", line 466, in =
run_command</div>
<div>&nbsp;</div>
</div>
</blockquote>
<br />is there anything i am missing here .<br />
<blockquote>
<div>
<div>&nbsp;</div>
</div>
</blockquote>

--OCFFKVxUVTDqJ1jOgc9W--

