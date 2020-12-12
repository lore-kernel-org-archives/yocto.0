Subject: git-lfs #dunfell
To: yocto@lists.yoctoproject.org
From: joel.winarske@linux.com
X-Originating-Location: Seattle, Washington, US (71.212.127.60)
X-Originating-Platform: Linux Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 12 Dec 2020 08:37:34 -0800
Message-ID: <ivrx.1607791054895422894.WY4N@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gBzG7p8TIYogwxfx5Kur"

--gBzG7p8TIYogwxfx5Kur
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am seeing problems in git fetcher using a github repo using lfs + ssh in =
dunfell.

I find if I set "lfs=3D0" it still attempts to download the lfs objects an=
d fails.=C2=A0 Same behavior if "lfs=3D1".

SRC_URI =3D "git://git@github.com:/account/cool-thing.git;protocol=3Dssh;l=
fs=3D1;branch=3Dcool_branch"

A suggested workaround by technoweenie here: https://github.com/git-lfs/gi=
t-lfs/issues/1044

Only git clone via ssh works (pulls lfs objects) fine outside of the yocto=
 tree.

Any ideas?

Thanks,
Joel

git-lfs/ 2. 9. 2 (GitHub; linux amd64; go 1. 13. 5 )
git version 2. 25. 1

$ git-lfs filter-process
Error downloading object: cool-thing/app/lib/agl/aarch64/libfmt.a ( 328664=
b ): Smudge error: Error downloading cool-thing/app/lib/agl/aarch64/libfmt.=
a ( 328664b0bd0cad33f28722b9a6ccd5ac9adea4485885bacd35082775e41601d8 ): bat=
ch request: missing protocol: "<unknown>"

missing protocol: "<unknown>"
batch request
github.com/git-lfs/git-lfs/errors.newWrappedError
github.com/git-lfs/git-lfs/errors/types.go: 198
github.com/git-lfs/git-lfs/errors.Wrap
github.com/git-lfs/git-lfs/errors/errors.go: 74
github.com/git-lfs/git-lfs/tq.(*tqClient).Batch
github.com/git-lfs/git-lfs/tq/api.go: 68
github.com/git-lfs/git-lfs/tq.Batch
github.com/git-lfs/git-lfs/tq/api.go: 40
github.com/git-lfs/git-lfs/tq.(*TransferQueue).enqueueAndCollectRetriesFor
github.com/git-lfs/git-lfs/tq/transfer_queue.go: 520
github.com/git-lfs/git-lfs/tq.(*TransferQueue). collectBatches.func1
github.com/git-lfs/git-lfs/tq/transfer_queue.go: 432
runtime.goexit
/usr/lib/go- 1. 13 /src/runtime/asm_amd64.s: 1357
Error downloading cool-thing/app/lib/agl/aarch64/libfmt.a ( 328664b0bd0cad=
33f28722b9a6ccd5ac9adea4485885bacd35082775e41601d8 )
github.com/git-lfs/git-lfs/errors.newWrappedError
github.com/git-lfs/git-lfs/errors/types.go: 198
github.com/git-lfs/git-lfs/errors.Wrapf
github.com/git-lfs/git-lfs/errors/errors.go: 85
github.com/git-lfs/git-lfs/lfs.(*GitFilter).downloadFile
github.com/git-lfs/git-lfs/lfs/gitfilter_smudge.go: 115
github.com/git-lfs/git-lfs/lfs.(*GitFilter).Smudge
github.com/git-lfs/git-lfs/lfs/gitfilter_smudge.go: 76
github.com/git-lfs/git-lfs/commands.smudge
github.com/git-lfs/git-lfs/commands/command_smudge.go: 127
github.com/git-lfs/git-lfs/commands.filterCommand
github.com/git-lfs/git-lfs/commands/command_filter_process.go: 118
github.com/spf13/cobra.(*Command).execute
github.com/spf13/cobra/command.go: 766
github.com/spf13/cobra.(*Command).ExecuteC
github.com/spf13/cobra/command.go: 850
github.com/spf13/cobra.(*Command).Execute
github.com/spf13/cobra/command.go: 800
github.com/git-lfs/git-lfs/commands.Run
github.com/git-lfs/git-lfs/commands/run.go: 97
main.main
github.com/git-lfs/git-lfs/git- lfs.go : 33
runtime.main
/usr/lib/go- 1. 13 /src/runtime/proc.go: 203
runtime.goexit
/usr/lib/go- 1. 13 /src/runtime/asm_amd64.s: 1357
Smudge error
github.com/git-lfs/git-lfs/errors.newWrappedError
github.com/git-lfs/git-lfs/errors/types.go: 198
github.com/git-lfs/git-lfs/errors.NewSmudgeError
github.com/git-lfs/git-lfs/errors/types.go: 284
github.com/git-lfs/git-lfs/lfs.(*GitFilter).Smudge
github.com/git-lfs/git-lfs/lfs/gitfilter_smudge.go: 85
github.com/git-lfs/git-lfs/commands.smudge
github.com/git-lfs/git-lfs/commands/command_smudge.go: 127
github.com/git-lfs/git-lfs/commands.filterCommand
github.com/git-lfs/git-lfs/commands/command_filter_process.go: 118
github.com/spf13/cobra.(*Command).execute
github.com/spf13/cobra/command.go: 766
github.com/spf13/cobra.(*Command).ExecuteC
github.com/spf13/cobra/command.go: 850
github.com/spf13/cobra.(*Command).Execute
github.com/spf13/cobra/command.go: 800
github.com/git-lfs/git-lfs/commands.Run
github.com/git-lfs/git-lfs/commands/run.go: 97
main.main
github.com/git-lfs/git-lfs/git- lfs.go : 33
runtime.main
/usr/lib/go- 1. 13 /src/runtime/proc.go: 203
runtime.goexit
/usr/lib/go- 1. 13 /src/runtime/asm_amd64.s: 1357

