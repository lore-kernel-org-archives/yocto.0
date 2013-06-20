Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 547C5E0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 02:07:43 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id 14so4899691vea.29
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 02:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=jNTFokBRWAOmnedh8x21ke7acmWPAMOS73+CUei5zfo=;
	b=OQhBcfSjseyfXw0TIzRzh+IaXwTF2HPWC7NsEpS9nj1c6ZkPy/MqsFwVXe3G/PtNcZ
	kIAvYKcXqYPf2yZHtDMlWHVK4j5VULI2GxCMKigGBNcfutM79IUnR7h5GC3YVn/xmK4d
	rBculyW3+zfC0TbijnRwWPyiifOkx4Q8bVP8SZk7hIeCAa0O6rIQ9IsYGW3E0oc/zf+T
	QnQOFHeblhfSVu6oJ2sJ/32utiymb5n0NpsajQJkmD7tqZPHh5BzAQB+O2iZs+0H4wYo
	R8dj6f6Mpt0/JJP3Hn66FBW71gzNezScmM9ZIx2f9z5UyUah1kEgDNzf+bbsO/Jq7HPz
	xNkg==
MIME-Version: 1.0
X-Received: by 10.220.170.72 with SMTP id c8mr2218119vcz.14.1371719263011;
	Thu, 20 Jun 2013 02:07:43 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Thu, 20 Jun 2013 02:07:42 -0700 (PDT)
In-Reply-To: <1526680.2T1uIfLeRH@helios>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
	<F7494A5B-922D-43A9-A63B-4F1C83F93E81@gmail.com>
	<1526680.2T1uIfLeRH@helios>
Date: Thu, 20 Jun 2013 11:07:42 +0200
X-Google-Sender-Auth: ruILDSotnYOJQrAD6tjVKtxYuOM
Message-ID: <CAFMfyzLvQfmmpNGAD+8YpP8axv7EX9ev8M-SR9a=z3oMsBB1Mg@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Thu, 20 Jun 2013 09:07:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2d024674cc904df924725

--001a11c2d024674cc904df924725
Content-Type: text/plain; charset=ISO-8859-1

Yeah.. I checked it and its true. In the errror its totally different issue

*| The following packages have unmet dependencies:*
*|  udev-dev : Depends: udev (= 182-r7) but 1:204-r0 is to be installed*
*|             Recommends: libusb-dev but it is not installable*
*|             Recommends: module-init-tools-dev but it is not installable*
*|             Recommends: libkmod-dev but it is not installable*
*| E: Unable to correct problems, you have held broken packages.*
*| DEBUG: Python function do_populate_sdk finished*
*| ERROR: Function failed: populate_sdk_image (log file is located at
/home/damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-linux-gnueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.6675)
*
*ERROR: Task 10
(/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu-sdk.bb, do_populate_sdk) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 4961 tasks of which 4596 didn't need to be
rerun and 1 failed.*

The udev version to ve installed is 182-r7 bu I dont understand why
1:204-r0 is trying to get installed..


