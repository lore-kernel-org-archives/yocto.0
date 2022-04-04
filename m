Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD97C4321E
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:44 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.30528.1649041105353617762
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 19:58:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: fede.evol@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id bu29so14840375lfb.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 19:58:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JgrZsU7xNcbHDFmuCqtrVtpAZ9lD2UaxUWxgcvQU6yI=;
        b=3yFUWhLQQLAyhBF89oeKjGgES7ZpKnsiLoBL4UQnb9DMx3/k+Rk6LPI9VwjjiKv0yX
         8Qiwr5iufayCt8yGYKZO71PLDw7yMjYOTwwsy5V8p/r8QYK1NplEqkmxZx8PaIDj0pxT
         b8ZXg/Efc09neJUiOpKInTPXiFP1AUJcFITXoMe+2mN+hGC4+LBsWl0+VvEcu+ZSD7HY
         bUsNHgi3J/1zMgB/mrd+9yTs306B3496/TqjxgmEGBvBRfegdYBo7zP9mpQA/n0xr6Fy
         4aQLDlF427Rr/3o3p/+QkTgqovSMEmPtMHw/SDvKbtIQNTQTrqTM2bojC0Dtzrv7cvCb
         XklQ==
X-Gm-Message-State: AOAM531/Qotn6g5UMavV3Vji7CXKicsmWI63752QLj/z6t9ANTmvO7+O
	iEcXw7kf9hr8H67C+1Nbs64SUvx40uR164BM4Zc=
X-Google-Smtp-Source: 
 ABdhPJytQKbHBoFBGAMShbeDdupCkNa6+UARK8UYu0wkVvZG9uznC/Y9TGQH01EG7SAKtSdQxrkjWXFuZEMUXYibgPU=
X-Received: by 2002:a19:7608:0:b0:44a:2428:3ec1 with SMTP id
 c8-20020a197608000000b0044a24283ec1mr21043039lff.355.1649041103373; Sun, 03
 Apr 2022 19:58:23 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAM6O0ZhqFZO4oq7NyGTHYHZ50Kp8F7aSqjeVRH7Ok1kKHzkPCQ@mail.gmail.com>
 <3136cb5acad9fabe522ec58be472e2eea3fa0d88.camel@linuxfoundation.org>
 <CA+chaQc=SZ9zMRVkufKdnx6B7qo20pwfntDB15yyqiqV3iomNg@mail.gmail.com>
In-Reply-To: 
 <CA+chaQc=SZ9zMRVkufKdnx6B7qo20pwfntDB15yyqiqV3iomNg@mail.gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Mon, 4 Apr 2022 04:58:12 +0200
Message-ID: 
 <CAM6O0Zh1JjcmVdgWc_He-KYA2eiS3ruaijgbX5AhtNY7Zn-Rxw@mail.gmail.com>
Subject: Re: [yocto] Fedora 36 / uninative GLIBCXX 3.4.30
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002fc9d805dbcb4db1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56653

--0000000000002fc9d805dbcb4db1
Content-Type: text/plain; charset="UTF-8"

Hello,
Thanks for the feedback!

Indeed the check is only on the "ldd --version" output which doesn't
account for the libstdc++ and that explains it. As compared to Ubuntu
22.04, Fedora 36 actually has also GCC 12.0.1 as default compiler.

