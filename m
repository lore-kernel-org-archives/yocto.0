Return-Path: <liljegren.mats2@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C242DE0140A
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 00:39:49 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id z7so2099220eaf.31
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 00:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=cy8QZmifHwX1CkpIaGFecPO1BdHUV1vWXyupXucG5MU=;
	b=sql+o2yjFCE8MEvxc4BlCHtPwmJtA4Y5s0lPt62zuoUyWqMQyaNaC7vuJuyT4eUAKa
	G8iTAz5wPDQSjCPM5iRG/E8qj/2CYlLBsWVSrmKKiM9BEjAqp9F1zOGpRT3YK1u1GhE9
	DF62u36t4aH9U/e72qCLVuxk8qtJGuQijoXm8zZW7ivDuwa27bt4YZRle1DYbNtlj8X/
	MgnHTXOrsoOTSq5QxC2v0CymP9vDxUFaMJFm81Re1BXADNvLyc6oqImP6FD5IpKwmnWq
	sZWxSEDsm/HZKBdXHa9rNscrdqqcbU7eBIRv6CE+x4mKorrDQVmJTSD3hJvJbFF/Z6Vn
	EnOw==
MIME-Version: 1.0
X-Received: by 10.15.107.205 with SMTP id cb53mr59633405eeb.14.1366011588395; 
	Mon, 15 Apr 2013 00:39:48 -0700 (PDT)
Sender: liljegren.mats2@gmail.com
Received: by 10.15.83.67 with HTTP; Mon, 15 Apr 2013 00:39:48 -0700 (PDT)
In-Reply-To: <20130412191507.GA32099@wrk>
References: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
	<20130412191507.GA32099@wrk>
Date: Mon, 15 Apr 2013 09:39:48 +0200
X-Google-Sender-Auth: RsHh8yc3o89cvYpoNtlXSm2J9Oc
Message-ID: <CA+xJJ1-gQst69uEivqCteJWyRPyEkcFrjNrPKLd9c1Lv8UEF2Q@mail.gmail.com>
From: Mats Liljegren <mats.liljegren@enea.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to archive source for a single package
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
X-List-Received-Date: Mon, 15 Apr 2013 07:39:50 -0000
Content-Type: multipart/alternative; boundary=089e01633c347c733d04da615bfb

--089e01633c347c733d04da615bfb
Content-Type: text/plain; charset=UTF-8

I tried that but got the error shown below. This made me believe that
archive-patched-source wasn't built for being included from a recipe:

$ bitbake virtual/kernel
Loading cache: 100%
|#######################################################################|
ETA:  00:00:00
Loaded 1234 entries from dependency cache.
Parsing recipes: 100%
|#####################################################################|
Time: 00:00:00
Parsing of 921 .bb files complete (920 cached, 1 parsed). 1232 targets, 86
skipped, 7 masked, 0 errors.
WARNING: No recipes available for:

/media/sdb1/fb/mlil/poky/meta-enea/recipes-append/hv-cfg/hv-cfg_git.bbappend

/media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-davinci-mainline.bbappend

/media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-qoriq-sdk.bbappend

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "arm-enea-linux-gnueabi"
MACHINE           = "pandaboard"
DISTRO            = "enea-lwrt-demo"
DISTRO_VERSION    = "2.0"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta              = "master-enea:312d568ef126816b1497cc097c93d8152b893732"
meta-enea         = "master-enea:e81e7fe27b8ab3f9fe32faf2d6f95565d84945c0"
meta-enea-lwrt    = "master-enea:b97c23337c29eb7b1fa72486ba67430a2975c98d"
meta-ti           = "master:c14c386946e1ea341faeea292580e37d538d645d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
ERROR: An uncaught exception occured in runqueue, please see the failure
below:
ERROR: Running idle function
Traceback (most recent call last):
  File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py", line 887, in
RunQueue._execute_runqueue():
                 else:
    >                self.rqexe = RunQueueExecuteScenequeue(self)

  File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py", line 1610, in
RunQueueExecuteScenequeue.__init__(rq=<bb.runqueue.RunQueue instance at
0x89b1ab8>):
                 locs = { "sq_fn" : sq_fn, "sq_task" : sq_taskname,
"sq_hash" : sq_hash, "sq_hashfn" : sq_hashfn, "d" :
self.cooker.configuration.data }
    >            valid = bb.utils.better_eval(call, locs)

  File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/utils.py", line 341, in
