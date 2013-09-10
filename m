Return-Path: <pcjegan@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6344AE0153B
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:03:30 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id a12so6073118wgh.18
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=A8pRFZ4pv6R0NiTMHl1bxhQ55EDBcXcEcMFX3+kKvA0=;
	b=Nu+zeIgqZRjE9yhVsUmt7zP8XSugTdT2b2DLhgH6orbMQc+1UCZQnKvtnt8lKVSr+6
	58iC4M5GHnuDJnwHJysQasaFKXJDdJuIO4t/7wy3vlstvFB5fbXqxIgeurUnwiAGsMVq
	Xw6tGO9sKPgKBK+vUWu4cZ2nNv3sO7QyfuJME970ze+ThLfob8ZMzEvvywob/lnX2Z2b
	N091xOIOTAeE2oz6gXxhGBCu9LCjJltL4XgAFN/R1b/wk+rBh9dAzBxTrSsc/rS/E0w8
	Mct7o5kZQ8w4BoWxJJuioAiDUG4O0r8+qlXPV5I0Ri5ZshEJvQNXPVai85QPHW/ST2dU
	LWKQ==
X-Received: by 10.194.110.138 with SMTP id ia10mr16354843wjb.3.1378796609425; 
	Tue, 10 Sep 2013 00:03:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.94.101 with HTTP; Tue, 10 Sep 2013 00:03:09 -0700 (PDT)
In-Reply-To: <CAAA4K6JaJF=wO3EZQMVsDTZsJS5DwZx0wv5wmKaSHegn_iPrEw@mail.gmail.com>
References: <522EBE6C.5060108@vtkloud.com>
	<CAAA4K6JaJF=wO3EZQMVsDTZsJS5DwZx0wv5wmKaSHegn_iPrEw@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 10 Sep 2013 12:33:09 +0530
Message-ID: <CAAA4K6KUttDhNFn7ygOOvmcpKhfDCTb_OUjULwRrwr0zQOGPdw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, JC <jc@vtkloud.com>
Subject: misleading dependencies between packages
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
X-List-Received-Date: Tue, 10 Sep 2013 07:03:33 -0000
Content-Type: multipart/alternative; boundary=047d7bf10aa81f54a204e6021a28

--047d7bf10aa81f54a204e6021a28
Content-Type: text/plain; charset=ISO-8859-1

Hello,

libuuid is provided by util-linux. Check in meta/recipes-core/util-linux
for more details.
r3 is PR that util-linux has in dylan 9.0.1. Unless you change the PR, it
will be r3 only. I am not sure how you end up with r5.
May be you need to (re)build util-linux if you need libuuid. Also You
should check with the dependencies,
I see apr package which depends on util-linux.

Hope this helps.

Cheers,


On Tue, Sep 10, 2013 at 12:08 PM, JC <jc@vtkloud.com> wrote:

