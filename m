Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EC12E00D14; Mon, 25 Sep 2017 22:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E853E00D10
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 22:18:51 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id q190so3087161vkd.13
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 22:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bg0eiDSrKTG3zaR0e7o+pmkBcQdkZXObJ8dLhZtx2Yw=;
	b=FHR2jwDOft8SeosG0TmpAN12kt28O5nv1gXp5Jgmxav2vuhaFVhD2v3XZlKAD93m6y
	Wtybh1G8vznO30mgxu9DINFoLklTb0JVaQ6Vnj4x1+AR55kl6oB2dFB323p50cyvg46Z
	zXRxZQiCdvka3MmxsslESYkN8xkAmW1Vdwm1dRYyWA4CNobozDIsok0MVVflODOD9mfr
	XBzEXCDp/woClwqcLyu6PwmMDrQ5w6Vsd9Uu6g9Dkci9aGcoPWtNChcG7fMu+lKUIR8g
	mgTjdAywlPqww819GTwhq/AAIQzUhg3DQIcnLrSq2XYThG3Pz5LJW+jYTpQ4084jSYu1
	iDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bg0eiDSrKTG3zaR0e7o+pmkBcQdkZXObJ8dLhZtx2Yw=;
	b=OrQwi7er3QXvx9qpxXiOr0JBBoA0g1WXfVQgddVCVgcbndd6kQDDCwIgKIbhAsIfdJ
	YKLF0bHCbIMS9AwMg4g/Cnocf05B474YvTOhJ++HO9LbpUFv0b/umfCyFFfqMVXuuFJN
	9A6YFSEL+wO2/52S5BCefRWvznaQNZA2JEgqEMhOXayRubPSECOg8MWpfnTVIScbHt7C
	aWqCegPiwcyyH1eBHLiVlb3fsAtX8/nlYz3XRnXR07C3J6jS+J51EwzfqiyqZe91oAvc
	AJ10l6me31uQ7RFSKZyBLvQ10Vm+mscWkjAKtmEGZwMgZrqQlV2et8EHbxId1XKxQBhg
	D4aw==
X-Gm-Message-State: AHPjjUgx1e6eS1zXy6EsAxBuElS9tF7HInIw2M2g0ccZi6cL4zFx8nWj
	bzqMBgn49XgP4yEwFzYPho8zxV8e3tTZ81AYtuH4aw==
X-Google-Smtp-Source: AOwi7QCZj6CVJPKv7n0pZ60ryG63Km6Nv2JIqRyjTP6+k/+GUhRI3kbdQpaAIB9xPHjwESHbcy80IkZJgL/ewIegcvE=
X-Received: by 10.31.4.131 with SMTP id 125mr7857383vke.88.1506403130102; Mon,
	25 Sep 2017 22:18:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Mon, 25 Sep 2017 22:18:49 -0700 (PDT)
In-Reply-To: <11108946.QmoIu7Nc6a@peggleto-mobl.ger.corp.intel.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<2247298.VirvghVmfO@peggleto-mobl.ger.corp.intel.com>
	<CAC+thW0rcZuB-y+=93srk203E+coR4G7r36stmz0UA-L5Td3nw@mail.gmail.com>
	<11108946.QmoIu7Nc6a@peggleto-mobl.ger.corp.intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 26 Sep 2017 07:18:49 +0200
Message-ID: <CAC+thW0xA3W82RXfXap_Btj=J3zECGVh9iZc6G9QPUQCUeC1SA@mail.gmail.com>
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
X-List-Received-Date: Tue, 26 Sep 2017 05:18:53 -0000
Content-Type: multipart/alternative; boundary="001a11465e14755daf055a10cf39"

--001a11465e14755daf055a10cf39
Content-Type: text/plain; charset="UTF-8"

Paul,

