Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45633E00288
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 13:13:50 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so3833133ggn.35
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 13:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jQhuYp1fkAVlJ4tUnyn2XCtEsNnUSLhd/mPWNva4XAE=;
	b=BfXyTCScBxv8k2CF6Bx8Xb9rd2NQYABa2wZgla8a8JeL/wMjsHkoEcEf0wh2Qnvj9Y
	Obq5yrWfRMTTrOci+m2cxvsM8wuaSpYEgFtGLT6lp4z20MMSfnzHcfzkwq5YwD0KgsqW
	1PGHlepZZfAXuZZHtIpJ3Mpc1POR2b6q+2v1y5btkDuB+GNAEHixJowdZ0lmKSKoWdbS
	C2XAu34GnV/VlhDH1zq5mWTDhrEVakEEPPDWnmazFunp0CmYrOwMYkLy+rY3ntXE5ddw
	Qjji64HiTotw9w33/UjAvPBtVfVR7yNqCELq28Vj97v3fTHnID6d5npALJ0pe6K8b9Gz
	k8eg==
MIME-Version: 1.0
Received: by 10.60.24.7 with SMTP id q7mr4050807oef.54.1342728829597; Thu, 19
	Jul 2012 13:13:49 -0700 (PDT)
Received: by 10.76.76.228 with HTTP; Thu, 19 Jul 2012 13:13:49 -0700 (PDT)
In-Reply-To: <CANFv2EnXx1tK2tkEFGnA7ozkBuc4OVVCU7+SCHR7G_RxLuP4zw@mail.gmail.com>
References: <50085D9F.8030200@gmail.com>
	<CANFv2EnXx1tK2tkEFGnA7ozkBuc4OVVCU7+SCHR7G_RxLuP4zw@mail.gmail.com>
Date: Thu, 19 Jul 2012 16:13:49 -0400
Message-ID: <CANFv2EkVrHvKf5mtO4QaoFAgiArdeuGMQEhCZKgeq01fGpePNA@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 Jul 2012 20:13:50 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c4e6eaf7f304c5346a08

--e89a8ff1c4e6eaf7f304c5346a08
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jul 19, 2012 at 3:33 PM, James Abernathy <jfabernathy@gmail.com>wrote:

> I failed to mention this is on the denzil branch of both poky and
> meta-intel.
>
>
This does not happen on Denzil 7.0.1 tarball.

Jim A