better_eval(source='sstate_checkhashes(sq_fn, sq_task, sq_hash, sq_hashfn,
d)', locals={'sq_fn':
['/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb'], 'sq_task': ['do_populate_sysroot', 'do_deploy',
'do_packagedata', 'do_package', 'do_package_write_ipk',
'do_dumpdata_create_diff_gz'], 'sq_hash':
['d701160f5f90ad867344decaa45e850c', '0e83bfbb44dd5f9bc1aab965401eafae',
'a043b351409fd10d0df4f4ef70ef5721', 'cccb256c759ec8ab2b45b033a8fd6fcb',
'965fd06e4464ed8a1322b04c69e1e487', 'b71395177e7741c4182f3628ca82f6b9'],
'sq_hashfn': ['
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-'],
'd': <bb.data_smart.DataSmart object at 0x28f31d0>}):
     def better_eval(source, locals):
    >    return eval(source, _context, locals)

  File "<string>", line 1, in <module>
  File "sstate.bbclass", line 15, in
sstate_checkhashes(sq_fn=['/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb',
'/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
linux-omap4_3.9.bb'], sq_task=['do_populate_sysroot', 'do_deploy',
'do_packagedata', 'do_package', 'do_package_write_ipk',
'do_dumpdata_create_diff_gz'], sq_hash=['d701160f5f90ad867344decaa45e850c',
'0e83bfbb44dd5f9bc1aab965401eafae', 'a043b351409fd10d0df4f4ef70ef5721',
'cccb256c759ec8ab2b45b033a8fd6fcb', '965fd06e4464ed8a1322b04c69e1e487',
'b71395177e7741c4182f3628ca82f6b9'], sq_hashfn=['
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-'],
d=<bb.data_smart.DataSmart object at 0x28f31d0>)
KeyError: 'do_dumpdata_create_diff_gz'

NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be rerun
and all succeeded.

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
$

/Mats


On Fri, Apr 12, 2013 at 9:15 PM, Kevin Strasser <
kevin.strasser@linux.intel.com> wrote:

> Hi Mats,
>
> On Fri, Apr 12, 2013 at 03:58:01PM +0200, Mats Liljegren wrote:
> > I need to archive source for virtual/kernel when building. This is needed
> > for other builds that uses the bitbake build result.
> >
> > I saw that there is archive-patched-source class, which seems to do what
> I
> > want plus a lot more. The problem with it is that it seems to be intended
> > for other use case than mine, which means that it does a lot more work
> than
> > I need.
> >
> The archive-*-source classes are primarily intended to assist in
> providing materials for license compliance for the entire target
> image. That being said, it shouldn't be too difficult to apply them
> to a single package.
>
> > Is there a way to either tame archive-patched-source to only be
> applicable
> > for virtual/kernel, or is there other ways of accomplishing what I want?
> >
> I assume you have a line in your local.conf that looks something like:
>
>   INHERIT += "archive-patched-source"
>
> This means that the class will be inherited at the global level and
> therefor applied to all packages. It's perfectly reasonable to inherit
> the class in any specific package, by adding this line to its recipe:
>
>   inherit archive-patched-source
>
> I hope this gives you what you're looking for. Take a look at the
> Yocto Project dev manual[1] for further information on the source
> archiver.
>
> -Kevin
>
> [1]
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-open-source-license-compliance-during-your-products-lifecycle
>
> > Regards
> >   Mats
>
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01633c347c733d04da615bfb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried that but got the error shown below. This made me b=
elieve that archive-patched-source wasn&#39;t built for being included from=
 a recipe:<br><div><br>$ bitbake virtual/kernel<br>Loading cache: 100% |###=
####################################################################| ETA:=
=C2=A0 00:00:00<br>
Loaded 1234 entries from dependency cache.<br>Parsing recipes: 100% |######=
###############################################################| Time: 00:0=
0:00<br>Parsing of 921 .bb files complete (920 cached, 1 parsed). 1232 targ=
ets, 86 skipped, 7 masked, 0 errors.<br>
WARNING: No recipes available for:<br>=C2=A0 /media/sdb1/fb/mlil/poky/meta-=
enea/recipes-append/hv-cfg/hv-cfg_git.bbappend<br>=C2=A0 /media/sdb1/fb/mli=
l/poky/meta-enea/recipes-kernel/linux/linux-davinci-mainline.bbappend<br>=
=C2=A0 /media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-qoriq-=
sdk.bbappend<br>
<br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=
 =3D &quot;Ubuntu-12.10&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;arm-enea-linux-gnueabi&quot;<br>
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;pandaboard&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;enea-lwrt-demo&quot;<br>DISTRO_VERSION=C2=
=A0=C2=A0=C2=A0 =3D &quot;2.0&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<br>
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;master-enea:312d568ef126816b1497cc097c93d8152b893732&qu=
ot;<br>meta-enea=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;=
master-enea:e81e7fe27b8ab3f9fe32faf2d6f95565d84945c0&quot;<br>meta-enea-lwr=
t=C2=A0=C2=A0=C2=A0 =3D &quot;master-enea:b97c23337c29eb7b1fa72486ba67430a2=
975c98d&quot;<br>
meta-ti=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;master:c14c386946e1ea341faeea292580e37d538d645d&quot;<br><br>NOTE: Resol=
ving any missing task queue dependencies<br>NOTE: Preparing runqueue<br>ERR=
OR: An uncaught exception occured in runqueue, please see the failure below=
:<br>
ERROR: Running idle function<br>Traceback (most recent call last):<br>=C2=
=A0 File &quot;/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py&quot;, l=
ine 887, in RunQueue._execute_runqueue():<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:<br=
>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.rqexe =3D RunQueueExecuteScene=
queue(self)<br>
=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/media/sdb1/fb/mlil/poky/bit=
bake/lib/bb/runqueue.py&quot;, line 1610, in RunQueueExecuteScenequeue.__in=
it__(rq=3D&lt;bb.runqueue.RunQueue instance at 0x89b1ab8&gt;):<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 locs =3D { &quot;sq_fn&quot; : sq_fn, &quot;sq_task&quot; : sq=
_taskname, &quot;sq_hash&quot; : sq_hash, &quot;sq_hashfn&quot; : sq_hashfn=
, &quot;d&quot; : self.cooker.configuration.data }<br>
=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid =3D bb.utils.better_eval(call, locs)<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>=C2=A0 File &quot;/media/sdb1/fb/mlil/poky/bitbake/lib/bb/=
utils.py&quot;, line 341, in better_eval(source=3D&#39;sstate_checkhashes(s=
q_fn, sq_task, sq_hash, sq_hashfn, d)&#39;, locals=3D{&#39;sq_fn&#39;: [&#3=
9;/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/<a href=3D"h=
ttp://linux-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#39;, &#39;/media/sdb1/fb/=
mlil/poky/meta-enea-lwrt/recipes-kernel/linux/<a href=3D"http://linux-omap4=
_3.9.bb">linux-omap4_3.9.bb</a>&#39;, &#39;/media/sdb1/fb/mlil/poky/meta-en=
ea-lwrt/recipes-kernel/linux/<a href=3D"http://linux-omap4_3.9.bb">linux-om=
ap4_3.9.bb</a>&#39;, &#39;/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-k=
ernel/linux/<a href=3D"http://linux-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#3=
9;, &#39;/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/<a hr=
ef=3D"http://linux-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#39;, &#39;/media/s=
db1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/<a href=3D"http://linu=
x-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#39;], &#39;sq_task&#39;: [&#39;do_p=
opulate_sysroot&#39;, &#39;do_deploy&#39;, &#39;do_packagedata&#39;, &#39;d=
o_package&#39;, &#39;do_package_write_ipk&#39;, &#39;do_dumpdata_create_dif=
f_gz&#39;], &#39;sq_hash&#39;: [&#39;d701160f5f90ad867344decaa45e850c&#39;,=
 &#39;0e83bfbb44dd5f9bc1aab965401eafae&#39;, &#39;a043b351409fd10d0df4f4ef7=
0ef5721&#39;, &#39;cccb256c759ec8ab2b45b033a8fd6fcb&#39;, &#39;965fd06e4464=
ed8a1322b04c69e1e487&#39;, &#39;b71395177e7741c4182f3628ca82f6b9&#39;], &#3=
9;sq_hashfn&#39;: [&#39; sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3=
.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pandaboard-enea-linux-gn=
ueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pandaboard-enea-l=
inux-gnueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pandaboard=
-enea-linux-gnueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pan=
daboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-om=
ap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-&#39;], &#39;d&#39;: =
&lt;bb.data_smart.DataSmart object at 0x28f31d0&gt;}):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 def better_eval(source, locals):<br>=C2=A0=C2=A0=
=C2=A0 &gt;=C2=A0=C2=A0=C2=A0 return eval(source, _context, locals)<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;&lt;string&gt;&quot;, line 1, i=
n &lt;module&gt;<br>=C2=A0 File &quot;sstate.bbclass&quot;, line 15, in sst=
ate_checkhashes(sq_fn=3D[&#39;/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recip=
es-kernel/linux/<a href=3D"http://linux-omap4_3.9.bb">linux-omap4_3.9.bb</a=
>&#39;, &#39;/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/<=
a href=3D"http://linux-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#39;, &#39;/med=
ia/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/<a href=3D"http://=
linux-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#39;, &#39;/media/sdb1/fb/mlil/p=
oky/meta-enea-lwrt/recipes-kernel/linux/<a href=3D"http://linux-omap4_3.9.b=
b">linux-omap4_3.9.bb</a>&#39;, &#39;/media/sdb1/fb/mlil/poky/meta-enea-lwr=
t/recipes-kernel/linux/<a href=3D"http://linux-omap4_3.9.bb">linux-omap4_3.=
9.bb</a>&#39;, &#39;/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/=
linux/<a href=3D"http://linux-omap4_3.9.bb">linux-omap4_3.9.bb</a>&#39;], s=
q_task=3D[&#39;do_populate_sysroot&#39;, &#39;do_deploy&#39;, &#39;do_packa=
gedata&#39;, &#39;do_package&#39;, &#39;do_package_write_ipk&#39;, &#39;do_=
dumpdata_create_diff_gz&#39;], sq_hash=3D[&#39;d701160f5f90ad867344decaa45e=
850c&#39;, &#39;0e83bfbb44dd5f9bc1aab965401eafae&#39;, &#39;a043b351409fd10=
d0df4f4ef70ef5721&#39;, &#39;cccb256c759ec8ab2b45b033a8fd6fcb&#39;, &#39;96=
5fd06e4464ed8a1322b04c69e1e487&#39;, &#39;b71395177e7741c4182f3628ca82f6b9&=
#39;], sq_hashfn=3D[&#39; sstate-linux-omap4-pandaboard-enea-linux-gnueabi-=
3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pandaboard-enea-linux-g=
nueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pandaboard-enea-=
linux-gnueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pandaboar=
d-enea-linux-gnueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-omap4-pa=
ndaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-&#39;, &#39; sstate-linux-o=
map4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-&#39;], d=3D&lt;bb.d=
ata_smart.DataSmart object at 0x28f31d0&gt;)<br>
KeyError: &#39;do_dumpdata_create_diff_gz&#39;<br><br>NOTE: Tasks Summary: =
Attempted 0 tasks of which 0 didn&#39;t need to be rerun and all succeeded.=
<br><br>Summary: There was 1 WARNING message shown.<br>Summary: There were =
2 ERROR messages shown, returning a non-zero exit code.<br>
$ <br><br></div><div>/Mats<br></div></div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">On Fri, Apr 12, 2013 at 9:15 PM, Kevin Strasse=
r <span dir=3D"ltr">&lt;<a href=3D"mailto:kevin.strasser@linux.intel.com" t=
arget=3D"_blank">kevin.strasser@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Mats,<br>
<div class=3D"im"><br>
On Fri, Apr 12, 2013 at 03:58:01PM +0200, Mats Liljegren wrote:<br>
&gt; I need to archive source for virtual/kernel when building. This is nee=
ded<br>
&gt; for other builds that uses the bitbake build result.<br>
&gt;<br>
&gt; I saw that there is archive-patched-source class, which seems to do wh=
at I<br>
&gt; want plus a lot more. The problem with it is that it seems to be inten=
ded<br>
&gt; for other use case than mine, which means that it does a lot more work=
 than<br>
&gt; I need.<br>
&gt;<br>
</div>The archive-*-source classes are primarily intended to assist in<br>
providing materials for license compliance for the entire target<br>
image. That being said, it shouldn&#39;t be too difficult to apply them<br>
to a single package.<br>
<div class=3D"im"><br>
&gt; Is there a way to either tame archive-patched-source to only be applic=
able<br>
&gt; for virtual/kernel, or is there other ways of accomplishing what I wan=
t?<br>
&gt;<br>
</div>I assume you have a line in your local.conf that looks something like=
:<br>
<br>
=C2=A0 INHERIT +=3D &quot;archive-patched-source&quot;<br>
<br>
This means that the class will be inherited at the global level and<br>
therefor applied to all packages. It&#39;s perfectly reasonable to inherit<=
br>
the class in any specific package, by adding this line to its recipe:<br>
<br>
=C2=A0 inherit archive-patched-source<br>
<br>
I hope this gives you what you&#39;re looking for. Take a look at the<br>
Yocto Project dev manual[1] for further information on the source<br>
archiver.<br>
<br>
-Kevin<br>
<br>
[1] <a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manu=
al.html#maintaining-open-source-license-compliance-during-your-products-lif=
ecycle" target=3D"_blank">http://www.yoctoproject.org/docs/current/dev-manu=
al/dev-manual.html#maintaining-open-source-license-compliance-during-your-p=
roducts-lifecycle</a><br>

<br>
&gt; Regards<br>
&gt; =C2=A0 Mats<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--089e01633c347c733d04da615bfb--
