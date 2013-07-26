Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67504E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:48:58 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id fb10so2617298pad.9
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:48:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=s/zG8+CcXI8BwZVHQRPwopU5f2hpDpPgFWFcEGq4V2I=;
	b=INm81jQofV+CdOsWaoj/Ju9dSdnVFFw791SdQZlf8VTWDTkvb/VKWcQa6t1Hdsn7KM
	LjQQZ7WuGsGsGIndUNe+T3bU4LJfCl3bgDZne5RtyLHHUeQ2fI0IrmubPH3nZ8+Gjn4m
	Zlt3fqmk+1B1SHuqHR48TO5z59s/buizkTPq1Eqi7DAbKzMS4EtMgQVoUBObeY36GaAv
	ndrV0+c039t8HK3h6wy84So2z5CsLVkMPVhXVMyPkM9jg19au04k3ajPcfi+cClN+/qg
	QvMgwoy22GoLYSEXRC8ofPN+cKBR1c/xHA58fzlVu2PhGjeFiYDncIu5OQ4fInYRUoWW
	QOeg==
MIME-Version: 1.0
X-Received: by 10.66.141.232 with SMTP id rr8mr35584850pab.184.1374835737672; 
	Fri, 26 Jul 2013 03:48:57 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Fri, 26 Jul 2013 03:48:57 -0700 (PDT)
In-Reply-To: <CAJTo0LaYEEXizu74FpjPYTLT9Jbaf8BG05oJZprowdDC7zxu6w@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAJTo0LaYEEXizu74FpjPYTLT9Jbaf8BG05oJZprowdDC7zxu6w@mail.gmail.com>
Date: Fri, 26 Jul 2013 11:48:57 +0100
X-Google-Sender-Auth: BH9r5nDAlp4Yds2Hr-V-BSvjleQ
Message-ID: <CAOMwXhNqxTC8uP4BhKULxwX+AyDT1bdyujBeesVaCGOhEb6cgQ@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQnaSwRVPFm+IvB9I9+0x4B+F6URzgOmZmcLEO+9Cp/JXibDL22ybTrTkAzOfJjLp/nCqclI
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 10:48:59 -0000
Content-Type: multipart/alternative; boundary=001a11330f14c4d42504e267e3d1

--001a11330f14c4d42504e267e3d1
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 26, 2013 at 11:44 AM, Burton, Ross <ross.burton@intel.com>wrote:

> Personally speaking, what Paul said.
>

I already replied why I think it is more blocking than helping certain part
of the community.


> We don't "support" any other
> unstable/rolling distribution such as Rawhide, Debian Sid/Unstable,
> etc either as they routinely change daily and therefore the testing
> that needs to be done to classify it as supported would have to be
> done daily.
>
> Note that the warning is entirely advisory, you can feel free to
> ignore it.  I do so on one of my machines which runs Debian Unstable.
> You can even disable it by setting SANITY_TESTED_DISTROS = "" in your
> configuration.  Supported here means "in a normal configuration we've
> verified that it works", nothing more.
>

This is not different for Arch, especially with ARM (not the architecture)
and similar helpers for grabbing older versions. As I wrote in a previous
email of this thread: it is the matter of CI node documentation. Not to
mention, it is easier to grab certain bugfixes and so forth in Arch due to
the quick integration of those. If you try to do that with a stable
distribution, you will end up having troubles when waiting for a fix, or
going yourself to fix it.

Laszlo

--001a11330f14c4d42504e267e3d1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jul 26, 2013 at 11:44 AM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><span style=3D"color:rgb(3=
4,34,34)">Personally speaking, what Paul said.</span></div></blockquote><di=
v><br>
</div><div>I already replied why I think it is more blocking than helping c=
ertain part of the community.</div><div>=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
<div class=3D"im"><span style=3D"color:rgb(34,34,34)">We don&#39;t &quot;su=
pport&quot; any other</span><br></div>
unstable/rolling distribution such as Rawhide, Debian Sid/Unstable,<br>
etc either as they routinely change daily and therefore the testing<br>
that needs to be done to classify it as supported would have to be<br>
done daily.<br>
<br>
Note that the warning is entirely advisory, you can feel free to<br>
ignore it. =A0I do so on one of my machines which runs Debian Unstable.<br>
You can even disable it by setting SANITY_TESTED_DISTROS =3D &quot;&quot; i=
n your<br>
configuration. =A0Supported here means &quot;in a normal configuration we&#=
39;ve<br>
verified that it works&quot;, nothing more.<br></blockquote><div><br></div>=
<div>This is not different for Arch, especially with ARM (not the architect=
ure) and similar helpers for grabbing older versions. As I wrote in a previ=
ous email of this thread: it is the matter of CI node documentation. Not to=
 mention, it is easier to grab certain bugfixes and so forth in Arch due to=
 the quick integration of those. If you try to do that with a stable distri=
bution, you will end up having troubles when waiting for a fix, or going yo=
urself to fix it.</div>
<div><br></div><div>Laszlo</div></div></div></div>

--001a11330f14c4d42504e267e3d1--
