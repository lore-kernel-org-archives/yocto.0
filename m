Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71111E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 14:22:33 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id z11so3518618wgg.22
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 14:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ofO2Y9x5NVnIT31zxNVwzN32O+3EFIRBxUvEWJ+lZkM=;
	b=ppozxcSslCLQ4GRaGOCEkEQ99WTm2o8lSYum1NFuV87fl1dpUEwx0JjbwbwZ2mtP/C
	q2eZEYLP8cxJFrEx0K1A8P9q1d6d6nia3ZRIdn81f88JSjgVpkOmw1dOP4DUnbgsZNGk
	8sZdRedcDOFlq1iWhEt632XHEgZK9UJW249kYRAhy9Xc/LrWDdSGSpd2uEjEN7t7PDJ8
	BKQiEx5Z2jhzm3xCkZcMFaAv+SVJtwwQs6jfLRcMGATV2J2Uftjm8pb2Q84ZiGsPT4mA
	nch5n/6DDH+E69CJcsf4uTqYFL5SeVo55G6GocJjiOI7npI+dSJVmI50Tl75gLklpOAP
	QC8Q==
X-Gm-Message-State: ALoCoQmStjyLeheKH/u3ddRUP5IU13HoFOJnXx1nmm69mRiDZv9tZAuUOcVxDUFMGtevAGviIjgl
X-Received: by 10.194.80.137 with SMTP id r9mr146687wjx.88.1377724952715; Wed,
	28 Aug 2013 14:22:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.218.200 with HTTP; Wed, 28 Aug 2013 14:22:12 -0700 (PDT)
In-Reply-To: <521E4DFC.2040704@gmail.com>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<68887874.AzlMtbdLCe@helios> <521E4DFC.2040704@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 28 Aug 2013 23:22:12 +0200
Message-ID: <CAP71Wjx3uF=FFGfypOqw9w5HF0N6KEH9KJ6sGE_0zQ2AX3Dk6w@mail.gmail.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Wed, 28 Aug 2013 21:22:34 -0000
Content-Type: multipart/alternative; boundary=047d7bdc8e8667c00604e50896a0

--047d7bdc8e8667c00604e50896a0
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 28, 2013 at 9:22 PM, Hans Beckerus <hans.beckerus@gmail.com>wrote:

> Well, I have been struggling before with packages not properly supporting
> different build and source folders so I can definitely relate to what you
> are saying. But, does that mean I actually *have* to do it this way for
> build dependencies to work correctly? In my case we are talking two simple
> autotools enabled packages and I (naively?) assumed this was not something
> I had to take care of myself. What strikes me is that you say ""if recipe
> "foo" changes"", which is actually not the case here! What is changed is
> the actual source code only. Is that what is going wrong here? If I change
> my "foo" recipe version, would that be different than to simply
> fetch/unpack the "foo" package source code? Is "someapp" going to become
> purged differently in such a  scenario?
>

if the source code changes, the version of the recipe needs to change too.
if you change the source code without bumping the version, the package
might not be rebuilt properly indeed. and that can explain the behavior you
are seeing. if 'someapp' does not change, it would be rebuilt only if one
of its dependencies was rebuilt.


>
>
>  Have I been using the DEPENDS variable incorrectly? Would it make a
>>> difference if I used RDEPENDS instead?
>>>
>> RDEPENDS would not be appropriate in this situation, since we're talking
>> about
>> a build-time dependency.
>>
>> Hope that helps.
>>
> What is still somewhat unclear to me is the difference between DEPENDS and
> RDEPENDS in a simple case as this.
> A simple application needing a dynamic library is obviously a subject for
> DEPENDS but to me that also sounds like a typical RDEPENDS?
> However, when I build an image and include 'someapp', will 'libfoo.so.x'
> automatically be installed or is that what I need to tell it to do using
> RDEPENDS?
>
some (most?) of the RDEPENDS are computed auto-magically. so bitbake will
figure out the dependency between 'someapp' and 'libfoo.so.x' and will
automatically update 'someapp' RDEPENDS, without the need to do it
explicitely in the recipe!

--047d7bdc8e8667c00604e50896a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Aug 28, 2013 at 9:22 PM, Hans Beckerus <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmail.=
com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":16l" style=3D"overflow:hidden">W=
ell, I have been struggling before with packages not properly supporting di=
fferent build and source folders so I can definitely relate to what you are=
 saying. But, does that mean I actually *have* to do it this way for build =
dependencies to work correctly? In my case we are talking two simple autoto=
ols enabled packages and I (naively?) assumed this was not something I had =
to take care of myself. What strikes me is that you say &quot;&quot;if reci=
pe &quot;foo&quot; changes&quot;&quot;, which is actually not the case here=
! What is changed is the actual source code only. Is that what is going wro=
ng here? If I change my &quot;foo&quot; recipe version, would that be diffe=
rent than to simply fetch/unpack the &quot;foo&quot; package source code? I=
s &quot;someapp&quot; going to become purged differently in such a =A0scena=
rio?</div>

</blockquote><div><br></div><div>if the source code changes, the version of=
 the recipe needs to change too. if you change the source code without bump=
ing the version, the package might not be rebuilt properly indeed. and that=
 can explain the behavior you are seeing. if &#39;someapp&#39; does not cha=
nge, it would be rebuilt only if one of its dependencies was rebuilt.=A0</d=
iv>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":16l" style=3D"over=
flow:hidden"><div class=3D"im"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Have I been using the DEPENDS variable incorrectly? Would it make a<br>
difference if I used RDEPENDS instead?<br>
</blockquote>
RDEPENDS would not be appropriate in this situation, since we&#39;re talkin=
g about<br>
a build-time dependency.<br>
<br>
Hope that helps.<br>
</blockquote></div>
What is still somewhat unclear to me is the difference between DEPENDS and =
RDEPENDS in a simple case as this.<br>
A simple application needing a dynamic library is obviously a subject for D=
EPENDS but to me that also sounds like a typical RDEPENDS?<br>
However, when I build an image and include &#39;someapp&#39;, will &#39;lib=
foo.so.x&#39; automatically be installed or is that what I need to tell it =
to do using RDEPENDS?<br></div></blockquote></div><div class=3D"gmail_extra=
">

some (most?) of the RDEPENDS are computed auto-magically. so bitbake will f=
igure out the dependency between &#39;someapp&#39; and &#39;libfoo.so.x&#39=
; and will automatically update &#39;someapp&#39; RDEPENDS, without the nee=
d to do it explicitely in the recipe! =A0</div>

<br></div></div>

--047d7bdc8e8667c00604e50896a0--
