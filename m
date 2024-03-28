Return-Path: <amolpractise@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34EBFCD11DD
	for <webhook@archiver.kernel.org>; Thu, 28 Mar 2024 18:39:56 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web10.4383.1711651189887525281
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Mar 2024 11:39:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=egR6JjbU;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: amolpractise@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-ddad4f966c5so359113276.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 11:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711651189; x=1712255989; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ADYpcsL7/BCrLRU3lUrzqtctYnDy4MrPQMXkow3cd9Y=;
        b=egR6JjbUqKpmVfMmSwUj74je0Caj9iPNazk1BBergk2cctJYdNz2HUNfdXMIxie6zH
         c70UDYo8hwdroMIzNt4jBa5Y4oFpwd9TW7fQU2Mhxlk5Q9QYlp+VnNd8vWTwabd7Jyx7
         JzU8x+ZYwu0J6OStjRScPvPKKCG3dmNe4Q34uFNuaTLpYlynxG8M/6uYDSusYtRCjUQ1
         LGJSqQeAy8hYUGMVZ0eHpqti9EA9mY7ibbj9N2zVXMgf5ymEC42uU9JEQnWT2EIj7K3T
         dx3yQiRPkT/fCizV4mLCAFtehk+dQU1vDIGgcqd6O1/48ECHU8CwKIdAWBWJxS97w1SQ
         S/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711651189; x=1712255989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADYpcsL7/BCrLRU3lUrzqtctYnDy4MrPQMXkow3cd9Y=;
        b=pMJ5OQBJgf7PtucrPueltYMTteNmNJWNyN3VRuimm1lwyq2NHW2NwG0gn82y0+GcWb
         +YPu+wpcA2bKFYQO+evRu+aO2UVXdNOaCb3NmRBkSiUZM4VeIFjiqAtMt9V41YPdR34e
         NM9yJyC9z37Ix3fOCDlejI21HgOvhRnIkzTtsh0V/Z1gFK388n3fEAABV9w3fi5kj8JB
         +Iq0Dmx9njveF6B/xp2CU6le5PZTGTVDamZHhb6mZy0JwzEyHzXzi29QvhvK5geG3ApY
         VXOBCOs7aVwUsDuqgASveZKf8LK+KO4l7Oxet5BLvBALKgZe6P4lU64wDK8SXG9ZOpnP
         DWTQ==
X-Gm-Message-State: AOJu0Ywe+5p64sJ/Wfnm3pQxB5nIA1zNepblc1KOnOVb/WXOSAFYuEEI
	QqVYfk5sa39NWcsnatuNN6nmhsABasGCFRilrXub1H7yutbPEFRoAoxjkcyAgmnGRcS/UdFEKbs
	zhG8LqmooEWxPGyWzJsIQFARsiIDKG16CzBM=
X-Google-Smtp-Source: AGHT+IHNX6CJ/4br9u013pNldoJNISrpxWrer9zUc/HfRC9NY4/G9UyczHJYdKhquN9LwKxwe/L+TsDg9ilfWzT4Ghs=
X-Received: by 2002:a25:e80e:0:b0:dc7:491a:18c2 with SMTP id
 k14-20020a25e80e000000b00dc7491a18c2mr136488ybd.6.1711651188837; Thu, 28 Mar
 2024 11:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAAkkBwNMmPQfG6-EV0jZhVef5JSP9KX2PWdy0TfFfcmC1kYAXw@mail.gmail.com>
 <CAMKF1soVYaBCpfeHmbbbOA2zmEYxzj1tMGipXP=tofqTF9sRwA@mail.gmail.com> <17BFED114E897819.27941@lists.yoctoproject.org>
In-Reply-To: <17BFED114E897819.27941@lists.yoctoproject.org>
From: Amol Practise <amolpractise@gmail.com>
Date: Fri, 29 Mar 2024 00:09:36 +0530
Message-ID: <CAAkkBwOLnD3fGHahkjbV0VU2Y8Xc3eqFNkeRY1XjDvNY7Prmeg@mail.gmail.com>
Subject: Re: [yocto] libtool error
To: yocto@lists.yoctoproject.org, amolpractise@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000017180b0614bcd99e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 18:39:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62857

