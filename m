Return-Path: <ali_malik96@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BC53C433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 20:50:28 +0000 (UTC)
Subject: do_populate_lic: Fatal QA errors found,
 failing task. #honister #bitbake #systemd #ubuntu
To: yocto@lists.yoctoproject.org
From: "Ali" <ali_malik96@yahoo.com>
X-Originating-Location: Alexandria, Virginia, US (108.18.117.136)
X-Originating-Platform: Windows Chrome 99
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Mar 2022 13:50:27 -0700
Message-ID: <3uIa.1647636627567602815.q6GQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="saSwtIDs5OR6X1AduKYS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 20:50:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56499

--saSwtIDs5OR6X1AduKYS
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

So I'm trying to build my recipe and it continuously fails at the `do_popul=
ate_lic()` phase. I've pasted my recipe file.

#### The Source
```
# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guess=
es - it is
# your responsibility to verify that the values are complete and correct.
#
# The following license files were not able to be identified and are
# represented as "Unknown" below, you will need to check them yourself:
#   vendor/src/golang.org/x/sync/LICENSE
#   vendor/src/golang.org/x/oauth2/LICENSE
#   vendor/src/golang.org/x/crypto/LICENSE
#   vendor/src/golang.org/x/sys/LICENSE
#   vendor/src/golang.org/x/net/LICENSE
#   vendor/src/github.com/davecgh/go-spew/LICENSE
#   vendor/src/github.com/xanzy/ssh-agent/LICENSE
#   vendor/src/github.com/gorhill/cronexpr/GPLv3
#   vendor/src/github.com/gorilla/websocket/LICENSE
#   vendor/src/github.com/imdario/mergo/LICENSE
#   vendor/src/github.com/imdario/mergo/testdata/license.yml
#   vendor/src/github.com/go-yaml/yaml/LICENSE
#   vendor/src/github.com/go-yaml/yaml/LICENSE.libyaml
#   vendor/src/github.com/jmespath/go-jmespath/LICENSE
#   vendor/src/github.com/cihub/seelog/LICENSE.txt
#   vendor/src/github.com/pborman/ansi/LICENSE
#   vendor/src/github.com/aws/aws-sdk-go/vendor/github.com/jmespath/go-jmes=
path/LICENSE
#   vendor/src/github.com/aws/aws-sdk-go/awsmigrate/awsmigrate-renamer/vend=
or/golang.org/x/tools/LICENSE
#   vendor/src/github.com/google/go-querystring/LICENSE
#   vendor/src/github.com/go-ini/ini/LICENSE
#   vendor/src/github.com/Workiva/go-datastructures/LICENSE
#   vendor/src/github.com/emirpasic/gods/LICENSE
#   vendor/src/github.com/stretchr/testify/LICENCE.txt
#   vendor/src/github.com/stretchr/testify/LICENSE
#   vendor/src/github.com/stretchr/testify/vendor/github.com/davecgh/go-spe=
w/LICENSE
#   vendor/src/github.com/stretchr/testify/vendor/github.com/stretchr/objx/=
LICENSE.md
#   vendor/src/github.com/stretchr/testify/vendor/github.com/pmezard/go-dif=
flib/LICENSE
#   vendor/src/github.com/stretchr/objx/LICENSE.md
#   vendor/src/github.com/go-github/LICENSE
#   vendor/src/github.com/go-github/github/licenses.go
#   vendor/src/github.com/go-github/github/licenses_test.go
#   vendor/src/github.com/Microsoft/go-winio/archive/tar/LICENSE
#   vendor/src/github.com/kevinburke/ssh_config/LICENSE
#   vendor/src/github.com/sergi/go-diff/APACHE-LICENSE-2.0
#   vendor/src/github.com/fsnotify/fsnotify/LICENSE
#   vendor/src/github.com/pmezard/go-difflib/LICENSE
#   vendor/src/github.com/go-git/go-billy/LICENSE
#   vendor/src/github.com/go-git/go-git/LICENSE
#   vendor/src/github.com/go-git/gcfg/LICENSE
#   vendor/src/gopkg.in/warnings.v0/LICENSE
#   Tools/src/LICENSE
#   Tools/src/insert_license.sh
#
# NOTE: multiple licenses have been detected; they have been separated with=
 &
# in the LICENSE value for now since it is a reasonable assumption that all
# of the licenses apply. If instead there is a choice between the multiple
# licenses then you should change the value to separate the licenses with |
# instead of &. If there is any doubt, check the accompanying documentation
# to determine which situation is applicable.
LICENSE =3D "Apache-2.0 & Unknown & MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3b83ef96387f14655fc854ddc3c6bd57=
 \
                    file://vendor/src/golang.org/x/sync/LICENSE;md5=3D5d495=
0ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/oauth2/LICENSE;md5=3D5d4=
950ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/crypto/LICENSE;md5=3D5d4=
950ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/sys/LICENSE;md5=3D5d4950=
ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/net/LICENSE;md5=3D5d4950=
ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/github.com/davecgh/go-spew/LICENSE;md=
5=3D8bc888171b6c073957745dfa153bd402 \
                    file://vendor/src/github.com/kr/pty/License;md5=3D93958=
070863d769117fa33b129020050 \
                    file://vendor/src/github.com/xanzy/ssh-agent/LICENSE;md=
5=3Dfa818a259cbed7ce8bc2a22d35a464fc \
                    file://vendor/src/github.com/mitchellh/go-ps/LICENSE.md=
;md5=3D56da355a12d4821cda57b8f23ec34bc4 \
                    file://vendor/src/github.com/mitchellh/go-homedir/LICEN=
SE;md5=3D3f7765c3d4f58e1f84c4313cecf0f5bd \
                    file://vendor/src/github.com/gorhill/cronexpr/GPLv3;md5=
=3Df3d2b3f33b4cee4675268fdb8e76ca32 \
                    file://vendor/src/github.com/gorilla/websocket/LICENSE;=
md5=3Dc007b54a1743d596f46b2748d9f8c044 \
                    file://vendor/src/github.com/lsegal/gucumber/LICENSE.tx=
t;md5=3D5703931463421d2c0d877acd6e36049e \
                    file://vendor/src/github.com/imdario/mergo/LICENSE;md5=
=3Dff13e03bb57bf9c52645f2f942afa28b \
                    file://vendor/src/github.com/imdario/mergo/testdata/lic=
ense.yml;md5=3D2b1121304f02116b8f95c8b3fed0f258 \
                    file://vendor/src/github.com/carlescere/scheduler/LICEN=
SE;md5=3Db703b4a3f1096a4b6c00522ba2dd9cd3 \
                    file://vendor/src/github.com/go-yaml/yaml/LICENSE;md5=
=3D6964839e54f4fefcdae13f22b92d0fbb \
                    file://vendor/src/github.com/go-yaml/yaml/LICENSE.libya=
ml;md5=3Dd0b68be4a2dc957aaf09144970bc6696 \
                    file://vendor/src/github.com/jmespath/go-jmespath/LICEN=
SE;md5=3D9abfa8353fce3f2cb28364e1e9016852 \
                    file://vendor/src/github.com/xtaci/smux/LICENSE;md5=3D4=
f428bd6659d07efca179a1ea44b3cc1 \
                    file://vendor/src/github.com/gabs/LICENSE;md5=3D407c129=
d63c240b92eb245e25f74995e \
                    file://vendor/src/github.com/cihub/seelog/LICENSE.txt;m=
d5=3D981ed23d3733a4b1505510215fc9d77f \
                    file://vendor/src/github.com/pborman/ansi/LICENSE;md5=
=3Dd8f14631a6e5da377545cfaed3b67f55 \
                    file://vendor/src/github.com/cenkalti/backoff/LICENSE;m=
d5=3D1571d94433e3f3aa05267efd4dbea68b \
                    file://vendor/src/github.com/jbenet/go-context/LICENSE;=
md5=3D62cacd6ebb7e5424324f85f9c3cc81b2 \
                    file://vendor/src/github.com/aws/aws-sdk-go/LICENSE.txt=
;md5=3D3b83ef96387f14655fc854ddc3c6bd57 \
                    file://vendor/src/github.com/aws/aws-sdk-go/vendor/gith=
ub.com/jmespath/go-jmespath/LICENSE;md5=3D9abfa8353fce3f2cb28364e1e9016852 =
\
                    file://vendor/src/github.com/aws/aws-sdk-go/awsmigrate/=
awsmigrate-renamer/vendor/golang.org/x/tools/LICENSE;md5=3D5d4950ecb7b26d2c=
5e4e7b4e0dd74707 \
                    file://vendor/src/github.com/google/go-querystring/LICE=
NSE;md5=3D29f156828ca5f2df0d1c12543a75f12a \
                    file://vendor/src/github.com/go-ini/ini/LICENSE;md5=3D1=
9cbd64715b51267a47bf3750cc6a8a5 \
                    file://vendor/src/github.com/Workiva/go-datastructures/=
LICENSE;md5=3D175792518e4ac015ab6696d16c4f607e \
                    file://vendor/src/github.com/twinj/uuid/LICENSE;md5=3D8=
461bef24227ea497f2272793bf82c36 \
                    file://vendor/src/github.com/emirpasic/gods/LICENSE;md5=
