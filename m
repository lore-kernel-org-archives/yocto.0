Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70545E0140A
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 11:10:12 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id d10so1690509vea.14
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 11:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=eGCWejcDMGnSsgyMFB1TGrTTch242KGtvlQ4OF8pcM4=;
	b=0jLSMmFUoJsKn8Sl1DPFPbFbRL4/onxqVIdixMz/Sg1DftsbnpbXOabqb8lH8citk4
	LBtnZrbHQL/HGYtbEGxvzZxNMIQVMGRuFYA4OHAVl/iblVP6Q/RtIzeTmLrRzu0DEiA/
	BYcBrRVc756eg1Oipu4vkLTxZ4S57zep9KWiHGM2zeQ0nqB78RvM1Ax7d0jTIhXyRGVg
	aqyOnJdDLj2bUEhc8C3vKDKwP86WIKyZUZ875hPXFhoz4/joAL6uqbNwQVv+EVyGnAF3
	4/CMpGowtSbiQvxSqDoBeazJ+Q/IBS3pSge/69f+0I0MDf/BTqSYGS1Kgq3fkcwKs7XN
	RrQg==
MIME-Version: 1.0
X-Received: by 10.220.39.69 with SMTP id f5mr5818642vce.45.1366222211364; Wed,
	17 Apr 2013 11:10:11 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Wed, 17 Apr 2013 11:10:11 -0700 (PDT)
In-Reply-To: <CAJTo0LZr0s1tp6V0_3W5odWmCOzyRtU4_E92OL8omtf9GBGTPA@mail.gmail.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
	<CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
	<CAJTo0LZr0s1tp6V0_3W5odWmCOzyRtU4_E92OL8omtf9GBGTPA@mail.gmail.com>
Date: Wed, 17 Apr 2013 20:10:11 +0200
X-Google-Sender-Auth: DdZLZqMZ1IPMVZZgZ58JLCWrReQ
Message-ID: <CAFMfyz+F292KQyQBBV7Oyu_q+BAj0F=gBPQqzE6EEDKk347FMQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 17 Apr 2013 18:10:12 -0000
Content-Type: multipart/alternative; boundary=bcaec54eebba97bd4e04da92652b

--bcaec54eebba97bd4e04da92652b
Content-Type: text/plain; charset=ISO-8859-1

Hi..

If I dont avoid this error.. I cant build the rootfilesystem....


On Wed, Apr 17, 2013 at 5:56 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 17 April 2013 16:11, Satya Swaroop Damarla <swaroop.damarla@gmail.com>
> wrote:
> > WARNING: File '/usr/bin/sdusb-cmd' from skidata-tools was already
> stripped,
> > this will prevent future debugging!
>
> Use INHIBIT_PACKAGE_DEBUG_SPLIT = "1" to turn off the generation of
> -dbg packages, as this is where the splitting and stripping happens.
> As your binaries are already stripped, -dbg packages are pointless.
>
> > ERROR: QA Issue: No GNU_HASH in the elf binary:
> >
> '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/devsrv'
>
> This is familiar but I can't remember how to make it disappear, sorry.
>
> Ross
>

--bcaec54eebba97bd4e04da92652b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi..<div><br></div><div style>If I dont avoid this error..=
 I cant build the rootfilesystem....=A0</div></div><div class=3D"gmail_extr=
a"><br><br><div class=3D"gmail_quote">On Wed, Apr 17, 2013 at 5:56 PM, Burt=
on, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" tar=
get=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 17 April 2013 16:11, Sa=
tya Swaroop Damarla &lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroo=
p.damarla@gmail.com</a>&gt; wrote:<br>

&gt; WARNING: File &#39;/usr/bin/sdusb-cmd&#39; from skidata-tools was alre=
ady stripped,<br>
&gt; this will prevent future debugging!<br>
<br>
</div>Use INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot; to turn off the gen=
eration of<br>
-dbg packages, as this is where the splitting and stripping happens.<br>
As your binaries are already stripped, -dbg packages are pointless.<br>
<div class=3D"im"><br>
&gt; ERROR: QA Issue: No GNU_HASH in the elf binary:<br>
&gt; &#39;/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vf=
p-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-t=
ools/usr/bin/devsrv&#39;<br>
<br>
</div>This is familiar but I can&#39;t remember how to make it disappear, s=
orry.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--bcaec54eebba97bd4e04da92652b--