--00000000000017180b0614bcd99e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello team,

i fixed it with below steps

to fix libtool or any package error

do cleanstate of that package
bitbake -c do_cleansstate libtool

do cleanstate of parent package
bitbake -c do_cleansstate gcc

do cleanstate of main image and rerun bitbake
bitbake -c do_cleansstate rpi-test-image

hope it helps

On Mon, Mar 25, 2024 at 11:40=E2=80=AFAM Amol Practise via lists.yoctoproje=
ct.org
<amolpractise=3Dgmail.com@lists.yoctoproject.org> wrote:

>
> Yes this error is reproducible, there is no memory issues, crashes or
> coredump, i am getting libtool not found error see below lines
>
> | /bin/bash: ./libtool: No such file or directory
> | make[2]: *** [Makefile:612: findcomp.lo] Error 127
> | make[2]: Leaving directory
> '/home/amol/git_repos/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gcc/13.2.0/gcc-13.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux=
-gnueabi/libcc1'
> | make[1]: Leaving directory
> '/home/amol/git_repos/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linu=
x-gnueabi/gcc/13.2.0/gcc-13.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux=
-gnueabi/libcc1'
> | make[1]: *** [Makefile:443: all] Error 2
> | make: *** [Makefile:11455: all-libcc1] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task
> (/home/amol/git_repos/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compi=
le)
> failed with exit code '1'
>
> please guide.
>
> thanks
> amol.
>
> On Mon, Mar 25, 2024 at 7:03=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wro=
te:
>
>> is this error reproducible ? Check if its causing some sort of out of
>> memory errors and crashes on your build system. Can you see if there
>> are some coredumps etc ?
>>
>> On Sun, Mar 24, 2024 at 9:04=E2=80=AFAM Amol Practise <amolpractise@gmai=
l.com>
>> wrote:
>> >
>> > Hello ,
>> >
>> > I am getting error while building yocto for raspberry pi , please see
>> attached log file for reference.
>> >
>> > Help is appreciated.
>> >
>> > Thank you.
>> > Amol Palshetkar
>> >
>> >
>> >
>> >
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62836):
> https://lists.yoctoproject.org/g/yocto/message/62836
> Mute This Topic: https://lists.yoctoproject.org/mt/105121719/8370142
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> amolpractise@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000017180b0614bcd99e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello team,</div><div><br></div><div>i fixed it with =
below steps</div><div><p>to fix libtool or any package error</p><p>do clean=
state of that package</p><div class=3D"gmail-code-block gmail-cc-ceksvt"><d=
iv class=3D"gmail-cc-9n57oc"><div class=3D"gmail-cc-v2tmjh"><span><div role=
=3D"presentation"></div></span></div></div></div><span><div role=3D"present=
ation"><div></div></div></span><span class=3D"gmail-prismjs gmail-cc-1j55rv=
q"><code class=3D"gmail-language-" style=3D"white-space:pre"></code></span>=
<div class=3D"gmail-code-block gmail-cc-ceksvt"><span class=3D"gmail-prismj=
s gmail-cc-1j55rvq"><code class=3D"gmail-language-" style=3D"white-space:pr=
e"><span class=3D"gmail-">bitbake -c do_cleansstate libtool</span></code></=
span></div><p>do cleanstate of parent package</p><div class=3D"gmail-code-b=
lock gmail-cc-ceksvt"><div class=3D"gmail-cc-9n57oc"><div class=3D"gmail-cc=
-v2tmjh"><span><div role=3D"presentation"></div></span></div></div></div><s=
pan><div role=3D"presentation"><div></div></div></span><span class=3D"gmail=
-prismjs gmail-cc-1j55rvq"><code class=3D"gmail-language-" style=3D"white-s=
pace:pre"></code></span><div class=3D"gmail-code-block gmail-cc-ceksvt"><sp=
an class=3D"gmail-prismjs gmail-cc-1j55rvq"><code class=3D"gmail-language-"=
 style=3D"white-space:pre"><span class=3D"gmail-">bitbake -c do_cleansstate=
 gcc</span></code></span></div><p>do cleanstate of main image and rerun bit=
