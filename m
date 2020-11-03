Subject: Re: #yocto -zeus
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Nov 2020 07:54:00 -0800
References: <8252.1604418365573670594@lists.yoctoproject.org>
In-Reply-To: <8252.1604418365573670594@lists.yoctoproject.org>
Message-ID: <8252.1604418840646858115@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="y3CT5EHy3Dv3ZCLUiszY"

--y3CT5EHy3Dv3ZCLUiszY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When using ./meta/recipes-core/ovmf/ ovmf_git.bb ( http://ovmf_git.bb/ ) as=
 provided by Yocto I get the following error...

WARNING: ovmf-native-edk2-stable201905-r0 do_fetch: Failed to fetch URL gi=
tsm://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dgit, attempt=
ing MIRRORS if available
ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure: Fetch c=
ommand export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export=
 DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-0IBbgYesFx,guid=3D89=
f54cc5924b467e7bbcf2c15fa1469b"; export SSH_AGENT_PID=3D"5204"; export SSH_=
AUTH_SOCK=3D"/run/user/11588/keyring/ssh"; export PATH=3D"/disk0/scratch/sm=
onsees/yocto/workspace_3/poky/scripts/native-intercept:/disk0/scratch/smons=
ees/yocto/workspace_3/poky/scripts:/disk0/scratch/smonsees/yocto/workspace_=
3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native=
/edk2-stable201905-r0/recipe-sysroot-native/usr/bin/x86_64-linux:/disk0/scr=
atch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp=
/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/u=
sr/bin:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds=
/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe=
-sysroot-native/usr/sbin:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stab=
le201905-r0/recipe-sysroot-native/usr/bin:/disk0/scratch/smonsees/yocto/wor=
kspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf=
-native/edk2-stable201905-r0/recipe-sysroot-native/sbin:/disk0/scratch/smon=
sees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86=
_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/bin:/disk0=
/scratch/smonsees/yocto/workspace_3/poky/bitbake/bin:/disk0/scratch/smonsee=
s/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/hosttools";=
 export HOME=3D"/ede/smonsees"; LANG=3DC git -c core.fsyncobjectfiles=3D0 c=
lone --bare --mirror git://github.com/tianocore/edk2.git /disk0/scratch/smo=
nsees/yocto/workspace_3/downloads/intel/git2/github.com.tianocore.edk2.git =
--progress failed with exit code 128, output:
Cloning into bare repository '/disk0/scratch/smonsees/yocto/workspace_3/do=
wnloads/intel/git2/github.com.tianocore.edk2.git'...

fatal: unable to connect to github.com:
github.com[0: 140.82.112.4]: errno=3DConnection timed out

ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure for URL:=
 'gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=3Dgit'. Un=
able to fetch URL from any source.
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspa=
ce_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-nat=
ive/edk2-stable201905-r0/temp/log.do_fetch.21616
ERROR: Task (virtual:native:/disk0/scratch/smonsees/yocto/workspace_3/poky=
/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) failed with exit code '1'

--y3CT5EHy3Dv3ZCLUiszY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>When using ./meta/recipes-core/ovmf/<a href=3D"http://ovmf_git.bb/" targ=
et=3D"_blank" rel=3D"nofollow noopener"><u><span style=3D"color: #0066cc;">=
ovmf_git.bb</span></u></a>&nbsp;as provided by Yocto I get the following er=
ror...<br /><br /><br />WARNING: ovmf-native-edk2-stable201905-r0 do_fetch:=
 Failed to fetch URL gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;=
protocol=3Dgit, attempting MIRRORS if available<br />ERROR: ovmf-native-edk=
2-stable201905-r0 do_fetch: Fetcher failure: Fetch command export PSEUDO_DI=
SABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export DBUS_SESSION_BUS_ADDRE=
SS=3D"unix:abstract=3D/tmp/dbus-0IBbgYesFx,guid=3D89f54cc5924b467e7bbcf2c15=
fa1469b"; export SSH_AGENT_PID=3D"5204"; export SSH_AUTH_SOCK=3D"/run/user/=
11588/keyring/ssh"; export PATH=3D"/disk0/scratch/smonsees/yocto/workspace_=
3/poky/scripts/native-intercept:/disk0/scratch/smonsees/yocto/workspace_3/p=
oky/scripts:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/b=
uilds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/r=
ecipe-sysroot-native/usr/bin/x86_64-linux:/disk0/scratch/smonsees/yocto/wor=
kspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf=
-native/edk2-stable201905-r0/recipe-sysroot-native/usr/bin:/disk0/scratch/s=
monsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/=
x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysroot-native/usr/sbi=
n:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb=
-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0/recipe-sysr=
oot-native/usr/bin:/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-=
limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable2019=
05-r0/recipe-sysroot-native/sbin:/disk0/scratch/smonsees/yocto/workspace_3/=
meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/e=
dk2-stable201905-r0/recipe-sysroot-native/bin:/disk0/scratch/smonsees/yocto=
/workspace_3/poky/bitbake/bin:/disk0/scratch/smonsees/yocto/workspace_3/met=
a-bae/meta-limws/builds/sbcb-default/tmp/hosttools"; export HOME=3D"/ede/sm=
onsees"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror gi=
t://github.com/tianocore/edk2.git /disk0/scratch/smonsees/yocto/workspace_3=
/downloads/intel/git2/github.com.tianocore.edk2.git --progress failed with =
exit code 128, output:<br />Cloning into bare repository '/disk0/scratch/sm=
onsees/yocto/workspace_3/downloads/intel/git2/github.com.tianocore.edk2.git=
'...</p>
<p>fatal: unable to connect to github.com:<br />github.com[0: 140.82.112.4=
]: errno=3DConnection timed out</p>
<p><br />ERROR: ovmf-native-edk2-stable201905-r0 do_fetch: Fetcher failure=
 for URL: 'gitsm://github.com/tianocore/edk2.git;branch=3Dmaster;protocol=
=3Dgit'. Unable to fetch URL from any source.<br />ERROR: Logfile of failu=
re stored in: /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws=
/builds/sbcb-default/tmp/work/x86_64-linux/ovmf-native/edk2-stable201905-r0=
/temp/log.do_fetch.21616<br />ERROR: Task (virtual:native:/disk0/scratch/sm=
onsees/yocto/workspace_3/poky/meta/recipes-core/ovmf/ovmf_git.bb:do_fetch) =
failed with exit code '1'</p>
<p>&nbsp;</p>

--y3CT5EHy3Dv3ZCLUiszY--
