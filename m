Return-Path: <qian.hao.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C3ECE00DD9; Thu,  8 Aug 2019 19:13:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (qian.hao.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C5B2E00D89
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 19:13:09 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id n5so126941254otk.1
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 19:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kpAarJC0FYKtWYjyTt+4EBEG0l+ojRqBb05pEvuKQx0=;
	b=KRXoIQYfZ4h0aM4VttfC1YoC6dTr2sz9YbUbVdXwJlf5jGAbFPQf4mP9vI4b5siBBk
	YzxikFrAIsVp6Pl1pT/Sj61XBswmMAs5SN55B61M/mqCsDBKGKhrwgxqxpVKcszwjElJ
	Pas51SLfTNEfymB2/gfeODvIP/7D6uC/qNuX8zfjd3kGvbodETuQFgHi7SzeRqEEXmyt
	SljMXLuffScwQ6ln2OgKTSv3fK+heusYM4PyJXZ0874aFZY1kBbsRCg0HuCDiqdnabF4
	h0TnTQ8Qc2J5W6zYPNZl59xxoqIJCiGgMyStT9F49K9H4DXFPHkRZGv9jfvbN0yjZvl3
	nvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kpAarJC0FYKtWYjyTt+4EBEG0l+ojRqBb05pEvuKQx0=;
	b=BQUWSRbreflgqCZl5Uwlo9B/jPaQj/XESjG5T5DPk6OBXzZ2XfLim4xkhkgCpfbPS0
	6B1KH8CvbcWcycN5icN4NfQWouXCfrCnSagrk87V6qfAxo8CIczhVsqLuuqKzDEqEUUv
	sm8eot85gsjJHFbpPVVmg2w5QOI5Wx3OkuppjWxGHpuMtAVPcsda9ps2USH1OqRvcBNL
	9xGcvtnz4pZMjF1ktTvb7M2ycr13ABvnPivU43GGXllDN2UKD/EI0ax+72GTiuBv4USj
	mPUMeZN4gj5PfWdP5qfTjCQtwNMeoobaeMh6t6Az8BhPO95FWz5+7xM6svB7dsMIU5rO
	uUeQ==
X-Gm-Message-State: APjAAAXaMm3eSGJpiU7+V72+0IE7l/OKWnnQfA44+utapRuEnERb8omW
	50+A1suILWcJR6PYk2eP7NKmh82l/8noZcTUVBm6Jpr/
X-Google-Smtp-Source: APXvYqxIqddlTyUgvuxPiS7RpxLQlOGJDckE5lJzNb/CWi2JxT1urLWA0+iOJcWvxGA3ybK14tXiC7YiBAa6m13Y4No=
X-Received: by 2002:a05:6830:1316:: with SMTP id
	p22mr14245317otq.329.1565316788373; 
	Thu, 08 Aug 2019 19:13:08 -0700 (PDT)
MIME-Version: 1.0
From: Hao Qian <qian.hao.developer@gmail.com>
Date: Fri, 9 Aug 2019 11:12:58 +0900
Message-ID: <CACxpVWczf1PThsuUkLzJZD7j+p4EMk-fBnKuwQeUsiemqH9mhQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Build error after changing $TMPDIR
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
X-List-Received-Date: Fri, 09 Aug 2019 02:13:10 -0000
Content-Type: multipart/alternative; boundary="00000000000021cd24058fa5b7a1"

--00000000000021cd24058fa5b7a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to change the $TMPDIR on my project.

I tried to set tmp folder's position just besides to the "poky" folder,
with modification like below:

```
diff -u ../meta-poky/conf/local.conf.sample conf/local.conf
--- ../meta-poky/conf/local.conf.sample 2019-08-09 10:20:50.115183741 +0900
+++ conf/local.conf     2019-08-09 10:21:25.614121622 +0900
@@ -76,7 +76,7 @@
 #
 # The default is a tmp directory under TOPDIR.
 #
-#TMPDIR =3D "${TOPDIR}/tmp"
+TMPDIR =3D "${TOPDIR}/../../tmp"

 #
 # Default policy config
```

And actually, yocto does create the tmp folder to the position which I
expected:

```
$ ls
poky tmp
```

However, everytime when I try to build core-image-minimal, error occurs.

```
$ bitbake core-image-minimal

Loading cache: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
########################################|
Time: 0:00:00
Loaded 1303 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.42.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "i586-poky-linux"
MACHINE              =3D "qemux86"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.7.1"
TUNE_FEATURES        =3D "m32 i586"
TARGET_FPU           =3D ""
meta
meta-poky
meta-yocto-bsp       =3D "warrior:01b8a8b54bc569e5ef3f5e6fc6abcee365ab25d9"

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
###################################|
Time: 0:00:00
Sstate summary: Wanted 809 Found 0 Missed 809 Current 1 (0% match, 0%
complete)
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: texinfo-dummy-native-1.0-r0 do_patch: Error executing a python
function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:extend_recipe_sysroot(d)
     0003:
File:
'/home/hqian/source/yocto/generic/srv-2/poky/meta/classes/staging.bbclass',
lineno: 563, function: extend_recipe_sysroot
     0559:    bb.note("Installed into sysroot: %s" % str(msg_adding))
     0560:    bb.note("Skipping as already exists in sysroot: %s" %
str(msg_exists))
     0561:
     0562:    for f in fixme:
 *** 0563:        staging_processfixme(fixme[f], f, recipesysroot,
recipesysrootnative, d)
     0564:
     0565:    for p in postinsts:
     0566:        subprocess.check_output(p, shell=3DTrue,
stderr=3Dsubprocess.STDOUT)
     0567:
File:
'/home/hqian/source/yocto/generic/srv-2/poky/meta/classes/staging.bbclass',
lineno: 174, function: staging_processfixme
     0170:    for fixmevar in ['COMPONENTS_DIR', 'HOSTTOOLS_DIR',
'PKGDATA_DIR', 'PSEUDO_LOCALSTATEDIR', 'LOGFIFO']:
     0171:        fixme_path =3D d.getVar(fixmevar)
     0172:        cmd +=3D " -e 's:FIXME_%s:%s:g'" % (fixmevar, fixme_path)
     0173:    bb.debug(2, cmd)
 *** 0174:    subprocess.check_output(cmd, shell=3DTrue,
stderr=3Dsubprocess.STDOUT)
     0175:
     0176:
     0177:def staging_populate_sysroot_dir(targetsysroot, nativesysroot,
native, d):
     0178:    import glob
File: '/usr/lib/python3.6/subprocess.py', lineno: 356, function:
check_output
     0352:        # empty string. That is maintained here for backwards
compatibility.
     0353:        kwargs['input'] =3D '' if kwargs.get('universal_newlines'=
,
False) else b''
     0354:
     0355:    return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout,
check=3DTrue,
 *** 0356:               **kwargs).stdout
     0357:
     0358:
     0359:class CompletedProcess(object):
     0360:    """A process that has finished running.
File: '/usr/lib/python3.6/subprocess.py', lineno: 438, function: run
     0434:            raise
     0435:        retcode =3D process.poll()
     0436:        if check and retcode:
     0437:            raise CalledProcessError(retcode, process.args,
 *** 0438:                                     output=3Dstdout, stderr=3Dst=
derr)
     0439:    return CompletedProcess(process.args, retcode, stdout, stderr=
)
     0440:
     0441:
     0442:def list2cmdline(seq):
Exception: subprocess.CalledProcessError: Command 'sed -e
's:^[^/]*/:/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work=
/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/:g'
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/sysroots-compon=
ents/x86_64/quilt-native/fixmepath
| xargs sed -i -e
's:FIXMESTAGINGDIRTARGET:/home/hqian/source/yocto/generic/srv-2/poky/build/=
../../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot:g;
s:FIXMESTAGINGDIRHOST:/home/hqian/source/yocto/generic/srv-2/poky/build/../=
../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native:=
g'
-e
's:FIXME_COMPONENTS_DIR:/home/hqian/source/yocto/generic/srv-2/poky/build/.=
./../tmp/sysroots-components:g'
-e
's:FIXME_HOSTTOOLS_DIR:/home/hqian/source/yocto/generic/srv-2/poky/build/..=
/../tmp/hosttools:g'
-e
's:FIXME_PKGDATA_DIR:/home/hqian/source/yocto/generic/srv-2/poky/build/../.=
./tmp/pkgdata/qemux86:g'
-e
's:FIXME_PSEUDO_LOCALSTATEDIR:/home/hqian/source/yocto/generic/srv-2/poky/b=
uild/../../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/pseudo/:g'
-e
's:FIXME_LOGFIFO:/home/hqian/source/yocto/generic/srv-2/poky/build/../../tm=
p/work/x86_64-linux/texinfo-dummy-native/1.0-r0/temp/fifo.7358:g''
returned non-zero exit status 123.

Subprocess output:
sed: can't read
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-lin=
ux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/share/quilt/script=
s/edmail:
No such file or directory
sed: can't read
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-lin=
ux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/share/quilt/script=
s/remove-trailing-ws:
No such file or directory
sed: can't read
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-lin=
ux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/share/quilt/script=
s/patchfns:
No such file or directory
sed: can't read
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-lin=
ux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/share/quilt/script=
s/backup-files:
No such file or directory
sed: can't read
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-lin=
ux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/share/quilt/mail:
No such file or directory
sed: can't read
/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-lin=
ux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/bin/quilt:
No such file or directory
```

I'm sorry that maybe it's a stupid and easy question.
Does anyone know what the problem is, and how to fix it?

Thank you very much.

Best regards,

Qian

--00000000000021cd24058fa5b7a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to change the $TMPDI=
R on my project.</div><div><br></div><div>I tried to set tmp folder&#39;s p=
osition just besides to the &quot;poky&quot; folder, with modification like=
 below:</div><div><br></div><div>```</div><div>diff -u ../meta-poky/conf/lo=
cal.conf.sample conf/local.conf <br>--- ../meta-poky/conf/local.conf.sample=
 2019-08-09 10:20:50.115183741 +0900<br>+++ conf/local.conf =C2=A0 =C2=A0 2=
019-08-09 10:21:25.614121622 +0900<br>@@ -76,7 +76,7 @@<br>=C2=A0#<br>=C2=
=A0# The default is a tmp directory under TOPDIR.<br>=C2=A0#<br>-#TMPDIR =
=3D &quot;${TOPDIR}/tmp&quot;<br>+TMPDIR =3D &quot;${TOPDIR}/../../tmp&quot=
;<br>=C2=A0<br>=C2=A0#<br>=C2=A0# Default policy config<br></div><div>```</=
div><div><br></div><div>And actually, yocto does create the tmp folder to t=
he position which I expected:</div><div><br></div><div>```</div><div>$ ls</=
div><div>poky tmp</div><div>```</div><div><br></div><div>However, everytime=
 when I try to build core-image-minimal, error occurs.</div><div><br></div>=
<div>```</div><div>$ bitbake core-image-minimal</div><div><br></div><div>Lo=
ading cache: 100% |########################################################=
###########################################################################=
###########################################################################=
##########################################################| Time: 0:00:00<b=
r>Loaded 1303 entries from dependency cache.<br>NOTE: Resolving any missing=
 task queue dependencies<br><br>Build Configuration:<br>BB_VERSION =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.42.0&quot;<br>BUILD_SYS =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTR=
ING =C2=A0 =C2=A0 =C2=A0=3D &quot;universal&quot;<br>TARGET_SYS =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586-poky-linux&quot;<br>MACHINE =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86&quot;<br>DISTRO =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DI=
STRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.7.1&quot;<br>TUNE_FEATURES =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;m32 i586&quot;<br>TARGET_FPU =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;warrior:=
01b8a8b54bc569e5ef3f5e6fc6abcee365ab25d9&quot;<br><br>Initialising tasks: 1=
00% |######################################################################=
###########################################################################=
###########################################################################=
#######################################| Time: 0:00:00<br>Sstate summary: W=
anted 809 Found 0 Missed 809 Current 1 (0% match, 0% complete)<br>NOTE: Exe=
cuting SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>ERROR: texinfo-d=
ummy-native-1.0-r0 do_patch: Error executing a python function in exec_pyth=
on_func() autogenerated:<br><br>The stack trace of python calls that result=
ed in this exception/failure was:<br>File: &#39;exec_python_func() autogene=
rated&#39;, lineno: 2, function: &lt;module&gt;<br>=C2=A0 =C2=A0 =C2=A00001=
:<br>=C2=A0*** 0002:extend_recipe_sysroot(d)<br>=C2=A0 =C2=A0 =C2=A00003:<b=
r>File: &#39;/home/hqian/source/yocto/generic/srv-2/poky/meta/classes/stagi=
ng.bbclass&#39;, lineno: 563, function: extend_recipe_sysroot<br>=C2=A0 =C2=
=A0 =C2=A00559: =C2=A0 =C2=A0bb.note(&quot;Installed into sysroot: %s&quot;=
 % str(msg_adding))<br>=C2=A0 =C2=A0 =C2=A00560: =C2=A0 =C2=A0bb.note(&quot=
;Skipping as already exists in sysroot: %s&quot; % str(msg_exists))<br>=C2=
=A0 =C2=A0 =C2=A00561:<br>=C2=A0 =C2=A0 =C2=A00562: =C2=A0 =C2=A0for f in f=
ixme:<br>=C2=A0*** 0563: =C2=A0 =C2=A0 =C2=A0 =C2=A0staging_processfixme(fi=
xme[f], f, recipesysroot, recipesysrootnative, d)<br>=C2=A0 =C2=A0 =C2=A005=
64:<br>=C2=A0 =C2=A0 =C2=A00565: =C2=A0 =C2=A0for p in postinsts:<br>=C2=A0=
 =C2=A0 =C2=A00566: =C2=A0 =C2=A0 =C2=A0 =C2=A0subprocess.check_output(p, s=
hell=3DTrue, stderr=3Dsubprocess.STDOUT)<br>=C2=A0 =C2=A0 =C2=A00567:<br>Fi=
le: &#39;/home/hqian/source/yocto/generic/srv-2/poky/meta/classes/staging.b=
bclass&#39;, lineno: 174, function: staging_processfixme<br>=C2=A0 =C2=A0 =
=C2=A00170: =C2=A0 =C2=A0for fixmevar in [&#39;COMPONENTS_DIR&#39;, &#39;HO=
STTOOLS_DIR&#39;, &#39;PKGDATA_DIR&#39;, &#39;PSEUDO_LOCALSTATEDIR&#39;, &#=
39;LOGFIFO&#39;]:<br>=C2=A0 =C2=A0 =C2=A00171: =C2=A0 =C2=A0 =C2=A0 =C2=A0f=
ixme_path =3D d.getVar(fixmevar)<br>=C2=A0 =C2=A0 =C2=A00172: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0cmd +=3D &quot; -e &#39;s:FIXME_%s:%s:g&#39;&quot; % (fixmeva=
r, fixme_path)<br>=C2=A0 =C2=A0 =C2=A00173: =C2=A0 =C2=A0bb.debug(2, cmd)<b=
r>=C2=A0*** 0174: =C2=A0 =C2=A0subprocess.check_output(cmd, shell=3DTrue, s=
tderr=3Dsubprocess.STDOUT)<br>=C2=A0 =C2=A0 =C2=A00175:<br>=C2=A0 =C2=A0 =
=C2=A00176:<br>=C2=A0 =C2=A0 =C2=A00177:def staging_populate_sysroot_dir(ta=
rgetsysroot, nativesysroot, native, d):<br>=C2=A0 =C2=A0 =C2=A00178: =C2=A0=
 =C2=A0import glob<br>File: &#39;/usr/lib/python3.6/subprocess.py&#39;, lin=
eno: 356, function: check_output<br>=C2=A0 =C2=A0 =C2=A00352: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0# empty string. That is maintained here for backwards compati=
bility.<br>=C2=A0 =C2=A0 =C2=A00353: =C2=A0 =C2=A0 =C2=A0 =C2=A0kwargs[&#39=
;input&#39;] =3D &#39;&#39; if kwargs.get(&#39;universal_newlines&#39;, Fal=
se) else b&#39;&#39;<br>=C2=A0 =C2=A0 =C2=A00354:<br>=C2=A0 =C2=A0 =C2=A003=
55: =C2=A0 =C2=A0return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout, c=
heck=3DTrue,<br>=C2=A0*** 0356: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 **kwargs).stdout<br>=C2=A0 =C2=A0 =C2=A00357:<br>=C2=A0 =C2=A0 =C2=
=A00358:<br>=C2=A0 =C2=A0 =C2=A00359:class CompletedProcess(object):<br>=C2=
=A0 =C2=A0 =C2=A00360: =C2=A0 =C2=A0&quot;&quot;&quot;A process that has fi=
nished running.<br>File: &#39;/usr/lib/python3.6/subprocess.py&#39;, lineno=
: 438, function: run<br>=C2=A0 =C2=A0 =C2=A00434: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0raise<br>=C2=A0 =C2=A0 =C2=A00435: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0retcode =3D process.poll()<br>=C2=A0 =C2=A0 =C2=A00436: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0if check and retcode:<br>=C2=A0 =C2=A0 =C2=A00437: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise CalledProcessError(retcode, process.ar=
gs,<br>=C2=A0*** 0438: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 o=
utput=3Dstdout, stderr=3Dstderr)<br>=C2=A0 =C2=A0 =C2=A00439: =C2=A0 =C2=A0=
return CompletedProcess(process.args, retcode, stdout, stderr)<br>=C2=A0 =
=C2=A0 =C2=A00440:<br>=C2=A0 =C2=A0 =C2=A00441:<br>=C2=A0 =C2=A0 =C2=A00442=
:def list2cmdline(seq):<br>Exception: subprocess.CalledProcessError: Comman=
d &#39;sed -e &#39;s:^[^/]*/:/home/hqian/source/yocto/generic/srv-2/poky/bu=
ild/../../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot-=
native/:g&#39; /home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/=
sysroots-components/x86_64/quilt-native/fixmepath | xargs sed -i -e &#39;s:=
FIXMESTAGINGDIRTARGET:/home/hqian/source/yocto/generic/srv-2/poky/build/../=
../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot:g; s:FI=
XMESTAGINGDIRHOST:/home/hqian/source/yocto/generic/srv-2/poky/build/../../t=
mp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native:g&#3=
9; -e &#39;s:FIXME_COMPONENTS_DIR:/home/hqian/source/yocto/generic/srv-2/po=
ky/build/../../tmp/sysroots-components:g&#39; -e &#39;s:FIXME_HOSTTOOLS_DIR=
:/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/hosttools:g&#3=
9; -e &#39;s:FIXME_PKGDATA_DIR:/home/hqian/source/yocto/generic/srv-2/poky/=
build/../../tmp/pkgdata/qemux86:g&#39; -e &#39;s:FIXME_PSEUDO_LOCALSTATEDIR=
:/home/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-li=
nux/texinfo-dummy-native/1.0-r0/pseudo/:g&#39; -e &#39;s:FIXME_LOGFIFO:/hom=
e/hqian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-linux/t=
exinfo-dummy-native/1.0-r0/temp/fifo.7358:g&#39;&#39; returned non-zero exi=
t status 123.<br><br>Subprocess output:<br>sed: can&#39;t read /home/hqian/=
source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-linux/texinfo-d=
ummy-native/1.0-r0/recipe-sysroot-native/usr/share/quilt/scripts/edmail: No=
 such file or directory<br>sed: can&#39;t read /home/hqian/source/yocto/gen=
eric/srv-2/poky/build/../../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-=
r0/recipe-sysroot-native/usr/share/quilt/scripts/remove-trailing-ws: No suc=
h file or directory<br>sed: can&#39;t read /home/hqian/source/yocto/generic=
/srv-2/poky/build/../../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/r=
ecipe-sysroot-native/usr/share/quilt/scripts/patchfns: No such file or dire=
ctory<br>sed: can&#39;t read /home/hqian/source/yocto/generic/srv-2/poky/bu=
ild/../../tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot-=
native/usr/share/quilt/scripts/backup-files: No such file or directory<br>s=
ed: can&#39;t read /home/hqian/source/yocto/generic/srv-2/poky/build/../../=
tmp/work/x86_64-linux/texinfo-dummy-native/1.0-r0/recipe-sysroot-native/usr=
/share/quilt/mail: No such file or directory<br>sed: can&#39;t read /home/h=
qian/source/yocto/generic/srv-2/poky/build/../../tmp/work/x86_64-linux/texi=
nfo-dummy-native/1.0-r0/recipe-sysroot-native/usr/bin/quilt: No such file o=
r directory<br></div><div>```</div><div><br></div><div>I&#39;m sorry that m=
aybe it&#39;s a stupid and easy question.</div><div>Does anyone know what t=
he problem is, and how to fix it?</div><div><br></div><div>Thank you very m=
uch.</div><div><br></div><div>Best regards,</div><div><br></div><div>Qian</=
div></div>

--00000000000021cd24058fa5b7a1--