bake</p><div class=3D"gmail-code-block gmail-cc-ceksvt"><div class=3D"gmail=
-cc-9n57oc"><div class=3D"gmail-cc-v2tmjh"><span><div role=3D"presentation"=
></div></span></div></div></div><span><div role=3D"presentation"><div></div=
></div></span><span class=3D"gmail-prismjs gmail-cc-1j55rvq"><code class=3D=
"gmail-language-" style=3D"white-space:pre"></code></span><span class=3D"gm=
ail-prismjs gmail-cc-1j55rvq"><code class=3D"gmail-language-" style=3D"whit=
e-space:pre"><span class=3D"gmail-">bitbake -c do_cleansstate rpi-test-imag=
e</span></code></span></div><div><span class=3D"gmail-prismjs gmail-cc-1j55=
rvq"><code class=3D"gmail-language-" style=3D"white-space:pre"><span class=
=3D"gmail-"><br></span></code></span></div><div><span class=3D"gmail-prismj=
s gmail-cc-1j55rvq"><code class=3D"gmail-language-" style=3D"white-space:pr=
e"><span class=3D"gmail-">hope it helps<br></span></code></span></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Mar 25, 2024 at 11:40=E2=80=AFAM Amol Practise via <a href=3D"http://lis=
ts.yoctoproject.org">lists.yoctoproject.org</a> &lt;amolpractise=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div><br></div><div>Yes this error is reproducible, ther=
e is no memory issues, crashes or coredump, i am getting libtool not found =
error see below lines</div><div><br></div><div>| /bin/bash: ./libtool: No s=
uch file or directory<br>| make[2]: *** [Makefile:612: findcomp.lo] Error 1=
27<br>| make[2]: Leaving directory &#39;/home/amol/git_repos/poky/rpi-build=
/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gcc/13.2.0/gcc-13.2.0/build.=
arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libcc1&#39;<br>| make[1]: Lea=
ving directory &#39;/home/amol/git_repos/poky/rpi-build/tmp/work/arm1176jzf=
shf-vfp-poky-linux-gnueabi/gcc/13.2.0/gcc-13.2.0/build.arm-poky-linux-gnuea=
bi.arm-poky-linux-gnueabi/libcc1&#39;<br>| make[1]: *** [Makefile:443: all]=
 Error 2<br>| make: *** [Makefile:11455: all-libcc1] Error 2<br>| ERROR: oe=
_runmake failed<br>| WARNING: exit code 1 from a shell command.<br>ERROR: T=
ask (/home/amol/git_repos/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_com=
pile) failed with exit code &#39;1&#39;</div><div><br></div><div>please gui=
de.</div><div><br></div><div>thanks</div><div>amol.<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 25=
, 2024 at 7:03=E2=80=AFAM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com=
" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">is this error reproducible ? Check if=
 its causing some sort of out of<br>
memory errors and crashes on your build system. Can you see if there<br>
are some coredumps etc ?<br>
<br>
On Sun, Mar 24, 2024 at 9:04=E2=80=AFAM Amol Practise &lt;<a href=3D"mailto=
:amolpractise@gmail.com" target=3D"_blank">amolpractise@gmail.com</a>&gt; w=
rote:<br>
&gt;<br>
&gt; Hello ,<br>
&gt;<br>
&gt; I am getting error while building yocto for raspberry pi , please see =
attached log file for reference.<br>
&gt;<br>
&gt; Help is appreciated.<br>
&gt;<br>
&gt; Thank you.<br>
&gt; Amol Palshetkar<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62836): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62836" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62836</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105121719/837=
0142" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105121719/8370142</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:amolpractise@gmail.com" target=3D"_blank">amolpr=
actise@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000017180b0614bcd99e--

