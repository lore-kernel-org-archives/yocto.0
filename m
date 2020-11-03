Subject: Re: #yocto -zeus
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Nov 2020 06:41:46 -0800
References: <VI1PR01MB64625A11D49D0373A1D1D6A9A8100@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB64625A11D49D0373A1D1D6A9A8100@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
Message-ID: <18906.1604414506455858702@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fE2QWjNdkx5r5nUxLCPr"

--fE2QWjNdkx5r5nUxLCPr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Note went and modified ./meta/recipes-core/ovmf/ovmf_git.bb to use "http"..=
.

When I change to use http I get the following error now,=C2=A0NOTE: I see =
the same error with new check sum values every time I update checksums and =
rebuild...

WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Checksum mismatch for =
local file /disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.g=
it
Cleaning and trying again.
WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Renaming /disk0/scratc=
h/smonsees/yocto/workspace_3/downloads/intel/edk2.git to /disk0/scratch/smo=
nsees/yocto/workspace_3/downloads/intel/edk2.git_bad-checksum_e5feebc5dc55e=
02d9d26c3ecce2f696c
WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Checksum failure encou=
ntered with download of https://github.com/tianocore/edk2.git;branch=3Dmast=
er;protocol=3Dhttps - will attempt other sources if available
ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for URL:=
 'https://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps'. =
Checksum mismatch!
File: '/disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git'=
 has md5 checksum e5feebc5dc55e02d9d26c3ecce2f696c when b285f3c0bc1fc983c4c=
3eb2d47fc27bc was expected
File: '/disk0/scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git'=
 has sha256 checksum df09a56b38195dc68d1a83f31287e38669c165eb637739660216bb=
c71aa694af when bb9d1df02a645dcd071d2d0540156be96c3c5a616ef93ff9872bd86b3c3=
5e77e was expected
If this change is expected (e.g. you have upgraded to a new version withou=
t updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] =3D "e5feebc5dc55e02d9d26c3ecce2f696c"
SRC_URI[sha256sum] =3D "df09a56b38195dc68d1a83f31287e38669c165eb6377396602=
16bbc71aa694af"
Otherwise you should retry the download and/or check with upstream to dete=
rmine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for URL:=
 'https://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps'. =
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspa=
ce_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-nat=
ive/edk2-stable201905-r0/temp/log.do_fetch.19694
ERROR: Task (virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky=
/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) failed with exit code '1'

--fE2QWjNdkx5r5nUxLCPr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p><br />Note went and modified ./meta/recipes-core/ovmf/ovmf_git.bb to use=
 "http"...<br /><br />When I change to use http I get the following error n=
ow,&nbsp;NOTE: I see the same error with new check sum values every time I =
update checksums and rebuild...<br /><br />WARNING: ovmf-native-edk2-stable=
201905-r0 do_fetch: Checksum mismatch for local file /disk0/scratch/smonsee=
s/yocto/workspace_3/downloads/intel/edk2.git<br />Cleaning and trying again=
.<br />WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Renaming /disk0/=
scratch/smonsees/yocto/workspace_3/downloads/intel/edk2.git to /disk0/scrat=
ch/smonsees/yocto/workspace_3/downloads/intel/edk2.git_bad-checksum_e5feebc=
5dc55e02d9d26c3ecce2f696c<br />WARNING: ovmf-native-edk2-stable201905-r0 do=
_fetch: Checksum failure encountered with download of <a href=3D"https://gi=
thub.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps">https://githu=
b.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps</a> - will attemp=
t other sources if available<br />ERROR: ovmf-native-edk2-stable201905-r0 d=
o_fetch: Fetcher failure for URL: 'https://github.com/tianocore/edk2.git;br=
anch=3Dmaster;protocol=3Dhttps'. Checksum mismatch!<br />File: '/disk0/scra=
tch/smonsees/yocto/workspace_3/downloads/intel/edk2.git' has md5 checksum e=
5feebc5dc55e02d9d26c3ecce2f696c when b285f3c0bc1fc983c4c3eb2d47fc27bc was e=
xpected<br />File: '/disk0/scratch/smonsees/yocto/workspace_3/downloads/int=
el/edk2.git' has sha256 checksum df09a56b38195dc68d1a83f31287e38669c165eb63=
7739660216bbc71aa694af when bb9d1df02a645dcd071d2d0540156be96c3c5a616ef93ff=
9872bd86b3c35e77e was expected<br />If this change is expected (e.g. you ha=
ve upgraded to a new version without updating the checksums) then you can u=
se these lines within the recipe:<br />SRC_URI[md5sum] =3D "e5feebc5dc55e02=
d9d26c3ecce2f696c"<br />SRC_URI[sha256sum] =3D "df09a56b38195dc68d1a83f3128=
7e38669c165eb637739660216bbc71aa694af"<br />Otherwise you should retry the =
download and/or check with upstream to determine if the file has become cor=
rupted or otherwise unexpectedly modified.</p>
<p>ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for U=
RL: 'https://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dhttps=
'. Unable to fetch URL from any source.<br />ERROR: Logfile of failure stor=
ed in: /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds=
/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/temp/l=
og.do_fetch.19694<br />ERROR: Task (virtual:native:/disk0/scratch/smonsees/=
yocto/workspace_3/poky/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) failed =
with exit code '1'</p>

--fE2QWjNdkx5r5nUxLCPr--
