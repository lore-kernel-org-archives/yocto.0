Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C86E00C89; Mon, 25 Sep 2017 08:33:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AEE2E009F5
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 08:33:47 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id c27so4572773uah.2
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 08:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Xl4x66ZE1TlNyD1n0tOI60S467NzUhxNjOKMnnDvpYY=;
	b=mCPY8SbMTJufhNogbObb3Zsbxolp34TLrvRnAm6CbnL/uhxMI9lsRUKrLix9MsVke+
	QMVrrGskFJgFrFOptnJYrEoP939Nh5grctbC/Wk+RYqdGGVnAMdC0p/DjH4GVa4S+v1g
	Py76fhgqSlTtUVwiHQT+TNsfELq9twj2ODNgjbZFdzx9qdYYu1oFunhiamFTCOq/2GQw
	//i0hijBOULgQNlAnU8WizcS1fqoy3iBiqEOdYh5iH6Ko0DNSGUkdUGyuxzDlBMQ0c3s
	cb0L7eYbCk+gDi3pjhho658q0odUz7LboeFeMl3hmfb1iWcnLMkc/ZO+DTy703sOHNGr
	PwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Xl4x66ZE1TlNyD1n0tOI60S467NzUhxNjOKMnnDvpYY=;
	b=Wh2QVnj5eJjdQyqCoMC0zRSgv1Z6xx4qr+RPwrjbhJ+cGjuR4SgdG1Z79ebed/gd2i
	QmLhPSmsCPpgCXWGEnlbNA523vE9VUf58t5vNYdaehYOmTXiaHAXqZpH10Kj/MviZWOQ
	2kym9Ben4r6t0A6UszUHVNvygKJweAgikMMHIJoD1XTvh+gWu+TM15f9bHIETj8KdCeU
	Z4kMzWGXfEW6aXqTCVFMfZt4Fq0aqyDYCwb46v8ZBHbfswThltTU3xo5PNN3HQDCuy4E
	gjccrib8UGljYHbki6flRFJgDJTxM9It8+21Tq8oU87K4lZU/x68OuN9atGFUDhZGmSq
	TLOQ==
X-Gm-Message-State: AHPjjUjVpR3Ek0bYUADK6uPPMrhFPAR2vQJgGGy+Ynfck9Kv7JikRjrO
	Vg8LdFJyfg1U48YjqE7SWXu9ymB6jITtzt/MuRrs4w==
X-Google-Smtp-Source: AOwi7QCJhQawS5WJeOD+4bp/fZoHH9aSj1U/B9bwUgEAqWl2KfhoKtXuc6pHxwGAEBrgyV+kLarPzy0yF32rEBCgTcY=
X-Received: by 10.176.64.162 with SMTP id i31mr7571344uad.60.1506353626766;
	Mon, 25 Sep 2017 08:33:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Mon, 25 Sep 2017 08:33:46 -0700 (PDT)
In-Reply-To: <2247298.VirvghVmfO@peggleto-mobl.ger.corp.intel.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<CAC+thW0NX8opCrU3Q61LYd_iUdWZGyTt_oXSE4V=uYD60O_cuQ@mail.gmail.com>
	<1544326.TpQUvsiudI@peggleto-mobl.ger.corp.intel.com>
	<2247298.VirvghVmfO@peggleto-mobl.ger.corp.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Mon, 25 Sep 2017 17:33:46 +0200
Message-ID: <CAC+thW0rcZuB-y+=93srk203E+coR4G7r36stmz0UA-L5Td3nw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Mon, 25 Sep 2017 15:33:50 -0000
Content-Type: multipart/alternative; boundary="94eb2c122c50d461b0055a05484b"

--94eb2c122c50d461b0055a05484b
Content-Type: text/plain; charset="UTF-8"

Hi Paul,

I'm back to this issue after the weeken break. See below the feedback from
your suggestions.

On Thu, Sep 21, 2017 at 11:49 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton wrote:
> > On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbusera wrote:
> > > On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <
> > > paul.eggleton@linux.intel.com> wrote:
> > > > Right, so the next step would be looking for the hash for
> > > > python-native.do_populate_sysroot in conf/locked_sigs.inc within the
> > > > failed SDK install directory and then looking for that in both the
> sstate-
> > > > cache directory within the failed SDK and then in the sstate-cache
> > > > directory of the build that built it. I suspect it may not be there,
> but
> > > > let me know what you find.
> > >
> > > Good catch! In the failing SDK neither conf/locked_sigs.inc nor
> > > sstate-cache do include any python-native signature or object... Only
> > > python3-native stuff is there. Weird! As said, SDKs from the same build
> > > directory, used to work since a few weeks ago. May any recent change in
> > > poky master have caused this while periodically upgrading without
> > > regenerating the sstate-cache?
> >
> > No, I can't see any added references to python-native anywhere in the
> last few
> > weeks. If you do bitbake -c clean python-native and then rebuild the SDK
> does
> > the issue go away?
>
> Actually scratch that, that's not going to help. The question is where is
> this dependency coming from and why isn't it properly picked up such
> that it gets included. bitbake -g -c populate_sdk_ext your-image might be
> useful in determining that.
>