Current time in UTC:
2020-12-12 15:41:16

ENV:
LocalWorkingDir=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc/work/aa=
rch64-oe-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0/git
LocalGitDir=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc/work/aarch6=
4-oe-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0/git/.git
LocalGitStorageDir=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc/work=
/aarch64-oe-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0/git/.git
LocalMediaDir=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc/work/aarc=
h64-oe-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0/git/.git/lfs/objects
LocalReferenceDirs=3D
TempDir=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc/work/aarch64-oe=
-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0/git/.git/lfs/tmp
ConcurrentTransfers=3D 3
TusTransfers=3D false
BasicTransfersOnly=3D false
SkipDownloadErrors=3D false
FetchRecentAlways=3D false
FetchRecentRefsDays=3D 7
FetchRecentCommitsDays=3D 0
FetchRecentRefsIncludeRemotes=3D true
PruneOffsetDays=3D 3
PruneVerifyRemoteAlways=3D false
PruneRemoteName=3Dorigin
LfsStorageDir=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc/work/aarc=
h64-oe-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0/git/.git/lfs
AccessDownload=3Dnone
AccessUpload=3Dnone
DownloadTransfers=3Dbasic,lfs-standalon e-f ile
UploadTransfers=3Dbasic,lfs-standalon e-f ile
GIT_CONFIG_PARAMETERS=3D 'core.fsyncobjectfiles=3D0'
GIT_EXEC_PATH=3D/usr/lib/git-core
GIT_PREFIX=3D
GIT_CEILING_DIRECTORIES=3D/b/lv- 0. 1 /apps/apps_proc/poky/build/tmp-glibc=
/work/aarch64-oe-linux/cool-thing/git+AUTOINC+ 3158acc56b -r0

--gBzG7p8TIYogwxfx5Kur
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am seeing problems in git fetcher using a github repo using lfs + ssh in =
dunfell.<br /><br />I find if I set "lfs=3D0" it still attempts to download=
 the lfs objects and fails.&nbsp; Same behavior if "lfs=3D1".<br /><br />SR=