> JIm A
>
>
>
> On Thu, Jul 19, 2012 at 3:18 PM, Jim Abernathy <jfabernathy@gmail.com>wrote:
>
>> Something that got pushed recently has broken the tools. To keep the
>> debug simple, I went back and tried to just build an old stable platform,
>> the n450.  Below is the error:
>>
>> NOTE: Unpacking home/jim/yocto-downloads/gnu-**config-yocto-20111111.tgz
>> to /build/baryon-denzil/tmp/work/**x86_64-linux/gnu-config-**
>> native-20111111-r1/
>> tar (child): home/jim/yocto-downloads/gnu-**config-yocto-20111111.tgz:
>> Cannot open: No such file or directory
>> tar (child): Error is not recoverable: exiting now
>> tar: Child returned status 2
>> tar: Error is not recoverable: exiting now
>> ERROR: Function failed: Unpack failure for URL: 'http://downloads.**
>> yoctoproject.org/releases/gnu-**config/gnu-config-yocto-**20111111.tgz<http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz>'.
>> Unpack command PATH="/build/baryon-denzil/**
>> tmp/sysroots/x86_64-linux/usr/**bin/core2-linux:/build/baryon-**
>> denzil/tmp/sysroots/x86_64-**linux/usr/bin:/build/baryon-**
>> denzil/tmp/sysroots/x86_64-**linux/usr/sbin:/build/baryon-**
>> denzil/tmp/sysroots/x86_64-**linux/usr/bin:/build/baryon-**
>> denzil/tmp/sysroots/x86_64-**linux/sbin:/build/baryon-**
>> denzil/tmp/sysroots/x86_64-**linux//bin:/home/jim/poky/**
>> scripts/native-intercept:/**home/jim/poky/bitbake/bin/:/**
>> home/jim/poky/scripts:/home/**jim/poky/bitbake/bin/:/home/**
>> jim/poky/scripts:/home/jim/**poky/bitbake/bin/:/home/jim/**
>> poky/scripts:/home/jim/poky/**bitbake/bin/:/usr/lib/lightdm/**
>> lightdm:/usr/local/sbin:/usr/**local/bin:/usr/sbin:/usr/bin:/**
>> sbin:/bin:/usr/games:/home/**jim/poky/scripts" tar xz --no-same-owner -f
>> home/jim/yocto-downloads/gnu-**config-yocto-20111111.tgz failed with
>> return value 2
>>
>
>

--e89a8ff1c4e6eaf7f304c5346a08
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Thu, Jul 19, 2012 at 3:33 PM, James Abernathy=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_=
blank">jfabernathy@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">I failed to mention this is on the de=
nzil branch of both poky and meta-intel.<br><br></blockquote>
<div>=A0</div>
<div>This does not happen on Denzil 7.0.1 tarball.=A0 </div>
<div>=A0</div>
<div>Jim A<br></div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">JIm A=20
<div class=3D"HOEnZb">
<div class=3D"h5"><br><br><br>
<div class=3D"gmail_quote">On Thu, Jul 19, 2012 at 3:18 PM, Jim Abernathy <=
span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_bl=
ank">jfabernathy@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Something that got pushed recently ha=
s broken the tools. To keep the debug simple, I went back and tried to just=
 build an old stable platform, the n450. =A0Below is the error:<br>
<br>NOTE: Unpacking home/jim/yocto-downloads/gnu-<u></u>config-yocto-201111=
11.tgz to /build/baryon-denzil/tmp/work/<u></u>x86_64-linux/gnu-config-<u><=
/u>native-20111111-r1/<br>tar (child): home/jim/yocto-downloads/gnu-<u></u>=
config-yocto-20111111.tgz: Cannot open: No such file or directory<br>
tar (child): Error is not recoverable: exiting now<br>tar: Child returned s=
tatus 2<br>tar: Error is not recoverable: exiting now<br>ERROR: Function fa=
iled: Unpack failure for URL: &#39;<a href=3D"http://downloads.yoctoproject=
.org/releases/gnu-config/gnu-config-yocto-20111111.tgz" target=3D"_blank">h=
ttp://downloads.<u></u>yoctoproject.org/releases/gnu-<u></u>config/gnu-conf=
ig-yocto-<u></u>20111111.tgz</a>&#39;. Unpack command PATH=3D&quot;/build/b=
aryon-denzil/<u></u>tmp/sysroots/x86_64-linux/usr/<u></u>bin/core2-linux:/b=
uild/baryon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux/usr/bin:/build/b=
aryon-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux/usr/sbin:/build/baryon=
-<u></u>denzil/tmp/sysroots/x86_64-<u></u>linux/usr/bin:/build/baryon-<u></=
u>denzil/tmp/sysroots/x86_64-<u></u>linux/sbin:/build/baryon-<u></u>denzil/=
tmp/sysroots/x86_64-<u></u>linux//bin:/home/jim/poky/<u></u>scripts/native-=
intercept:/<u></u>home/jim/poky/bitbake/bin/:/<u></u>home/jim/poky/scripts:=
/home/<u></u>jim/poky/bitbake/bin/:/home/<u></u>jim/poky/scripts:/home/jim/=
<u></u>poky/bitbake/bin/:/home/jim/<u></u>poky/scripts:/home/jim/poky/<u></=
u>bitbake/bin/:/usr/lib/lightdm/<u></u>lightdm:/usr/local/sbin:/usr/<u></u>=
local/bin:/usr/sbin:/usr/bin:/<u></u>sbin:/bin:/usr/games:/home/<u></u>jim/=
poky/scripts&quot; tar xz --no-same-owner -f home/jim/yocto-downloads/gnu-<=
u></u>config-yocto-20111111.tgz failed with return value 2<br>
</blockquote></div><br></div></div></blockquote></div><br>

--e89a8ff1c4e6eaf7f304c5346a08--
