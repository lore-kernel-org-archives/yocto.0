Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F26CE015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 16:48:18 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id kw10so3484001vcb.15
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 16:48:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=fdNIcE+vi1XCt6IHHr1hyxJZL/4T0q8eT2UdgeKqOQo=;
	b=InqeBU7K4TJ1ukH1v/ebDHi3kKm4YaF3Y9dpngQI5xH/IC8198w+MPuUp57go+AKVd
	ES77GFp0PbmdHZQiZ7fIWt+fbCkcioMFA34qEOSXL/PIOL/YOaPMBKdMe6RqHqlD/KHN
	v7BtfhzBGXCZ0i1yXZUBx/OQ9niPfjbYLnAyAXXyCM/H2pp5pc28KhkW8JZORFeC8hPX
	YS3q/D0BPW4j1066FyE6edywDJDkMDpN/fgOqMeP/5YxiAh1Bw98wAxHVb99XH+qUoCf
	67Sgxk7yHY2+AP+K71GjBwjf3hewbm17B+wOPIRqAhp2u/jOBffH5LunIXKjruRUskBQ
	D1MQ==
X-Gm-Message-State: ALoCoQnW7ZK93e7CSUTVUWN//jPJ4VA49vq6CiHzpmTbKDnQzd+U/sR/+JYtxPTE6OH61+MbC7YV
MIME-Version: 1.0
X-Received: by 10.52.118.73 with SMTP id kk9mr24567015vdb.13.1379375297675;
	Mon, 16 Sep 2013 16:48:17 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Mon, 16 Sep 2013 16:48:17 -0700 (PDT)
In-Reply-To: <1379072091-28016-1-git-send-email-stefanx.stanacar@intel.com>
References: <1379072091-28016-1-git-send-email-stefanx.stanacar@intel.com>
Date: Mon, 16 Sep 2013 16:48:17 -0700
Message-ID: <CAPhnLPCZZ3OzO6M3Rr6Ox3uERfVneOrhnTN2CdZNgbADKY4R5Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] buildset-config/nightly-qa-extras: make it simpler and usable
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
X-List-Received-Date: Mon, 16 Sep 2013 23:48:21 -0000
Content-Type: multipart/alternative; boundary=089e0122f0f2a1524204e688d67b

--089e0122f0f2a1524204e688d67b
Content-Type: text/plain; charset=ISO-8859-1

pulled into master


On Fri, Sep 13, 2013 at 4:34 AM, Stefan Stanacar <stefanx.stanacar@intel.com
> wrote:

> This target was missing from the nightly target for some reason.
> Also, it wasn't up to date with latest changes. I've simplified it a bit,
> so it has only two builds of core-image-minimal with features that are
> known to work.
> And these being core-image-minimal the sanity tests are just boot+ping.
>
> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
> ---
>  buildset-config/nightly-qa-extras.conf | 12 ++++++------
>  buildset-config/nightly.conf           |  2 +-
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/buildset-config/nightly-qa-extras.conf
> b/buildset-config/nightly-qa-extras.conf
> index 8fddbc6..3239fda 100644
> --- a/buildset-config/nightly-qa-extras.conf
> +++ b/buildset-config/nightly-qa-extras.conf
> @@ -8,10 +8,10 @@ steps: [{'SetDest':{}},
>          {'CheckOutLayers': {}},
>          {'RunPreamble': {}},
>          {'GetDistroVersion' : {'distro': 'poky'}},
> -        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
> 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME =
> "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = "
> cfg/fs/btrfs"\n'}},
> -        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> -        {'BuildImages': {'images': 'core-image-sato'}},
> -        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' :
> 2400}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
> 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = "
> read-only-rootfs"\n'}},
> -        {'BuildImages': {'images': 'core-image-sato'}},
> -        {'RunSanityTests': {'images': 'core-image-sato', 'scene' :
> 'sanity:boot sanity:ssh'}}]
> +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> +        {'BuildImages': {'images': 'core-image-minimal'}},
> +        {'RunSanityTests': {'images': 'core-image-minimal'}},
> +        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
> 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\n'}},
> +        {'BuildImages': {'images': 'core-image-minimal'}},
> +        {'RunSanityTests': {'images': 'core-image-minimal'}}]
> diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
> index 0c6615a..5641772 100644
> --- a/buildset-config/nightly.conf
> +++ b/buildset-config/nightly.conf
> @@ -71,7 +71,7 @@ steps: [{'SetDest':{}},
>                                'nightly-x86-64': {}, 'nightly-x86-64-lsb':
> {},
>                                'nightly-x86': {}, 'nightly-x86-lsb': {},
>                                'poky-tiny': {}, 'buildtools': {},
> -                              'nightly-qa-systemd': {}}}},
> +                              'nightly-qa-systemd': {},
> 'nightly-qa-extras': {}}}},
>          {'PrepPkgIndex' : {}},
>          {'BuildImages': {'images': 'package-index'}},
>          {'CreateAutoConf': {'machine': 'atom-pc', 'SDKMACHINE' : 'x86_64',
> --
> 1.8.1.4
>
>


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--089e0122f0f2a1524204e688d67b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">pulled into master<br></div><div class=3D"gmail_extra"><br=
><br><div class=3D"gmail_quote">On Fri, Sep 13, 2013 at 4:34 AM, Stefan Sta=
nacar <span dir=3D"ltr">&lt;<a href=3D"mailto:stefanx.stanacar@intel.com" t=
arget=3D"_blank">stefanx.stanacar@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">This target was missing from the nightly tar=
get for some reason.<br>
Also, it wasn&#39;t up to date with latest changes. I&#39;ve simplified it =
a bit,<br>
so it has only two builds of core-image-minimal with features that are know=
n to work.<br>
And these being core-image-minimal the sanity tests are just boot+ping.<br>
<br>
Signed-off-by: Stefan Stanacar &lt;<a href=3D"mailto:stefanx.stanacar@intel=
.com">stefanx.stanacar@intel.com</a>&gt;<br>
---<br>
=A0buildset-config/nightly-qa-extras.conf | 12 ++++++------<br>
=A0buildset-config/nightly.conf =A0 =A0 =A0 =A0 =A0 | =A02 +-<br>
=A02 files changed, 7 insertions(+), 7 deletions(-)<br>
<br>
diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/night=
ly-qa-extras.conf<br>
index 8fddbc6..3239fda 100644<br>
--- a/buildset-config/nightly-qa-extras.conf<br>
+++ b/buildset-config/nightly-qa-extras.conf<br>
@@ -8,10 +8,10 @@ steps: [{&#39;SetDest&#39;:{}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;CheckOutLayers&#39;: {}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;RunPreamble&#39;: {}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;GetDistroVersion&#39; : {&#39;distro&#39;: &#39;po=
ky&#39;}},<br>
- =A0 =A0 =A0 =A0{&#39;CreateAutoConf&#39;: {&#39;machine&#39;: &#39;qemux8=
6-64&#39;, &#39;SDKMACHINE&#39; : &#39;i686&#39;, &#39;distro&#39;: &#39;po=
ky&#39;, &#39;atextappend&#39; : &#39;\nROOT_HOME =3D &quot;/root&quot;\nIM=
AGE_FSTYPES =3D &quot;btrfs&quot;\nKERNEL_FEATURES_append =3D &quot; cfg/fs=
/btrfs&quot;\n&#39;}},<br>

- =A0 =A0 =A0 =A0{&#39;CreateBBLayersConf&#39;: {&#39;buildprovider&#39; : =
&#39;yocto&#39;}},<br>
- =A0 =A0 =A0 =A0{&#39;BuildImages&#39;: {&#39;images&#39;: &#39;core-image=
-sato&#39;}},<br>
- =A0 =A0 =A0 =A0{&#39;RunSanityTests&#39;: {&#39;images&#39;: &#39;core-im=
age-sato&#39;, &#39;timeout&#39; : 2400}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;CreateAutoConf&#39;: {&#39;machine&#39;: &#39;qemu=
x86-64&#39;, &#39;SDKMACHINE&#39; : &#39;i686&#39;, &#39;distro&#39;: &#39;=
poky&#39;, &#39;atextappend&#39; : &#39;\nIMAGE_FEATURES_append =3D &quot; =
read-only-rootfs&quot;\n&#39;}},<br>

- =A0 =A0 =A0 =A0{&#39;BuildImages&#39;: {&#39;images&#39;: &#39;core-image=
-sato&#39;}},<br>
- =A0 =A0 =A0 =A0{&#39;RunSanityTests&#39;: {&#39;images&#39;: &#39;core-im=
age-sato&#39;, &#39;scene&#39; : &#39;sanity:boot sanity:ssh&#39;}}]<br>
+ =A0 =A0 =A0 =A0{&#39;CreateBBLayersConf&#39;: {&#39;buildprovider&#39; : =
&#39;yocto&#39;}},<br>
+ =A0 =A0 =A0 =A0{&#39;BuildImages&#39;: {&#39;images&#39;: &#39;core-image=
-minimal&#39;}},<br>
+ =A0 =A0 =A0 =A0{&#39;RunSanityTests&#39;: {&#39;images&#39;: &#39;core-im=
age-minimal&#39;}},<br>
+ =A0 =A0 =A0 =A0{&#39;CreateAutoConf&#39;: {&#39;machine&#39;: &#39;qemux8=
6-64&#39;, &#39;SDKMACHINE&#39; : &#39;i686&#39;, &#39;distro&#39;: &#39;po=
ky&#39;, &#39;atextappend&#39; : &#39;\nROOT_HOME =3D &quot;/root&quot;\n&#=
39;}},<br>

+ =A0 =A0 =A0 =A0{&#39;BuildImages&#39;: {&#39;images&#39;: &#39;core-image=
-minimal&#39;}},<br>
+ =A0 =A0 =A0 =A0{&#39;RunSanityTests&#39;: {&#39;images&#39;: &#39;core-im=
age-minimal&#39;}}]<br>
diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf<br=
>
index 0c6615a..5641772 100644<br>
--- a/buildset-config/nightly.conf<br>
+++ b/buildset-config/nightly.conf<br>
@@ -71,7 +71,7 @@ steps: [{&#39;SetDest&#39;:{}},<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&#39;nightly=
-x86-64&#39;: {}, &#39;nightly-x86-64-lsb&#39;: {},<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&#39;nightly=
-x86&#39;: {}, &#39;nightly-x86-lsb&#39;: {},<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&#39;poky-ti=
ny&#39;: {}, &#39;buildtools&#39;: {},<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&#39;nightly-q=
a-systemd&#39;: {}}}},<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&#39;nightly-q=
a-systemd&#39;: {}, &#39;nightly-qa-extras&#39;: {}}}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;PrepPkgIndex&#39; : {}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;BuildImages&#39;: {&#39;images&#39;: &#39;package-=
index&#39;}},<br>
=A0 =A0 =A0 =A0 =A0{&#39;CreateAutoConf&#39;: {&#39;machine&#39;: &#39;atom=
-pc&#39;, &#39;SDKMACHINE&#39; : &#39;x86_64&#39;,<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth=
 Flanagan<br>Yocto Project<br>Build and Release
</div>

--089e0122f0f2a1524204e688d67b--
