Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7510E00B1B; Mon,  2 Oct 2017 10:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.45 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D768CE007EF
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 10:20:15 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id q190so3221745vkd.13
	for <yocto@yoctoproject.org>; Mon, 02 Oct 2017 10:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1nbDI/xzbqOiQ+c/X9/QkUcE5bgj5XVvgwEC5051Kc4=;
	b=DlZVtk7DAgDiT+wyrO2PZ7AlR4k78haBdhEMjZWmp5khFmQTc2VB4wH9H+Pd+QcIYU
	e25ogRD6qdx3119g8zSdRfCqy9zT68I6HBU5/8GmWPEK+N+xGdrIecU0jJWV8gxWbsiP
	lA3X/78eaH6u3N+L/vMxntq8DKXVO85ligy57aO80+Z69sqGeFAmSP1qZ0lHSx1DvuyS
	0K2ERIsUg3B8AjV6Xp6vnYp6BtXGOEsEXbTdIjTz9QKn5tCi7u3QilfrzhM1UdqfhFoi
	zK++hpd+xdPwWQ7P9Vq+vdDTDWiOpzpS5VY4iejhpzFKXVg4M6Xmm3A7z/8sVJu+IYwT
	5eHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1nbDI/xzbqOiQ+c/X9/QkUcE5bgj5XVvgwEC5051Kc4=;
	b=f441MYr1+TpIuMi2mgtHH6cOdabK9LzJ6Y//jItqIF7z+/5qbna8HfVBtjrgCerQlk
	ho5i7vTfbBqzSrl3phMeMl5IWdLQbIqgzRw2/bZOxLe9kHDgYR0VR2fvaMB56o04topV
	OqOLfx9OXHXFjXB5ij56XJ7q05YFm2vVfLVROG7kGOUyjN1bc1XDxR7RODjW5mArZIjc
	tUyuQvkcKQb7eqRh2HwiKGGbFLMIXWF1uW2jL7Gf1w7b2Aa93MPUUvX2CaM0oFwwnZLQ
	37gFsjT/pOhMXOUhMAGvEEg5iWhgvZI746VyDSFM+oPjovkxpjFgeL9up7xU0nNcI46k
	Km3w==
X-Gm-Message-State: AHPjjUhAJhcfWki60+hcTVwAX8Nc8AjE8NN5kYG4bt+7Z/RyF7gck15Y
	ZOJe3EFX4xm8GM5sHehdkjAnjrA1FD2nNn4RJy4=
X-Google-Smtp-Source: AOwi7QCCMZASfULrJ0wcNEomyJIzPDPMFZ46amX9etTy73Z7LfBS6BNQ/bVv1zX9LZgcarzEoGi2c4OfIUNtOHwZt5Y=
X-Received: by 10.31.137.146 with SMTP id l140mr8782013vkd.137.1506964814938; 
	Mon, 02 Oct 2017 10:20:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.71.83 with HTTP; Mon, 2 Oct 2017 10:20:14 -0700 (PDT)
In-Reply-To: <CAC+thW0xA3W82RXfXap_Btj=J3zECGVh9iZc6G9QPUQCUeC1SA@mail.gmail.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<2247298.VirvghVmfO@peggleto-mobl.ger.corp.intel.com>
	<CAC+thW0rcZuB-y+=93srk203E+coR4G7r36stmz0UA-L5Td3nw@mail.gmail.com>
	<11108946.QmoIu7Nc6a@peggleto-mobl.ger.corp.intel.com>
	<CAC+thW0xA3W82RXfXap_Btj=J3zECGVh9iZc6G9QPUQCUeC1SA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Mon, 2 Oct 2017 19:20:14 +0200
Message-ID: <CAC+thW23Yn9R8NVPS4Sr5Ef+9Qf7GRKokgbLOQ1ZMLZ6S+FEyQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 02 Oct 2017 17:20:17 -0000
Content-Type: multipart/alternative; boundary="001a114593ee7bc6b5055a9396cf"

--001a114593ee7bc6b5055a9396cf
Content-Type: text/plain; charset="UTF-8"

Hi Paul,

On Tue, Sep 26, 2017 at 7:18 AM, Andrea Galbusera <gizero@gmail.com> wrote:

