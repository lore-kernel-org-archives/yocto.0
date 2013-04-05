Return-Path: <vidal.develone@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B77FE0150B
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 15:35:07 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id gd11so469479vcb.17
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 15:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=dUS6gDR1KHwg88+fkYJ7wDVwDCByjb9ZmAsr3FkC+nQ=;
	b=Ia6deNchtwsLXGPivjm3suanCwwsUWfF6EWBlq+OmvhUovn0olF/3U7DIjqnE9rrty
	3L+tgarNSAHQbRmbE+GEEqOYeoYkhb5NUFrJyBJtX2jVtF+E5KPeGPI/ZTQZ40k6qNhs
	G+zhpMu6mL8E94pqsSvESON/SbqIZ9tufWMVsd2Djz1XXjeIEmf1m1AZ5cEZoMoiW+v8
	2Wtc7fLiiwhUy4eaqCFBGnQ8W0Xj/3Ah1rZ/kmTrTLv1NFlZSleRv5tLFcSSfFT82snf
	oAi8hzl3K7TBEmpA4ASjzyoiyZoojHuoFpfmB6s7ZH01uGmrKK9zWLasju+AzhZa3ZKR
	BcKg==
MIME-Version: 1.0
X-Received: by 10.52.97.131 with SMTP id ea3mr4420240vdb.71.1365201306762;
	Fri, 05 Apr 2013 15:35:06 -0700 (PDT)
Received: by 10.52.159.163 with HTTP; Fri, 5 Apr 2013 15:35:06 -0700 (PDT)
In-Reply-To: <6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
	<CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
	<6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
Date: Fri, 5 Apr 2013 16:35:06 -0600
Message-ID: <CANwz6nxDTHJzbctFwKE9o8PDDwsz8SxsSSOiRNaDdc8abN77hw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 05 Apr 2013 22:35:07 -0000
Content-Type: multipart/alternative; boundary=20cf307cfc7eefc63f04d9a4b2e3

--20cf307cfc7eefc63f04d9a4b2e3
Content-Type: text/plain; charset=ISO-8859-1

I believe that the error was in gcc-configure-common.inc it should of been
f95 not fortran. I am do a clean build  now for beagleboard and beaglebone.



On Fri, Apr 5, 2013 at 3:06 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Apr 5, 2013, at 2:02 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
>
> ERROR: This autoconf log indicates errors, it looked at host include
> and/or library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was
> '/home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran'
>
>
>
> so something is not cross compiling.
>

--20cf307cfc7eefc63f04d9a4b2e3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I believe that the error was in gcc-configure-common.inc i=
t should of been f95 not fortran. I am do a clean build=A0 now for beaglebo=
ard and beaglebone.<br><br></div><div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote">
On Fri, Apr 5, 2013 at 3:06 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">
<div style=3D"word-wrap:break-word"><div class=3D"im"><br><div><div>On Apr =
5, 2013, at 2:02 PM, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmai=
l.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt; wrote:</div><br><=
blockquote type=3D"cite">
<span style=3D"font-family:Helvetica;font-size:medium;font-style:normal;fon=
t-variant:normal;font-weight:normal;letter-spacing:normal;line-height:norma=
l;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;display:inline!important;float:none">ERROR: This aut=
oconf log indicates errors, it looked at host include and/or library paths =
while determining system capabilities.</span><br style=3D"font-family:Helve=
tica;font-size:medium;font-style:normal;font-variant:normal;font-weight:nor=
mal;letter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px">
<span style=3D"font-family:Helvetica;font-size:medium;font-style:normal;fon=
t-variant:normal;font-weight:normal;letter-spacing:normal;line-height:norma=
l;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;display:inline!important;float:none">Rerun configure=
 task after fixing this. The path was &#39;/home/vidal/POKY/build032713/pok=
y/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/g=
cc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux=
-gnueabi/libgfortran&#39;</span><br style=3D"font-family:Helvetica;font-siz=
e:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-sp=
acing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px">
</blockquote></div><br><div><br></div></div><div>so something is not cross =
compiling.</div></div></blockquote></div><br></div>

--20cf307cfc7eefc63f04d9a4b2e3--
