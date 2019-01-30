Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DE98E00D11; Wed, 30 Jan 2019 05:34:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43347E00CDF
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 05:34:27 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id l12so26154841qtf.8
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 05:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LEOHi2Ga6Wlu/8PESEtH8UU3PghHRVI/ehX95cFjzTU=;
	b=oaS+1ecHBvya9kzMiI3XzEHH6ZoIurxbH+OvGmSOvBWnt54WCqd5gKj93Yuh9TFgLC
	KBzqnX4rK4dl8TYPB6U1XnH/aWvJ+mRSyRiuo/J12YzET27S6zrXWrPYnDmIoysNL+nD
	6qqOaIHB+bQlCMhvfYcHzOcU5loEfrFjL7Yzbwcn4lKmdOR2Riq8Q5Lhe5/JU27gT6xi
	+SDGG+goi2tpBFrVPWtz7vQw/qaCIPoTDiKAszpM5BS6K9w3AHx4BKm5AdFO/X6jjz1p
	hmp/KRJPzVZXWp/ZwceaL+RDWSSEEIx3Smw/aPpvYbMuWLuxRqe9DFhSTLisMAhRdyCo
	2kzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LEOHi2Ga6Wlu/8PESEtH8UU3PghHRVI/ehX95cFjzTU=;
	b=Ae/96G+Dmo82M16lS9sHP7JbqEP6i9aQ+LyrXeGf8NqzbHm/4HsBu7Dt7EUvUpMHJ2
	qpnMaGNOVyWjSHSqaoc6weNQU1KON6U0AjTC9OYED0CRC1vZhVIRJwuSMlKA05vW4gNI
	CBOpTODgil2v3V/5ZERD+Fk8BEbWDpoUUKYaNS7F5k9eWLBkiSHh7wDXckfOJNWQ/d8S
	0GQ5qAxJyPfscRtQ+nfbSzCyeI12PAqTvvNM6zQ9eOksEc+VSI/ykI5Kh4a0E/j/rgxE
	nV/Tc0lPksqhleaK48FlWWCjHITspQwXJS3/hWEhRBwx10QQx5t7SWMmhGELE+yywpDx
	DgFA==
X-Gm-Message-State: AHQUAuZ3siyrHlAJbupI/It5OSWPhXMgsLv13tHfFqucx7Lg7KI3SB9x
	Dnm54KXDwttpIjx6h8BR8rtu5menZcq6kNlELXNg4fRT5ys=
X-Google-Smtp-Source: AHgI3IYuENdrMOBglm4s27TcYqkLRSCTDKl+CEeYynRdNQLhpGyFdbpeARM1pOUL3iACp8i2WM1AhxllcWoE1X4xo7k=
X-Received: by 2002:a0c:f313:: with SMTP id j19mr9475202qvl.200.1548855266179; 
	Wed, 30 Jan 2019 05:34:26 -0800 (PST)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Wed, 30 Jan 2019 14:34:14 +0100
Message-ID: <CAKPYHZ7vQ1a=+YiiacvrkoBoVSKs4FYoFtQ8WYnXcz72DFmv1w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: DEVTOOL doesn't upgrade glibc as expected
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Jan 2019 13:34:28 -0000
Content-Type: multipart/alternative; boundary="000000000000f2ffe30580acf779"

--000000000000f2ffe30580acf779
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm currently using Yocto Sumo 2.5 release with the glibc version 2.27 and
would like to upgrade it to v2.28.
Using the devtool upgrade glibc -V 2.28
-S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5 doesn't work as expected.
In turn it creates the workspace/recipes/glibc_2.28.bb recipe with the
contents and SRC_URI of v2.27.

devtool upgrade glibc -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5
NOTE: Starting bitbake server...
NOTE: Creating workspace layer in
/source/yocto/build_arm-cortex-a8/workspace

NOTE: Extracting current version source...
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal-4.8"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "arm-cortex-a8"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5"
TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp
meta-oe              = "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
workspace            = "<unknown>:<unknown>"

NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to be rerun
and all succeeded.
NOTE: Writing buildhistory
NOTE: Adding local source files to srctree...
NOTE: Extracting upgraded version source...
WARNING: Command 'git rebase 044c96f0d5595aeb0bb4e79355081c5a7f4faca5'
failed:
First, rewinding head to replay your work on top of it...
Applying: sparc: Check PIC instead of SHARED in start.S [BZ #22638]
error: Failed to merge in the changes.
Using index info to reconstruct a base tree...
M ChangeLog
M sysdeps/sparc/sparc32/start.S
M sysdeps/sparc/sparc64/start.S
Falling back to patching base and 3-way merge...
Auto-merging ChangeLog
CONFLICT (content): Merge conflict in ChangeLog
Patch failed at 0001 sparc: Check PIC instead of SHARED in start.S [BZ
#22638]
The copy of the patch that failed is found in: .git/rebase-apply/patch

Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase
--abort".

You will need to resolve conflicts in order to complete the upgrade.
Traceback (most recent call last):
  File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line 344, in
<module>
    ret = main()
  File "/source/yocto/poky-sumo-19.0.0/scripts/devtool", line 331, in main
    ret = args.func(args, config, basepath, workspace)
  File "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py",
line 559, in upgrade
    rf, copied = _create_new_recipe(args.version, md5, sha256, args.srcrev,
srcbranch, srcsubdir1, srcsubdir2, config.workspace_path, tinfoil, rd,
license_diff, new_licenses)
  File "/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py",
line 344, in _create_new_recipe
    scheme, network, path, user, passwd, params = bb.fetch2.decodeurl(entry)
  File "/source/yocto/poky-sumo-19.0.0/bitbake/lib/bb/fetch2/__init__.py",
line 368, in decodeurl
    raise MalformedUrl(url)
bb.fetch2.MalformedUrl: The URL:
'${GLIBC_GIT_URI};branch=${SRCBRANCH};name=glibc' is invalid and cannot be
interpreted.

Need help with this one.

Thanks,
Dhanush

--000000000000f2ffe30580acf779
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-family:georgia,serif">Hi,</div><div class=3D"gmail_defau=
lt" style=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:georgia,serif">I&#39;m currently using Yocto Sumo =
2.5 release with the glibc version 2.27 and would like to upgrade it to v2.=
28.</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif">U=
sing the devtool upgrade glibc -V 2.28 -S=C2=A0044c96f0d5595aeb0bb4e7935508=
1c5a7f4faca5 doesn&#39;t work as expected.</div><div class=3D"gmail_default=
" style=3D"font-family:georgia,serif">In turn it creates the workspace/reci=
pes/<a href=3D"http://glibc_2.28.bb">glibc_2.28.bb</a> recipe with the cont=
ents and SRC_URI of v2.27.</div><div class=3D"gmail_default" style=3D"font-=
family:georgia,serif"><br></div><div class=3D"gmail_default"><div class=3D"=
gmail_default"><font color=3D"#666666" face=3D"georgia, serif">devtool upgr=
ade glibc -S 044c96f0d5595aeb0bb4e79355081c5a7f4faca5</font></div><div clas=
s=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif">NOTE: S=
tarting bitbake server...</font></div><div class=3D"gmail_default"><font co=
lor=3D"#666666" face=3D"georgia, serif">NOTE: Creating workspace layer in /=
source/yocto/build_arm-cortex-a8/workspace</font></div><div class=3D"gmail_=
default"><br></div><div class=3D"gmail_default"><font color=3D"#666666" fac=
e=3D"georgia, serif">NOTE: Extracting current version source...</font></div=
><div class=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, seri=
f">NOTE: Resolving any missing task queue dependencies</font></div><div cla=
ss=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif"><br></=
font></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"geo=
rgia, serif">Build Configuration:</font></div><div class=3D"gmail_default">=
<font color=3D"#666666" face=3D"georgia, serif">BB_VERSION=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;</font></div><div class=3D"gm=
ail_default"><font color=3D"#666666" face=3D"georgia, serif">BUILD_SYS=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</font><=
/div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, =
serif">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</f=
ont></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"geor=
gia, serif">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;ar=
m-poky-linux-gnueabi&quot;</font></div><div class=3D"gmail_default"><font c=
olor=3D"#666666" face=3D"georgia, serif">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-cortex-a8&quot;</font></div><div class=
=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif">DISTRO=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;=
</font></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"g=
eorgia, serif">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5&quot;=
</font></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"g=
eorgia, serif">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7=
a vfp neon callconvention-hard cortexa8&quot;</font></div><div class=3D"gma=
il_default"><font color=3D"#666666" face=3D"georgia, serif">TARGET_FPU=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;</font><span styl=
e=3D"color:rgb(102,102,102);font-family:georgia,serif">=C2=A0 =C2=A0=C2=A0<=
/span></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"ge=
orgia, serif">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</font></div><div class=3D"gmail_default"><font color=3D"#666666" fac=
e=3D"georgia, serif">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0</font></div><div class=3D"gmail_default"><font color=3D"#666666" face=
=3D"georgia, serif">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</font></div><=
div class=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif"=
>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:4=
5ee3c0e98bd3ed81419aaeae1e7324e486161a2&quot;</font></div><div class=3D"gma=
il_default"><font color=3D"#666666" face=3D"georgia, serif">workspace=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&g=
t;&quot;</font></div><div class=3D"gmail_default"><br></div><div class=3D"g=
mail_default"><font color=3D"#666666" face=3D"georgia, serif">NOTE: Executi=
ng RunQueue Tasks</font></div><div class=3D"gmail_default"><font color=3D"#=
666666" face=3D"georgia, serif">NOTE: Tasks Summary: Attempted 3 tasks of w=
hich 0 didn&#39;t need to be rerun and all succeeded.</font></div><div clas=
s=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif">NOTE: W=
riting buildhistory</font></div><div class=3D"gmail_default"><font color=3D=
"#666666" face=3D"georgia, serif">NOTE: Adding local source files to srctre=
e...</font></div><div class=3D"gmail_default"><font color=3D"#666666" face=
=3D"georgia, serif">NOTE: Extracting upgraded version source...</font></div=
><div class=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c23=
2" style=3D"background-color:rgb(0,0,0)">WARNING: Command &#39;git rebase 0=
44c96f0d5595aeb0bb4e79355081c5a7f4faca5&#39; failed:</font></div><div class=
=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c232" style=3D=
"background-color:rgb(0,0,0)">First, rewinding head to replay your work on =
top of it...</font></div><div class=3D"gmail_default"><font face=3D"georgia=
, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)">Applying: =
sparc: Check PIC instead of SHARED in start.S [BZ #22638]</font></div><div =
class=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c232" sty=
le=3D"background-color:rgb(0,0,0)">error: Failed to merge in the changes.</=
font></div><div class=3D"gmail_default"><font face=3D"georgia, serif" color=
=3D"#f1c232" style=3D"background-color:rgb(0,0,0)">Using index info to reco=
nstruct a base tree...</font></div><div class=3D"gmail_default"><font face=
=3D"georgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)"=
>M<span style=3D"white-space:pre">	</span>ChangeLog</font></div><div class=
=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c232" style=3D=
"background-color:rgb(0,0,0)">M<span style=3D"white-space:pre">	</span>sysd=
eps/sparc/sparc32/start.S</font></div><div class=3D"gmail_default"><font fa=
ce=3D"georgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0=
)">M<span style=3D"white-space:pre">	</span>sysdeps/sparc/sparc64/start.S</=
font></div><div class=3D"gmail_default"><font face=3D"georgia, serif" color=
=3D"#f1c232" style=3D"background-color:rgb(0,0,0)">Falling back to patching=
 base and 3-way merge...</font></div><div class=3D"gmail_default"><font fac=
e=3D"georgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)=
">Auto-merging ChangeLog</font></div><div class=3D"gmail_default"><font fac=
e=3D"georgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)=
">CONFLICT (content): Merge conflict in ChangeLog</font></div><div class=3D=
"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c232" style=3D"ba=
ckground-color:rgb(0,0,0)">Patch failed at 0001 sparc: Check PIC instead of=
 SHARED in start.S [BZ #22638]</font></div><div class=3D"gmail_default"><fo=
nt face=3D"georgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(=
0,0,0)">The copy of the patch that failed is found in: .git/rebase-apply/pa=
tch</font></div><div class=3D"gmail_default"><font face=3D"georgia, serif" =
color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)"><br></font></div><d=
iv class=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c232" =
style=3D"background-color:rgb(0,0,0)">Resolve all conflicts manually, mark =
them as resolved with</font></div><div class=3D"gmail_default"><font face=
=3D"georgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)"=
>&quot;git add/rm &lt;conflicted_files&gt;&quot;, then run &quot;git rebase=
 --continue&quot;.</font></div><div class=3D"gmail_default"><font face=3D"g=