=3Dfedf3d71a271b921fbaa2734cfbed74c \
                    file://vendor/src/github.com/stretchr/testify/LICENCE.t=
xt;md5=3D39cd1d751bc25944831de86496e3cf68 \
                    file://vendor/src/github.com/stretchr/testify/LICENSE;m=
d5=3D39cd1d751bc25944831de86496e3cf68 \
                    file://vendor/src/github.com/stretchr/testify/vendor/gi=
thub.com/davecgh/go-spew/LICENSE;md5=3D8bc888171b6c073957745dfa153bd402 \
                    file://vendor/src/github.com/stretchr/testify/vendor/gi=
thub.com/stretchr/objx/LICENSE.md;md5=3D21e79cfe7201b9b64535bfae0895795b \
                    file://vendor/src/github.com/stretchr/testify/vendor/gi=
thub.com/pmezard/go-difflib/LICENSE;md5=3De9a2ebb8de779a07500ddecca806145e =
\
                    file://vendor/src/github.com/stretchr/objx/LICENSE.md;m=
d5=3D21e79cfe7201b9b64535bfae0895795b \
                    file://vendor/src/github.com/go-github/LICENSE;md5=3D1e=
963b0e87e58eede84916a77106415c \
                    file://vendor/src/github.com/go-github/github/licenses.=
go;md5=3D762a27bcda98d46079fd76d79290e44c \
                    file://vendor/src/github.com/go-github/github/licenses_=
test.go;md5=3Db66eebb6bd9e0f1ace3a77af0e0ae81d \
                    file://vendor/src/github.com/Microsoft/go-winio/LICENSE=
;md5=3D69205ff73858f2c22b2ca135b557e8ef \
                    file://vendor/src/github.com/Microsoft/go-winio/archive=
/tar/LICENSE;md5=3D591778525c869cdde0ab5a1bf283cd81 \
                    file://vendor/src/github.com/kevinburke/ssh_config/LICE=
NSE;md5=3Dd95a448ae964e953f0a77aeca12959be \
                    file://vendor/src/github.com/shiena/ansicolor/LICENSE;m=
d5=3D96be19b8e8e05f32d4916a4c142b1a34 \
                    file://vendor/src/github.com/sergi/go-diff/APACHE-LICEN=
SE-2.0;md5=3D2ee41112a44fe7014dce33e26468ba93 \
                    file://vendor/src/github.com/sergi/go-diff/LICENSE;md5=
=3D16f703825b70b736d741a46be315b0d9 \
                    file://vendor/src/github.com/fsnotify/fsnotify/LICENSE;=
md5=3Dc38914c9a7ab03bb2b96d4baaee10769 \
                    file://vendor/src/github.com/pmezard/go-difflib/LICENSE=
;md5=3De9a2ebb8de779a07500ddecca806145e \
                    file://vendor/src/github.com/go-git/go-billy/LICENSE;md=
5=3D7b6086dcb6977f0ca57a7c47167999e7 \
                    file://vendor/src/github.com/go-git/go-git/LICENSE;md5=
=3Dcd19105b8dee6a326c424d3112aaedd6 \
                    file://vendor/src/github.com/go-git/gcfg/LICENSE;md5=3D=
13cea479df204c85485b5db6eb1bc9d5 \
                    file://vendor/src/github.com/coreos/go-semver/LICENSE;m=
d5=3D3b83ef96387f14655fc854ddc3c6bd57 \
                    file://vendor/src/github.com/nightlyone/lockfile/LICENS=
E;md5=3Da5e270dce65c71be8721c33b2602e514 \
                    file://vendor/src/github.com/hectane/go-acl/LICENSE.txt=
;md5=3D8756710788b01c015748ce43610c9bc9 \
                    file://vendor/src/go.nanomsg.org/mangos/v3/LICENSE;md5=
=3D3b83ef96387f14655fc854ddc3c6bd57 \
                    file://vendor/src/gopkg.in/warnings.v0/LICENSE;md5=3Dc6=
775875c9d604beb22447dfae3d7049 \
                    file://Tools/src/LICENSE;md5=3Da99d2256512b26ff62aa9a2f=
16acd1ed \
                    file://Tools/src/insert_license.sh;md5=3D184f0c8d471a8d=
19d7b134f3a27d490d"

GO_IMPORT =3D "github.com/aws/amazon-ssm-agent"
SRC_URI =3D "git://github.com/aws/amazon-ssm-agent.git;protocol=3Dhttps;bra=
nch=3Dmaster"

# Modify these as desired
PV =3D "3.0.0.0+git${SRCPV}"
SRCREV =3D "a62919edde2dccc0b84044d55d1b863ebc7baf00"

S =3D "${WORKDIR}/git"