> Paul,
>
> On Tue, Sep 26, 2017 at 6:33 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> Hi Andrea,
>>
>> On Tuesday, 26 September 2017 4:33:46 AM NZDT Andrea Galbusera wrote:
>> > I'm back to this issue after the weeken break. See below the feedback
>> from
>> > your suggestions.
>> >
>> > On Thu, Sep 21, 2017 at 11:49 PM, Paul Eggleton <
>> > paul.eggleton@linux.intel.com> wrote:
>> >
>> > > On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton wrote:
>> > > > On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbusera wrote:
>> > > > > On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <
>> > > > > paul.eggleton@linux.intel.com> wrote:
>> > > > > > Right, so the next step would be looking for the hash for
>> > > > > > python-native.do_populate_sysroot in conf/locked_sigs.inc
>> within the
>> > > > > > failed SDK install directory and then looking for that in both
>> the
>> > > sstate-
>> > > > > > cache directory within the failed SDK and then in the
>> sstate-cache
>> > > > > > directory of the build that built it. I suspect it may not be
>> there,
>> > > but
>> > > > > > let me know what you find.
>> > > > >
>> > > > > Good catch! In the failing SDK neither conf/locked_sigs.inc nor
>> > > > > sstate-cache do include any python-native signature or object...
>> Only
>> > > > > python3-native stuff is there. Weird! As said, SDKs from the same
>> build
>> > > > > directory, used to work since a few weeks ago. May any recent
>> change in
>> > > > > poky master have caused this while periodically upgrading without
>> > > > > regenerating the sstate-cache?
>> > > >
>> > > > No, I can't see any added references to python-native anywhere in
>> the
>> > > last few
>> > > > weeks. If you do bitbake -c clean python-native and then rebuild
>> the SDK
>> > > does
>> > > > the issue go away?
>> > >
>> > > Actually scratch that, that's not going to help. The question is
>> where is
>> > > this dependency coming from and why isn't it properly picked up such
>> > > that it gets included. bitbake -g -c populate_sdk_ext your-image
>> might be
>> > > useful in determining that.
>> > >
>> >
>> > $ bitbake core-image-base-dlms -c populate_sdk_ext -g
>> >
>> > Grepping task-depends.dot for "python-native" gives no match.
>> Surprisingly
>> > enough (at least for me) I read a different story when doing the same
>> for
>> > the image itself
>> >
>> > $ bitbake core-image-base-dlms -g
>> > $ grep python-native task-depends.dot
>> >  "python-native.do_populate_lic" [label="python-native
>> > do_populate_lic\n:2.7.13-r1.1\n/home/gizero/work/smartliving
>> /distro/repo-master/build-poky/conf/../../layers/poky/meta/r
>> ecipes-devtools/python/python[18/7956]
>> > .7.13.bb"]
>> > "python-native.do_populate_lic" -> "python-native.do_patch"
>> > "python-native.do_prepare_recipe_sysroot" [label="python-native
>> > do_prepare_recipe_sysroot\n:2.7.13-r1.1\n/home/gizero/work/s
>> martliving/distro/repo-master/build-poky/conf/../../layers/p
>> oky/meta/recipes-devtools/py
>> > thon/python-native_2.7.13.bb"]
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "openssl-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "pkgconfig-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "automake-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "expat-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "sqlite3-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" -> "python-native.do_fetch"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "bzip2-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "readline-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "zlib-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "autoconf-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "gnu-config-native.do_populate_sysroot"
>> > "python-native.do_prepare_recipe_sysroot" ->
>> > "libtool-native.do_populate_sysroot"
>> > "python-native.do_rm_work_all" [label="python-native
>> > do_rm_work_all\n:2.7.13-r1.1\n/home/gizero/work/smartliving/
>> distro/repo-master/build-poky/conf/../../layers/poky/meta/re
>> cipes-devtools/python/python-native_2.7
>> > .13.bb"]
>> > "python-native.do_rm_work_all" -> "readline-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "gnu-config-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "openssl-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "automake-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "m4-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "makedepend-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "xproto-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "bzip2-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "ncurses-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "python-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "expat-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "pigz-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "libtool-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "pkgconfig-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "gettext-minimal-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "util-macros-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "quilt-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "autoconf-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "cryptodev-linux-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "xz-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "zlib-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "texinfo-dummy-native.do_rm_work"
>> > "python-native.do_rm_work_all" -> "sqlite3-native.do_rm_work"
>> > "python-native.do_compile" [label="python-native
>> > do_compile\n:2.7.13-r1.1\n/home/gizero/work/smartliving/dist
>> ro/repo-master/build-poky/conf/../../layers/poky/meta/recipe
>> s-devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_compile" -> "python-native.do_configure"
>> > "python-native.do_install" [label="python-native
>> > do_install\n:2.7.13-r1.1\n/home/gizero/work/smartliving/dist
>> ro/repo-master/build-poky/conf/../../layers/poky/meta/recipe
>> s-devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_install" -> "python-native.do_compile"
>> > "bmap-tools-native.do_rm_work_all" -> "python-native.do_rm_work"
>> > "python-native.do_build" [label="python-native
>> > do_build\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro
>> /repo-master/build-poky/conf/../../layers/poky/meta/recipes-
>> devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_build" -> "python-native.do_populate_sysroot"
>> > "python-native.do_build" -> "python-native.do_rm_work"
>> > "python-native.do_build" -> "python-native.do_populate_lic"
>> > "python-native.do_build" -> "python-native.do_rm_work_all"
>> > "python-native.do_fetch" [label="python-native
>> > do_fetch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro
>> /repo-master/build-poky/conf/../../layers/poky/meta/recipes-
>> devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_unpack" [label="python-native
>> > do_unpack\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distr
>> o/repo-master/build-poky/conf/../../layers/poky/meta/recipes
>> -devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_unpack" -> "xz-native.do_populate_sysroot"
>> > "python-native.do_unpack" -> "python-native.do_fetch"
>> > "python-native.do_patch" [label="python-native
>> > do_patch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro
>> /repo-master/build-poky/conf/../../layers/poky/meta/recipes-
>> devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_patch" -> "python-native.do_unpack"
>> > "python-native.do_patch" -> "quilt-native.do_populate_sysroot"
>> > "core-image-base-dlms.do_build" -> "python-native.do_build"
>> > "python-native.do_configure" [label="python-native
>> > do_configure\n:2.7.13-r1.1\n/home/gizero/work/smartliving/di
>> stro/repo-master/build-poky/conf/../../layers/poky/meta/reci
>> pes-devtools/python/python-native_2.7.13.
>> > bb"]
>> > "python-native.do_configure" -> "python-native.do_patch"
>> > "python-native.do_configure" -> "python-native.do_prepare_reci
>> pe_sysroot"
>> > "python-native.do_rm_work" [label="python-native
>> > do_rm_work\n:2.7.13-r1.1\n/home/gizero/work/smartliving/dist
>> ro/repo-master/build-poky/conf/../../layers/poky/meta/recipe
>> s-devtools/python/
>> > python-native_2.7.13.bb"]
>> > "python-native.do_rm_work" -> "python-native.do_populate_sysroot"
>> > "python-native.do_rm_work" -> "python-native.do_populate_lic"
>> > "python-native.do_populate_sysroot" [label="python-native
>> > do_populate_sysroot\n:2.7.13-r1.1\n/home/gizero/work/smartli
>> ving/distro/repo-master/build-poky/conf/../../layers/poky/me
>> ta/recipes-devtools/python/python-
>> > native_2.7.13.bb"]
>> > "python-native.do_populate_sysroot" -> "python-native.do_install"
>> >
>> > As expected, on the build bot that builds successfully installable SDKs,
>> > both dependency graphs contain no mention of python-native. Time to nuke
>> > the sstate-cache from the failing one or do you have any additional
>> clue to
>> > investigate further?
>>
>> Deleting sstate-cache is very unlikely to help - these dependency
>> relationships
>> aren't stored in sstate (or at least they aren't stored there in a way
>> that
>> bitbake will take it as input for dependency graph generation).
>>
>> It looks like bmap-tools-native might be how the dependency is getting in
>> -
>> perhaps this is coming in conditionally through IMAGE_FSTYPES? For some
>> unknown reason it also doesn't get triggered when building the eSDK but
>> does
>> when restoring the image dependencies within the eSDK.
>>
>
> Good catch! This explains why the two build systems behaves differently: a
> little change in local.conf I didn't notice before... The "failing" system
> does IMAGE_FSTYPES_append = " wic", likely bringing bmap-tools-native in,
> while the "working" build bot doesn't. However, as you say, this still does
> not explain why the eSDK is missing the python-native bits. BTW, "wic" is
> in the IMAGE_FSTYPE of my usual build host since months and I'm pretty sure
> it did build many successfully installable eSDK with that option in place:
> but maybe other tasks which also depended on python-native got removed
> along the way...
> What I can do now is adding "wic" to IMAGE_FSTYPES on the other system and
> see if I get the two scenarios equally misbehaving or not. Anything else or
> different you can suggest to nail this down?
>

Just noticed this thread [1] on the list and the corresponding bug [2]. Do
you think this issue and the eSDKs with missing python-native can relate to
each other?

[1] https://lists.yoctoproject.org/pipermail/yocto/2017-September/038199.
html
[2] https://bugzilla.yoctoproject.org/show_bug.cgi?id=12148

--001a114593ee7bc6b5055a9396cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi P=
aul,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">O=
n Tue, Sep 26, 2017 at 7:18 AM, Andrea Galbusera <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Paul,</div><=
div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote"><div><div cl=
ass=3D"m_6193618520157148359gmail-m_193840837664023303gmail-m_-636279438469=
5382573h5">On Tue, Sep 26, 2017 at 6:33 AM, Paul Eggleton <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">pau=
l.eggleton@linux.intel.com</a><wbr>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi Andrea,<br>
<div><div class=3D"m_6193618520157148359gmail-m_193840837664023303gmail-m_-=
6362794384695382573m_-2696021252065942545gmail-h5"><br>
On Tuesday, 26 September 2017 4:33:46 AM NZDT Andrea Galbusera wrote:<br>
&gt; I&#39;m back to this issue after the weeken break. See below the feedb=
ack from<br>
&gt; your suggestions.<br>
&gt;<br>
&gt; On Thu, Sep 21, 2017 at 11:49 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">pau=
l.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton wrote:=
<br>
&gt; &gt; &gt; On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbuser=
a wrote:<br>
&gt; &gt; &gt; &gt; On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton &lt;<br=
>
&gt; &gt; &gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; Right, so the next step would be looking for the h=
ash for<br>
&gt; &gt; &gt; &gt; &gt; python-native.do_populate_sysr<wbr>oot in conf/loc=
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
&gt;=C2=A0 &quot;python-native.do_populate_lic<wbr>&quot; [label=3D&quot;py=
thon-native<br>
&gt; do_populate_lic\n:2.7.13-r1.1\<wbr>n/home/gizero/work/smartliving<wbr>=
/distro/repo-master/build-poky<wbr>/conf/../../layers/poky/meta/r<wbr>ecipe=
s-devtools/python/python[<wbr>18/7956]<br>
&gt; .<a href=3D"http://7.13.bb" rel=3D"noreferrer" target=3D"_blank">7.13.=
bb</a>&quot;]<br>
&gt; &quot;python-native.do_populate_lic<wbr>&quot; -&gt; &quot;python-nati=
ve.do_patch&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; [label=3D&quo=
t;python-native<br>
&gt; do_prepare_recipe_sysroot\n:2.<wbr>7.13-r1.1\n/home/gizero/work/s<wbr>=
martliving/distro/repo-master/<wbr>build-poky/conf/../../layers/p<wbr>oky/m=
eta/recipes-devtools/py<br>
&gt; thon/<a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" tar=
get=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;openssl-native.do_populate_sy<wbr>sroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;pkgconfig-native.do_populate_<wbr>sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;automake-native.do_populate_s<wbr>ysroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;expat-native.do_populate_sysr<wbr>oot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;sqlite3-native.do_populate_sy<wbr>sroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt; &quot;p=
ython-native.do_fetch&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;bzip2-native.do_populate_sysr<wbr>oot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;readline-native.do_populate_s<wbr>ysroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;zlib-native.do_populate_sysro<wbr>ot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;autoconf-native.do_populate_s<wbr>ysroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;gnu-config-native.do_populate<wbr>_sysroot&quot;<br>
&gt; &quot;python-native.do_prepare_reci<wbr>pe_sysroot&quot; -&gt;<br>
&gt; &quot;libtool-native.do_populate_sy<wbr>sroot&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; [label=3D&quot;python-native<=
br>
&gt; do_rm_work_all\n:2.7.13-r1.1\n<wbr>/home/gizero/work/smartliving/<wbr>=
distro/repo-master/build-poky/<wbr>conf/../../layers/poky/meta/re<wbr>cipes=
-devtools/python/python-n<wbr>ative_2.7<br>
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
e.do_rm_work<wbr>&quot;<br>
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
ive.do_rm_wo<wbr>rk&quot;<br>
&gt; &quot;python-native.do_rm_work_all&quot; -&gt; &quot;sqlite3-native.do=
_rm_work&quot;<br>
&gt; &quot;python-native.do_compile&quot; [label=3D&quot;python-native<br>
&gt; do_compile\n:2.7.13-r1.1\n/hom<wbr>e/gizero/work/smartliving/dist<wbr>=
ro/repo-master/build-poky/conf<wbr>/../../layers/poky/meta/recipe<wbr>s-dev=
tools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_compile&quot; -&gt; &quot;python-native.do_conf=
igure&quot;<br>
&gt; &quot;python-native.do_install&quot; [label=3D&quot;python-native<br>
&gt; do_install\n:2.7.13-r1.1\n/hom<wbr>e/gizero/work/smartliving/dist<wbr>=
ro/repo-master/build-poky/conf<wbr>/../../layers/poky/meta/recipe<wbr>s-dev=
tools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_install&quot; -&gt; &quot;python-native.do_comp=
ile&quot;<br>
&gt; &quot;bmap-tools-native.do_rm_work_<wbr>all&quot; -&gt; &quot;python-n=
ative.do_rm_work&quot;<br>
&gt; &quot;python-native.do_build&quot; [label=3D&quot;python-native<br>
&gt; do_build\n:2.7.13-r1.1\n/home/<wbr>gizero/work/smartliving/distro<wbr>=
/repo-master/build-poky/conf/.<wbr>./../layers/poky/meta/recipes-<wbr>devto=
ols/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_popula=
te_sys<wbr>root&quot;<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_rm_wor=
k&quot;<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_popula=
te_lic<wbr>&quot;<br>
&gt; &quot;python-native.do_build&quot; -&gt; &quot;python-native.do_rm_wor=
k_all&quot;<br>
&gt; &quot;python-native.do_fetch&quot; [label=3D&quot;python-native<br>
&gt; do_fetch\n:2.7.13-r1.1\n/home/<wbr>gizero/work/smartliving/distro<wbr>=
/repo-master/build-poky/conf/.<wbr>./../layers/poky/meta/recipes-<wbr>devto=
ols/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_unpack&quot; [label=3D&quot;python-native<br>
&gt; do_unpack\n:2.7.13-r1.1\n/home<wbr>/gizero/work/smartliving/distr<wbr>=
o/repo-master/build-poky/conf/<wbr>../../layers/poky/meta/recipes<wbr>-devt=
ools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_unpack&quot; -&gt; &quot;xz-native.do_populate_=
sysroot<wbr>&quot;<br>
&gt; &quot;python-native.do_unpack&quot; -&gt; &quot;python-native.do_fetch=
&quot;<br>
&gt; &quot;python-native.do_patch&quot; [label=3D&quot;python-native<br>
&gt; do_patch\n:2.7.13-r1.1\n/home/<wbr>gizero/work/smartliving/distro<wbr>=
/repo-master/build-poky/conf/.<wbr>./../layers/poky/meta/recipes-<wbr>devto=
ols/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_patch&quot; -&gt; &quot;python-native.do_unpack=
&quot;<br>
&gt; &quot;python-native.do_patch&quot; -&gt; &quot;quilt-native.do_populat=
e_sysr<wbr>oot&quot;<br>
&gt; &quot;core-image-base-dlms.do_build<wbr>&quot; -&gt; &quot;python-nati=
ve.do_build&quot;<br>
&gt; &quot;python-native.do_configure&quot; [label=3D&quot;python-native<br=
>
&gt; do_configure\n:2.7.13-r1.1\n/h<wbr>ome/gizero/work/smartliving/di<wbr>=
stro/repo-master/build-poky/co<wbr>nf/../../layers/poky/meta/reci<wbr>pes-d=
evtools/python/python-nat<wbr>ive_2.7.13.<br>
&gt; bb&quot;]<br>
&gt; &quot;python-native.do_configure&quot; -&gt; &quot;python-native.do_pa=
tch&quot;<br>
&gt; &quot;python-native.do_configure&quot; -&gt; &quot;python-native.do_pr=
epare_reci<wbr>pe_sysroot&quot;<br>
&gt; &quot;python-native.do_rm_work&quot; [label=3D&quot;python-native<br>
&gt; do_rm_work\n:2.7.13-r1.1\n/hom<wbr>e/gizero/work/smartliving/dist<wbr>=
ro/repo-master/build-poky/conf<wbr>/../../layers/poky/meta/recipe<wbr>s-dev=
tools/python/<br>
&gt; <a href=3D"http://python-native_2.7.13.bb" rel=3D"noreferrer" target=
=3D"_blank">python-native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_rm_work&quot; -&gt; &quot;python-native.do_popu=
late_sys<wbr>root&quot;<br>
&gt; &quot;python-native.do_rm_work&quot; -&gt; &quot;python-native.do_popu=
late_lic<wbr>&quot;<br>
&gt; &quot;python-native.do_populate_sys<wbr>root&quot; [label=3D&quot;pyth=
on-native<br>
&gt; do_populate_sysroot\n:2.7.13-r<wbr>1.1\n/home/gizero/work/smartli<wbr>=
ving/distro/repo-master/build-<wbr>poky/conf/../../layers/poky/me<wbr>ta/re=
cipes-devtools/python/pyt<wbr>hon-<br>
&gt; <a href=3D"http://native_2.7.13.bb" rel=3D"noreferrer" target=3D"_blan=
k">native_2.7.13.bb</a>&quot;]<br>
&gt; &quot;python-native.do_populate_sys<wbr>root&quot; -&gt; &quot;python-=
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
><br></div></div></div><div>Good catch! This explains why the two build sys=
tems behaves differently: a little change in local.conf I didn&#39;t notice=
 before... The &quot;failing&quot; system does IMAGE_FSTYPES_append =3D &qu=
ot; wic&quot;, likely bringing bmap-tools-native in, while the &quot;workin=
g&quot; build bot doesn&#39;t. However, as you say, this still does not exp=
lain why the eSDK is missing the python-native bits. BTW, &quot;wic&quot; i=
s in the IMAGE_FSTYPE of my usual build host since months and I&#39;m prett=
y sure it did build many successfully installable eSDK with that option in =
place: but maybe other tasks which also depended on python-native got remov=
ed along the way...=C2=A0</div><div>What I can do now is adding &quot;wic&q=
uot; to IMAGE_FSTYPES on the other system and see if I get the two scenario=
s equally misbehaving or not. Anything else or different you can suggest to=
 nail this down?</div></div></div></div></blockquote><div><br></div><div>Ju=
st noticed this thread [1] on the list and the corresponding bug [2]. Do yo=
u think this issue and the eSDKs with missing python-native can relate to e=
ach other?</div><div><br></div><div>[1]=C2=A0<a href=3D"https://lists.yocto=
project.org/pipermail/yocto/2017-September/038199.html" target=3D"_blank">h=
ttps://lists.<wbr>yoctoproject.org/pipermail/<wbr>yocto/2017-September/0381=
99.<wbr>html</a></div><div>[2]=C2=A0<a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D12148" target=3D"_blank">https://bugzilla.yoctoproj=
<wbr>ect.org/show_bug.cgi?id=3D12148</a></div></div><br></div></div>

--001a114593ee7bc6b5055a9396cf--
