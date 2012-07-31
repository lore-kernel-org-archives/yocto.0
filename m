Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 688FBE00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 15:08:02 -0700 (PDT)
Received: by lboj14 with SMTP id j14so2606lbo.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 15:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JpZ8hhkLMSECebJaALfJ0J1qLQK5qPzU1AUaBAJK/44=;
	b=B0O1naijjgQyqO7vfb1MqPVHYnX6mOcf7hkLHD2LNJLZWCUJJvecRjiwx5LpBzCK1k
	sfa3m46k6cpPJaNPVF0pFebmkjVuahbPsG54dhxNm/rFyy+VBn4Fa9fxXemjdAX+ey3t
	hxv2mPJmZrJoLAbXbf8AEf/XL4ToALN1ijXbs3awGWf5on4Amw1zwxjcnzS0k8gNBEuJ
	GjpcmQijOQxW0ng75DokYsKEFRCZSiB3T8c3xe0kJCuR2JeUHeOUBDnQwB7Kciicufqg
	uta82+xRjMb0GWPvQgo9DwOGobMz3tECJpcbfD0P+MoiLw8nfIxB+JdAlrDf6GUsRv5Z
	jz6A==
MIME-Version: 1.0
Received: by 10.152.48.6 with SMTP id h6mr16214662lan.30.1343772481317; Tue,
	31 Jul 2012 15:08:01 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Tue, 31 Jul 2012 15:08:01 -0700 (PDT)
In-Reply-To: <5018556C.9070404@intel.com>
References: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
	<5018556C.9070404@intel.com>
Date: Wed, 1 Aug 2012 00:08:01 +0200
Message-ID: <CAMvUbCynkQ1-GzrpqYo7ETmQy0-3=y0+hrGEErHH2gqefOz0mw@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: yocto@yoctoproject.org
Cc: Scott Garman <scott.a.garman@intel.com>
Subject: Re: [for denzil] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Tue, 31 Jul 2012 22:08:02 -0000
Content-Type: multipart/alternative; boundary=bcaec5524242686ce904c6276974

--bcaec5524242686ce904c6276974
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 1, 2012 at 12:00 AM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 07/31/2012 01:35 PM, sidebranch.openembedded@gmail.com wrote:
>
>> From: Leon Woestenberg <leon@sidebranch.com>
>>
>> Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
>> only iff exists.Merged into my sgarman/denzil-next branches:
>>
>
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=sgarman/denzil-next
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next
>
> If this passes a round of autobuilder tests, I'll be submitting a pull
> request to the official denzil branch shortly thereafter.
> Thanks,
> Scott
>
> Thanks Scott.   Also thanks for the pointers to denzil-next. I will
consider adding those to my build rounds locally also.

Regards,

Leon.

--bcaec5524242686ce904c6276974
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 1, 2012 at 12:00 AM, Scott Garman <span dir=3D"ltr">&lt;<a href=
=3D"mailto:scott.a.garman@intel.com" target=3D"_blank">scott.a.garman@intel=
.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On 07/31/2012 01:35 PM, <a href=3D"=
mailto:sidebranch.openembedded@gmail.com" target=3D"_blank">sidebranch.open=
embedded@gmail.com</a> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
From: Leon Woestenberg &lt;<a href=3D"mailto:leon@sidebranch.com" target=3D=
"_blank">leon@sidebranch.com</a>&gt;<br>
<br>
Linux 2.6.x kernels did not (all) have the bounds.h file, so copy<br>
only iff exists.Merged into my sgarman/denzil-next branches:<br></blockquot=
e></div></div>
<br>
<a href=3D"http://git.openembedded.org/openembedded-core-contrib/log/?h=3Ds=
garman/denzil-next" target=3D"_blank">http://git.openembedded.org/openembed=
ded-core-contrib/log/?h=3Dsgarman/denzil-next</a><br>

<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3D=
sgarman/denzil-next" target=3D"_blank">http://git.yoctoproject.org/cgit/cgi=
t.cgi/poky-contrib/log/?h=3Dsgarman/denzil-next</a><br>
<br>
If this passes a round of autobuilder tests, I&#39;ll be submitting a pull =
request to the official denzil branch shortly thereafter.<br>

Thanks,<br>

Scott<span class=3D"HOEnZb"><font color=3D"#888888"><br>
</font></span><br>
</blockquote></div>Thanks Scott.=A0=A0 Also thanks for the pointers to denz=
il-next. I will consider adding those to my build rounds locally also.<br>
<br>
Regards,<br>
<br>
Leon.

--bcaec5524242686ce904c6276974--