# NOTE: this is a Makefile-only piece of software, so we cannot generate mu=
ch of the
# recipe automatically - you will need to examine the Makefile yourself and=
 ensure
# that the appropriate arguments are passed in.

SYSTEMD_AUTO_ENABLE =3D "enable"

inherit go systemd

do_compile () {
        # You will almost certainly need to add additional arguments here
        ${GO} build -trimpath -o ${B}/amazon-ssm-agent -v core/agent.go cor=
e/agent_unix.go core/agent_parser.go

        ${GO} build -trimpath -o ${B}/ssm-agent-worker -v agent/agent.go ag=
ent/agent_unix.go agent/agent_parser.go

        ${GO} build -trimpath -o ${B}/updater -v agent/update/updater/updat=
er.go agent/update/updater/updater_unix.go

        ${GO} build -trimpath -o ${B}/ssm-cli -v agent/cli-main/cli-main.go

        ${GO} build -trimpath -o ${B}/ssm-document-worker -v agent/framewor=
k/processor/executer/outofproc/worker/main.go

        ${GO} build -trimpath -o ${B}/ssm-session-logger -v agent/session/l=
ogging/main.go

        ${GO} build -trimpath -o ${B}/ssm-session-worker -v agent/framework=
/processor/executer/outofproc/sessionworker/main.go

        ${GO} build -trimpath -o ${B}/ssm-setup-cli -v agent/setupcli/setup=
cli.go
}

do_install () {
        # NOTE: unable to determine what to put here - there is a Makefile =
but no
        # target named "install", so you will need to define this yourself
        install -d ${D}${bindir}/
        install -m 755 amazon-ssm-agent ${D}${bindir}/
        install -m 755 ssm-agent-worker ${D}${bindir}/
        install -m 755 updater ${D}${bindir}/
        install -m 755 ssm-cli ${D}${bindir}/
        install -m 755 ssm-document-worker ${D}${bindir}/
        install -m 755 ssm-session-logger ${D}${bindir}/
        install -m 755 ssm-session-worker ${D}${bindir}/
        install -m 755 ssm-setup-cli ${D}${bindir}/

        install -d ${D}/etc/amazon/ssm
        install -m 644 ${S}/src/${GO_IMPORT}/seelog_unix.xml ${D}/etc/amazo=
n/ssm/seelog.xml
        install -d ${D}${systemd_unitdir}/system/
        install -m 644 ${S}/src/${GO_IMPORT}/packaging/linux/amazon-ssm-age=
nt.service ${D}${systemd_unitdir}/system/amazon-ssm-agent.service
}

FILES_${PN} =3D " /usr/bin"
INSANE_SKIP:${PN} +=3D "already-stripped"

