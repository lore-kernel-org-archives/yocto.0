Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08A86E00B43; Thu, 23 May 2019 07:39:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6F92E008F2
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:39:51 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id a10so5720795ljf.6
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 07:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Em/E1ufMK6sgV15RFy1lszjEsgz8Z8Ndf2hCSDV5TJQ=;
	b=sB7VEut6omGXO3RM+XsLzpJqyomx62Mv9xGiE9UXBUX6IC09dVYL+8y0JR73AX3MCI
	kiXwt0eqkaLsx3+EgyvHrLeASuWSklEFKsyPARifeN/HjLw7u5IdZISZguz1zUaINMfK
	4xiTAkuhYmxyeDbkd5PeZ0ZEq/8q4Szi6jlAi9YJic+XTtX7wYhzC6TgJHIN3i+ESEI6
	HkFSDL88rpTmH9rONuiusuD1T/DgM3x+/OIIkRLkLw8BnF/Bh99znerffxhF2uHgaS9x
	dgSVA+BBHryLVKHEZQG7O0W9Nmc4FHswvq+JDnimg92pHN+PrwnLHUTy11HSdNQco5wK
	58ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Em/E1ufMK6sgV15RFy1lszjEsgz8Z8Ndf2hCSDV5TJQ=;
	b=owtkobt5NyG4dU7IBKa8GK5gWte+p67Aw5anRLiWbuG3cdF9gKkAasnoj9PplTpZIN
	8vOUUNP5aJRl19eMX0dd0dVpDymBPWg9fuwmp7d0javCikcAsYy2kO5Y5+RDhtXLxmcu
	BLhhD4VgyN/OjnFITg1Q4g4XifQfAbOwFsfO7gDpZHJ5vKNQjhIEK0EKZnG/rzPI8U/E
	R3X9G6NUPi0i1Ml3sVg/sMidRmagF56GZUy8zkXTpKoid69C0mM96f5A8kYoUNYVrCbA
	o3x4kc9J6y2rMqUi0NturjqOATU+smx3hK864Mq4ucy+fkNntrtHpOVcmMIvm0bbxAXn
	nuZw==
X-Gm-Message-State: APjAAAUcjFBNtO9k6MiYBjqprwJ9KFbGmSxo7GZDM8EpY03a/1Ez2WR0
	NIj/OVuhaJysklUd6N6hH+lmf/h4GpfW+QEBClI=
X-Google-Smtp-Source: APXvYqxLpquCEVBnr4ADilcz/nhbCCOqlBEVrLbONxueBm0hYd0f8e12GS/x/TSShNXTTZbh3rNhFBZES3Hd6NDZEos=
X-Received: by 2002:a2e:880d:: with SMTP id x13mr8494886ljh.72.1558622390388; 
	Thu, 23 May 2019 07:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
	<CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
In-Reply-To: <CADkTA4O9rKz38M+cgdCkxV6KHNAJaZniSOYK3UKJqccT6KdwRw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 23 May 2019 10:39:39 -0400
Message-ID: <CADkTA4OObFqtFB7R6+xO7zzg5Bnkn0SgoOj8Ljx-3T3yHxVjdA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: zubair@balena.io, Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-devsrc used to be full source - not the case since thud
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
X-List-Received-Date: Thu, 23 May 2019 14:39:53 -0000
Content-Type: multipart/alternative; boundary="000000000000eb0d8e05898f0dbb"

--000000000000eb0d8e05898f0dbb
Content-Type: text/plain; charset="UTF-8"

On Thu, May 23, 2019 at 10:32 AM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

>
>
> On Thu, May 23, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> Hello,
>>
>> This might have been discussed before. I couldn't find a relevant
>> thread, but if it is so, just link me to it.
>>
>> Since thud, more specific since
>>
>> commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>> Date:   Sat Aug 18 22:50:44 2018 -0400
>>     kernel-devsrc: restructure for out of tree (and on target) module
>> builds
>>
>> ... we switched from a recipe that was deploying the entire source code
>> to one that provides mainly the kernel headers (but not only). This
>> change broke people expectations of this recipe while the description is
>> also confusing: "Development source linux kernel. When built, this
>> recipe packages the \source of the preferred virtual/kernel provider and
>> makes it available for full kernel \development or external module
>> builds".
>>
>> If size is not a problem (which can be the case when you compile on a
>> builder for example and deploy only a OOT kernel module through other
>> means), the full kernel source was a painless experience where things like
>>
>> commit a9471601fedd1f5087304eaa5fd39b98ae220313
>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>> Date:   Thu Aug 30 09:45:41 2018 -0400
>>     kernel-devsrc: fix arm/arm64 target module build
>>
>> ... would not appear. I understand the size impact on target and for
>> those cases, continuously maintaining this recipe with new
>> files/resources needed from the kernel, makes sense. So my proposal is
>> to have two recipes, for example kernel-devsrc and kernel-fullsrc
>> (kernel-src etc.) so people can choose what they need/want
>> deploying/using. Or even have another devsrc provider. I'm open to any
>> implementation detail. I'd just want to have an option for a full kernel
>> source recipe.
>>
>
> This is already planned, and hidden in bugzilla somewhere. I'll have some
> new kernel packaging
> options available for the fall release.
>

