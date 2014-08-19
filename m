Return-Path: <alex.r.damian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97B8CE004FF; Tue, 19 Aug 2014 09:07:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.r.damian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAA84E0034C
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 09:07:31 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id j5so3259298qga.41
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 09:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3vSV9WpCcJRMTapeLwIaTiLCmLjN+/JwFQzJks7il+c=;
	b=Z9uANiUjABo2oS2XaXmvmQykL+MxTNIhTWS14JsAXTkTxk/aNJ3X+LCPjKeMYRHjP4
	96qaVAdnE8OnxZPnSQInmazU7C+Sz/TgVaHvG/k1q9XhFjrHyBklinIxZEEE/E2R9qZz
	hOAVXQdiO1o5UjZa6a6DUlK3xr50UVPh3msLuCDMq5zodggicLDA4uu96cG2i5J8L78T
	rTYjmLmRigKJF063waEodX53XYeto6GFRW5bAVpRX9lFUGsbNDtoz4qGsJKFvHXf/7e2
	VCvqUzlVIBYc8urBHIsK+KFmugls65iGwyK/V8FkHK+08+R3p3n/2IEa45xyYYCI4mzA
	Kanw==
MIME-Version: 1.0
X-Received: by 10.224.88.198 with SMTP id b6mr68464945qam.97.1408464450562;
	Tue, 19 Aug 2014 09:07:30 -0700 (PDT)
Received: by 10.224.127.66 with HTTP; Tue, 19 Aug 2014 09:07:30 -0700 (PDT)
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAB0C92@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAB0C92@G08CNEXMBPEKD01.g08.fujitsu.local>
Date: Tue, 19 Aug 2014 17:07:30 +0100
Message-ID: <CAL7ttbfTFowvtX+3=WFed+N2O=g4fxjzzCes25qQwzivHtQP0g@mail.gmail.com>
From: Alex Damian <alex.r.damian@gmail.com>
To: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use the new features of the toaster
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
X-List-Received-Date: Tue, 19 Aug 2014 16:07:34 -0000
Content-Type: multipart/alternative; boundary=001a11c29f3e4131560500fdafb4

--001a11c29f3e4131560500fdafb4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for keeping an eye on Toaster !

The builder part is still a work in progress. The building-related features
are being outlined here:

https://wiki.yoctoproject.org/wiki/Toaster_1.7_design#Feature_list

While

A mockup of the functionality is here:

http://www.yoctoproject.org/toaster/project-no-targets.html


We currently work on implementing the project settings design part, and you
can follow progress on the bugzilla items here:

https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D266662&resolution=
=3D---&classification=3DBuild%20System%20%26%20Metadata&query_format=3Dadva=
nced&bug_status=3DNEW&bug_status=3DACCEPTED&bug_status=3DIN%20PROGRESS%20DE=
SIGN&bug_status=3DIN%20PROGRESS%20DESIGN%20COMPLETE&bug_status=3DIN%20PROGR=
ESS%20IMPLEMENTATION&bug_status=3DIN%20PROGRESS%20REVIEW&bug_status=3DREOPE=
NED&bug_status=3DNEEDINFO&bug_status=3DWaitForUpstream&target_milestone=3D1=
.7&target_milestone=3D1.7%20M1&target_milestone=3D1.7%20M2&target_milestone=
=3D1.7%20M3&target_milestone=3D1.7%20M4&product=3DToaster


We also meet every week on a phone conference, let me know if you would
like to attend.

Cheers,
Alex



On Tue, Aug 19, 2014 at 3:25 AM, leimaohui@cn.fujitsu.com <
leimaohui@cn.fujitsu.com> wrote:

> Hi,
>
>  Because I noticed that in poky(master), the toaster has the ability to
> trigger a build command, and have
>  the build executed.
>  --------------------------------------------------
>  commit 6e71c276b582135228419d95174b7e7784d496b2
>  Author: Alexandru DAMIAN <alexandru.damian@intel.com>
>  Date:   Mon Jun 30 18:33:04 2014 +0100
>
>     bitbake: toaster: add project main edit page
>
>     This is the first commit on the project main edit page.
>
>     At this point we have:
>     * the default settings for a newly created project
>     * the ability to add targets
>     * the ability to trigger a build command, and have
>     the build executed
>     ......
>  -----------------------------------------------------------
>
>  So, I tried to use the new features of the toaster. But I don't know how=
 .
>
>  Is there anybody tell me where can I find the documentation how to use
> the new features?
>
>  Best Regards,
>  Lei Maohui
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c29f3e4131560500fdafb4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>Thanks for =
keeping an eye on Toaster !<br><br></div>The builder part is still a work i=
n progress. The building-related features are being outlined here:<br><br>

