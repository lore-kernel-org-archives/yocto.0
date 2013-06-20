Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 959EFE0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 05:32:20 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id x14so4547674vbb.20
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 05:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZVCaTFKgq/n4sHVaMaSf8HhOthajeVj3Sr+5EibS9FE=;
	b=u0eYdWercOYAVa8b37MOM8fJ738cKM87LruTlgU/odE9vY300UakbmE9flGSrQuKFm
	v8ale2alJdVcM2GBZeDrNOWRvtxT3h6rzppVGMKMDdS1mNIaDvv1zf+YsXDBiv7KGhqr
	RaYbkzwFuuA59Cpj36ZkHgZqHi8acmfw7BPz1wGn0H6jLfWYX+jBFujTUukWUUFdOV4i
	7IZrCuJoAV/k44tZNw8Bi5fJ8f/8ueMOJgyja5X+tXvGFPamcJJtOLMiq10kA2ktmj4j
	fO3HgjIV+G62JlMuFZ8VsrL5piXcBoOh1Mr9eB9/WYHZXQ4pCRm9lU85GZbO+myqZci+
	ddSw==
MIME-Version: 1.0
X-Received: by 10.58.198.44 with SMTP id iz12mr2851449vec.85.1371731539204;
	Thu, 20 Jun 2013 05:32:19 -0700 (PDT)
Received: by 10.52.179.33 with HTTP; Thu, 20 Jun 2013 05:32:19 -0700 (PDT)
In-Reply-To: <CAJTo0Lb-1D4EY+RLkcs8DybmPSAfm3-r=ZWA=OUyA8BiozNfOQ@mail.gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
	<F7494A5B-922D-43A9-A63B-4F1C83F93E81@gmail.com>
	<1526680.2T1uIfLeRH@helios>
	<CAFMfyzLvQfmmpNGAD+8YpP8axv7EX9ev8M-SR9a=z3oMsBB1Mg@mail.gmail.com>
	<CAJTo0Lb-1D4EY+RLkcs8DybmPSAfm3-r=ZWA=OUyA8BiozNfOQ@mail.gmail.com>
Date: Thu, 20 Jun 2013 14:32:19 +0200
Message-ID: <CAFMfyz++3OMfdOkjcbw6wLCKPEMi420Rgdb7JwrpZXuXy7f_Mg@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 20 Jun 2013 12:32:20 -0000
Content-Type: multipart/alternative; boundary=047d7b6dcb9c1f520404df952354

--047d7b6dcb9c1f520404df952354
Content-Type: text/plain; charset=ISO-8859-1

I think you guys are right.... and now I am able to build the toolchain
perfectly....


On Thu, Jun 20, 2013 at 12:06 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 20 June 2013 10:07, DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
> wrote:
> > The udev version to ve installed is 182-r7 bu I dont understand why
> 1:204-r0
> > is trying to get installed..
>
> This is because your deploy directory contains the systemd "udev"
> package, which is version 204 and so newer than the sysvinit "udev"
> package, version 182.  This is why we say that switching distro
> features in an existing build directory isn't supported.
>
> If you delete your tmp directory it will rebuild everything quickly
> using the sstate-cache (don't delete that!).
>
> Ross
>

--047d7b6dcb9c1f520404df952354
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think you guys are right.... and now I am able to build =
the toolchain perfectly....</div><div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote">On Thu, Jun 20, 2013 at 12:06 PM, Burton, Ross <span di=
r=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ro=
ss.burton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 20 June 2013 10:07, DAM=
ARLA Satya Swaroop &lt;<a href=3D"mailto:swaroop.damarla@gmail.com">swaroop=
.damarla@gmail.com</a>&gt; wrote:<br>

&gt; The udev version to ve installed is 182-r7 bu I dont understand why 1:=
204-r0<br>
&gt; is trying to get installed..<br>
<br>
</div>This is because your deploy directory contains the systemd &quot;udev=
&quot;<br>
package, which is version 204 and so newer than the sysvinit &quot;udev&quo=
t;<br>
package, version 182. =A0This is why we say that switching distro<br>
features in an existing build directory isn&#39;t supported.<br>
<br>
If you delete your tmp directory it will rebuild everything quickly<br>
using the sstate-cache (don&#39;t delete that!).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--047d7b6dcb9c1f520404df952354--