C_URI =3D "git://git@github.com:/account/cool-thing.git;protocol=3Dssh;lfs=
=3D1;branch=3Dcool_branch"<br /><br /><br />A suggested workaround by tech=
noweenie here: <a href=3D"https://github.com/git-lfs/git-lfs/issues/1044" t=
arget=3D"_blank" rel=3D"noopener">https://github.com/git-lfs/git-lfs/issues=
/1044</a><br /><br />Only git clone via ssh works (pulls lfs objects) fine =
outside of the yocto tree. <br /><br /><br />Any ideas?<br /><br />Thanks,<=
br />Joel<br /><br />
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: 'Dro=
id Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'; font-weight: =
normal; font-size: 14px; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #d4d4d4;">git-lfs/</span><span style=3D"color: =
#569cd6;">2</span><span style=3D"color: #d4d4d4;">.</span><span style=3D"co=
lor: #569cd6;">9</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">2</span><span style=3D"color: #d4d4d4;"> (GitHub; lin=
ux amd64; go </span><span style=3D"color: #569cd6;">1</span><span style=3D"=
color: #d4d4d4;">.</span><span style=3D"color: #569cd6;">13</span><span sty=
le=3D"color: #d4d4d4;">.</span><span style=3D"color: #569cd6;">5</span><spa=
n style=3D"color: #d4d4d4;">)</span></div>
<div><span style=3D"color: #d4d4d4;">git version </span><span style=3D"col=
or: #569cd6;">2</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">25</span><span style=3D"color: #d4d4d4;">.</span><spa=
n style=3D"color: #569cd6;">1</span></div>
<br />
<div><span style=3D"color: #d4d4d4;">$ git-lfs filter-process</span></div>
<div><span style=3D"color: #ce9178; font-weight: bold;">Error</span><span =
style=3D"color: #d4d4d4;"> downloading object: cool-thing/app/lib/agl/aarch=
64/libfmt.a (</span><span style=3D"color: #569cd6;">328664b</span><span sty=
le=3D"color: #d4d4d4;">): Smudge </span><span style=3D"color: #ce9178; font=
-weight: bold;">error:</span><span style=3D"color: #d4d4d4;"> </span><span =
style=3D"color: #ce9178; font-weight: bold;">Error</span><span style=3D"col=
or: #d4d4d4;"> downloading cool-thing/app/lib/agl/aarch64/libfmt.a (</span>=
<span style=3D"color: #569cd6;">328664b0bd0cad33f28722b9a6ccd5ac9adea448588=
5bacd35082775e41601d8</span><span style=3D"color: #d4d4d4;">): batch reques=
t: missing protocol: </span><span style=3D"color: #ce9178;">"&lt;unknown&gt=
;"</span></div>
<br />
<div><span style=3D"color: #d4d4d4;">missing protocol: </span><span style=
=3D"color: #ce9178;">"&lt;unknown&gt;"</span></div>
<div><span style=3D"color: #d4d4d4;">batch request</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/errors.new=
WrappedError</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/errors/ty=
pes.go:</span><span style=3D"color: #569cd6;">198</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/errors.Wra=
p</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/errors/er=
rors.go:</span><span style=3D"color: #569cd6;">74</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/tq.(*tqCli=
ent).Batch</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/tq/api.go=
:</span><span style=3D"color: #569cd6;">68</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/tq.Batch</=
span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/tq/api.go=
:</span><span style=3D"color: #569cd6;">40</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/tq.(*Trans=
ferQueue).enqueueAndCollectRetriesFor</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/tq/transf=
er_queue.go:</span><span style=3D"color: #569cd6;">520</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/tq.(*Trans=
ferQueue).</span><span style=3D"color: #569cd6;">collectBatches.func1</span=
></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/tq/transf=
er_queue.go:</span><span style=3D"color: #569cd6;">432</span></div>
<div><span style=3D"color: #569cd6;">runtime.goexit</span></div>
<div><span style=3D"color: #d4d4d4;"> /usr/lib/go-</span><span style=3D"co=
lor: #569cd6;">1</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">13</span><span style=3D"color: #d4d4d4;">/src/runtime=
/asm_amd64.s:</span><span style=3D"color: #569cd6;">1357</span></div>
<div><span style=3D"color: #ce9178; font-weight: bold;">Error</span><span =
style=3D"color: #d4d4d4;"> downloading cool-thing/app/lib/agl/aarch64/libfm=
t.a (</span><span style=3D"color: #569cd6;">328664b0bd0cad33f28722b9a6ccd5a=
c9adea4485885bacd35082775e41601d8</span><span style=3D"color: #d4d4d4;">)</=
span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/errors.new=
WrappedError</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/errors/ty=
pes.go:</span><span style=3D"color: #569cd6;">198</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/errors.Wra=
pf</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/errors/er=
rors.go:</span><span style=3D"color: #569cd6;">85</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/lfs.(*GitF=
ilter).downloadFile</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/lfs/gitfi=
lter_smudge.go:</span><span style=3D"color: #569cd6;">115</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/lfs.(*GitF=
ilter).Smudge</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/lfs/gitfi=
lter_smudge.go:</span><span style=3D"color: #569cd6;">76</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/commands.s=
mudge</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/commands/=
command_smudge.go:</span><span style=3D"color: #569cd6;">127</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/commands.f=
ilterCommand</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/commands/=
command_filter_process.go:</span><span style=3D"color: #569cd6;">118</span>=
</div>
<div><span style=3D"color: #d4d4d4;">github.com/spf13/cobra.(*Command).exe=
cute</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/spf13/cobra/command.go:</=
span><span style=3D"color: #569cd6;">766</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/spf13/cobra.(*Command).Exe=
cuteC</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/spf13/cobra/command.go:</=
span><span style=3D"color: #569cd6;">850</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/spf13/cobra.(*Command).Exe=
cute</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/spf13/cobra/command.go:</=
span><span style=3D"color: #569cd6;">800</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/commands.R=
un</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/commands/=
run.go:</span><span style=3D"color: #569cd6;">97</span></div>
<div><span style=3D"color: #569cd6;">main.main</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/git-</spa=
n><span style=3D"color: #569cd6;">lfs.go</span><span style=3D"color: #d4d4d=
4;">:</span><span style=3D"color: #569cd6;">33</span></div>
<div><span style=3D"color: #569cd6;">runtime.main</span></div>
<div><span style=3D"color: #d4d4d4;"> /usr/lib/go-</span><span style=3D"co=
lor: #569cd6;">1</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">13</span><span style=3D"color: #d4d4d4;">/src/runtime=
/proc.go:</span><span style=3D"color: #569cd6;">203</span></div>
<div><span style=3D"color: #569cd6;">runtime.goexit</span></div>
<div><span style=3D"color: #d4d4d4;"> /usr/lib/go-</span><span style=3D"co=
lor: #569cd6;">1</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">13</span><span style=3D"color: #d4d4d4;">/src/runtime=
/asm_amd64.s:</span><span style=3D"color: #569cd6;">1357</span></div>
<div><span style=3D"color: #d4d4d4;">Smudge error</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/errors.new=
WrappedError</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/errors/ty=
pes.go:</span><span style=3D"color: #569cd6;">198</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/errors.New=
SmudgeError</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/errors/ty=
pes.go:</span><span style=3D"color: #569cd6;">284</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/lfs.(*GitF=
ilter).Smudge</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/lfs/gitfi=
lter_smudge.go:</span><span style=3D"color: #569cd6;">85</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/commands.s=
mudge</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/commands/=
command_smudge.go:</span><span style=3D"color: #569cd6;">127</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/commands.f=
ilterCommand</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/commands/=
command_filter_process.go:</span><span style=3D"color: #569cd6;">118</span>=
</div>
<div><span style=3D"color: #d4d4d4;">github.com/spf13/cobra.(*Command).exe=
cute</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/spf13/cobra/command.go:</=
span><span style=3D"color: #569cd6;">766</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/spf13/cobra.(*Command).Exe=
cuteC</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/spf13/cobra/command.go:</=
span><span style=3D"color: #569cd6;">850</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/spf13/cobra.(*Command).Exe=
cute</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/spf13/cobra/command.go:</=
span><span style=3D"color: #569cd6;">800</span></div>
<div><span style=3D"color: #d4d4d4;">github.com/git-lfs/git-lfs/commands.R=
un</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/commands/=
run.go:</span><span style=3D"color: #569cd6;">97</span></div>
<div><span style=3D"color: #569cd6;">main.main</span></div>
<div><span style=3D"color: #d4d4d4;"> github.com/git-lfs/git-lfs/git-</spa=
n><span style=3D"color: #569cd6;">lfs.go</span><span style=3D"color: #d4d4d=
4;">:</span><span style=3D"color: #569cd6;">33</span></div>
<div><span style=3D"color: #569cd6;">runtime.main</span></div>
<div><span style=3D"color: #d4d4d4;"> /usr/lib/go-</span><span style=3D"co=
lor: #569cd6;">1</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">13</span><span style=3D"color: #d4d4d4;">/src/runtime=
/proc.go:</span><span style=3D"color: #569cd6;">203</span></div>
<div><span style=3D"color: #569cd6;">runtime.goexit</span></div>
<div><span style=3D"color: #d4d4d4;"> /usr/lib/go-</span><span style=3D"co=
lor: #569cd6;">1</span><span style=3D"color: #d4d4d4;">.</span><span style=
=3D"color: #569cd6;">13</span><span style=3D"color: #d4d4d4;">/src/runtime=
/asm_amd64.s:</span><span style=3D"color: #569cd6;">1357</span></div>
<br />
<div><span style=3D"color: #d4d4d4;">Current time in UTC: </span></div>
<div><span style=3D"color: #6a9955;">2020-12-12</span><span style=3D"color=
: #d4d4d4;"> </span><span style=3D"color: #6a9955;">15:41:16</span></div>
<br />
<div><span style=3D"color: #d4d4d4;">ENV:</span></div>
<div><span style=3D"color: #d4d4d4;">LocalWorkingDir=3D/b/lv-</span><span =
style=3D"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.</span><=
span style=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d4;">/app=
s/apps_proc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/git+AUTOI=
NC+</span><span style=3D"color: #569cd6;">3158acc56b</span><span style=3D"c=
olor: #d4d4d4;">-r0/git</span></div>
<div><span style=3D"color: #d4d4d4;">LocalGitDir=3D/b/lv-</span><span styl=
e=3D"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.</span><span=
 style=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d4;">/apps/ap=