eorgia, serif" color=3D"#f1c232" style=3D"background-color:rgb(0,0,0)">You =
can instead skip this commit: run &quot;git rebase --skip&quot;.</font></di=
v><div class=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c2=
32" style=3D"background-color:rgb(0,0,0)">To abort and get back to the stat=
e before &quot;git rebase&quot;, run &quot;git rebase --abort&quot;.</font>=
</div><div class=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#=
f1c232" style=3D"background-color:rgb(0,0,0)"><br></font></div><div class=
=3D"gmail_default"><font face=3D"georgia, serif" color=3D"#f1c232" style=3D=
"background-color:rgb(0,0,0)">You will need to resolve conflicts in order t=
o complete the upgrade.</font></div><div class=3D"gmail_default"><font colo=
r=3D"#666666" face=3D"georgia, serif">Traceback (most recent call last):</f=
ont></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"geor=
gia, serif">=C2=A0 File &quot;/source/yocto/poky-sumo-19.0.0/scripts/devtoo=
l&quot;, line 344, in &lt;module&gt;</font></div><div class=3D"gmail_defaul=
t"><font color=3D"#666666" face=3D"georgia, serif">=C2=A0 =C2=A0 ret =3D ma=
in()</font></div><div class=3D"gmail_default"><font color=3D"#666666" face=
=3D"georgia, serif">=C2=A0 File &quot;/source/yocto/poky-sumo-19.0.0/script=
s/devtool&quot;, line 331, in main</font></div><div class=3D"gmail_default"=
><font color=3D"#666666" face=3D"georgia, serif">=C2=A0 =C2=A0 ret =3D args=
.func(args, config, basepath, workspace)</font></div><div class=3D"gmail_de=
fault"><font color=3D"#666666" face=3D"georgia, serif">=C2=A0 File &quot;/s=
ource/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upgrade.py&quot;, line 559=
, in upgrade</font></div><div class=3D"gmail_default"><font color=3D"#66666=
6" face=3D"georgia, serif">=C2=A0 =C2=A0 rf, copied =3D _create_new_recipe(=
args.version, md5, sha256, args.srcrev, srcbranch, srcsubdir1, srcsubdir2, =
config.workspace_path, tinfoil, rd, license_diff, new_licenses)</font></div=
><div class=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, seri=
f">=C2=A0 File &quot;/source/yocto/poky-sumo-19.0.0/scripts/lib/devtool/upg=
rade.py&quot;, line 344, in _create_new_recipe</font></div><div class=3D"gm=
ail_default"><font color=3D"#666666" face=3D"georgia, serif">=C2=A0 =C2=A0 =
scheme, network, path, user, passwd, params =3D bb.fetch2.decodeurl(entry)<=
/font></div><div class=3D"gmail_default"><font color=3D"#666666" face=3D"ge=
orgia, serif">=C2=A0 File &quot;/source/yocto/poky-sumo-19.0.0/bitbake/lib/=
bb/fetch2/__init__.py&quot;, line 368, in decodeurl</font></div><div class=
=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif">=C2=A0 =
=C2=A0 raise MalformedUrl(url)</font></div><div class=3D"gmail_default"><fo=
nt color=3D"#666666" face=3D"georgia, serif">bb.fetch2.MalformedUrl: The UR=
L: &#39;${GLIBC_GIT_URI};branch=3D${SRCBRANCH};name=3Dglibc&#39; is invalid=
 and cannot be interpreted.</font></div><div class=3D"gmail_default"><font =
color=3D"#666666" face=3D"georgia, serif"><br></font></div><div class=3D"gm=
ail_default"><font color=3D"#666666" face=3D"georgia, serif">Need help with=
 this one.</font></div><div class=3D"gmail_default"><font color=3D"#666666"=
 face=3D"georgia, serif"><br></font></div><div class=3D"gmail_default"><fon=
t color=3D"#666666" face=3D"georgia, serif">Thanks,</font></div><div class=
=3D"gmail_default"><font color=3D"#666666" face=3D"georgia, serif">Dhanush<=
/font></div></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"></div></div></div></div></div></div>

--000000000000f2ffe30580acf779--
