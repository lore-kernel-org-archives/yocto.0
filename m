Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F4C7E0094C; Fri, 19 May 2017 08:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.49 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5708E00812
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 08:26:51 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id 7so5008217wmo.1
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 08:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Oje5LtCSKh+Pw8oxbYoWxFPD/vkZTwIoVv79JHTxjf0=;
	b=E0PQLm2MpErvCVcr6ROeveY8kVxq3f7xcauCkJCh/P0hhrrpyWDOdM4rTSi9KHVvyN
	fG/+3qLznH6MB5Dht21Hi4QLfetthoMO9TMP83lse48fnDH0kCURK5PuPF6Z5wqshXww
	BdJUR84zR2cXD4aW+359gi2nDSOWWx/q8NYQh32YgPnhXAP6n8+OxVMQ0xQtxEBO0Ywc
	89Mg93LupnSmDWIqG533r7DiuQO9LTpxGboEi2ckPjiDNzEK25yjjJJr+fuPTzJlLsqe
	LsnNwzsRnYUFNi2d8fw19qn2A+gmKmRuqH8BgGesxu8KcoAWN6LA8AJawX9ddHVe61NS
	ShCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Oje5LtCSKh+Pw8oxbYoWxFPD/vkZTwIoVv79JHTxjf0=;
	b=tfnv0ncgBzALy6UiB1wg5SuOkYtc4i2xMIxY2kS6YwWRvjpe3oK2D/NMSGOUgHDBSO
	YdwMe8BrfE0pMGiAzmdfUZH/bnDUy3QrfNYM10kjcUvvxqXamJzH7Pv7oc3CNNuAcDIF
	Wx5SXnv8UEQPn5di/YFRlXfEnYal0D3YOZNnegKeAr9PfEnV6bQu7FUQcrHGho7GqJQw
	JOS4mJecSSugMHUrIEf6Q2ErAMFXfnpVv850ooalf9QR3FlroL2DbM2quzFBqTWYKgZU
	ON1fecD85mVq9FaVrTtmRoFneeZ21M6+VuSSAfoZJVdKmQud/Pyx4kQy2hHhKQzfYSjT
	zi+A==
X-Gm-Message-State: AODbwcCPWOFIcrcwFJ4E0kkSeyPvDEMSc90AWpSOgslBWRtpHdGAzyIT
	7n8RrEb1CnOOPc+ObCR2ygXgpwbQWw==
X-Received: by 10.80.149.209 with SMTP id x17mr7454279eda.175.1495207610456;
	Fri, 19 May 2017 08:26:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.213.154 with HTTP; Fri, 19 May 2017 08:26:49 -0700 (PDT)
In-Reply-To: <1B858668EC6A94408DCA5225FDFA85AA014B776416@ALA-MBC.corp.ad.wrs.com>
References: <cover.1495007644.git.jackie.huang@windriver.com>
	<8e4ad559ae8543501c07c6d12a09e72688ceb72a.1495007644.git.jackie.huang@windriver.com>
	<5576d9c1-a95c-c274-c748-952c0dc7ed49@gmail.com>
	<1B858668EC6A94408DCA5225FDFA85AA014B776416@ALA-MBC.corp.ad.wrs.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 19 May 2017 17:26:49 +0200
Message-ID: <CA+chaQdVY4gyJsKD6R90hrMsXqxSJOdaN__BBrBa1TL24c25Qg@mail.gmail.com>
To: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 2/2] ecryptfs-utils: add new recipe
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
X-List-Received-Date: Fri, 19 May 2017 15:26:54 -0000
Content-Type: multipart/alternative; boundary="f403045c28a67c9e4e054fe22659"

--f403045c28a67c9e4e054fe22659
Content-Type: text/plain; charset="UTF-8"

How does this one relate to:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils_106.bb?h=master

the later has also support for systemd, not sure if it has the issue with
pam or not.

On Fri, May 19, 2017 at 4:56 PM, Huang, Jie (Jackie) <
Jackie.Huang@windriver.com> wrote:

>
>
> > -----Original Message-----
> > From: akuster808 [mailto:akuster808@gmail.com]
> > Sent: Friday, May 19, 2017 22:50
> > To: Huang, Jie (Jackie); yocto@yoctoproject.org
> > Subject: Re: [yocto] [meta-security][PATCH 2/2] ecryptfs-utils: add new
> recipe
> >
> >
> >
> > On 05/17/2017 12:56 AM, jackie.huang@windriver.com wrote:
> > > From: Jackie Huang <jackie.huang@windriver.com>
> > >
> > > eCryptfs is a stacked cryptographic filesystem that ships
> > > in Linux kernel versions 2.6.19 and above. This package
> > > provides the mount helper and supporting libraries to
> > > perform key management and mount functions.
> > >
> > > Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> >
> > This has the following warning:
> > WARNING: libpam-1.3.0-r5 do_pam_sanity: Building libpam but 'pam' isn't
> > in DISTRO_FEATURES, PAM won't work correctly
> >
> > I noticed this package has the ability to disable-pam so maybe
> > PACKAGECONFIG with the DISTRO_FEATURES check for PAM would be
> > applicable
> > in this case?
> >
> > please investigate.
>
> I will investigate and fix the warning.
>
> Thanks,
> Jackie
>
> >
> > everything else looks fine for inclusion to meta-security.
> >
> > regards,
> > Armin
> >
> > > ---
> > >   .../ecryptfs-utils/ecryptfs-utils_111.bb           | 52
> +++++++++++++++++
> > >   .../files/ecryptfs-utils-CVE-2016-6224.patch       | 65
> > ++++++++++++++++++++++
> > >   2 files changed, 117 insertions(+)
> > >   create mode 100644 recipes-security/ecryptfs-utils/
> ecryptfs-utils_111.bb
> > >   create mode 100644 recipes-security/ecryptfs-
> utils/files/ecryptfs-utils-CVE-
> > 2016-6224.patch
> > >
> > > diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> b/recipes-
> > security/ecryptfs-utils/ecryptfs-utils_111.bb
> > > new file mode 100644
> > > index 0000000..49c2605
> > > --- /dev/null
> > > +++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> > > @@ -0,0 +1,52 @@
> > > +SUMMARY = "The eCryptfs mount helper and support libraries"
> > > +DESCRIPTION = "eCryptfs is a stacked cryptographic filesystem \
> > > +    that ships in Linux kernel versions 2.6.19 and above. This \
> > > +    package provides the mount helper and supporting libraries \
> > > +    to perform key management and mount functions."
> > > +HOMEPAGE = "https://launchpad.net/ecryptfs"
> > > +SECTION = "base"
> > > +
> > > +LICENSE = "GPL-2.0"
> > > +LIC_FILES_CHKSUM =
> > "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
> > > +
> > > +DEPENDS = "keyutils libgcrypt libpam nss intltool-native
> glib-2.0-native"
> > > +
> > > +inherit autotools pkgconfig
> > > +
> > > +SRC_URI = "\
> > > +
> > https://launchpad.net/ecryptfs/trunk/${PV}/+
> download/${BPN}_${PV}.orig.tar.
> > gz \
> > > +    file://ecryptfs-utils-CVE-2016-6224.patch \
> > > +    "
> > > +
> > > +SRC_URI[md5sum] = "83513228984f671930752c3518cac6fd"
> > > +SRC_URI[sha256sum] =
> > "112cb3e37e81a1ecd8e39516725dec0ce55c5f3df6284e0f4cc0f118750a987f"
> > > +
> > > +PARALLEL_MAKEINST=""
> > > +
> > > +EXTRA_OECONF = "\
> > > +    --libdir=${base_libdir} \
> > > +    --disable-pywrap \
> > > +    --disable-nls \
> > > +    --enable-openssl=no \
> > > +    "
> > > +
> > > +do_configure_prepend() {
> > > +    export NSS_CFLAGS="-I${STAGING_INCDIR}/nspr4 -
> > I${STAGING_INCDIR}/nss3"
> > > +    export NSS_LIBS="-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 -
> > lsoftokn3 -lnssutil3"
> > > +    export KEYUTILS_CFLAGS="-I${STAGING_INCDIR}"
> > > +    export KEYUTILS_LIBS="-L${STAGING_LIBDIR} -lkeyutils"
> > > +}
> > > +
> > > +do_install_append() {
> > > +    chmod 4755 ${D}${base_sbindir}/mount.ecryptfs_private
> > > +    mkdir -p ${D}/${libdir}
> > > +    mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}
> > > +    sed -i -e 's:-I${STAGING_INCDIR}::' \
> > > +           -e 's:-L${STAGING_LIBDIR}::' ${D}/${libdir}/pkgconfig/
> libecryptfs.pc
> > > +    sed -i -e "s: ${base_sbindir}/cryptsetup: ${sbindir}/cryptsetup:"
> > ${D}${bindir}/ecryptfs-setup-swap
> > > +}
> > > +
> > > +FILES_${PN} += "${base_libdir}/security/* ${base_libdir}/ecryptfs/*"
> > > +
> > > +RDEPENDS_${PN} += "cryptsetup"
> > > +RRECOMMENDS_${PN} = "gettext-runtime"
> > > diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-
> CVE-2016-
> > 6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-
> CVE-2016-
> > 6224.patch
> > > new file mode 100644
> > > index 0000000..4252f97
> > > --- /dev/null
> > > +++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-
> CVE-2016-6224.patch
> > > @@ -0,0 +1,65 @@
> > > +From 558a513ba3100ea5190de1a24cf1fed663367765 Mon Sep 17 00:00:00
> > 2001
> > > +From: Li Zhou <li.zhou@windriver.com>
> > > +Date: Mon, 5 Sep 2016 10:28:08 +0800
> > > +Subject: [PATCH] ecryptfs-utils: CVE-2016-6224
> > > +
> > > +src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partitions
> from
> > > +being automatically enabled by systemd. This bug affected GPT
> partitioned
> > > +NVMe/MMC drives and resulted in the swap partition being used without
> > > +encryption. It also resulted in a usability issue in that users were
> > > +erroneously prompted to enter a pass-phrase to unlock their swap
> partition
> > > +at boot. (LP: #1597154)
> > > +
> > > +the patch comes from:
> > > +https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-6224
> > > +https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
> > > +
> > > +Upstream-Status: backport
> > > +
> > > +Signed-off-by: Li Zhou <li.zhou@windriver.com>
> > > +---
> > > + ChangeLog                     |  9 +++++++++
> > > + src/utils/ecryptfs-setup-swap | 10 ++++++++--
> > > + 2 files changed, 17 insertions(+), 2 deletions(-)
> > > +
> > > +diff --git a/ChangeLog b/ChangeLog
> > > +index d255a94..2c9c73e 100644
> > > +--- a/ChangeLog
> > > ++++ b/ChangeLog
> > > +@@ -1,3 +1,12 @@
> > > ++ecryptfs-utils-112
> > > ++  [ Jason Gerard DeRose ]
> > > ++  * src/utils/ecryptfs-setup-swap: Prevent unencrypted swap
> partitions from
> > > ++    being automatically enabled by systemd. This bug affected GPT
> > partitioned
> > > ++    NVMe/MMC drives and resulted in the swap partition being used
> without
> > > ++    encryption. It also resulted in a usability issue in that users
> were
> > > ++    erroneously prompted to enter a pass-phrase to unlock their swap
> > partition
> > > ++    at boot. (LP: #1597154)
> > > ++
> > > + ecryptfs-utils-74
> > > +   [ Michal Hlavinka ]
> > > +   * Changes for RH/Fedora release
> > > +diff --git a/src/utils/ecryptfs-setup-swap
> b/src/utils/ecryptfs-setup-swap
> > > +index 41cf18a..e4785d7 100755
> > > +--- a/src/utils/ecryptfs-setup-swap
> > > ++++ b/src/utils/ecryptfs-setup-swap
> > > +@@ -166,8 +166,14 @@ for swap in $swaps; do
> > > +   # If this is a GPT partition, mark it as no-auto mounting, to avoid
> > > +   # auto-activating it on boot
> > > +   if [ "$(blkid -p -s PART_ENTRY_SCHEME -o value "$swap")" = "gpt" ];
> > then
> > > +-          drive="${swap%[0-9]*}"
> > > +-          partno="${swap#$drive}"
> > > ++          # Correctly handle NVMe/MMC drives, as well as any similar
> > physical
> > > ++          # block device that follow the "/dev/foo0p1" pattern (LP:
> > #1597154)
> > > ++          if echo "$swap" | grep -qE "^/dev/.+[0-9]+p[0-9]+$"; then
> > > ++                  drive=$(echo "$swap" | sed
> "s:\(.\+[0-9]\)p[0-9]\+:\1:")
> > > ++          else
> > > ++                  drive=$(echo "$swap" | sed
> "s:\(.\+[^0-9]\)[0-9]\+:\1:")
> > > ++          fi
> > > ++          partno=$(echo "$swap" | sed "s:.\+[^0-9]\([0-9]\+\):\1:")
> > > +           if [ -b "$drive" ]; then
> > > +                   if printf "x\np\n" | fdisk "$drive" | grep -q
> "^$swap .*
> > GUID:.*\b63\b"; then
> > > +                           echo "$swap is already marked as no-auto"
> > > +--
> > > +1.9.1
> > > +
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045c28a67c9e4e054fe22659
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How does this one relate to:<div><a href=3D"http://git.yoc=
toproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi/recipes-support-ivi/ecry=
ptfs-utils/ecryptfs-utils_106.bb?h=3Dmaster">http://git.yoctoproject.org/cg=
it/cgit.cgi/meta-ivi/tree/meta-ivi/recipes-support-ivi/ecryptfs-utils/ecryp=
tfs-utils_106.bb?h=3Dmaster</a><br></div><div><br></div><div>the later has =
also support for systemd, not sure if it has the issue with pam or not.</di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, M=
ay 19, 2017 at 4:56 PM, Huang, Jie (Jackie) <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Jackie.Huang@windriver.com" target=3D"_blank">Jackie.Huang@windr=
iver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D""><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: akuster808 [mailto:<a href=3D"mailto:akuster808@gmail.com">akust=
er808@gmail.com</a>]<br>
&gt; Sent: Friday, May 19, 2017 22:50<br>
&gt; To: Huang, Jie (Jackie); <a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] [meta-security][PATCH 2/2] ecryptfs-utils: add ne=
w recipe<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 05/17/2017 12:56 AM, <a href=3D"mailto:jackie.huang@windriver.com">=
jackie.huang@windriver.com</a> wrote:<br>
&gt; &gt; From: Jackie Huang &lt;<a href=3D"mailto:jackie.huang@windriver.c=
om">jackie.huang@windriver.com</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt; eCryptfs is a stacked cryptographic filesystem that ships<br>
&gt; &gt; in Linux kernel versions 2.6.19 and above. This package<br>
&gt; &gt; provides the mount helper and supporting libraries to<br>
&gt; &gt; perform key management and mount functions.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Jackie Huang &lt;<a href=3D"mailto:jackie.huang@wi=
ndriver.com">jackie.huang@windriver.com</a>&gt;<br>
&gt;<br>
&gt; This has the following warning:<br>
&gt; WARNING: libpam-1.3.0-r5 do_pam_sanity: Building libpam but &#39;pam&#=
39; isn&#39;t<br>
&gt; in DISTRO_FEATURES, PAM won&#39;t work correctly<br>
&gt;<br>
&gt; I noticed this package has the ability to disable-pam so maybe<br>
&gt; PACKAGECONFIG with the DISTRO_FEATURES check for PAM would be<br>
&gt; applicable<br>
&gt; in this case?<br>
&gt;<br>
&gt; please investigate.<br>
<br>
</span>I will investigate and fix the warning.<br>
<br>
Thanks,<br>
Jackie<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; everything else looks fine for inclusion to meta-security.<br>
&gt;<br>
&gt; regards,<br>
&gt; Armin<br>
&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0.../ecryptfs-utils/<a href=3D"http://ecryptfs-utils_1=
11.bb" rel=3D"noreferrer" target=3D"_blank">ecryptfs-<wbr>utils_111.bb</a>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 52 +++++++++++++++++<br>
&gt; &gt;=C2=A0 =C2=A0.../files/ecryptfs-utils-CVE-<wbr>2016-6224.patch=C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 65<br>
&gt; ++++++++++++++++++++++<br>
&gt; &gt;=C2=A0 =C2=A02 files changed, 117 insertions(+)<br>
&gt; &gt;=C2=A0 =C2=A0create mode 100644 recipes-security/ecryptfs-<wbr>uti=
ls/<a href=3D"http://ecryptfs-utils_111.bb" rel=3D"noreferrer" target=3D"_b=
lank">ecryptfs-utils_111.bb</a><br>
&gt; &gt;=C2=A0 =C2=A0create mode 100644 recipes-security/ecryptfs-<wbr>uti=
ls/files/ecryptfs-utils-<wbr>CVE-<br>
&gt; 2016-6224.patch<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/recipes-security/ecryptfs-<wbr>utils/<a href=3D"http=
://ecryptfs-utils_111.bb" rel=3D"noreferrer" target=3D"_blank">ecryptfs-uti=
ls_111.bb</a> b/recipes-<br>
&gt; security/ecryptfs-utils/<a href=3D"http://ecryptfs-utils_111.bb" rel=
=3D"noreferrer" target=3D"_blank">ecrypt<wbr>fs-utils_111.bb</a><br>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 0000000..49c2605<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++ b/recipes-security/ecryptfs-<wbr>utils/<a href=3D"http://ecry=
ptfs-utils_111.bb" rel=3D"noreferrer" target=3D"_blank">ecryptfs-utils_111.=
bb</a><br>
&gt; &gt; @@ -0,0 +1,52 @@<br>
&gt; &gt; +SUMMARY =3D &quot;The eCryptfs mount helper and support librarie=
s&quot;<br>
&gt; &gt; +DESCRIPTION =3D &quot;eCryptfs is a stacked cryptographic filesy=
stem \<br>
&gt; &gt; +=C2=A0 =C2=A0 that ships in Linux kernel versions 2.6.19 and abo=
ve. This \<br>
&gt; &gt; +=C2=A0 =C2=A0 package provides the mount helper and supporting l=
ibraries \<br>
&gt; &gt; +=C2=A0 =C2=A0 to perform key management and mount functions.&quo=
t;<br>
&gt; &gt; +HOMEPAGE =3D &quot;<a href=3D"https://launchpad.net/ecryptfs" re=
l=3D"noreferrer" target=3D"_blank">https://launchpad.net/<wbr>ecryptfs</a>&=
quot;<br>
&gt; &gt; +SECTION =3D &quot;base&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +LICENSE =3D &quot;GPL-2.0&quot;<br>
&gt; &gt; +LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://COPYING;md5=3D<wbr>8ca43cbc842c2336e835926c2166c2<wbr>8b&=
quot;<br>
&gt; &gt; +<br>
&gt; &gt; +DEPENDS =3D &quot;keyutils libgcrypt libpam nss intltool-native =
glib-2.0-native&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +inherit autotools pkgconfig<br>
&gt; &gt; +<br>
&gt; &gt; +SRC_URI =3D &quot;\<br>
&gt; &gt; +<br>
&gt; <a href=3D"https://launchpad.net/ecryptfs/trunk/${PV}/+download/${BPN}=
_${PV}.orig.tar" rel=3D"noreferrer" target=3D"_blank">https://launchpad.net=
/<wbr>ecryptfs/trunk/${PV}/+<wbr>download/${BPN}_${PV}.orig.tar</a><wbr>.<b=
r>
&gt; gz \<br>
&gt; &gt; +=C2=A0 =C2=A0 file://ecryptfs-utils-CVE-<wbr>2016-6224.patch \<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 &quot;<br>
&gt; &gt; +<br>
&gt; &gt; +SRC_URI[md5sum] =3D &quot;<wbr>83513228984f671930752c3518cac6<wb=
r>fd&quot;<br>
&gt; &gt; +SRC_URI[sha256sum] =3D<br>
&gt; &quot;<wbr>112cb3e37e81a1ecd8e39516725dec<wbr>0ce55c5f3df6284e0f4cc0f1=
18750a<wbr>987f&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +PARALLEL_MAKEINST=3D&quot;&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +EXTRA_OECONF =3D &quot;\<br>
&gt; &gt; +=C2=A0 =C2=A0 --libdir=3D${base_libdir} \<br>
&gt; &gt; +=C2=A0 =C2=A0 --disable-pywrap \<br>
&gt; &gt; +=C2=A0 =C2=A0 --disable-nls \<br>
&gt; &gt; +=C2=A0 =C2=A0 --enable-openssl=3Dno \<br>
&gt; &gt; +=C2=A0 =C2=A0 &quot;<br>
&gt; &gt; +<br>
&gt; &gt; +do_configure_prepend() {<br>
&gt; &gt; +=C2=A0 =C2=A0 export NSS_CFLAGS=3D&quot;-I${STAGING_<wbr>INCDIR}=
/nspr4 -<br>
&gt; I${STAGING_INCDIR}/nss3&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0 export NSS_LIBS=3D&quot;-L${STAGING_<wbr>BASELIBDI=
R} -lssl3 -lsmime3 -lnss3 -<br>
&gt; lsoftokn3 -lnssutil3&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0 export KEYUTILS_CFLAGS=3D&quot;-I${STAGING_<wbr>IN=
CDIR}&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0 export KEYUTILS_LIBS=3D&quot;-L${STAGING_<wbr>LIBD=
IR} -lkeyutils&quot;<br>
&gt; &gt; +}<br>
&gt; &gt; +<br>
&gt; &gt; +do_install_append() {<br>
&gt; &gt; +=C2=A0 =C2=A0 chmod 4755 ${D}${base_sbindir}/mount.<wbr>ecryptfs=
_private<br>
&gt; &gt; +=C2=A0 =C2=A0 mkdir -p ${D}/${libdir}<br>
&gt; &gt; +=C2=A0 =C2=A0 mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}<br=
>
&gt; &gt; +=C2=A0 =C2=A0 sed -i -e &#39;s:-I${STAGING_INCDIR}::&#39; \<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s:-L${STAGING_L=
IBDIR}::&#39; ${D}/${libdir}/pkgconfig/<wbr>libecryptfs.pc<br>
&gt; &gt; +=C2=A0 =C2=A0 sed -i -e &quot;s: ${base_sbindir}/cryptsetup: ${s=
bindir}/cryptsetup:&quot;<br>
&gt; ${D}${bindir}/ecryptfs-setup-<wbr>swap<br>
&gt; &gt; +}<br>
&gt; &gt; +<br>
&gt; &gt; +FILES_${PN} +=3D &quot;${base_libdir}/security/* ${base_libdir}/=
ecryptfs/*&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +RDEPENDS_${PN} +=3D &quot;cryptsetup&quot;<br>
&gt; &gt; +RRECOMMENDS_${PN} =3D &quot;gettext-runtime&quot;<br>
&gt; &gt; diff --git a/recipes-security/ecryptfs-<wbr>utils/files/ecryptfs-=
utils-<wbr>CVE-2016-<br>
&gt; 6224.patch b/recipes-security/ecryptfs-<wbr>utils/files/ecryptfs-utils=
-<wbr>CVE-2016-<br>
&gt; 6224.patch<br>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 0000000..4252f97<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++ b/recipes-security/ecryptfs-<wbr>utils/files/ecryptfs-utils-<=
wbr>CVE-2016-6224.patch<br>
&gt; &gt; @@ -0,0 +1,65 @@<br>
&gt; &gt; +From 558a513ba3100ea5190de1a24cf1fe<wbr>d663367765 Mon Sep 17 00=
:00:00<br>
&gt; 2001<br>
&gt; &gt; +From: Li Zhou &lt;<a href=3D"mailto:li.zhou@windriver.com">li.zh=
ou@windriver.com</a>&gt;<br>
&gt; &gt; +Date: Mon, 5 Sep 2016 10:28:08 +0800<br>
&gt; &gt; +Subject: [PATCH] ecryptfs-utils: CVE-2016-6224<br>
&gt; &gt; +<br>
&gt; &gt; +src/utils/ecryptfs-setup-<wbr>swap: Prevent unencrypted swap par=
titions from<br>
&gt; &gt; +being automatically enabled by systemd. This bug affected GPT pa=
rtitioned<br>
&gt; &gt; +NVMe/MMC drives and resulted in the swap partition being used wi=
thout<br>
&gt; &gt; +encryption. It also resulted in a usability issue in that users =
were<br>
&gt; &gt; +erroneously prompted to enter a pass-phrase to unlock their swap=
 partition<br>
&gt; &gt; +at boot. (LP: #1597154)<br>
&gt; &gt; +<br>
&gt; &gt; +the patch comes from:<br>
&gt; &gt; +<a href=3D"https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCV=
E-2016-6224" rel=3D"noreferrer" target=3D"_blank">https://web.nvd.nist.gov/=
<wbr>view/vuln/detail?vulnId=3DCVE-<wbr>2016-6224</a><br>
&gt; &gt; +<a href=3D"https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk=
/revision/882" rel=3D"noreferrer" target=3D"_blank">https://bazaar.launchpa=
d.net/<wbr>~ecryptfs/ecryptfs/trunk/<wbr>revision/882</a><br>
&gt; &gt; +<br>
&gt; &gt; +Upstream-Status: backport<br>
&gt; &gt; +<br>
&gt; &gt; +Signed-off-by: Li Zhou &lt;<a href=3D"mailto:li.zhou@windriver.c=
om">li.zhou@windriver.com</a>&gt;<br>
&gt; &gt; +---<br>
&gt; &gt; + ChangeLog=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 9 +++++++++<br>
&gt; &gt; + src/utils/ecryptfs-setup-swap | 10 ++++++++--<br>
&gt; &gt; + 2 files changed, 17 insertions(+), 2 deletions(-)<br>
&gt; &gt; +<br>
&gt; &gt; +diff --git a/ChangeLog b/ChangeLog<br>
&gt; &gt; +index d255a94..2c9c73e 100644<br>
&gt; &gt; +--- a/ChangeLog<br>
&gt; &gt; ++++ b/ChangeLog<br>
&gt; &gt; +@@ -1,3 +1,12 @@<br>
&gt; &gt; ++ecryptfs-utils-112<br>
&gt; &gt; ++=C2=A0 [ Jason Gerard DeRose ]<br>
&gt; &gt; ++=C2=A0 * src/utils/ecryptfs-setup-swap: Prevent unencrypted swa=
p partitions from<br>
&gt; &gt; ++=C2=A0 =C2=A0 being automatically enabled by systemd. This bug =
affected GPT<br>
&gt; partitioned<br>
&gt; &gt; ++=C2=A0 =C2=A0 NVMe/MMC drives and resulted in the swap partitio=
n being used without<br>
&gt; &gt; ++=C2=A0 =C2=A0 encryption. It also resulted in a usability issue=
 in that users were<br>
&gt; &gt; ++=C2=A0 =C2=A0 erroneously prompted to enter a pass-phrase to un=
lock their swap<br>
&gt; partition<br>
&gt; &gt; ++=C2=A0 =C2=A0 at boot. (LP: #1597154)<br>
&gt; &gt; ++<br>
&gt; &gt; + ecryptfs-utils-74<br>
&gt; &gt; +=C2=A0 =C2=A0[ Michal Hlavinka ]<br>
&gt; &gt; +=C2=A0 =C2=A0* Changes for RH/Fedora release<br>
&gt; &gt; +diff --git a/src/utils/ecryptfs-setup-<wbr>swap b/src/utils/ecry=
ptfs-setup-<wbr>swap<br>
&gt; &gt; +index 41cf18a..e4785d7 100755<br>
&gt; &gt; +--- a/src/utils/ecryptfs-setup-<wbr>swap<br>
&gt; &gt; ++++ b/src/utils/ecryptfs-setup-<wbr>swap<br>
&gt; &gt; +@@ -166,8 +166,14 @@ for swap in $swaps; do<br>
&gt; &gt; +=C2=A0 =C2=A0# If this is a GPT partition, mark it as no-auto mo=
unting, to avoid<br>
&gt; &gt; +=C2=A0 =C2=A0# auto-activating it on boot<br>
&gt; &gt; +=C2=A0 =C2=A0if [ &quot;$(blkid -p -s PART_ENTRY_SCHEME -o value=
 &quot;$swap&quot;)&quot; =3D &quot;gpt&quot; ];<br>
&gt; then<br>
&gt; &gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 drive=3D&quot;${swap%[0-9]*}=
&quot;<br>
&gt; &gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 partno=3D&quot;${swap#$drive=
}&quot;<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Correctly handle NVMe/MMC =
drives, as well as any similar<br>
&gt; physical<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # block device that follow t=
he &quot;/dev/foo0p1&quot; pattern (LP:<br>
&gt; #1597154)<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if echo &quot;$swap&quot; | =
grep -qE &quot;^/dev/.+[0-9]+p[0-9]+$&quot;; then<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
drive=3D$(echo &quot;$swap&quot; | sed &quot;s:\(.\+[0-9]\)p[0-9]\+:\1:&quo=
t;)<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
drive=3D$(echo &quot;$swap&quot; | sed &quot;s:\(.\+[^0-9]\)[0-9]\+:\1:&quo=
t;)<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
&gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 partno=3D$(echo &quot;$swap&=
quot; | sed &quot;s:.\+[^0-9]\([0-9]\+\):\1:&quot;)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -b &quot;$drive&qu=
ot; ]; then<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if printf &quot;x\np\n&quot; | fdisk &quot;$drive&quot; | grep -q &qu=
ot;^$swap .*<br>
&gt; GUID:.*\b63\b&quot;; then<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;$swap is already marked as no-=
auto&quot;<br>
&gt; &gt; +--<br>
&gt; &gt; +1.9.1<br>
&gt; &gt; +<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--f403045c28a67c9e4e054fe22659--
