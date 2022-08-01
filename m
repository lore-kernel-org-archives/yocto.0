Return-Path: <gangadhar.ubuntu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A24CC00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 06:56:26 +0000 (UTC)
Subject: os-release change - build failure    #bitbake #os-release
To: yocto@lists.yoctoproject.org
From: "Gangadhar N" <gangadhar.ubuntu@gmail.com>
X-Originating-Location: US (16.242.234.21)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 31 Jul 2022 23:56:24 -0700
Message-ID: <jdm7.1659336984833019307.etQ7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="orSHKnXtypDir2DBrYqS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 06:56:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57710

--orSHKnXtypDir2DBrYqS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,
I made below change in=C2=A0recipes-core/os-release/os-release.bbappend. It=
 results in build failure. Please give me pointers to resolve the issue.
I deleted build/cache and build/sstate-cache. But it didn't resolve the iss=
ue.

Thanks & Regards,
Gangadhar

Change made:
--------------------

@@ -18,7 +18,7 @@ python() {
if target_machine:
d.setVar('OPENBMC_TARGET_MACHINE', target_machine)

-=C2=A0 =C2=A0 date_str =3D bb.process.run('date +"%Y%m%d-%H"')[0].strip('\=
n')
+=C2=A0 =C2=A0 date_str =3D bb.process.run('date +"%Y-%m-%d %H:%M:%S"')[0].=
strip('\n')

version_id =3D "${DISTRO_VERSION}" + "-" + date_str

Original code:
___________

python() {
target_machine =3D d.getVar('MACHINE', True)
if target_machine:
d.setVar('OPENBMC_TARGET_MACHINE', target_machine)

date_str =3D bb.process.run('date +"%Y%m%d-%H"')[0].strip('\n')

version_id =3D "${DISTRO_VERSION}" + "-" + date_str

git_description =3D run_git(d, 'describe --dirty --long')

d.setVar('VERSION_ID', version_id)
build_id =3D git_description
d.setVar('BUILD_ID', build_id)
}

-----------------------------Error log-------------------------------------=
-------------
ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-release/=
os-release.bb:do_compile, the basehash value changed from d097fd959c9279c6f=
46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61059e1=
2c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not deterministic=
 and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake os-release -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake os-release -cdo_compile -Sprintdiff

ERROR: os-release-1.0-r0 do_compile: Taskhash mismatch ab507017c7cb41dee341=
12e53705212c320f8432ebd0368d161f173aa97083c3 versus 4de80f60ca66d55cec2c36d=
df5470b295be215dacede6e0dba0c698b81fde649 for /home/gangadhar/openbmc/meta/=
recipes-core/os-release/os-release.bb:do_compile
ERROR: Taskhash mismatch ab507017c7cb41dee34112e53705212c320f8432ebd0368d16=
1f173aa97083c3 versus 4de80f60ca66d55cec2c36ddf5470b295be215dacede6e0dba0c6=
98b81fde649 for /home/gangadhar/openbmc/meta/recipes-core/os-release/os-rel=
ease.bb:do_compile
ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-release/=
os-release.bb:do_compile, the basehash value changed from d097fd959c9279c6f=
46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61059e1=
2c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not deterministic=
 and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake os-release -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake os-release -cdo_compile -Sprintdiff

ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-release/=
os-release.bb:do_compile, the basehash value changed from d097fd959c9279c6f=
46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61059e1=
2c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not deterministic=
 and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake os-release -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake os-release -cdo_compile -Sprintdiff

ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-release/=
os-release.bb:do_compile, the basehash value changed from d097fd959c9279c6f=
46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61059e1=
2c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not deterministic=
 and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake os-release -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake os-release -cdo_compile -Sprintdiff

--orSHKnXtypDir2DBrYqS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br />I made below change in&nbsp;recipes-core/os-release/os-release=
.bbappend. It results in build failure. Please give me pointers to resolve =
the issue.<br />I deleted build/cache and build/sstate-cache. But it didn't=
 resolve the issue.<br /><br />Thanks &amp; Regards,<br />Gangadhar<br /><b=
r /><br />Change made:<br />--------------------<br /><br />@@ -18,7 +18,7 =
@@ python() {
<div>&nbsp; &nbsp; &nbsp;if target_machine:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d.setVar('OPENBMC_TARGET_MACHINE', t=
arget_machine)</div>
<div>&nbsp;</div>
<div>-&nbsp; &nbsp; date_str =3D bb.process.run('date +"%Y%m%d-%H"')[0].str=
ip('\n')</div>
<div>+&nbsp; &nbsp; date_str =3D bb.process.run('date +"%Y-%m-%d %H:%M:%S"'=
)[0].strip('\n')</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp;version_id =3D "${DISTRO_VERSION}" + "-" + date_st=
r</div>
<div><br /><br />Original code:<br />___________<br /><br /></div>
<div>python() {</div>
<div>&nbsp; &nbsp; target_machine =3D d.getVar('MACHINE', True)</div>
<div>&nbsp; &nbsp; if target_machine:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; d.setVar('OPENBMC_TARGET_MACHINE', target_=
machine)</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; date_str =3D bb.process.run('date +"%Y%m%d-%H"')[0].stri=
p('\n')</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; version_id =3D "${DISTRO_VERSION}" + "-" + date_str</div=
>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; git_description =3D run_git(d, 'describe --dirty --long'=
)</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; d.setVar('VERSION_ID', version_id)</div>
<div>&nbsp; &nbsp; build_id =3D git_description</div>
<div>&nbsp; &nbsp; d.setVar('BUILD_ID', build_id)</div>
<div>}</div>
<div><br /><br />-----------------------------Error log--------------------=
------------------------------<br />
<div>ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-rel=
ease/os-release.bb:do_compile, the basehash value changed from d097fd959c92=
79c6f46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61=
059e12c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not determin=
istic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Sprintdiff</div>
<div>&nbsp;</div>
<div>ERROR: os-release-1.0-r0 do_compile: Taskhash mismatch ab507017c7cb41d=
ee34112e53705212c320f8432ebd0368d161f173aa97083c3 versus 4de80f60ca66d55cec=
2c36ddf5470b295be215dacede6e0dba0c698b81fde649 for /home/gangadhar/openbmc/=
meta/recipes-core/os-release/os-release.bb:do_compile</div>
<div>ERROR: Taskhash mismatch ab507017c7cb41dee34112e53705212c320f8432ebd03=
68d161f173aa97083c3 versus 4de80f60ca66d55cec2c36ddf5470b295be215dacede6e0d=
ba0c698b81fde649 for /home/gangadhar/openbmc/meta/recipes-core/os-release/o=
s-release.bb:do_compile</div>
<div>ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-rel=
ease/os-release.bb:do_compile, the basehash value changed from d097fd959c92=
79c6f46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61=
059e12c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not determin=
istic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Sprintdiff</div>
<div>&nbsp;</div>
<div>ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-rel=
ease/os-release.bb:do_compile, the basehash value changed from d097fd959c92=
79c6f46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61=
059e12c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not determin=
istic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Sprintdiff</div>
<div>&nbsp;</div>
<div>ERROR: When reparsing /home/gangadhar/openbmc/meta/recipes-core/os-rel=
ease/os-release.bb:do_compile, the basehash value changed from d097fd959c92=
79c6f46ce70c65b20dd566269c3b3ff068543a49dbd5ba0e2b6a to 536804bd358edc0dc61=
059e12c5b5e4a2e6d4658c0d4ec4ff9cf39fceb769f1f. The metadata is not determin=
istic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake os-release -cdo_compile -Sprintdiff</div>
</div>

--orSHKnXtypDir2DBrYqS--