<a href=3D"https://wiki.yoctoproject.org/wiki/Toaster_1.7_design#Feature_li=
st" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Toaster_1.7_design=
#Feature_list</a><br><br></div><div>While <br></div><div><br></div>A mockup=
 of the functionality is here:<br>

<br><a href=3D"http://www.yoctoproject.org/toaster/project-no-targets.html"=
 target=3D"_blank">http://www.yoctoproject.org/toaster/project-no-targets.h=
tml</a><br><br><br></div>We currently work on implementing the project sett=
ings design part, and you can follow progress on the bugzilla items here:<b=
r>

<br><a href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D2666=
62&amp;resolution=3D---&amp;classification=3DBuild%20System%20%26%20Metadat=
a&amp;query_format=3Dadvanced&amp;bug_status=3DNEW&amp;bug_status=3DACCEPTE=
D&amp;bug_status=3DIN%20PROGRESS%20DESIGN&amp;bug_status=3DIN%20PROGRESS%20=
DESIGN%20COMPLETE&amp;bug_status=3DIN%20PROGRESS%20IMPLEMENTATION&amp;bug_s=
tatus=3DIN%20PROGRESS%20REVIEW&amp;bug_status=3DREOPENED&amp;bug_status=3DN=
EEDINFO&amp;bug_status=3DWaitForUpstream&amp;target_milestone=3D1.7&amp;tar=
get_milestone=3D1.7%20M1&amp;target_milestone=3D1.7%20M2&amp;target_milesto=
ne=3D1.7%20M3&amp;target_milestone=3D1.7%20M4&amp;product=3DToaster" target=
=3D"_blank">https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D266662&=
amp;resolution=3D---&amp;classification=3DBuild%20System%20%26%20Metadata&a=
mp;query_format=3Dadvanced&amp;bug_status=3DNEW&amp;bug_status=3DACCEPTED&a=
mp;bug_status=3DIN%20PROGRESS%20DESIGN&amp;bug_status=3DIN%20PROGRESS%20DES=
IGN%20COMPLETE&amp;bug_status=3DIN%20PROGRESS%20IMPLEMENTATION&amp;bug_stat=
us=3DIN%20PROGRESS%20REVIEW&amp;bug_status=3DREOPENED&amp;bug_status=3DNEED=
INFO&amp;bug_status=3DWaitForUpstream&amp;target_milestone=3D1.7&amp;target=
_milestone=3D1.7%20M1&amp;target_milestone=3D1.7%20M2&amp;target_milestone=
=3D1.7%20M3&amp;target_milestone=3D1.7%20M4&amp;product=3DToaster</a><br>

<br><br>We also meet every week on a phone conference, let me know if you w=
ould like to attend.<br><br></div><div>Cheers,<br>Alex<br></div></div><br><=
/div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, =
Aug 19, 2014 at 3:25 AM, <a href=3D"mailto:leimaohui@cn.fujitsu.com">leimao=
hui@cn.fujitsu.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:leimaohui@cn=
.fujitsu.com" target=3D"_blank">leimaohui@cn.fujitsu.com</a>&gt;</span> wro=
te:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
=C2=A0Because I noticed that in poky(master), the toaster has the ability t=
o trigger a build command, and have<br>
=C2=A0the build executed.<br>
=C2=A0--------------------------------------------------<br>
=C2=A0commit 6e71c276b582135228419d95174b7e7784d496b2<br>
=C2=A0Author: Alexandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@intel=
.com">alexandru.damian@intel.com</a>&gt;<br>
=C2=A0Date:=C2=A0 =C2=A0Mon Jun 30 18:33:04 2014 +0100<br>
<br>
=C2=A0 =C2=A0 bitbake: toaster: add project main edit page<br>
<br>
=C2=A0 =C2=A0 This is the first commit on the project main edit page.<br>
<br>
=C2=A0 =C2=A0 At this point we have:<br>
=C2=A0 =C2=A0 * the default settings for a newly created project<br>
=C2=A0 =C2=A0 * the ability to add targets<br>
=C2=A0 =C2=A0 * the ability to trigger a build command, and have<br>
=C2=A0 =C2=A0 the build executed<br>
=C2=A0 =C2=A0 ......<br>
=C2=A0-----------------------------------------------------------<br>
<br>
=C2=A0So, I tried to use the new features of the toaster. But I don&#39;t k=
now how .<br>
<br>
=C2=A0Is there anybody tell me where can I find the documentation how to us=
e the new features?<br>
<br>
=C2=A0Best Regards,<br>
=C2=A0Lei Maohui<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c29f3e4131560500fdafb4--
