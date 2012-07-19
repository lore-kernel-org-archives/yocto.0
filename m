Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6895E00288
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 12:33:20 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so2202485qcs.35
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 12:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Yk7tVSbtge8TUqnGxyGxYSwuDidPN936BvOl/xKTil0=;
	b=Z3zeQdX6KkWwPebcAyr1ikBYFMci7xyco5jyE7Wwy3hu5j9xPVj4EKFkCdpVrEpTrt
	P0zSEDlGWlmxCdLt6mWbb56xALCUaM157OBGjYfwYTkHBg0dkznu9gdAlqvcX+0HGgJx
	KjjXhbOLnLABl1VfJOEHHCV1O4/IK1ticthQrqO8sldPSfw7GNUU2O+5Y8fa19yml48T
	qjDpTY+UUOr3NjK/KGetKjd3y15LwRXun5NAmt8dltjNF9Jslqc/DK8jPIM3T1jyV0Ew
	onnT3erzLufk0Tznmjq2XBA3CMeDVtSYuVGRVOZkkG2BOkQWlUZJN40JDWHvwWHt6cWG
	Mp2g==
MIME-Version: 1.0
Received: by 10.182.52.42 with SMTP id q10mr4089305obo.46.1342726400066; Thu,
	19 Jul 2012 12:33:20 -0700 (PDT)
Received: by 10.76.76.228 with HTTP; Thu, 19 Jul 2012 12:33:20 -0700 (PDT)
In-Reply-To: <50085D9F.8030200@gmail.com>
References: <50085D9F.8030200@gmail.com>
Date: Thu, 19 Jul 2012 15:33:20 -0400
Message-ID: <CANFv2EnXx1tK2tkEFGnA7ozkBuc4OVVCU7+SCHR7G_RxLuP4zw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: build failures after recent pull
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Jul 2012 19:33:20 -0000
Content-Type: multipart/alternative; boundary=14dae93990711b43a004c533da0c

--14dae93990711b43a004c533da0c
Content-Type: text/plain; charset=ISO-8859-1

I failed to mention this is on the denzil branch of both poky and
meta-intel.

JIm A


On Thu, Jul 19, 2012 at 3:18 PM, Jim Abernathy <jfabernathy@gmail.com>wrote:

> Something that got pushed recently has broken the tools. To keep the debug
> simple, I went back and tried to just build an old stable platform, the
> n450.  Below is the error:
>
> NOTE: Unpacking home/jim/yocto-downloads/gnu-**config-yocto-20111111.tgz
> to /build/baryon-denzil/tmp/work/**x86_64-linux/gnu-config-**
> native-20111111-r1/
> tar (child): home/jim/yocto-downloads/gnu-**config-yocto-20111111.tgz:
> Cannot open: No such file or directory
> tar (child): Error is not recoverable: exiting now
> tar: Child returned status 2
> tar: Error is not recoverable: exiting now
> ERROR: Function failed: Unpack failure for URL: 'http://downloads.**
> yoctoproject.org/releases/gnu-**config/gnu-config-yocto-**20111111.tgz<http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz>'.
> Unpack command PATH="/build/baryon-denzil/**tmp/sysroots/x86_64-linux/usr/
> **bin/core2-linux:/build/baryon-**denzil/tmp/sysroots/x86_64-**
> linux/usr/bin:/build/baryon-**denzil/tmp/sysroots/x86_64-**
> linux/usr/sbin:/build/baryon-**denzil/tmp/sysroots/x86_64-**
> linux/usr/bin:/build/baryon-**denzil/tmp/sysroots/x86_64-**
> linux/sbin:/build/baryon-**denzil/tmp/sysroots/x86_64-**
> linux//bin:/home/jim/poky/**scripts/native-intercept:/**
> home/jim/poky/bitbake/bin/:/**home/jim/poky/scripts:/home/**
> jim/poky/bitbake/bin/:/home/**jim/poky/scripts:/home/jim/**
> poky/bitbake/bin/:/home/jim/**poky/scripts:/home/jim/poky/**
> bitbake/bin/:/usr/lib/lightdm/**lightdm:/usr/local/sbin:/usr/**
> local/bin:/usr/sbin:/usr/bin:/**sbin:/bin:/usr/games:/home/**jim/poky/scripts"
> tar xz --no-same-owner -f home/jim/yocto-downloads/gnu-**config-yocto-20111111.tgz
> failed with return value 2
>

--14dae93990711b43a004c533da0c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I failed to mention this is on the denzil branch of both poky and meta-inte=
l.<br><br>JIm A<br><br><br><div class=3D"gmail_quote">On Thu, Jul 19, 2012 =
at 3:18 PM, Jim Abernathy <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernat=
hy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Something that got pushed recently has broke=
n the tools. To keep the debug simple, I went back and tried to just build =
an old stable platform, the n450. =A0Below is the error:<br>

<br>
NOTE: Unpacking home/jim/yocto-downloads/gnu-<u></u>config-yocto-20111111.t=
gz to /build/baryon-denzil/tmp/work/<u></u>x86_64-linux/gnu-config-<u></u>n=
ative-20111111-r1/<br>
tar (child): home/jim/yocto-downloads/gnu-<u></u>config-yocto-20111111.tgz:=
 Cannot open: No such file or directory<br>
tar (child): Error is not recoverable: exiting now<br>
tar: Child returned status 2<br>
tar: Error is not recoverable: exiting now<br>
ERROR: Function failed: Unpack failure for URL: &#39;<a href=3D"http://down=
loads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz" t=
arget=3D"_blank">http://downloads.<u></u>yoctoproject.org/releases/gnu-<u><=
/u>config/gnu-config-yocto-<u></u>20111111.tgz</a>&#39;. Unpack command PAT=
H=3D&quot;/build/baryon-denzil/<u></u>tmp/sysroots/x86_64-linux/usr/<u></u>=
bin/core2-linux:/build/baryon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linu=
x/usr/bin:/build/baryon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux/usr/=
sbin:/build/baryon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux/usr/bin:/=
build/baryon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux/sbin:/build/bar=
yon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux//bin:/home/jim/poky/<u><=
/u>scripts/native-intercept:/<u></u>home/jim/poky/bitbake/bin/:/<u></u>home=
/jim/poky/scripts:/home/<u></u>jim/poky/bitbake/bin/:/home/<u></u>jim/poky/=
scripts:/home/jim/<u></u>poky/bitbake/bin/:/home/jim/<u></u>poky/scripts:/h=
ome/jim/poky/<u></u>bitbake/bin/:/usr/lib/lightdm/<u></u>lightdm:/usr/local=
/sbin:/usr/<u></u>local/bin:/usr/sbin:/usr/bin:/<u></u>sbin:/bin:/usr/games=
:/home/<u></u>jim/poky/scripts&quot; tar xz --no-same-owner -f home/jim/yoc=
to-downloads/gnu-<u></u>config-yocto-20111111.tgz failed with return value =
2<br>

</blockquote></div><br>

--14dae93990711b43a004c533da0c--
