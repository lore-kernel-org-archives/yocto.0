Return-Path: <sachindhiman123@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77EE14C810FF
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 20:30:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk4 with SMTP id 4so263116gxk.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 18:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:sender:received
	:in-reply-to:references:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=BsV6Gql0XPXqQscKFMH+niLLFzuXXupFU/YM+drMvas=;
	b=Tj/lWJoepjLI7p9ZyMv+VTdj6f3gXTNIBjSlEQ/j+QJXlrmSANJI68mY+i8Qq8kz+Z
	AngG1/QUhKfOsD142BlbhIbbnQ9sjFA0tQof8kFCHTbGDx3z6n/8fxtWpU6/X2fiI2Ev
	fe14dqq5dQHzfL3t5bSBcrzGR2pWdFsQFQ3lk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=ijPyToAGOhZOT1Pt785uh5r7i0OrsvJaitbKs4QOG5kmf8ttaL1Xw1B1pTnbbg57z2
	kK7bUoimvTAgIDYqQ8DsIiBEryNY0LBr53djFteMIeyiw18517Q6ffYeZ8YHQEkyHBAj
	t2/Ebb/zv9V/ePMjC7ctpMjvrDzAHOIBo3vBg=
MIME-Version: 1.0
Received: by 10.100.106.4 with SMTP id e4mr126206anc.81.1290652210047; Wed, 24
	Nov 2010 18:30:10 -0800 (PST)
Sender: sachindhiman123@gmail.com
Received: by 10.100.225.17 with HTTP; Wed, 24 Nov 2010 18:30:10 -0800 (PST)
In-Reply-To: <4CED8155.1090904@intel.com>
References: <AANLkTik_ZG=s7P-c0rojD8Udy-AW==WzOxHtKxYa1oON@mail.gmail.com>
	<4CED8155.1090904@intel.com>
Date: Thu, 25 Nov 2010 08:00:10 +0530
X-Google-Sender-Auth: lrPb7efhWnPqdCZiklMZRjoNnQk
Message-ID: <AANLkTim3nRy+F=kUD_FzhhcyiGD1C=P1m8hes4-nMBJn@mail.gmail.com>
From: sachin kumar <sachinsomeone@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using poky qemy for powerpc
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
X-List-Received-Date: Thu, 25 Nov 2010 02:30:10 -0000
Content-Type: multipart/alternative; boundary=0016e6434aac822d010495d76296

--0016e6434aac822d010495d76296
Content-Type: text/plain; charset=ISO-8859-1

Hello Scott:

I want to run linux on powerpc on qemu. My host machine is running Fedora13.

For that i have downloaded following from yocto project website.

Disk Image: yocto-image-minimal-qemuppc-0.9.rootfs.ext3
Kernel Image : zImage-2.6.34-qemuppc-0.9.bin
Toolchain: yocto-eglibc-i586-powerpc-toolchain-sdk-0.9.tar.bz2

I have installed toolchain in /opt/poky

I have also copied Disk "yocto-image-minimal-qemuppc-0.9.rootfs.ext3" and
"Kernel Image : zImage-2.6.34-qemuppc-0.9.bin" in the /opt/poky directory


To run qemu i am using following commands


[sachin@sachinlinux poky]$ source environment-setup-ppc603e-poky-linux


[sachin@sachinlinux poky]$ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin
yocto-image-minimal-qemuppc-0.9.rootfs.ext3
In order for this script to dynamically infer paths
to kernels or filesystem images, you either need
bitbake in your PATH or to source poky-init-build-env
before running this script


So i am not able to run poky-qemu command.

Please suggest what to do next.

Regards
Sachin

On Thu, Nov 25, 2010 at 2:49 AM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 11/24/2010 08:26 AM, sachin kumar wrote:
>
>> Dear All:
>>
>> Please let me know if there is proper documentation of using poky qemu
>> for running linux on powerpc platform.
>>
>> Regards
>> Sachin
>>
>
> Hi Sachin,
>
> I'm a Yocto Project developer at Intel and was responsible for making some
> significant changes to the poky-qemu script for our 0.9 release.
>
> I wanted to follow-up with you off-list to see if you are still having
> issues after following Jessica's advice and let you know that I'm available
> as a resource to resolve any further problems you're having with that
> script.
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project
>

--0016e6434aac822d010495d76296
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Scott:<br><br>I want to run linux on powerpc on qemu. My host machine=
 is running Fedora13.<br><br>For that i have downloaded following from yoct=
o project website.<br><br>Disk Image: yocto-image-minimal-qemuppc-0.9.rootf=
s.ext3<br>
Kernel Image : zImage-2.6.34-qemuppc-0.9.bin<br>Toolchain: yocto-eglibc-i58=
6-powerpc-toolchain-sdk-0.9.tar.bz2<br><br>I have installed toolchain in /o=
pt/poky<br><br>I have also copied Disk &quot;yocto-image-minimal-qemuppc-0.=
9.rootfs.ext3&quot; and &quot;Kernel Image : zImage-2.6.34-qemuppc-0.9.bin&=
quot; in the /opt/poky directory<br>
<br><br>To run qemu i am using following commands<br><br><br>[sachin@sachin=
linux poky]$ source environment-setup-ppc603e-poky-linux<br><br><br>[sachin=
@sachinlinux poky]$ poky-qemu qemuppc zImage-2.6.34-qemuppc-0.9.bin yocto-i=
mage-minimal-qemuppc-0.9.rootfs.ext3 <br>
In order for this script to dynamically infer paths<br>to kernels or filesy=
stem images, you either need<br>bitbake in your PATH or to source poky-init=
-build-env<br>before running this script<br><br><br>So i am not able to run=
 poky-qemu command.<br>
<br>Please suggest what to do next.<br><br>Regards<br>Sachin<br><br><div cl=
ass=3D"gmail_quote">On Thu, Nov 25, 2010 at 2:49 AM, Scott Garman <span dir=
=3D"ltr">&lt;<a href=3D"mailto:scott.a.garman@intel.com" target=3D"_blank">=
scott.a.garman@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div><div></div><=
div>On 11/24/2010 08:26 AM, sachin kumar wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
Dear All:<br>
<br>
Please let me know if there is proper documentation of using poky qemu<br>
for running linux on powerpc platform.<br>
<br>
Regards<br>
Sachin<br>
</blockquote>
<br></div></div>
Hi Sachin,<br>
<br>
I&#39;m a Yocto Project developer at Intel and was responsible for making s=
ome significant changes to the poky-qemu script for our 0.9 release.<br>
<br>
I wanted to follow-up with you off-list to see if you are still having issu=
es after following Jessica&#39;s advice and let you know that I&#39;m avail=
able as a resource to resolve any further problems you&#39;re having with t=
hat script.<br>


<br>
Scott<br><font color=3D"#888888">
<br>
-- <br>
Scott Garman<br>
Embedded Linux Distro Engineer - Yocto Project<br>
</font></blockquote></div><br>

--0016e6434aac822d010495d76296--