> Hi,
>
> I have many issues with Apache2 package so I thought I would reinstall it.
> I used smart (smart install apache2) and here is the very strange issue I
> got:
>
> Installing packages (20):
> apache2-2.4.3-r1@armv6_vfp libgdbm4-1.10-r3@armv6_vfp
> busybox-1.20.2-r8@armv6_vfp libpcre1-8.32-r1@armv6_vfp
> busybox-syslog-1.20.2-r8@**armv6_vfp libperl5-5.14.3-r1@armv6_vfp
> busybox-udhcpc-1.20.2-r8@**armv6_vfp libssl1.0.0-1.0.1e-r15.0@**armv6_vfp
> libapr-1-0-1.4.6-r2@armv6_vfp libuuid1-2.22.2-r3@armv6_vfp
> libaprutil-1-0-1.5.1-r0@armv6_**vfp libz1-1.2.7-r0@armv6_vfp
> libc6-2.17-r3@armv6_vfp openssl-1.0.1e-r15.0@armv6_vfp
> libcrypto1.0.0-1.0.1e-r15.0@**armv6_vfp perl-5.14.3-r1@armv6_vfp
> libexpat1-2.1.0-r0@armv6_vfp update-alternatives-cworth-1:**
> 0.1.8+svnr649-r13.0@armv6_vfp
> libgcc1-4.7.2-r20@armv6_vfp update-rc.d-0.7-r5@all
>
> 4.8MB of package files are needed. 9.7MB will be used.
>
> Confirm changes? (Y/n): Y
>
> Fetching packages...
> [Snip lots of downloads]
> -> http://192.168.0.50:81/rpm/**armv6_vfp/apache2-2.4.3-r1.**armv6_vfp.rpm<http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv6_vfp.rpm>
> apache2-2.4.3-r1.armv6_vfp.rpm ##############################**
> ##############################**################## [ 95%]
>
> error: Failed to download packages:
> error: http://192.168.0.50:81/rpm/**armv6_vfp/libuuid1-2.22.2-r3.**
> armv6_vfp.rpm<http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.armv6_vfp.rpm>:
> File not found
>
>
> And indeed, I do not have r3 of libuuid1 but r5. This is not the first
> time I run in this issue, it's unfortunately quite common. And I can't even
> figure who is generating libuuid1 :(
>
> Any idea?
>
> Regards
> Jay
>
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>



-- 
JCP



-- 
JCP

--047d7bf10aa81f54a204e6021a28
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_quote"><div dir=3D"ltr"><div=
><br></div><div>libuuid is provided by util-linux. Check in meta/recipes-co=
re/util-linux for more details.</div><div>r3 is PR that util-linux has in d=
ylan 9.0.1. Unless you change the PR, it will be r3 only. I am not sure how=
 you end up with r5.</div>


<div>May be you need to (re)build util-linux if you need libuuid. Also You =
should check with the dependencies,=A0</div><div>I see apr package which de=
pends on util-linux.</div><div><br></div><div>Hope this helps.</div><div>


<br></div><div>Cheers,</div></div><div class=3D"gmail_extra"><div><div clas=
s=3D"h5"><br><br><div class=3D"gmail_quote">On Tue, Sep 10, 2013 at 12:08 P=
M, JC <span dir=3D"ltr">&lt;<a href=3D"mailto:jc@vtkloud.com" target=3D"_bl=
ank">jc@vtkloud.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I have many issues with Apache2 package so I thought I would reinstall it. =
I used smart (smart install apache2) and here is the very strange issue I g=
ot:<br>
<br>
Installing packages (20):<br>
apache2-2.4.3-r1@armv6_vfp libgdbm4-1.10-r3@armv6_vfp<br>
busybox-1.20.2-r8@armv6_vfp libpcre1-8.32-r1@armv6_vfp<br>
busybox-syslog-1.20.2-r8@<u></u>armv6_vfp libperl5-5.14.3-r1@armv6_vfp<br>
busybox-udhcpc-1.20.2-r8@<u></u>armv6_vfp libssl1.0.0-1.0.1e-r15.0@<u></u>a=
rmv6_vfp<br>
libapr-1-0-1.4.6-r2@armv6_vfp libuuid1-2.22.2-r3@armv6_vfp<br>
libaprutil-1-0-1.5.1-r0@armv6_<u></u>vfp libz1-1.2.7-r0@armv6_vfp<br>
libc6-2.17-r3@armv6_vfp openssl-1.0.1e-r15.0@armv6_vfp<br>
libcrypto1.0.0-1.0.1e-r15.0@<u></u>armv6_vfp perl-5.14.3-r1@armv6_vfp<br>
libexpat1-2.1.0-r0@armv6_vfp update-alternatives-cworth-1:<u></u>0.1.8+svnr=
649-r13.0@armv6_vfp<br>
libgcc1-4.7.2-r20@armv6_vfp update-rc.d-0.7-r5@all<br>
<br>
4.8MB of package files are needed. 9.7MB will be used.<br>
<br>
Confirm changes? (Y/n): Y<br>
<br>
Fetching packages...<br>
[Snip lots of downloads]<br>
-&gt; <a href=3D"http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv=
6_vfp.rpm" target=3D"_blank">http://192.168.0.50:81/rpm/<u></u>armv6_vfp/ap=
ache2-2.4.3-r1.<u></u>armv6_vfp.rpm</a><br>
apache2-2.4.3-r1.armv6_vfp.rpm ##############################<u></u>#######=
#######################<u></u>################## [ 95%]<br>
<br>
error: Failed to download packages:<br>
error: <a href=3D"http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.a=
rmv6_vfp.rpm" target=3D"_blank">http://192.168.0.50:81/rpm/<u></u>armv6_vfp=
/libuuid1-2.22.2-r3.<u></u>armv6_vfp.rpm</a>: File not found<br>
<br>
<br>
And indeed, I do not have r3 of libuuid1 but r5. This is not the first time=
 I run in this issue, it&#39;s unfortunately quite common. And I can&#39;t =
even figure who is generating libuuid1 :(<br>
<br>
Any idea?<br>
<br>
Regards<br>
Jay<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><span c=
lass=3D"HOEnZb"><font color=3D"#888888">-- <br>JCP
</font></span></div>
</div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--047d7bf10aa81f54a204e6021a28--