SYSTEMD_SERVICE:${PN} =3D "amazon-ssm-agent.service"
```


#### The Error

The errors that are show are regarding the Licences and i've pasted a quick=
 snippet below.

```

ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-github/gith=
ub/licenses.go [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-github/gith=
ub/licenses_test.go [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/Microsoft/go-w=
inio/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/Microsoft/go-w=
inio/archive/tar/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/kevinburke/ssh=
_config/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/shiena/ansicol=
or/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/sergi/go-diff/=
APACHE-LICENSE-2.0 [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/sergi/go-diff/=
LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/fsnotify/fsnot=
ify/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/pmezard/go-dif=
flib/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-git/go-bill=
y/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-git/go-git/=
LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-git/gcfg/LI=
CENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/coreos/go-semv=
er/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/nightlyone/loc=
kfile/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/hectane/go-acl=
/LICENSE.txt [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/go.nanomsg.org/mangos/v3/=
LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/gopkg.in/warnings.v0/LICE=
NSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/Tools/src/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/Tools/src/insert_license.sh [license=
-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: F=
atal QA errors found, failing task.
ERROR: Logfile of failure stored in: /home/ubuntu/workplace/poky/build/tmp/=
work/corei7-64-poky-linux/amazon-ssm-agent/3.0.0.0+gitAUTOINC+a62919edde-r0=
/temp/log.do_populate_lic.3057694
ERROR: Task (/home/ubuntu/workplace/poky/meta-ottoman/recipes-core/amazon-s=
sm-agent/amazon-ssm-agent_3.0.0.bb:do_populate_lic) failed with exit code '=
1'
```

#### Things I've tried
- `bitbake -c clean amazon-ssm-agent`
- `bitbake -c cleanall amazon-ssm-agent`

Any help is appreciated.

--saSwtIDs5OR6X1AduKYS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>So I'm trying to build my recipe and it continuously fails at the <code>=
do_populate_lic()</code> phase. I've pasted my recipe file.</p>
<h4>The Source</h4>
<pre class=3D"prettyprint"><code class=3D"language-unknown"># Recipe create=
d by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guess=
es - it is
# your responsibility to verify that the values are complete and correct.
#
# The following license files were not able to be identified and are
# represented as &#34;Unknown&#34; below, you will need to check them yours=
elf:
#   vendor/src/golang.org/x/sync/LICENSE
#   vendor/src/golang.org/x/oauth2/LICENSE
#   vendor/src/golang.org/x/crypto/LICENSE
#   vendor/src/golang.org/x/sys/LICENSE
#   vendor/src/golang.org/x/net/LICENSE
#   vendor/src/github.com/davecgh/go-spew/LICENSE
#   vendor/src/github.com/xanzy/ssh-agent/LICENSE
#   vendor/src/github.com/gorhill/cronexpr/GPLv3
#   vendor/src/github.com/gorilla/websocket/LICENSE
#   vendor/src/github.com/imdario/mergo/LICENSE
#   vendor/src/github.com/imdario/mergo/testdata/license.yml
#   vendor/src/github.com/go-yaml/yaml/LICENSE
#   vendor/src/github.com/go-yaml/yaml/LICENSE.libyaml
#   vendor/src/github.com/jmespath/go-jmespath/LICENSE
#   vendor/src/github.com/cihub/seelog/LICENSE.txt
#   vendor/src/github.com/pborman/ansi/LICENSE
#   vendor/src/github.com/aws/aws-sdk-go/vendor/github.com/jmespath/go-jmes=
path/LICENSE
#   vendor/src/github.com/aws/aws-sdk-go/awsmigrate/awsmigrate-renamer/vend=
or/golang.org/x/tools/LICENSE
#   vendor/src/github.com/google/go-querystring/LICENSE
#   vendor/src/github.com/go-ini/ini/LICENSE
#   vendor/src/github.com/Workiva/go-datastructures/LICENSE
#   vendor/src/github.com/emirpasic/gods/LICENSE
#   vendor/src/github.com/stretchr/testify/LICENCE.txt
#   vendor/src/github.com/stretchr/testify/LICENSE
#   vendor/src/github.com/stretchr/testify/vendor/github.com/davecgh/go-spe=
w/LICENSE
#   vendor/src/github.com/stretchr/testify/vendor/github.com/stretchr/objx/=
LICENSE.md
#   vendor/src/github.com/stretchr/testify/vendor/github.com/pmezard/go-dif=
flib/LICENSE
#   vendor/src/github.com/stretchr/objx/LICENSE.md
#   vendor/src/github.com/go-github/LICENSE
#   vendor/src/github.com/go-github/github/licenses.go
#   vendor/src/github.com/go-github/github/licenses_test.go
#   vendor/src/github.com/Microsoft/go-winio/archive/tar/LICENSE
#   vendor/src/github.com/kevinburke/ssh_config/LICENSE
#   vendor/src/github.com/sergi/go-diff/APACHE-LICENSE-2.0
#   vendor/src/github.com/fsnotify/fsnotify/LICENSE
#   vendor/src/github.com/pmezard/go-difflib/LICENSE
#   vendor/src/github.com/go-git/go-billy/LICENSE
#   vendor/src/github.com/go-git/go-git/LICENSE
#   vendor/src/github.com/go-git/gcfg/LICENSE
#   vendor/src/gopkg.in/warnings.v0/LICENSE
#   Tools/src/LICENSE
#   Tools/src/insert_license.sh
#
# NOTE: multiple licenses have been detected; they have been separated with=
 &amp;
# in the LICENSE value for now since it is a reasonable assumption that all
# of the licenses apply. If instead there is a choice between the multiple
# licenses then you should change the value to separate the licenses with |
# instead of &amp;. If there is any doubt, check the accompanying documenta=
tion
# to determine which situation is applicable.
LICENSE =3D &#34;Apache-2.0 &amp; Unknown &amp; MIT&#34;
LIC_FILES_CHKSUM =3D &#34;file://LICENSE;md5=3D3b83ef96387f14655fc854ddc3c6=
bd57 \
                    file://vendor/src/golang.org/x/sync/LICENSE;md5=3D5d495=
0ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/oauth2/LICENSE;md5=3D5d4=
950ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/crypto/LICENSE;md5=3D5d4=
950ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/sys/LICENSE;md5=3D5d4950=
ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/golang.org/x/net/LICENSE;md5=3D5d4950=
ecb7b26d2c5e4e7b4e0dd74707 \
                    file://vendor/src/github.com/davecgh/go-spew/LICENSE;md=
5=3D8bc888171b6c073957745dfa153bd402 \
                    file://vendor/src/github.com/kr/pty/License;md5=3D93958=
070863d769117fa33b129020050 \
                    file://vendor/src/github.com/xanzy/ssh-agent/LICENSE;md=
5=3Dfa818a259cbed7ce8bc2a22d35a464fc \
                    file://vendor/src/github.com/mitchellh/go-ps/LICENSE.md=
;md5=3D56da355a12d4821cda57b8f23ec34bc4 \
                    file://vendor/src/github.com/mitchellh/go-homedir/LICEN=
SE;md5=3D3f7765c3d4f58e1f84c4313cecf0f5bd \
                    file://vendor/src/github.com/gorhill/cronexpr/GPLv3;md5=
=3Df3d2b3f33b4cee4675268fdb8e76ca32 \
                    file://vendor/src/github.com/gorilla/websocket/LICENSE;=
md5=3Dc007b54a1743d596f46b2748d9f8c044 \
                    file://vendor/src/github.com/lsegal/gucumber/LICENSE.tx=
t;md5=3D5703931463421d2c0d877acd6e36049e \
                    file://vendor/src/github.com/imdario/mergo/LICENSE;md5=
=3Dff13e03bb57bf9c52645f2f942afa28b \
                    file://vendor/src/github.com/imdario/mergo/testdata/lic=
ense.yml;md5=3D2b1121304f02116b8f95c8b3fed0f258 \
                    file://vendor/src/github.com/carlescere/scheduler/LICEN=
SE;md5=3Db703b4a3f1096a4b6c00522ba2dd9cd3 \
                    file://vendor/src/github.com/go-yaml/yaml/LICENSE;md5=
=3D6964839e54f4fefcdae13f22b92d0fbb \
                    file://vendor/src/github.com/go-yaml/yaml/LICENSE.libya=
ml;md5=3Dd0b68be4a2dc957aaf09144970bc6696 \
                    file://vendor/src/github.com/jmespath/go-jmespath/LICEN=
SE;md5=3D9abfa8353fce3f2cb28364e1e9016852 \
                    file://vendor/src/github.com/xtaci/smux/LICENSE;md5=3D4=
f428bd6659d07efca179a1ea44b3cc1 \
                    file://vendor/src/github.com/gabs/LICENSE;md5=3D407c129=
d63c240b92eb245e25f74995e \
                    file://vendor/src/github.com/cihub/seelog/LICENSE.txt;m=
d5=3D981ed23d3733a4b1505510215fc9d77f \
                    file://vendor/src/github.com/pborman/ansi/LICENSE;md5=
=3Dd8f14631a6e5da377545cfaed3b67f55 \
                    file://vendor/src/github.com/cenkalti/backoff/LICENSE;m=
d5=3D1571d94433e3f3aa05267efd4dbea68b \
                    file://vendor/src/github.com/jbenet/go-context/LICENSE;=
md5=3D62cacd6ebb7e5424324f85f9c3cc81b2 \
                    file://vendor/src/github.com/aws/aws-sdk-go/LICENSE.txt=
;md5=3D3b83ef96387f14655fc854ddc3c6bd57 \
                    file://vendor/src/github.com/aws/aws-sdk-go/vendor/gith=
ub.com/jmespath/go-jmespath/LICENSE;md5=3D9abfa8353fce3f2cb28364e1e9016852 =
\
                    file://vendor/src/github.com/aws/aws-sdk-go/awsmigrate/=
awsmigrate-renamer/vendor/golang.org/x/tools/LICENSE;md5=3D5d4950ecb7b26d2c=
5e4e7b4e0dd74707 \
                    file://vendor/src/github.com/google/go-querystring/LICE=
NSE;md5=3D29f156828ca5f2df0d1c12543a75f12a \
                    file://vendor/src/github.com/go-ini/ini/LICENSE;md5=3D1=
9cbd64715b51267a47bf3750cc6a8a5 \
                    file://vendor/src/github.com/Workiva/go-datastructures/=
LICENSE;md5=3D175792518e4ac015ab6696d16c4f607e \
                    file://vendor/src/github.com/twinj/uuid/LICENSE;md5=3D8=
461bef24227ea497f2272793bf82c36 \
                    file://vendor/src/github.com/emirpasic/gods/LICENSE;md5=
=3Dfedf3d71a271b921fbaa2734cfbed74c \
                    file://vendor/src/github.com/stretchr/testify/LICENCE.t=
xt;md5=3D39cd1d751bc25944831de86496e3cf68 \
                    file://vendor/src/github.com/stretchr/testify/LICENSE;m=
d5=3D39cd1d751bc25944831de86496e3cf68 \
                    file://vendor/src/github.com/stretchr/testify/vendor/gi=
thub.com/davecgh/go-spew/LICENSE;md5=3D8bc888171b6c073957745dfa153bd402 \
                    file://vendor/src/github.com/stretchr/testify/vendor/gi=
thub.com/stretchr/objx/LICENSE.md;md5=3D21e79cfe7201b9b64535bfae0895795b \
                    file://vendor/src/github.com/stretchr/testify/vendor/gi=
thub.com/pmezard/go-difflib/LICENSE;md5=3De9a2ebb8de779a07500ddecca806145e =
\
                    file://vendor/src/github.com/stretchr/objx/LICENSE.md;m=
d5=3D21e79cfe7201b9b64535bfae0895795b \
                    file://vendor/src/github.com/go-github/LICENSE;md5=3D1e=
963b0e87e58eede84916a77106415c \
                    file://vendor/src/github.com/go-github/github/licenses.=
go;md5=3D762a27bcda98d46079fd76d79290e44c \
                    file://vendor/src/github.com/go-github/github/licenses_=
test.go;md5=3Db66eebb6bd9e0f1ace3a77af0e0ae81d \
                    file://vendor/src/github.com/Microsoft/go-winio/LICENSE=
;md5=3D69205ff73858f2c22b2ca135b557e8ef \
                    file://vendor/src/github.com/Microsoft/go-winio/archive=
/tar/LICENSE;md5=3D591778525c869cdde0ab5a1bf283cd81 \
                    file://vendor/src/github.com/kevinburke/ssh_config/LICE=
NSE;md5=3Dd95a448ae964e953f0a77aeca12959be \
                    file://vendor/src/github.com/shiena/ansicolor/LICENSE;m=
d5=3D96be19b8e8e05f32d4916a4c142b1a34 \
                    file://vendor/src/github.com/sergi/go-diff/APACHE-LICEN=
SE-2.0;md5=3D2ee41112a44fe7014dce33e26468ba93 \
                    file://vendor/src/github.com/sergi/go-diff/LICENSE;md5=
=3D16f703825b70b736d741a46be315b0d9 \
                    file://vendor/src/github.com/fsnotify/fsnotify/LICENSE;=
md5=3Dc38914c9a7ab03bb2b96d4baaee10769 \
                    file://vendor/src/github.com/pmezard/go-difflib/LICENSE=
;md5=3De9a2ebb8de779a07500ddecca806145e \
                    file://vendor/src/github.com/go-git/go-billy/LICENSE;md=
5=3D7b6086dcb6977f0ca57a7c47167999e7 \
                    file://vendor/src/github.com/go-git/go-git/LICENSE;md5=
=3Dcd19105b8dee6a326c424d3112aaedd6 \
                    file://vendor/src/github.com/go-git/gcfg/LICENSE;md5=3D=
13cea479df204c85485b5db6eb1bc9d5 \
                    file://vendor/src/github.com/coreos/go-semver/LICENSE;m=
d5=3D3b83ef96387f14655fc854ddc3c6bd57 \
                    file://vendor/src/github.com/nightlyone/lockfile/LICENS=
E;md5=3Da5e270dce65c71be8721c33b2602e514 \
                    file://vendor/src/github.com/hectane/go-acl/LICENSE.txt=
;md5=3D8756710788b01c015748ce43610c9bc9 \
                    file://vendor/src/go.nanomsg.org/mangos/v3/LICENSE;md5=
=3D3b83ef96387f14655fc854ddc3c6bd57 \
                    file://vendor/src/gopkg.in/warnings.v0/LICENSE;md5=3Dc6=
775875c9d604beb22447dfae3d7049 \
                    file://Tools/src/LICENSE;md5=3Da99d2256512b26ff62aa9a2f=
16acd1ed \
                    file://Tools/src/insert_license.sh;md5=3D184f0c8d471a8d=
19d7b134f3a27d490d&#34;

GO_IMPORT =3D &#34;github.com/aws/amazon-ssm-agent&#34;
SRC_URI =3D &#34;git://github.com/aws/amazon-ssm-agent.git;protocol=3Dhttps=
;branch=3Dmaster&#34;

# Modify these as desired
PV =3D &#34;3.0.0.0+git${SRCPV}&#34;
SRCREV =3D &#34;a62919edde2dccc0b84044d55d1b863ebc7baf00&#34;

S =3D &#34;${WORKDIR}/git&#34;

# NOTE: this is a Makefile-only piece of software, so we cannot generate mu=
ch of the
# recipe automatically - you will need to examine the Makefile yourself and=
 ensure
# that the appropriate arguments are passed in.

SYSTEMD_AUTO_ENABLE =3D &#34;enable&#34;

inherit go systemd

do_compile () {
        # You will almost certainly need to add additional arguments here
        ${GO} build -trimpath -o ${B}/amazon-ssm-agent -v core/agent.go cor=
e/agent_unix.go core/agent_parser.go

        ${GO} build -trimpath -o ${B}/ssm-agent-worker -v agent/agent.go ag=
ent/agent_unix.go agent/agent_parser.go

        ${GO} build -trimpath -o ${B}/updater -v agent/update/updater/updat=
er.go agent/update/updater/updater_unix.go

        ${GO} build -trimpath -o ${B}/ssm-cli -v agent/cli-main/cli-main.go

        ${GO} build -trimpath -o ${B}/ssm-document-worker -v agent/framewor=
k/processor/executer/outofproc/worker/main.go

        ${GO} build -trimpath -o ${B}/ssm-session-logger -v agent/session/l=
ogging/main.go

        ${GO} build -trimpath -o ${B}/ssm-session-worker -v agent/framework=
/processor/executer/outofproc/sessionworker/main.go

        ${GO} build -trimpath -o ${B}/ssm-setup-cli -v agent/setupcli/setup=
cli.go
}

do_install () {
        # NOTE: unable to determine what to put here - there is a Makefile =
but no
        # target named &#34;install&#34;, so you will need to define this y=
ourself
        install -d ${D}${bindir}/
        install -m 755 amazon-ssm-agent ${D}${bindir}/
        install -m 755 ssm-agent-worker ${D}${bindir}/
        install -m 755 updater ${D}${bindir}/
        install -m 755 ssm-cli ${D}${bindir}/
        install -m 755 ssm-document-worker ${D}${bindir}/
        install -m 755 ssm-session-logger ${D}${bindir}/
        install -m 755 ssm-session-worker ${D}${bindir}/
        install -m 755 ssm-setup-cli ${D}${bindir}/

        install -d ${D}/etc/amazon/ssm
        install -m 644 ${S}/src/${GO_IMPORT}/seelog_unix.xml ${D}/etc/amazo=
n/ssm/seelog.xml
        install -d ${D}${systemd_unitdir}/system/
        install -m 644 ${S}/src/${GO_IMPORT}/packaging/linux/amazon-ssm-age=
nt.service ${D}${systemd_unitdir}/system/amazon-ssm-agent.service
}

FILES_${PN} =3D &#34; /usr/bin&#34;
INSANE_SKIP:${PN} +=3D &#34;already-stripped&#34;

SYSTEMD_SERVICE:${PN} =3D &#34;amazon-ssm-agent.service&#34;
</code></pre><h4>The Error</h4>

<p>The errors that are show are regarding the Licences and i've pasted a qu=
ick snippet below.</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-github/gith=
ub/licenses.go [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-github/gith=
ub/licenses_test.go [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/Microsoft/go-w=
inio/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/Microsoft/go-w=
inio/archive/tar/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/kevinburke/ssh=
_config/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/shiena/ansicol=
or/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/sergi/go-diff/=
APACHE-LICENSE-2.0 [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/sergi/go-diff/=
LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/fsnotify/fsnot=
ify/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/pmezard/go-dif=
flib/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-git/go-bill=
y/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-git/go-git/=
LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/go-git/gcfg/LI=
CENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/coreos/go-semv=
er/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/nightlyone/loc=
kfile/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/github.com/hectane/go-acl=
/LICENSE.txt [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/go.nanomsg.org/mangos/v3/=
LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/vendor/src/gopkg.in/warnings.v0/LICE=
NSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/Tools/src/LICENSE [license-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: Q=
A Issue: amazon-ssm-agent: LIC_FILES_CHKSUM points to an invalid file: /hom=
e/ubuntu/workplace/poky/build/tmp/work/corei7-64-poky-linux/amazon-ssm-agen=
t/3.0.0.0+gitAUTOINC+a62919edde-r0/git/Tools/src/insert_license.sh [license=
-checksum]
ERROR: amazon-ssm-agent-3.0.0.0+gitAUTOINC+a62919edde-r0 do_populate_lic: F=
atal QA errors found, failing task.
ERROR: Logfile of failure stored in: /home/ubuntu/workplace/poky/build/tmp/=
work/corei7-64-poky-linux/amazon-ssm-agent/3.0.0.0+gitAUTOINC+a62919edde-r0=
/temp/log.do_populate_lic.3057694
ERROR: Task (/home/ubuntu/workplace/poky/meta-ottoman/recipes-core/amazon-s=
sm-agent/amazon-ssm-agent_3.0.0.bb:do_populate_lic) failed with exit code &=
#39;1&#39;
</code></pre><h4>Things I've tried</h4>

<ul>
<li><code>bitbake -c clean amazon-ssm-agent</code></li>
<li><code>bitbake -c cleanall amazon-ssm-agent</code></li>
</ul>

<p>Any help is appreciated.</p>

--saSwtIDs5OR6X1AduKYS--