On Thu, Jun 20, 2013 at 10:31 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Thursday 20 June 2013 00:29:23 Khem Raj wrote:
> > On Jun 20, 2013, at 12:12 AM, DAMARLA Satya Swaroop
> > <satyaswaroop.damarla@gmail.com> wrote:
> > > Any reasons why toolchains compile wihtout any issues on sysvinit and
> not
> > > with systemd?
> > >
> > >
> > > On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroop
> > > <swaroop.damarla@gmail.com> wrote: Yes... I thought the same and so, I
> > > made two build directories , one for sysvinit and the other for systemd
> > > and the errors I get abosulte no error when I try to populate_sdk under
> > > sysvinit but I get the following errors when I run the same under
> > > systemd.>
> > > | The following packages have unmet dependencies:
> > > |  udev-dev : Depends: udev (= 182-r7) but 1:204-r0 is to be installed
> > > |
> > > |             Recommends: libusb-dev but it is not installable
> > > |             Recommends: module-init-tools-dev but it is not
> installable
> > > |             Recommends: libkmod-dev but it is not installable
> > > |
> > > | E: Unable to correct problems, you have held broken packages.
> >
> > it seems you did not choose systemd as provider for udev. You should do
> that
> > when you use systemd
>
> default-providers.inc already does this so you should not need to:
>
> meta/conf/distro/include/default-providers.inc:PREFERRED_PROVIDER_udev ?=
> "${@base_contains('DISTRO_FEATURES','systemd','systemd','udev',d)}"
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c2d024674cc904df924725
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yeah.. I checked it and its true. In the errror its totall=
y different issue<div><br></div><div><div><i>| The following packages have =
unmet dependencies:</i></div><div><i>| =A0udev-dev : Depends: udev (=3D 182=
-r7) but 1:204-r0 is to be installed</i></div>
<div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: libusb-dev but it is not inst=
allable</i></div><div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: module-init-=
tools-dev but it is not installable</i></div><div><i>| =A0 =A0 =A0 =A0 =A0 =
=A0 Recommends: libkmod-dev but it is not installable</i></div>
<div><i>| E: Unable to correct problems, you have held broken packages.</i>=
</div><div><i>| DEBUG: Python function do_populate_sdk finished</i></div><d=
iv><i>| ERROR: Function failed: populate_sdk_image (log file is located at =
/home/damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-li=
nux-gnueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.6675)</i></=
div>
<div><i>ERROR: Task 10 (/home/damarla/openYocto/poky/meta-skidata/recipes-s=
martcpu/images/<a href=3D"http://rootfs-smartcpu-sdk.bb">rootfs-smartcpu-sd=
k.bb</a>, do_populate_sdk) failed with exit code &#39;1&#39;</i></div><div>
<i>NOTE: Tasks Summary: Attempted 4961 tasks of which 4596 didn&#39;t need =
to be rerun and 1 failed.</i></div></div><div><br></div><div style>The udev=
 version to ve installed is 182-r7 bu I dont understand why 1:204-r0 is try=
ing to get installed..</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu,=
 Jun 20, 2013 at 10:31 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Thursday 20 June 2013 0=
0:29:23 Khem Raj wrote:<br>
&gt; On Jun 20, 2013, at 12:12 AM, DAMARLA Satya Swaroop<br>
&gt; &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com">satyaswaroop.dam=
arla@gmail.com</a>&gt; wrote:<br>
&gt; &gt; Any reasons why toolchains compile wihtout any issues on sysvinit=
 and not<br>
&gt; &gt; with systemd?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroop<br>
&gt; &gt; &lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroop.damarla@=
gmail.com</a>&gt; wrote: Yes... I thought the same and so, I<br>
&gt; &gt; made two build directories , one for sysvinit and the other for s=
ystemd<br>
&gt; &gt; and the errors I get abosulte no error when I try to populate_sdk=
 under<br>
&gt; &gt; sysvinit but I get the following errors when I run the same under=
<br>
&gt; &gt; systemd.&gt;<br>
&gt; &gt; | The following packages have unmet dependencies:<br>
&gt; &gt; | =A0udev-dev : Depends: udev (=3D 182-r7) but 1:204-r0 is to be =
installed<br>
&gt; &gt; |<br>
&gt; &gt; | =A0 =A0 =A0 =A0 =A0 =A0 Recommends: libusb-dev but it is not in=
stallable<br>
&gt; &gt; | =A0 =A0 =A0 =A0 =A0 =A0 Recommends: module-init-tools-dev but i=
t is not installable<br>
&gt; &gt; | =A0 =A0 =A0 =A0 =A0 =A0 Recommends: libkmod-dev but it is not i=
nstallable<br>
&gt; &gt; |<br>
&gt; &gt; | E: Unable to correct problems, you have held broken packages.<b=
r>
&gt;<br>
&gt; it seems you did not choose systemd as provider for udev. You should d=
o that<br>
&gt; when you use systemd<br>
<br>
</div>default-providers.inc already does this so you should not need to:<br=
>
<br>
meta/conf/distro/include/default-providers.inc:PREFERRED_PROVIDER_udev ?=3D=
<br>
&quot;${@base_contains(&#39;DISTRO_FEATURES&#39;,&#39;systemd&#39;,&#39;sys=
temd&#39;,&#39;udev&#39;,d)}&quot;<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11c2d024674cc904df924725--
