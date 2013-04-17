Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80B44E014EF
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:11:57 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id c13so1523017vea.37
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=P2L5H8I+Cv0vnW/Vt8KyUN+m0lR0Bnd9PaHY5vHDu3M=;
	b=sVWq1PNhxACA+G84PwiCNT+8qHgIQHFRIs91y1LQ2tRzwmV8lZ92b+9rUMPkp6hUim
	/ymszug9pSn3XxQxwpn1/xtdc0HQPBEZ5m42aQlMeRspmITqWRj/DK8yKumQkKA/6LII
	M1hWRAW98phgzflbHeWixbnR7lS1szQO0wXSN5zb1dqTmPdaZ9aYKG0n7r04eamG2YO/
	3jKYZbIa4bo2D4z4NfjH2jSOdWCx87CcEIWnP394nHEZgXG9XnPm0qUTWeKRVsARKfoS
	vp2wb47RqcndZJAfUx2z87X+39w498rs2GgpPqbQswVEetr2LB0sELrTNGjBXaw9gKRd
	2lIg==
MIME-Version: 1.0
X-Received: by 10.52.16.177 with SMTP id h17mr4471923vdd.109.1366211517007;
	Wed, 17 Apr 2013 08:11:57 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Wed, 17 Apr 2013 08:11:56 -0700 (PDT)
In-Reply-To: <CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
Date: Wed, 17 Apr 2013 17:11:56 +0200
X-Google-Sender-Auth: zyDTDl8Sx-WTfyCk9KTJ4if4VFA
Message-ID: <CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, yocto@yoctoproject.org
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Wed, 17 Apr 2013 15:11:57 -0000
Content-Type: multipart/alternative; boundary=bcaec504058028cc1104da8fe822

--bcaec504058028cc1104da8fe822
Content-Type: text/plain; charset=ISO-8859-1

Hi Burton,

Please have a look at the build error I had

WARNING: File '/usr/bin/sdusb-cmd' from skidata-tools was already stripped,
this will prevent future debugging!
ERROR: QA Issue: No GNU_HASH in the elf binary:
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/devsrv'
ERROR: QA Issue: No GNU_HASH in the elf binary:
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/USBDownload'
ERROR: QA Issue: No GNU_HASH in the elf binary:
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/setty'
ERROR: QA Issue: No GNU_HASH in the elf binary:
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/TCPDownload'
ERROR: QA Issue: No GNU_HASH in the elf binary:
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/sdusb-cmd'
ERROR: QA Issue: No GNU_HASH in the elf binary:
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/i2c-test'
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/temp/log.do_package.31327
ERROR: Task 10
(/home/damarla/yocto/poky/meta/recipes-extended/skidata-tools/
skidata-tools.bb, do_package) failed with exit code '1'

Greets,
Satya


On Wed, Apr 17, 2013 at 5:05 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 17 April 2013 16:00, Satya Swaroop Damarla <swaroop.damarla@gmail.com>
> wrote:
> > I have few prebuilt binaries and I want to add them to the rootfs at the
> > build itself. So, I created a recipe... but I get an error .. Can you
> please
> > tell me what the error could be?
>
> It helps when you tell us what error you're getting.
>
> Ross
>

--bcaec504058028cc1104da8fe822
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Burton,<div><br></div><div style>Please have a look at =
the build error I had</div><div style><br></div><div style><div>WARNING: Fi=
le &#39;/usr/bin/sdusb-cmd&#39; from skidata-tools was already stripped, th=
is will prevent future debugging!</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: &#39;/home/damarla/yoc=
to/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnuea=
bi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/devsrv&#39;</d=
iv>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: &#39;/home/damarla/yoc=
to/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnuea=
bi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/USBDownload&#3=
9;</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: &#39;/home/damarla/yoc=
to/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnuea=
bi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/setty&#39;</di=
v>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: &#39;/home/damarla/yoc=
to/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnuea=
bi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/TCPDownload&#3=
9;</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: &#39;/home/damarla/yoc=
to/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnuea=
bi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/sdusb-cmd&#39;=
</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: &#39;/home/damarla/yoc=
to/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnuea=
bi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/i2c-test&#39;<=
/div>
<div>ERROR: QA run found fatal errors. Please consider fixing them.</div><d=
iv>ERROR: Function failed: do_package_qa</div><div>ERROR: Logfile of failur=
e stored in: /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9=
-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/temp/log.do_package.3=
1327</div>
<div>ERROR: Task 10 (/home/damarla/yocto/poky/meta/recipes-extended/skidata=
-tools/<a href=3D"http://skidata-tools.bb">skidata-tools.bb</a>, do_package=
) failed with exit code &#39;1&#39;</div><div><br></div><div style>Greets,<=
/div>
<div style>Satya</div></div></div><div class=3D"gmail_extra"><br><br><div c=
lass=3D"gmail_quote">On Wed, Apr 17, 2013 at 5:05 PM, Burton, Ross <span di=
r=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ro=
ss.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 17 April 2013 16:00, Sa=
tya Swaroop Damarla &lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroo=
p.damarla@gmail.com</a>&gt; wrote:<br>

&gt; I have few prebuilt binaries and I want to add them to the rootfs at t=
he<br>
&gt; build itself. So, I created a recipe... but I get an error .. Can you =
please<br>
&gt; tell me what the error could be?<br>
<br>
</div>It helps when you tell us what error you&#39;re getting.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--bcaec504058028cc1104da8fe822--
