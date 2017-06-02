Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7683E009A0; Fri,  2 Jun 2017 09:07:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (grsandeep85[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DBCE0077F
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 09:07:21 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id p66so46589076qkf.3
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 09:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=juooiNKOsiGwtpxmo2CCsKSaFfQYqEqn/OOCBE90ofg=;
	b=dcSbruZQ7kRLeXUwcRj7lH6Cb7x0nTQSrafuFs3DCyHDuuCUp48Br9dGUmoz7VwRkE
	aotNKRGoTb4yLhMNCRzOqVR34b/MrAjnEC+9CD1jJKYkMQw/zmFCbrWbvmUeG+orUqjy
	rknLbn7eKg5JnV87yjw1LH1TGLVQkCzjGRtKfqJMaggxOJoJvdjCMDlviSYJFEi51r/W
	4r2YSeKOZg8+/JNbmfdPNmPBN4Ryf/1rYYL90D+R3Jg0eKlpXTozXklVLh07vXXoYt4M
	z3WTOJ0Zhv9BO2JjvAc0GZwm3acf+q++NdvbWocUTF+/3+PmMzUFvX4fr3uu+EEDHTOL
	QJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=juooiNKOsiGwtpxmo2CCsKSaFfQYqEqn/OOCBE90ofg=;
	b=deN4bI90SB9hmiW7krUKeQk13MiRIvbjaN8y6iON4/Gbdz7qaHhSNk+c9kAKxb2OVt
	I9Lfu7pOpp1k0Ywj/k8KuIfS/5uAu+sjsu3NtzrmJFV0lkLYh+y5PUSSJNLHmhcuYtwX
	faTIk4F4wMPNWiMAj/eDu9sKd/ZNJ2EMykryn5pd0jTL0VtQUGyxrFJue4Dc4R6JpP43
	reKTxIOX+p8qE5ujOq/IOVGkbNpcae8oGoOxzkFxHd18Z1yZxBeESet6SKLrhHoagt/S
	NnAr81gRZWOq0rHuG7Xsd2CU4inUJlRrc5TpVXaze/JPss/SDU85av1HM8t0ISabj85V
	XwGQ==
X-Gm-Message-State: AKS2vOxlPWmcReBytnqfD8RlsatRm5CdsVlVrGw360TZ1NgOxvL8ZvuS
	TvmhvMrWt7wJDAQiit8ANRCBy1ma9g==
X-Received: by 10.55.37.210 with SMTP id l79mr8353295qkl.227.1496419640508;
	Fri, 02 Jun 2017 09:07:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.55.228 with HTTP; Fri, 2 Jun 2017 09:07:20 -0700 (PDT)
In-Reply-To: <CAMKF1sqKhFgp_y-rADK491gWksQQ19k8K4RWWjEC-+KCBu5FfQ@mail.gmail.com>
References: <CAFL6qn7k=4mZ2on8DES+f7Brfr24Hhq3u=x9ZXaVEsYeczAX4g@mail.gmail.com>
	<CAMKF1sqKhFgp_y-rADK491gWksQQ19k8K4RWWjEC-+KCBu5FfQ@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
Date: Fri, 2 Jun 2017 10:07:20 -0600
Message-ID: <CAKP9-SjtUiC_qg2aASqKCQx-2CPMNYCK_m+6ogwGYht5xVeAnw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Pello Heriz <pello.heriz@alumni.mondragon.edu>
Subject: Re: Problems to build xen-guest-image-minimal
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
X-List-Received-Date: Fri, 02 Jun 2017 16:07:22 -0000
Content-Type: multipart/alternative; boundary="001a114582241b860d0550fc5964"

--001a114582241b860d0550fc5964
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 31, 2017 at 10:13 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Wed, May 31, 2017 at 12:22 AM Pello Heriz <
> pello.heriz@alumni.mondragon.edu> wrote:
>
>> Hi,
>>
>> I'm trying to build xen-guest-image-minimal with master branch of Yocto,
>> but I keep stuck in the next error:
>>
>> bitbake xen-guest-image-minimal
>> NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/qtbase_git.bb:
>> base_contains is deprecated, please use bb.utils.contains instead.
>> NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/qtbase_git.bb:
>> base_contains is deprecated, please use bb.utils.contains instead.
>> WARNING: /opt/yocto_GE/poky/meta-petalinux/recipes-external/
>> external-xilinx-toolchain/libgcc-xilinx.bb: LICENSE_libgcov-dev includes
>> licenses (GPL-3.0) that are not listed in LICENSE
>> Parsing recipes: 100% |##########################################| Time:
>> 0:04:34
>> Parsing of 2477 .bb files complete (0 cached, 2477 parsed). 3310 targets=
,
>> 312 skipped, 0 masked, 0 errors.
>> WARNING: No recipes available for:
>>   /opt/yocto_GE/poky/meta-petalinux/recipes-devtools/
>> python/python-smartpm_%.bbappend
>> WARNING: No bb files matched BBFILE_PATTERN_gpe-layer
>> '^/opt/yocto_GE/poky/meta-openembedded/meta-gpe/'
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing PROVIDES 'rpmresolve-native'. Close matches:
>>   meson-native
>>   rpm-native
>>   perl-native
>> ERROR: Required build target 'xen-guest-image-minimal' has no buildable
>> providers.
>> Missing or unbuildable dependency chain was: ['xen-guest-image-minimal',
>> 'rpmresolve-native']
>>
>
> It's possible that you do not have matching releases of various layers I
> would first check that
>

Yes master is not stable you need to clone rel-v2017.1 tag=E2=80=8B

>
>>
>>
>> The bblayers that I have included to the project are the next ones:
>>
>> BBLAYERS ?=3D " \
>>     ${MY_META_DIR}/meta \
>>     ${MY_META_DIR}/meta-poky \
>>     ${MY_META_DIR}/meta-yocto-bsp \
>>     ${MY_META_DIR}/meta-openembedded/meta-perl \
>>     ${MY_META_DIR}/meta-openembedded/meta-systemd \
>>     ${MY_META_DIR}/meta-openembedded/meta-gpe \
>>     ${MY_META_DIR}/meta-openembedded/meta-python \
>>     ${MY_META_DIR}/meta-openembedded/meta-efl \
>>     ${MY_META_DIR}/meta-openembedded/meta-ruby \
>>     ${MY_META_DIR}/meta-openembedded/meta-filesystems \
>>     ${MY_META_DIR}/meta-openembedded/meta-gnome \
>>     ${MY_META_DIR}/meta-openembedded/meta-multimedia \
>>     ${MY_META_DIR}/meta-openembedded/meta-networking \
>>     ${MY_META_DIR}/meta-openembedded/meta-webserver \
>>     ${MY_META_DIR}/meta-openembedded/meta-xfce \
>>     ${MY_META_DIR}/meta-openembedded/meta-initramfs \
>>     ${MY_META_DIR}/meta-openembedded/meta-oe \
>>     ${MY_META_DIR}/meta-qt5 \
>>     ${MY_META_DIR}/meta-selftest \
>>     ${MY_META_DIR}/meta-skeleton \
>>     ${MY_META_DIR}/meta-xilinx \
>>     ${MY_META_DIR}/meta-xilinx-tools \
>>     ${MY_META_DIR}/meta-petalinux \
>>     ${MY_META_DIR}/meta-virtualization \
>>     ${MY_META_DIR}/meta-xzd \
>>   "
>>
>> How can I solve this issue?
>>
>> Regards,
>> Pello
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114582241b860d0550fc5964
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;color:#073763"><br></div><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote">On Wed, May 31, 2017 at 10:13 AM, Khem Raj <span dir=
=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><=
br><div class=3D"gmail_quote"><span class=3D""><div>On Wed, May 31, 2017 at=
 12:22 AM Pello Heriz &lt;<a href=3D"mailto:pello.heriz@alumni.mondragon.ed=
u" target=3D"_blank">pello.heriz@alumni.mondragon.<wbr>edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div><div><div>Hi,<br><br></div>I&#3=
9;m trying to build xen-guest-image-minimal with master branch of Yocto, bu=
t I keep stuck in the next error:<br><br>bitbake xen-guest-image-minimal<br=
>NOTE: /opt/yocto_GE/poky/meta-qt5/<wbr>recipes-qt/qt5/<a href=3D"http://qt=
base_git.bb" target=3D"_blank">qtbase_git.bb</a>: base_contains is deprecat=
ed, please use bb.utils.contains instead.<br>NOTE: /opt/yocto_GE/poky/meta-=
qt5/<wbr>recipes-qt/qt5/<a href=3D"http://qtbase_git.bb" target=3D"_blank">=
qtbase_git.bb</a>: base_contains is deprecated, please use bb.utils.contain=
s instead.<br>WARNING: /opt/yocto_GE/poky/meta-<wbr>petalinux/recipes-exter=
nal/<wbr>external-xilinx-toolchain/<a href=3D"http://libgcc-xilinx.bb" targ=
et=3D"_blank">libg<wbr>cc-xilinx.bb</a>: LICENSE_libgcov-dev includes licen=
ses (GPL-3.0) that are not listed in LICENSE<br>Parsing recipes: 100% |####=
#########################<wbr>#############| Time: 0:04:34<br>Parsing of 24=
77 .bb files complete (0 cached, 2477 parsed). 3310 targets, 312 skipped, 0=
 masked, 0 errors.<br>WARNING: No recipes available for:<br>=C2=A0 /opt/yoc=
to_GE/poky/meta-<wbr>petalinux/recipes-devtools/<wbr>python/python-smartpm_=
%.<wbr>bbappend<br>WARNING: No bb files matched BBFILE_PATTERN_gpe-layer &#=
39;^/opt/yocto_GE/poky/meta-<wbr>openembedded/meta-gpe/&#39;<br>NOTE: Resol=
ving any missing task queue dependencies<br>ERROR: Nothing PROVIDES &#39;rp=
mresolve-native&#39;. Close matches:<br>=C2=A0 meson-native<br>=C2=A0 rpm-n=
ative<br>=C2=A0 perl-native<br>ERROR: Required build target &#39;xen-guest-=
image-minimal&#39; has no buildable providers.<br>Missing or unbuildable de=
pendency chain was: [&#39;xen-guest-image-minimal&#39;, &#39;rpmresolve-nat=
ive&#39;]</div></div></blockquote><div><br></div></span><div>It&#39;s possi=
ble that you do not have matching releases of various layers I would first =
check that</div></div></div></blockquote><div><br></div><div class=3D"gmail=
_default" style=3D"font-family:arial,helvetica,sans-serif;color:rgb(7,55,99=
)">Yes master is not stable you need to clone rel-v2017.1 tag=E2=80=8B</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div><div class=3D"gmail_quote"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div class=3D"h5"><div><div><br><br><br></div>The =
bblayers that I have included to the project are the next ones:<br><br>BBLA=
YERS ?=3D &quot; \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta \<br>=C2=A0=C2=
=A0=C2=A0 ${MY_META_DIR}/meta-poky \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/m=
eta-yocto-bsp \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded=
/meta-perl \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/me=
ta-systemd \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/me=
ta-gpe \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-p=
ython \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-ef=
l \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-ruby \=
<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-filesyste=
ms \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-gnome=
 \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-multime=
dia \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-netw=
orking \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-w=
ebserver \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta=
-xfce \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-in=
itramfs \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>openembedded/meta-=
oe \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-qt5 \<br>=C2=A0=C2=A0=C2=A0 =
${MY_META_DIR}/meta-selftest \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-sk=
eleton \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-xilinx \<br>=C2=A0=C2=A0=
=C2=A0 ${MY_META_DIR}/meta-xilinx-<wbr>tools \<br>=C2=A0=C2=A0=C2=A0 ${MY_M=
ETA_DIR}/meta-petalinux \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-<wbr>vi=
rtualization \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-xzd \<br>=C2=A0 &q=
uot;<br><div><br></div><div>How can I solve this issue?<br><br></div><div>R=
egards,<br></div><div>Pello<br></div><div><br><br><br><br></div></div></div=
></div><span class=3D"">
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</span></blockquote></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a114582241b860d0550fc5964--