ps_proc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/git+AUTOINC+<=
/span><span style=3D"color: #569cd6;">3158acc56b</span><span style=3D"color=
: #d4d4d4;">-r0/git/.git</span></div>
<div><span style=3D"color: #d4d4d4;">LocalGitStorageDir=3D/b/lv-</span><sp=
an style=3D"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.</spa=
n><span style=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d4;">/=
apps/apps_proc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/git+AU=
TOINC+</span><span style=3D"color: #569cd6;">3158acc56b</span><span style=
=3D"color: #d4d4d4;">-r0/git/.git</span></div>
<div><span style=3D"color: #d4d4d4;">LocalMediaDir=3D/b/lv-</span><span st=
yle=3D"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.</span><sp=
an style=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d4;">/apps/=
apps_proc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/git+AUTOINC=
+</span><span style=3D"color: #569cd6;">3158acc56b</span><span style=3D"col=
or: #d4d4d4;">-r0/git/.git/lfs/objects</span></div>
<div><span style=3D"color: #d4d4d4;">LocalReferenceDirs=3D</span></div>
<div><span style=3D"color: #d4d4d4;">TempDir=3D/b/lv-</span><span style=3D=
"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.</span><span sty=
le=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d4;">/apps/apps_p=
roc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/git+AUTOINC+</spa=
n><span style=3D"color: #569cd6;">3158acc56b</span><span style=3D"color: #d=
4d4d4;">-r0/git/.git/lfs/tmp</span></div>
<div><span style=3D"color: #d4d4d4;">ConcurrentTransfers=3D</span><span st=
yle=3D"color: #569cd6;">3</span></div>
<div><span style=3D"color: #d4d4d4;">TusTransfers=3D</span><span style=3D"=
color: #569cd6;">false</span></div>
<div><span style=3D"color: #d4d4d4;">BasicTransfersOnly=3D</span><span sty=
le=3D"color: #569cd6;">false</span></div>
<div><span style=3D"color: #d4d4d4;">SkipDownloadErrors=3D</span><span sty=
le=3D"color: #569cd6;">false</span></div>
<div><span style=3D"color: #d4d4d4;">FetchRecentAlways=3D</span><span styl=
e=3D"color: #569cd6;">false</span></div>
<div><span style=3D"color: #d4d4d4;">FetchRecentRefsDays=3D</span><span st=
yle=3D"color: #569cd6;">7</span></div>
<div><span style=3D"color: #d4d4d4;">FetchRecentCommitsDays=3D</span><span=
 style=3D"color: #569cd6;">0</span></div>