$ bitbake core-image-base-dlms -c populate_sdk_ext -g

Grepping task-depends.dot for "python-native" gives no match. Surprisingly
enough (at least for me) I read a different story when doing the same for
the image itself

$ bitbake core-image-base-dlms -g
$ grep python-native task-depends.dot
 "python-native.do_populate_lic" [label="python-native
do_populate_lic\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python[18/7956]
.7.13.bb"]
"python-native.do_populate_lic" -> "python-native.do_patch"
"python-native.do_prepare_recipe_sysroot" [label="python-native
do_prepare_recipe_sysroot\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/py
thon/python-native_2.7.13.bb"]
"python-native.do_prepare_recipe_sysroot" ->
"openssl-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"pkgconfig-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"automake-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"expat-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"sqlite3-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" -> "python-native.do_fetch"
"python-native.do_prepare_recipe_sysroot" ->
"bzip2-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"readline-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"zlib-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"autoconf-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"gnu-config-native.do_populate_sysroot"
"python-native.do_prepare_recipe_sysroot" ->
"libtool-native.do_populate_sysroot"
"python-native.do_rm_work_all" [label="python-native
do_rm_work_all\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python-native_2.7
.13.bb"]
"python-native.do_rm_work_all" -> "readline-native.do_rm_work"
"python-native.do_rm_work_all" -> "gnu-config-native.do_rm_work"
"python-native.do_rm_work_all" -> "openssl-native.do_rm_work"
"python-native.do_rm_work_all" -> "automake-native.do_rm_work"
"python-native.do_rm_work_all" -> "m4-native.do_rm_work"
"python-native.do_rm_work_all" -> "makedepend-native.do_rm_work"
"python-native.do_rm_work_all" -> "xproto-native.do_rm_work"
"python-native.do_rm_work_all" -> "bzip2-native.do_rm_work"
"python-native.do_rm_work_all" -> "ncurses-native.do_rm_work"
"python-native.do_rm_work_all" -> "python-native.do_rm_work"
"python-native.do_rm_work_all" -> "expat-native.do_rm_work"
"python-native.do_rm_work_all" -> "pigz-native.do_rm_work"
"python-native.do_rm_work_all" -> "libtool-native.do_rm_work"
"python-native.do_rm_work_all" -> "pkgconfig-native.do_rm_work"
"python-native.do_rm_work_all" -> "gettext-minimal-native.do_rm_work"
"python-native.do_rm_work_all" -> "util-macros-native.do_rm_work"
"python-native.do_rm_work_all" -> "quilt-native.do_rm_work"
"python-native.do_rm_work_all" -> "autoconf-native.do_rm_work"
"python-native.do_rm_work_all" -> "cryptodev-linux-native.do_rm_work"
"python-native.do_rm_work_all" -> "xz-native.do_rm_work"
"python-native.do_rm_work_all" -> "zlib-native.do_rm_work"
"python-native.do_rm_work_all" -> "texinfo-dummy-native.do_rm_work"
"python-native.do_rm_work_all" -> "sqlite3-native.do_rm_work"
"python-native.do_compile" [label="python-native
do_compile\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_compile" -> "python-native.do_configure"
"python-native.do_install" [label="python-native
do_install\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_install" -> "python-native.do_compile"
"bmap-tools-native.do_rm_work_all" -> "python-native.do_rm_work"
"python-native.do_build" [label="python-native
do_build\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_build" -> "python-native.do_populate_sysroot"
"python-native.do_build" -> "python-native.do_rm_work"
"python-native.do_build" -> "python-native.do_populate_lic"
"python-native.do_build" -> "python-native.do_rm_work_all"
"python-native.do_fetch" [label="python-native
do_fetch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_unpack" [label="python-native
do_unpack\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_unpack" -> "xz-native.do_populate_sysroot"
"python-native.do_unpack" -> "python-native.do_fetch"
"python-native.do_patch" [label="python-native
do_patch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_patch" -> "python-native.do_unpack"
"python-native.do_patch" -> "quilt-native.do_populate_sysroot"
"core-image-base-dlms.do_build" -> "python-native.do_build"
"python-native.do_configure" [label="python-native
do_configure\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python-native_2.7.13.
bb"]
"python-native.do_configure" -> "python-native.do_patch"
"python-native.do_configure" -> "python-native.do_prepare_recipe_sysroot"
"python-native.do_rm_work" [label="python-native
do_rm_work\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
python-native_2.7.13.bb"]
"python-native.do_rm_work" -> "python-native.do_populate_sysroot"
"python-native.do_rm_work" -> "python-native.do_populate_lic"
"python-native.do_populate_sysroot" [label="python-native
do_populate_sysroot\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python-
native_2.7.13.bb"]
"python-native.do_populate_sysroot" -> "python-native.do_install"

As expected, on the build bot that builds successfully installable SDKs,
both dependency graphs contain no mention of python-native. Time to nuke
the sstate-cache from the failing one or do you have any additional clue to
investigate further?

--94eb2c122c50d461b0055a05484b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Paul,<br><br></div>I&#39;m back to this issue afte=
r the weeken break. See below the feedback from your suggestions.<br><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep 21, 2017 at=
 11:49 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggle=
ton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span =
class=3D"gmail-">On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton=
 wrote:<br>
&gt; On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbusera wrote:<b=
r>
&gt; &gt; On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton &lt;<br>
&gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@li=
nux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; Right, so the next step would be looking for the hash for<br=
>
&gt; &gt; &gt; python-native.do_populate_<wbr>sysroot in conf/locked_sigs.i=
nc within the<br>
&gt; &gt; &gt; failed SDK install directory and then looking for that in bo=
th the sstate-<br>
&gt; &gt; &gt; cache directory within the failed SDK and then in the sstate=
-cache<br>
&gt; &gt; &gt; directory of the build that built it. I suspect it may not b=
e there, but<br>
&gt; &gt; &gt; let me know what you find.<br>
&gt; &gt;<br>
&gt; &gt; Good catch! In the failing SDK neither conf/locked_sigs.inc nor<b=
r>
&gt; &gt; sstate-cache do include any python-native signature or object... =
Only<br>
&gt; &gt; python3-native stuff is there. Weird! As said, SDKs from the same=
 build<br>
&gt; &gt; directory, used to work since a few weeks ago. May any recent cha=
nge in<br>
&gt; &gt; poky master have caused this while periodically upgrading without=
<br>
&gt; &gt; regenerating the sstate-cache?<br>
&gt;<br>
&gt; No, I can&#39;t see any added references to python-native anywhere in =
the last few<br>
&gt; weeks. If you do bitbake -c clean python-native and then rebuild the S=
DK does<br>
&gt; the issue go away?<br>
<br>
</span>Actually scratch that, that&#39;s not going to help. The question is=
 where is<br>
this dependency coming from and why isn&#39;t it properly picked up such<br=
>
that it gets included. bitbake -g -c populate_sdk_ext your-image might be<b=
r>
useful in determining that.<br></blockquote><div><br></div><div>$ bitbake c=
ore-image-base-dlms -c populate_sdk_ext -g</div><div><br></div><div>Greppin=
g task-depends.dot for &quot;python-native&quot; gives no match. Surprising=
ly enough (at least for me) I read a different story when doing the same fo=
r the image itself<br></div><div><br></div><div>$ bitbake core-image-base-d=
lms -g</div><div>$ grep python-native task-depends.dot</div><div>=C2=A0&quo=
t;python-native.do_populate_lic&quot; [label=3D&quot;python-native do_popul=
ate_lic\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/bui=
ld-poky/conf/../../layers/poky/meta/recipes-devtools/python/python[18/7956]=
<br>.<a href=3D"http://7.13.bb">7.13.bb</a>&quot;]<br>&quot;python-native.d=
o_populate_lic&quot; -&gt; &quot;python-native.do_patch&quot;<br>&quot;pyth=
on-native.do_prepare_recipe_sysroot&quot; [label=3D&quot;python-native do_p=
repare_recipe_sysroot\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/r=
epo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/py<br>th=
on/<a href=3D"http://python-native_2.7.13.bb">python-native_2.7.13.bb</a>&q=
uot;]<br>&quot;python-native.do_prepare_recipe_sysroot&quot; -&gt; &quot;op=
enssl-native.do_populate_sysroot&quot;<br>&quot;python-native.do_prepare_re=
cipe_sysroot&quot; -&gt; &quot;pkgconfig-native.do_populate_sysroot&quot;<b=
r>&quot;python-native.do_prepare_recipe_sysroot&quot; -&gt; &quot;automake-=
native.do_populate_sysroot&quot;<br>&quot;python-native.do_prepare_recipe_s=
ysroot&quot; -&gt; &quot;expat-native.do_populate_sysroot&quot;<br>&quot;py=
thon-native.do_prepare_recipe_sysroot&quot; -&gt; &quot;sqlite3-native.do_p=
opulate_sysroot&quot;<br>&quot;python-native.do_prepare_recipe_sysroot&quot=
; -&gt; &quot;python-native.do_fetch&quot;<br>&quot;python-native.do_prepar=
e_recipe_sysroot&quot; -&gt; &quot;bzip2-native.do_populate_sysroot&quot;<b=
r>&quot;python-native.do_prepare_recipe_sysroot&quot; -&gt; &quot;readline-=
native.do_populate_sysroot&quot;<br>&quot;python-native.do_prepare_recipe_s=
ysroot&quot; -&gt; &quot;zlib-native.do_populate_sysroot&quot;<br>&quot;pyt=
hon-native.do_prepare_recipe_sysroot&quot; -&gt; &quot;autoconf-native.do_p=
opulate_sysroot&quot;<br>&quot;python-native.do_prepare_recipe_sysroot&quot=
; -&gt; &quot;gnu-config-native.do_populate_sysroot&quot;<br>&quot;python-n=
ative.do_prepare_recipe_sysroot&quot; -&gt; &quot;libtool-native.do_populat=
e_sysroot&quot;<br>&quot;python-native.do_rm_work_all&quot; [label=3D&quot;=
python-native do_rm_work_all\n:2.7.13-r1.1\n/home/gizero/work/smartliving/d=
istro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/p=
ython/python-native_2.7<br>.<a href=3D"http://13.bb">13.bb</a>&quot;]<br>&q=
uot;python-native.do_rm_work_all&quot; -&gt; &quot;readline-native.do_rm_wo=
rk&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; &quot;gnu-config=
-native.do_rm_work&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; =
&quot;openssl-native.do_rm_work&quot;<br>&quot;python-native.do_rm_work_all=
&quot; -&gt; &quot;automake-native.do_rm_work&quot;<br>&quot;python-native.=
do_rm_work_all&quot; -&gt; &quot;m4-native.do_rm_work&quot;<br>&quot;python=
-native.do_rm_work_all&quot; -&gt; &quot;makedepend-native.do_rm_work&quot;=
<br>&quot;python-native.do_rm_work_all&quot; -&gt; &quot;xproto-native.do_r=
m_work&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; &quot;bzip2-=
native.do_rm_work&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; &=
quot;ncurses-native.do_rm_work&quot;<br>&quot;python-native.do_rm_work_all&=
quot; -&gt; &quot;python-native.do_rm_work&quot;<br>&quot;python-native.do_=
rm_work_all&quot; -&gt; &quot;expat-native.do_rm_work&quot;<br>&quot;python=
-native.do_rm_work_all&quot; -&gt; &quot;pigz-native.do_rm_work&quot;<br>&q=
uot;python-native.do_rm_work_all&quot; -&gt; &quot;libtool-native.do_rm_wor=
k&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; &quot;pkgconfig-n=
ative.do_rm_work&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; &q=
uot;gettext-minimal-native.do_rm_work&quot;<br>&quot;python-native.do_rm_wo=
rk_all&quot; -&gt; &quot;util-macros-native.do_rm_work&quot;<br>&quot;pytho=
n-native.do_rm_work_all&quot; -&gt; &quot;quilt-native.do_rm_work&quot;<br>=
&quot;python-native.do_rm_work_all&quot; -&gt; &quot;autoconf-native.do_rm_=
work&quot;<br>&quot;python-native.do_rm_work_all&quot; -&gt; &quot;cryptode=
v-linux-native.do_rm_work&quot;<br>&quot;python-native.do_rm_work_all&quot;=
 -&gt; &quot;xz-native.do_rm_work&quot;<br>&quot;python-native.do_rm_work_a=
ll&quot; -&gt; &quot;zlib-native.do_rm_work&quot;<br>&quot;python-native.do=
_rm_work_all&quot; -&gt; &quot;texinfo-dummy-native.do_rm_work&quot;<br>&qu=
ot;python-native.do_rm_work_all&quot; -&gt; &quot;sqlite3-native.do_rm_work=
&quot;<br>&quot;python-native.do_compile&quot; [label=3D&quot;python-native=
 do_compile\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master=
/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/<a href=3D"=
http://python-native_2.7.13.bb">python-native_2.7.13.bb</a>&quot;]<br>&quot=
;python-native.do_compile&quot; -&gt; &quot;python-native.do_configure&quot=
;<br>&quot;python-native.do_install&quot; [label=3D&quot;python-native do_i=
nstall\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/buil=
d-poky/conf/../../layers/poky/meta/recipes-devtools/python/<a href=3D"http:=
//python-native_2.7.13.bb">python-native_2.7.13.bb</a>&quot;]<br>&quot;pyth=
on-native.do_install&quot; -&gt; &quot;python-native.do_compile&quot;<br>&q=
uot;bmap-tools-native.do_rm_work_all&quot; -&gt; &quot;python-native.do_rm_=
work&quot;<br>&quot;python-native.do_build&quot; [label=3D&quot;python-nati=
ve do_build\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master=
/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/<a href=3D"=
http://python-native_2.7.13.bb">python-native_2.7.13.bb</a>&quot;]<br>&quot=
;python-native.do_build&quot; -&gt; &quot;python-native.do_populate_sysroot=
&quot;<br>&quot;python-native.do_build&quot; -&gt; &quot;python-native.do_r=
m_work&quot;<br>&quot;python-native.do_build&quot; -&gt; &quot;python-nativ=
e.do_populate_lic&quot;<br>&quot;python-native.do_build&quot; -&gt; &quot;p=
ython-native.do_rm_work_all&quot;<br>&quot;python-native.do_fetch&quot; [la=
bel=3D&quot;python-native do_fetch\n:2.7.13-r1.1\n/home/gizero/work/smartli=
ving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devt=
ools/python/<a href=3D"http://python-native_2.7.13.bb">python-native_2.7.13=
.bb</a>&quot;]<br>&quot;python-native.do_unpack&quot; [label=3D&quot;python=
-native do_unpack\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-=
master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/<a hr=
ef=3D"http://python-native_2.7.13.bb">python-native_2.7.13.bb</a>&quot;]<br=
>&quot;python-native.do_unpack&quot; -&gt; &quot;xz-native.do_populate_sysr=
oot&quot;<br>&quot;python-native.do_unpack&quot; -&gt; &quot;python-native.=
do_fetch&quot;<br>&quot;python-native.do_patch&quot; [label=3D&quot;python-=
native do_patch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-ma=
ster/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/<a href=
=3D"http://python-native_2.7.13.bb">python-native_2.7.13.bb</a>&quot;]<br>&=
quot;python-native.do_patch&quot; -&gt; &quot;python-native.do_unpack&quot;=
<br>&quot;python-native.do_patch&quot; -&gt; &quot;quilt-native.do_populate=
_sysroot&quot;<br>&quot;core-image-base-dlms.do_build&quot; -&gt; &quot;pyt=
hon-native.do_build&quot;<br>&quot;python-native.do_configure&quot; [label=
=3D&quot;python-native do_configure\n:2.7.13-r1.1\n/home/gizero/work/smartl=
iving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-dev=
tools/python/python-native_2.7.13.<br>bb&quot;]<br>&quot;python-native.do_c=
onfigure&quot; -&gt; &quot;python-native.do_patch&quot;<br>&quot;python-nat=
ive.do_configure&quot; -&gt; &quot;python-native.do_prepare_recipe_sysroot&=
quot;<br>&quot;python-native.do_rm_work&quot; [label=3D&quot;python-native =
do_rm_work\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/=
build-poky/conf/../../layers/poky/meta/recipes-devtools/python/<a href=3D"h=
ttp://python-native_2.7.13.bb">python-native_2.7.13.bb</a>&quot;]<br>&quot;=
python-native.do_rm_work&quot; -&gt; &quot;python-native.do_populate_sysroo=
t&quot;<br>&quot;python-native.do_rm_work&quot; -&gt; &quot;python-native.d=
o_populate_lic&quot;<br>&quot;python-native.do_populate_sysroot&quot; [labe=
l=3D&quot;python-native do_populate_sysroot\n:2.7.13-r1.1\n/home/gizero/wor=
k/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/rec=
ipes-devtools/python/python-<br><a href=3D"http://native_2.7.13.bb">native_=
2.7.13.bb</a>&quot;]<br>&quot;python-native.do_populate_sysroot&quot; -&gt;=
 &quot;python-native.do_install&quot;<br></div><br></div></div><div class=
=3D"gmail_extra">As expected, on the build bot that builds successfully ins=
tallable SDKs, both dependency graphs contain no mention of python-native. =
Time to nuke the sstate-cache from the failing one or do you have any addit=
ional clue to investigate further?<br></div></div>

--94eb2c122c50d461b0055a05484b--