It looks like the bugs that I was using for development were finally moved
to resolved (they were a bit old, and contained collected information on
various kernel packaging options .. my searching of bugzilla isn't turning
it up at the moment). So I just created a new bug to track the development
for 2.8.

The issue with the multiple kernel source providers is really about test
cycles. The smaller devsrc is for on-target module development and builds
against the exported uapi headers, and that is what the nightly / automated
tests will use. We had issues with both the amount of time it took to
package the entire source, and the amount of space that it took up on the
images. Hence the creation of devsrc.

With new kernel-source and kernel-headers packages (the working names),
they are really provided as references to the running kernel, and will
largely be an exercise left up to the developer to use them as they want.

Cheers,

Bruce



>
> Bruce
>
>
>
>>
>> Regards,
>>
>> --
>> Andrei Gherzan
>> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>

-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000eb0d8e05898f0dbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 23, 2019 at 10:32 AM Bruce Ashfield &lt=
;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-size:small"><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, May 23, 2019 at 9:56 AM Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherz=
an.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
This might have been discussed before. I couldn&#39;t find a relevant<br>
thread, but if it is so, just link me to it.<br>
<br>
Since thud, more specific since<br>
<br>
commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f<br>
Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
Date:=C2=A0=C2=A0 Sat Aug 18 22:50:44 2018 -0400<br>
=C2=A0=C2=A0=C2=A0 kernel-devsrc: restructure for out of tree (and on targe=
t) module builds<br>
<br>
... we switched from a recipe that was deploying the entire source code<br>
to one that provides mainly the kernel headers (but not only). This<br>
change broke people expectations of this recipe while the description is<br=
>
also confusing: &quot;Development source linux kernel. When built, this<br>
recipe packages the \source of the preferred virtual/kernel provider and<br=
>
makes it available for full kernel \development or external module builds&q=
uot;.<br>
<br>
If size is not a problem (which can be the case when you compile on a<br>
builder for example and deploy only a OOT kernel module through other<br>
means), the full kernel source was a painless experience where things like<=
br>
<br>
commit a9471601fedd1f5087304eaa5fd39b98ae220313<br>
Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
Date:=C2=A0=C2=A0 Thu Aug 30 09:45:41 2018 -0400<br>
=C2=A0=C2=A0=C2=A0 kernel-devsrc: fix arm/arm64 target module build<br>
<br>
... would not appear. I understand the size impact on target and for<br>
those cases, continuously maintaining this recipe with new<br>
files/resources needed from the kernel, makes sense. So my proposal is<br>
to have two recipes, for example kernel-devsrc and kernel-fullsrc<br>
(kernel-src etc.) so people can choose what they need/want<br>
deploying/using. Or even have another devsrc provider. I&#39;m open to any<=
br>
implementation detail. I&#39;d just want to have an option for a full kerne=
l<br>
source recipe.<br></blockquote><div><br></div><div><div style=3D"font-size:=
small">This is already planned, and hidden in bugzilla somewhere. I&#39;ll =
have some new kernel packaging</div><div style=3D"font-size:small">options =
available for the fall release.</div></div></div></div></blockquote><div><b=
r></div><div><div class=3D"gmail_default" style=3D"font-size:small">It look=
s like the bugs that I was using for development were finally moved to reso=
lved (they were a bit old, and contained collected information on various k=
ernel packaging options .. my searching of bugzilla isn&#39;t turning it up=
 at the moment). So I just created a new bug to track the development for 2=
.8.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">The issue with the mu=
ltiple kernel source providers is really about test cycles. The smaller dev=
src is for on-target module development and builds against the exported uap=
i headers, and that is what the nightly / automated tests will use. We had =
issues with both the amount of time it took to package the entire source, a=
nd the amount of space that it took up on the images. Hence the creation of=
 devsrc.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">With new kernel-=
source and kernel-headers packages (the working names), they are really pro=
vided as references to the running kernel, and will largely be an exercise =
left up to the developer to use them as they want.</div><div class=3D"gmail=
_default" style=3D"font-size:small"><br></div><div class=3D"gmail_default" =
style=3D"font-size:small">Cheers,</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><d=
iv style=3D"font-size:small"><br></div><div style=3D"font-size:small">Bruce=
</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
<br>
Regards,<br>
<br>
-- <br>
Andrei Gherzan<br>
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-4307507210712587902gmail_signature">- Thou shalt not fol=
low the NULL pointer, for chaos and madness await thee at its end<br>- &quo=
t;Use the force Harry&quot; - Gandalf, Star Trek II<br><br></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000eb0d8e05898f0dbb--