On Tue, Sep 26, 2017 at 6:33 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Andrea,
>
> On Tuesday, 26 September 2017 4:33:46 AM NZDT Andrea Galbusera wrote:
> > I'm back to this issue after the weeken break. See below the feedback
> from
> > your suggestions.
> >
> > On Thu, Sep 21, 2017 at 11:49 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> >
> > > On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton wrote:
> > > > On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbusera wrote:
> > > > > On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <
> > > > > paul.eggleton@linux.intel.com> wrote:
> > > > > > Right, so the next step would be looking for the hash for
> > > > > > python-native.do_populate_sysroot in conf/locked_sigs.inc
> within the
> > > > > > failed SDK install directory and then looking for that in both
> the
> > > sstate-
> > > > > > cache directory within the failed SDK and then in the
> sstate-cache
> > > > > > directory of the build that built it. I suspect it may not be
> there,
> > > but
> > > > > > let me know what you find.
> > > > >
> > > > > Good catch! In the failing SDK neither conf/locked_sigs.inc nor
> > > > > sstate-cache do include any python-native signature or object...
> Only
> > > > > python3-native stuff is there. Weird! As said, SDKs from the same
> build
> > > > > directory, used to work since a few weeks ago. May any recent
> change in
> > > > > poky master have caused this while periodically upgrading without
> > > > > regenerating the sstate-cache?
> > > >
> > > > No, I can't see any added references to python-native anywhere in the
> > > last few
> > > > weeks. If you do bitbake -c clean python-native and then rebuild the
> SDK
> > > does
> > > > the issue go away?
> > >
> > > Actually scratch that, that's not going to help. The question is where
> is
> > > this dependency coming from and why isn't it properly picked up such
> > > that it gets included. bitbake -g -c populate_sdk_ext your-image might
> be
> > > useful in determining that.
> > >
> >
> > $ bitbake core-image-base-dlms -c populate_sdk_ext -g
> >
> > Grepping task-depends.dot for "python-native" gives no match.
> Surprisingly
> > enough (at least for me) I read a different story when doing the same for
> > the image itself
> >
> > $ bitbake core-image-base-dlms -g
> > $ grep python-native task-depends.dot
> >  "python-native.do_populate_lic" [label="python-native
> > do_populate_lic\n:2.7.13-r1.1\n/home/gizero/work/
> smartliving/distro/repo-master/build-poky/conf/../../
> layers/poky/meta/recipes-devtools/python/python[18/7956]
> > .7.13.bb"]
> > "python-native.do_populate_lic" -> "python-native.do_patch"
> > "python-native.do_prepare_recipe_sysroot" [label="python-native
> > do_prepare_recipe_sysroot\n:2.7.13-r1.1\n/home/gizero/work/
> smartliving/distro/repo-master/build-poky/conf/../../
> layers/poky/meta/recipes-devtools/py
> > thon/python-native_2.7.13.bb"]
> > "python-native.do_prepare_recipe_sysroot" ->
> > "openssl-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "pkgconfig-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "automake-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "expat-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "sqlite3-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" -> "python-native.do_fetch"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "bzip2-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "readline-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "zlib-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "autoconf-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "gnu-config-native.do_populate_sysroot"
> > "python-native.do_prepare_recipe_sysroot" ->
> > "libtool-native.do_populate_sysroot"
> > "python-native.do_rm_work_all" [label="python-native
> > do_rm_work_all\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-
> master/build-poky/conf/../../layers/poky/meta/recipes-
> devtools/python/python-native_2.7
> > .13.bb"]
> > "python-native.do_rm_work_all" -> "readline-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "gnu-config-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "openssl-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "automake-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "m4-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "makedepend-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "xproto-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "bzip2-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "ncurses-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "python-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "expat-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "pigz-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "libtool-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "pkgconfig-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "gettext-minimal-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "util-macros-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "quilt-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "autoconf-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "cryptodev-linux-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "xz-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "zlib-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "texinfo-dummy-native.do_rm_work"
> > "python-native.do_rm_work_all" -> "sqlite3-native.do_rm_work"
> > "python-native.do_compile" [label="python-native
> > do_compile\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_compile" -> "python-native.do_configure"
> > "python-native.do_install" [label="python-native
> > do_install\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_install" -> "python-native.do_compile"
> > "bmap-tools-native.do_rm_work_all" -> "python-native.do_rm_work"
> > "python-native.do_build" [label="python-native
> > do_build\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_build" -> "python-native.do_populate_sysroot"
> > "python-native.do_build" -> "python-native.do_rm_work"
> > "python-native.do_build" -> "python-native.do_populate_lic"
> > "python-native.do_build" -> "python-native.do_rm_work_all"
> > "python-native.do_fetch" [label="python-native
> > do_fetch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_unpack" [label="python-native
> > do_unpack\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_unpack" -> "xz-native.do_populate_sysroot"
> > "python-native.do_unpack" -> "python-native.do_fetch"
> > "python-native.do_patch" [label="python-native
> > do_patch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_patch" -> "python-native.do_unpack"
> > "python-native.do_patch" -> "quilt-native.do_populate_sysroot"
> > "core-image-base-dlms.do_build" -> "python-native.do_build"
> > "python-native.do_configure" [label="python-native
> > do_configure\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/python-native_2.7.13.
> > bb"]
> > "python-native.do_configure" -> "python-native.do_patch"
> > "python-native.do_configure" -> "python-native.do_prepare_
> recipe_sysroot"
> > "python-native.do_rm_work" [label="python-native
> > do_rm_work\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
> distro/repo-master/build-poky/conf/../../layers/poky/meta/
> recipes-devtools/python/
> > python-native_2.7.13.bb"]
> > "python-native.do_rm_work" -> "python-native.do_populate_sysroot"
> > "python-native.do_rm_work" -> "python-native.do_populate_lic"
> > "python-native.do_populate_sysroot" [label="python-native
> > do_populate_sysroot\n:2.7.13-r1.1\n/home/gizero/work/
> smartliving/distro/repo-master/build-poky/conf/../../
> layers/poky/meta/recipes-devtools/python/python-
> > native_2.7.13.bb"]
> > "python-native.do_populate_sysroot" -> "python-native.do_install"
> >
> > As expected, on the build bot that builds successfully installable SDKs,
> > both dependency graphs contain no mention of python-native. Time to nuke
> > the sstate-cache from the failing one or do you have any additional clue
> to
> > investigate further?
>
> Deleting sstate-cache is very unlikely to help - these dependency
> relationships
> aren't stored in sstate (or at least they aren't stored there in a way that
> bitbake will take it as input for dependency graph generation).
>
> It looks like bmap-tools-native might be how the dependency is getting in -
> perhaps this is coming in conditionally through IMAGE_FSTYPES? For some
> unknown reason it also doesn't get triggered when building the eSDK but
> does
> when restoring the image dependencies within the eSDK.
>

Good catch! This explains why the two build systems behaves differently: a
little change in local.conf I didn't notice before... The "failing" system
does IMAGE_FSTYPES_append = " wic", likely bringing bmap-tools-native in,
while the "working" build bot doesn't. However, as you say, this still does
not explain why the eSDK is missing the python-native bits. BTW, "wic" is
in the IMAGE_FSTYPE of my usual build host since months and I'm pretty sure
it did build many successfully installable eSDK with that option in place:
but maybe other tasks which also depended on python-native got removed
along the way...
What I can do now is adding "wic" to IMAGE_FSTYPES on the other system and
see if I get the two scenarios equally misbehaving or not. Anything else or
different you can suggest to nail this down?

--001a11465e14755daf055a10cf39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Paul=
,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">On T=
ue, Sep 26, 2017 at 6:33 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi Andrea,<br>
<div><div class=3D"gmail-h5"><br>
On Tuesday, 26 September 2017 4:33:46 AM NZDT Andrea Galbusera wrote:<br>
&gt; I&#39;m back to this issue after the weeken break. See below the feedb=
ack from<br>
&gt; your suggestions.<br>
&gt;<br>
&gt; On Thu, Sep 21, 2017 at 11:49 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton wrote:=
<br>
&gt; &gt; &gt; On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbuser=
a wrote:<br>
&gt; &gt; &gt; &gt; On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton &lt;<br=
>
&gt; &gt; &gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.e=
ggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; Right, so the next step would be looking for the h=
ash for<br>
&gt; &gt; &gt; &gt; &gt; python-native.do_populate_<wbr>sysroot in conf/loc=
ked_sigs.inc within the<br>
&gt; &gt; &gt; &gt; &gt; failed SDK install directory and then looking for =
that in both the<br>
&gt; &gt; sstate-<br>
&gt; &gt; &gt; &gt; &gt; cache directory within the failed SDK and then in =
the sstate-cache<br>
&gt; &gt; &gt; &gt; &gt; directory of the build that built it. I suspect it=
 may not be there,<br>
&gt; &gt; but<br>
&gt; &gt; &gt; &gt; &gt; let me know what you find.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Good catch! In the failing SDK neither conf/locked_sigs=
.inc nor<br>
&gt; &gt; &gt; &gt; sstate-cache do include any python-native signature or =
object... Only<br>
&gt; &gt; &gt; &gt; python3-native stuff is there. Weird! As said, SDKs fro=
m the same build<br>
&gt; &gt; &gt; &gt; directory, used to work since a few weeks ago. May any =
recent change in<br>
&gt; &gt; &gt; &gt; poky master have caused this while periodically upgradi=
ng without<br>
&gt; &gt; &gt; &gt; regenerating the sstate-cache?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; No, I can&#39;t see any added references to python-native an=
ywhere in the<br>
&gt; &gt; last few<br>
&gt; &gt; &gt; weeks. If you do bitbake -c clean python-native and then reb=
uild the SDK<br>
&gt; &gt; does<br>
&gt; &gt; &gt; the issue go away?<br>
&gt; &gt;<br>
&gt; &gt; Actually scratch that, that&#39;s not going to help. The question=
 is where is<br>
&gt; &gt; this dependency coming from and why isn&#39;t it properly picked =
up such<br>
&gt; &gt; that it gets included. bitbake -g -c populate_sdk_ext your-image =
might be<br>
&gt; &gt; useful in determining that.<br>
&gt; &gt;<br>
&gt;<br>
&gt; $ bitbake core-image-base-dlms -c populate_sdk_ext -g<br>
&gt;<br>
&gt; Grepping task-depends.dot for &quot;python-native&quot; gives no match=
. Surprisingly<br>
&gt; enough (at least for me) I read a different story when doing the same =
for<br>
&gt; the image itself<br>
&gt;<br>
&gt; $ bitbake core-image-base-dlms -g<br>
&gt; $ grep python-native task-depends.dot<br>
&gt;=C2=A0 &quot;python-native.do_populate_<wbr>lic&quot; [label=3D&quot;py=
thon-native<br>
&gt; do_populate_lic\n:2.7.13-r1.1\<wbr>n/home/gizero/work/<wbr>smartliving=
/distro/repo-<wbr>master/build-poky/conf/../../<wbr>layers/poky/meta/recipe=
s-<wbr>devtools/python/python[18/<wbr>7956]<br>
&gt; .<a href=3D"http://7.13.bb" rel=3D"noreferrer" target=3D"_blank">7.13.=
bb</a>&quot;]<br>
&gt; &quot;python-native.do_populate_<wbr>lic&quot; -&gt; &quot;python-nati=
ve.do_patch&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; [label=3D&quo=
t;python-native<br>
&gt; do_prepare_recipe_sysroot\n:2.<wbr>7.13-r1.1\n/home/gizero/work/<wbr>s=
martliving/distro/repo-<wbr>master/build-poky/conf/../../<wbr>layers/poky/m=
eta/recipes-<wbr>devtools/py<br>
&gt; thon/<a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" tar=
get=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;openssl-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;pkgconfig-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;automake-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;expat-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;sqlite3-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt; &quot;p=
ython-native.do_fetch&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;bzip2-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;readline-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;zlib-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;autoconf-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;gnu-config-native.do_<wbr>populate_sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_<wbr>recipe_sysroot&quot; -&gt;<br>
&gt; &quot;libtool-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; [label=3D&quot;python-native<=
br>
&gt; do_rm_work_all\n:2.7.13-r1.1\<wbr>n/home/gizero/work/<wbr>smartliving/=
distro/repo-<wbr>master/build-poky/conf/../../<wbr>layers/poky/meta/recipes=
-<wbr>devtools/python/python-native_<wbr>2.7<br>
&gt; .<a href=3D"http://13.bb" rel=3D"noreferrer" target=3D"_blank">13.bb</=
a>&quot;]<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;readline-native.d=
o_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;gnu-config-native=
.do_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;openssl-native.do=
_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;automake-native.d=
o_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;m4-native.do_rm_w=
ork&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;makedepend-native=
.do_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;xproto-native.do_=
rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;bzip2-native.do_r=
m_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;ncurses-native.do=
_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;python-native.do_=
rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;expat-native.do_r=
m_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;pigz-native.do_rm=
_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;libtool-native.do=
_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;pkgconfig-native.=
do_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;gettext-minimal-n=
ative.do_rm_<wbr>work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;util-macros-nativ=
e.do_rm_<wbr>work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;quilt-native.do_r=
m_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;autoconf-native.d=
o_rm_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;cryptodev-linux-n=
ative.do_rm_<wbr>work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;xz-native.do_rm_w=
ork&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;zlib-native.do_rm=
_work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;texinfo-dummy-nat=
ive.do_rm_<wbr>work&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;sqlite3-native.do=
_rm_work&quot;<br>
&gt; &quot;python-native.do_compile&quot; [label=3D&quot;python-native<br>
&gt; do_compile\n:2.7.13-r1.1\n/<wbr>home/gizero/work/smartliving/<wbr>dist=
ro/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-dev=
tools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_compile&quot; -&gt; &quot;python-native.do_conf=
igure&quot;<br>
&gt; &quot;python-native.do_install&quot; [label=3D&quot;python-native<br>
&gt; do_install\n:2.7.13-r1.1\n/<wbr>home/gizero/work/smartliving/<wbr>dist=
ro/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-dev=
tools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_install&quot; -&gt; &quot;python-native.do_comp=
ile&quot;<br>
&gt; &quot;bmap-tools-native.do_rm_work_<wbr>all&quot; -&gt; &quot;python-n=
ative.do_rm_work&quot;<br>
&gt; &quot;python-native.do_build&quot; [label=3D&quot;python-native<br>
&gt; do_build\n:2.7.13-r1.1\n/home/<wbr>gizero/work/smartliving/<wbr>distro=
/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-devto=
ols/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_popula=
te_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_rm_wor=
k&quot;<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_popula=
te_<wbr>lic&quot;<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_rm_wor=
k_all&quot;<br>
&gt; &quot;python-native.do_fetch&quot; [label=3D&quot;python-native<br>
&gt; do_fetch\n:2.7.13-r1.1\n/home/<wbr>gizero/work/smartliving/<wbr>distro=
/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-devto=
ols/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_unpack&quot; [label=3D&quot;python-native<br>
&gt; do_unpack\n:2.7.13-r1.1\n/<wbr>home/gizero/work/smartliving/<wbr>distr=
o/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-devt=
ools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_unpack&quot; -&gt; &quot;xz-native.do_populate_=
<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_unpack&quot; -&gt; &quot;python-native.do_fetch=
&quot;<br>
&gt; &quot;python-native.do_patch&quot; [label=3D&quot;python-native<br>
&gt; do_patch\n:2.7.13-r1.1\n/home/<wbr>gizero/work/smartliving/<wbr>distro=
/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-devto=
ols/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_patch&quot; -&gt; &quot;python-native.do_unpack=
&quot;<br>
&gt; &quot;python-native.do_patch&quot; -&gt; &quot;quilt-native.do_populat=
e_<wbr>sysroot&quot;<br>
&gt; &quot;core-image-base-dlms.do_<wbr>build&quot; -&gt; &quot;python-nati=
ve.do_build&quot;<br>
&gt; &quot;python-native.do_configure&quot; [label=3D&quot;python-native<br=
>
&gt; do_configure\n:2.7.13-r1.1\n/<wbr>home/gizero/work/smartliving/<wbr>di=
stro/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-d=
evtools/python/<wbr>python-native_2.7.13.<br>
&gt; bb&quot;]<br>
&gt; &quot;python-native.do_configure&quot; -&gt; &quot;python-native.do_pa=
tch&quot;<br>
&gt; &quot;python-native.do_configure&quot; -&gt; &quot;python-native.do_pr=
epare_<wbr>recipe_sysroot&quot;<br>
&gt; &quot;python-native.do_rm_work&quot; [label=3D&quot;python-native<br>
&gt; do_rm_work\n:2.7.13-r1.1\n/<wbr>home/gizero/work/smartliving/<wbr>dist=
ro/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/<wbr>recipes-dev=
tools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_rm_work&quot; -&gt; &quot;python-native.do_popu=
late_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_rm_work&quot; -&gt; &quot;python-native.do_popu=
late_<wbr>lic&quot;<br>
&gt; &quot;python-native.do_populate_<wbr>sysroot&quot; [label=3D&quot;pyth=
on-native<br>
&gt; do_populate_sysroot\n:2.7.13-<wbr>r1.1\n/home/gizero/work/<wbr>smartli=
ving/distro/repo-<wbr>master/build-poky/conf/../../<wbr>layers/poky/meta/re=
cipes-<wbr>devtools/python/python-<br>
&gt; <a href=3D"http://native_2.7.13.bb" rel=3D"noreferrer" target=3D"_blan=
k">native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_populate_<wbr>sysroot&quot; -&gt; &quot;python-=
native.do_install&quot;<br>
&gt;<br>
&gt; As expected, on the build bot that builds successfully installable SDK=
s,<br>
&gt; both dependency graphs contain no mention of python-native. Time to nu=
ke<br>
&gt; the sstate-cache from the failing one or do you have any additional cl=
ue to<br>
&gt; investigate further?<br>
<br>
</div></div>Deleting sstate-cache is very unlikely to help - these dependen=
cy relationships<br>
aren&#39;t stored in sstate (or at least they aren&#39;t stored there in a =
way that<br>
bitbake will take it as input for dependency graph generation).<br>
<br>
It looks like bmap-tools-native might be how the dependency is getting in -=
<br>
perhaps this is coming in conditionally through IMAGE_FSTYPES? For some<br>
unknown reason it also doesn&#39;t get triggered when building the eSDK but=
 does<br>
when restoring the image dependencies within the eSDK.<br></blockquote><div=
><br></div><div>Good catch! This explains why the two build systems behaves=
 differently: a little change in local.conf I didn&#39;t notice before... T=
he &quot;failing&quot; system does IMAGE_FSTYPES_append =3D &quot; wic&quot=
;, likely bringing bmap-tools-native in, while the &quot;working&quot; buil=
d bot doesn&#39;t. However, as you say, this still does not explain why the=
 eSDK is missing the python-native bits. BTW, &quot;wic&quot; is in the IMA=
GE_FSTYPE of my usual build host since months and I&#39;m pretty sure it di=
d build many successfully installable eSDK with that option in place: but m=
aybe other tasks which also depended on python-native got removed along the=
 way...=C2=A0</div><div>What I can do now is adding &quot;wic&quot; to IMAG=
E_FSTYPES on the other system and see if I get the two scenarios equally mi=
sbehaving or not. Anything else or different you can suggest to nail this d=
own?</div></div></div></div>

--001a11465e14755daf055a10cf39--