<div><span style=3D"color: #d4d4d4;">FetchRecentRefsIncludeRemotes=3D</spa=
n><span style=3D"color: #569cd6;">true</span></div>
<div><span style=3D"color: #d4d4d4;">PruneOffsetDays=3D</span><span style=
=3D"color: #569cd6;">3</span></div>
<div><span style=3D"color: #d4d4d4;">PruneVerifyRemoteAlways=3D</span><spa=
n style=3D"color: #569cd6;">false</span></div>
<div><span style=3D"color: #d4d4d4;">PruneRemoteName=3Dorigin</span></div>
<div><span style=3D"color: #d4d4d4;">LfsStorageDir=3D/b/lv-</span><span st=
yle=3D"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.</span><sp=
an style=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d4;">/apps/=
apps_proc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/git+AUTOINC=
+</span><span style=3D"color: #569cd6;">3158acc56b</span><span style=3D"col=
or: #d4d4d4;">-r0/git/.git/lfs</span></div>
<div><span style=3D"color: #d4d4d4;">AccessDownload=3Dnone</span></div>
<div><span style=3D"color: #d4d4d4;">AccessUpload=3Dnone</span></div>
<div><span style=3D"color: #d4d4d4;">DownloadTransfers=3Dbasic,lfs-standal=
on</span><span style=3D"color: #569cd6;">e-f</span><span style=3D"color: #d=
4d4d4;">ile</span></div>
<div><span style=3D"color: #d4d4d4;">UploadTransfers=3Dbasic,lfs-standalon=
</span><span style=3D"color: #569cd6;">e-f</span><span style=3D"color: #d4d=
4d4;">ile</span></div>
<div><span style=3D"color: #d4d4d4;">GIT_CONFIG_PARAMETERS=3D</span><span =
style=3D"color: #ce9178;">'core.fsyncobjectfiles=3D0'</span></div>
<div><span style=3D"color: #d4d4d4;">GIT_EXEC_PATH=3D/usr/lib/git-core</sp=
an></div>
<div><span style=3D"color: #d4d4d4;">GIT_PREFIX=3D</span></div>
<div><span style=3D"color: #d4d4d4;">GIT_CEILING_DIRECTORIES=3D/b/lv-</spa=
n><span style=3D"color: #569cd6;">0</span><span style=3D"color: #d4d4d4;">.=
</span><span style=3D"color: #569cd6;">1</span><span style=3D"color: #d4d4d=
4;">/apps/apps_proc/poky/build/tmp-glibc/work/aarch64-oe-linux/cool-thing/g=
it+AUTOINC+</span><span style=3D"color: #569cd6;">3158acc56b</span><span st=
yle=3D"color: #d4d4d4;">-r0</span></div>
<br /><br /></div>

--gBzG7p8TIYogwxfx5Kur--