As Martin mentions not sure if there is an easy portable way. He mentions
objdump which is for sure effective but maybe complicated and I feel like
relies on the filename being guessed (well should be known, the main link
at least) and feels a bit overcomplicated (if we need to go that low level
in case I'd suggest just to just use "strings" and grep there instead).

Would relying just on the filename be too shaky? I can see here
https://gcc.gnu.org/onlinedocs/libstdc++/manual/abi.html in point 3 of
"History" that it would seem quite well defined. Actually I guess if we
would just compare the system libstdc++.so.X.Y.Z (which we may be easily
able to get it from the libstdc++.so link) to uninative one  maybe would be
enough to determine it is newer? Hardcoding the path to libstdc++.so (as
ie. /usr/lib64/libstdc++.so) is probably not nice (ie. for custom
toolchains), so maybe we can ask g++ (-print-search-dirs, libraries
section) and look in those?
Then not sure if there are some distros/installs that do the insane-isy
thing of just installing directly the .so stripping the versions from the
name, hopefully not.

I'm not sure using anything from g++ -dumpspecs would be viable if as
Martin mentions you may have (ie. ubuntu-2204) a version with new stdc++
but older g++.

Cheers,
Federico


Il giorno dom 3 apr 2022 alle ore 16:52 Martin Jansa <martin.jansa@gmail.com>
ha scritto:

> FWIW: the same is happening now with ubuntu-22.04 where libstdc++6 package
> is now built from gcc-12 sources (even when gcc itself still defaults to
> gcc-11).
>
> I was trying to add the check in uninative.bbclass, but haven't found easy
> portable way to detect the version from libstdc++.so.6 (other than parsing
> objdump -x /full/path/to/libstdc++.so.6 output).
>
> On Sun, Apr 3, 2022 at 12:44 PM Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Sun, 2022-04-03 at 09:12 +0200, Federico Pellegrin wrote:
>> > I've been playing around building a Yocto imagine based on
>> kirkstone/master on
>> > the just released Fedora 36 beta test image. (just to give a few bits
>> more
>> > details: builds a MX8X image, works perfectly fine with Fedora 34 and
>> 35 since
>> > quite some time)
>> >
>> > The first and most obvious thing I've found out is that it is based on
>> a newer
>> > version of glibcxx (3.4.30) when the very latest uninative available
>> (as far
>> > as I could see, apologies if I'm wrong) is on 3.4.29, so at some point
>> this
>> > will break the build (when pzstd is called).
>> >
>> > Of course for the time being I just disabled uninative and the build is
>> going
>> > on (will report of course should I find something else). I'm not sure
>> (still
>> > checking this) if that should have happened automatically, but there was
>> > actually no warning in that sense (maybe because is GLIBCXX and not
>> GLIBC
>> > itself?)
>> > But the question is: should I try to contribute that tarball (I will
>> search
>> > for details, but if there is any good reference more than welcome!) or
>> is it
>> > something that is likely done by the core team?
>> >
>> > Of course FC36 is still a test distro so there is no surprise it broke,
>> but as
>> > we are close to Kirkstone release and possibly other distros will get
>> the same
>> > upgrade, I guess it could be great if we may fix this before that
>> deadline.
>>
>> Thanks for reporting it. I think to generate the newer version we need
>> gcc 12
>> which is still in pre-release. We generate the uninative tarball using
>> our own
>> builds on the autobuilder so until we have gcc 12 recipes there, we can't
>> generate that.
>>
>> Once gcc 12 is out, we will release a new uninative (assuming we can
>> update our
>> recipes).
>>
>> I'd like to think the checks in uninative would have noticed the
>> mismatch, we do
>> have some code there to detect libc version but perhaps not the CXX
>> pieces so
>> I'd welcome help in adding something for that.
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56648):
>> https://lists.yoctoproject.org/g/yocto/message/56648
>> Mute This Topic: https://lists.yoctoproject.org/mt/90215476/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> Martin.Jansa@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--0000000000002fc9d805dbcb4db1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello,</div><div>Thanks for the feedba=
ck!</div><div><br></div><div>Indeed the check is only on the &quot;ldd --ve=
rsion&quot; output which doesn&#39;t account for the libstdc++ and that exp=
lains it. As compared to Ubuntu 22.04, Fedora 36 actually has also GCC 12.0=
.1 as default compiler.<br></div><div><br></div><div>As Martin mentions not=
 sure if there is an easy portable way. He mentions objdump which is for su=
re effective but maybe complicated and I feel like relies on the filename b=
eing guessed (well should be known, the main link at least) and feels a bit=
 overcomplicated (if we need to go that low level in case I&#39;d suggest j=
ust to just use &quot;strings&quot; and grep there instead).<br></div><div>=
<br></div><div>Would relying just on the filename be too shaky? I can see h=
ere <a href=3D"https://gcc.gnu.org/onlinedocs/libstdc++/manual/abi.html" ta=
rget=3D"_blank">https://gcc.gnu.org/onlinedocs/libstdc++/manual/abi.html</a=
> in point 3 of &quot;History&quot; that it would seem quite well defined. =
Actually I guess if we would just compare the system libstdc++.so.X.Y.Z (wh=
ich we may be easily able to get it from the libstdc++.so link) to uninativ=
e one=C2=A0 maybe would be enough to determine it is newer? Hardcoding the =
path to libstdc++.so (as ie. /usr/lib64/libstdc++.so) is probably not nice =
(ie. for custom toolchains), so maybe we can ask g++ (-print-search-dirs, l=
ibraries section) and look in those?</div><div>Then not sure if there are s=
ome distros/installs that do the insane-isy thing of just installing direct=
ly the .so stripping the versions from the name, hopefully not.</div><div><=
br></div><div>I&#39;m not sure using anything from g++ -dumpspecs would be =
viable if as Martin mentions you may have (ie. ubuntu-2204) a version with =
new stdc++ but older g++.</div><div><br></div>Cheers,<div>Federico<br></div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Il giorno dom 3 apr 2022 alle ore 16:52 Martin Jansa &lt;<a=
 href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmai=
l.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">FWIW: the same is happening now with ubuntu-22.=
04 where libstdc++6 package is now built from gcc-12 sources (even when gcc=
 itself still defaults to gcc-11).<div><br></div><div>I was trying to add t=
he check in uninative.bbclass, but haven&#39;t found easy portable way to d=
etect the version from libstdc++.so.6 (other than parsing objdump -x /full/=
path/to/libstdc++.so.6 output).</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 3, 2022 at 12:44 PM Richar=
d Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=
=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">On Sun, 2022-04-03 at 09:12 +=
0200, Federico Pellegrin wrote:<br>
&gt; I&#39;ve been playing around building a Yocto imagine based on kirksto=
ne/master on<br>
&gt; the just released Fedora 36 beta test image. (just to give a few bits =
more<br>
&gt; details: builds a MX8X image, works perfectly fine with Fedora 34 and =
35 since<br>
&gt; quite some time)<br>
&gt; <br>
&gt; The first and most obvious thing I&#39;ve found out is that it is base=
d on a newer<br>
&gt; version of glibcxx (3.4.30) when the very latest uninative available (=
as far<br>
&gt; as I could see, apologies if I&#39;m wrong) is on 3.4.29, so at some p=
oint this<br>
&gt; will break the build (when pzstd is called).<br>
&gt; <br>
&gt; Of course for the time being I just disabled uninative and the build i=
s going<br>
&gt; on (will report of course should I find something else). I&#39;m not s=
ure (still<br>
&gt; checking this) if that should have happened automatically, but there w=
as<br>
&gt; actually no warning in that sense (maybe because is GLIBCXX and not GL=
IBC<br>
&gt; itself?)<br>
&gt; But the question is: should I try to contribute that tarball (I will s=
earch<br>
&gt; for details, but if there is any good reference more than welcome!) or=
 is it<br>
&gt; something that is likely done by the core team?<br>
&gt; <br>
&gt; Of course FC36 is still a test distro so there is no surprise it broke=
, but as<br>
&gt; we are close to Kirkstone release and possibly other distros will get =
the same<br>
&gt; upgrade, I guess it could be great if we may fix this before that dead=
line.<br>
<br>
Thanks for reporting it. I think to generate the newer version we need gcc =
12<br>
which is still in pre-release. We generate the uninative tarball using our =
own<br>
builds on the autobuilder so until we have gcc 12 recipes there, we can&#39=
;t<br>
generate that.<br>
<br>
Once gcc 12 is out, we will release a new uninative (assuming we can update=
 our<br>
recipes).<br>
<br>
I&#39;d like to think the checks in uninative would have noticed the mismat=
ch, we do<br>
have some code there to detect libc version but perhaps not the CXX pieces =
so<br>
I&#39;d welcome help in adding something for that.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56648): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56648" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56648</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90215476/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90215476/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div>

--0000000000002fc9d805dbcb4db1--

