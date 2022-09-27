Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15ADDC6FA83
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 09:16:13 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web09.8752.1664270168212565701
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 02:16:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GiOh2AGd;
 spf=pass (domain: gmail.com, ip: 209.85.221.50,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id cc5so13998070wrb.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 02:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=1QOwYppIiG3850em5cyxFPIlvPZOCoxury2x89VDpIE=;
        b=GiOh2AGdFhOatgU71kLfk0nEzkPliis9Fq5LH2kWV46DkFvya8W+9KEUu5QGs9aRHz
         Ok5foOGfmo7+jC6R/WztQXYxvniZsBjjnrCAqOpSfmzYq1oNErENnCHP1o6P7h5SEirx
         RdBJiTfEAdMfwOJLVYKY8eXY/FfCTaMIcnS5DAGRG9xeOnBRM+36yCFZ5Y8iFbgE9g1O
         bkwmns+3XYjCDbVyMbL1hUPhrGH5dWcWnNZJRlGt1nRW8iaYeIuGaCHxhvkmKWE+Qr9/
         4UL+dhINYVwdgnbzLWI8R9cRfqLdhqAPbH/pFER+z6umAI5GrNfytXuJtCydIVyMyg5+
         zN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=1QOwYppIiG3850em5cyxFPIlvPZOCoxury2x89VDpIE=;
        b=MnC1m4Q+ge5vHObLH0csQ6co1tnkzVlHFg4KlfMzuhAJaV9e0nUkdXuAIGa4r6rGD9
         Aen+t4si/XyGkch/kZD7sxqNi8gmngkLozVhBYxzQMWDM3pNOrgG88z/D2m/xf/nYVnV
         EckjgrLlu0TMwgs7D0I05y1TafVRaRx1pg8ZB7kkbdIBTK9ZavSBsPT6rUd3MWo2P6T0
         Hz0Xa5dgFVCeg2FzLFzywd2FUpFWdura69mDTZVVnwnidr9ueaJpniyf8V6uN7WubOah
         EpjIEedN5njWWzXn5j+r7ebuUaH8pn3300/+WSjDdtPP40+NX11x1bQI5vbyGqjjv3OO
         P2LQ==
X-Gm-Message-State: ACrzQf1ebV55KvkErrT2+SUNv6xjOpRC6RxpnholjFMKVdKsdw4QwBbs
	RrN/pPD1QoI+83xMCxhElyowl89Nf7Ogoe8u/2M=
X-Google-Smtp-Source: 
 AMsMyM6FZAZqLjD3Mp/8epgY4xFS9bpWbujfJgvnyEnjAe+Q//hMmu6/X49OZRNFn8kTVHVLGvgkXA0MphZWYDjsKug=
X-Received: by 2002:a05:6000:86:b0:228:db07:24bc with SMTP id
 m6-20020a056000008600b00228db0724bcmr15875142wrx.204.1664270166551; Tue, 27
 Sep 2022 02:16:06 -0700 (PDT)
MIME-Version: 1.0
References: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
 <CANNYZj9_xv98411bGrzH5eQ3X8P6qpay+5UDZUGfkgdDd0N6JQ@mail.gmail.com>
 <SA1PR06MB8209B064AB1471F7B0AF432B86559@SA1PR06MB8209.namprd06.prod.outlook.com>
 <CANNYZj8NzbdA8gWocxcX6TOJTPhFbCSEuNOFOVcHDB-vcD2muA@mail.gmail.com>
 <SA1PR06MB820996C847BB91D26CBBB4A186559@SA1PR06MB8209.namprd06.prod.outlook.com>
In-Reply-To: 
 <SA1PR06MB820996C847BB91D26CBBB4A186559@SA1PR06MB8209.namprd06.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 27 Sep 2022 11:15:53 +0200
Message-ID: 
 <CA+chaQfcJKBTUqcwQRqhi98hfdrzk6PuPCa2WdA_qYMhuHs9PA@mail.gmail.com>
Subject: Re: [yocto] nodejs do_compile eats all resources
To: oliver.westermann@cognex.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001673ca05e9a518a6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 09:16:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58180

--0000000000001673ca05e9a518a6
Content-Type: text/plain; charset="UTF-8"

> PARALLEL_MAKE = "-j ${@int(oe.utils.cpu_count() / 4)}"

This won't be optimal in cases where you're rebuilding just one recipe in
incremental build which will be finished much faster if you can unleash
whole potential of dual-epycs. Try to add -l to limit overall load instead
and limit -j only for the biggest offenders included in your build, you
don't need to do that in .bbappend, just use pn override, e.g. my
local.conf has:

BB_PRESSURE_MAX_CPU = "1000"
BB_NUMBER_THREADS = "8"
BB_NUMBER_PARSE_THREADS = "64"
PARALLEL_MAKE = "-j 70 -l 140"
#PARALLEL_MAKE:pn-qtwebengine = "-j 40"
#PARALLEL_MAKE:pn-webruntime = "-j 40"

On 64 thread TR 3970X with 128GB ram, the restriction for qtwebruntime and
webruntime isn't necessary, since I've added BB_PRESSURE_MAX_CPU I haven't
seen OOMK just from the OE builds.

> Why isn't it more common that we end up in issues due to cpu_count^2
threads being spawned?

It's very common when you build some "big" images with "big" components.

Many components cannot utilize very high PARALLEL_MAKE for very long or for
demanding processes. nodejs, chromium, webkit-gtk, firefox are notable
exceptions which take long time to build and scale very well with
PARALLEL_MAKE (while hammering the HW as much as you let them).

There is now also the pressure regulation in bitbake, which might help to
limit overall load on the system, when too many heavy do_compile tasks get
triggered at the same time (see
https://git.openembedded.org/bitbake/commit/?id=502e05cbe67fb7a0e804dcc2cc0764a2e05c014f
)

See https://github.com/shr-project/test-oe-build-time and you can compare
your dual-epyc with the entries there.

Regards,

On Tue, Sep 27, 2022 at 11:02 AM Oliver Westermann via
lists.yoctoproject.org <oliver.westermann=cognex.com@lists.yoctoproject.org>
wrote:

> > Am Dienstag, 27. September 2022 10:50 schrieb Alexander Kanavin <
> alex.kanavin@gmail.com>:
> >
> > Do keep in mind that PARALLEL_MAKE can and should be set per recipe, so
> you can make-limit only the worst items.
> >
> > Alex
>
> Yeah, I'm currently using
>
> PARALLEL_MAKE = "-j ${@int(oe.utils.cpu_count() / 4)}"
>
> In a .bbappend to limit it, but keep it dynamic.
>
> One question out of curiosity or lack of understanding:
> Bitbake offers BB_NUMBER_THREADS to limit (IMHO) the number of bitbake
> tasks, eg parallel do_compile() tasks. Each of these however spawn the
> compiler with several parallel threads oe.utils.cpu_count (PARALLEL_MAKE
> defaults to cpu_count()). Why isn't it more common that we end up in issues
> due to cpu_count^2 threads being spawned? Shouldn't (roughly)
> BB_NUMBER_THREADS * PARALLEL_MAKE fully load the CPU?
>
> Best regards, a curious Olli
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58179):
> https://lists.yoctoproject.org/g/yocto/message/58179
> Mute This Topic: https://lists.yoctoproject.org/mt/93931877/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000001673ca05e9a518a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; PARALLEL_MAKE =3D &quot;-j ${@int(oe.utils.cpu_c=
ount() / 4)}&quot;</div><div><br></div><div>This won&#39;t be optimal in ca=
ses where you&#39;re rebuilding just one recipe in incremental build which =
will be finished much faster if you can unleash whole potential of dual-epy=
cs. Try to add -l to limit overall load instead and limit -j only for the b=
iggest offenders included in your build, you don&#39;t need to do that in .=
bbappend, just use pn override, e.g. my local.conf has:</div><div><br></div=
><div>BB_PRESSURE_MAX_CPU =3D &quot;1000&quot;<br>BB_NUMBER_THREADS =3D &qu=
ot;8&quot;<br>BB_NUMBER_PARSE_THREADS =3D &quot;64&quot;<br>PARALLEL_MAKE =
=3D &quot;-j 70 -l 140&quot;<br>#PARALLEL_MAKE:pn-qtwebengine =3D &quot;-j =
40&quot;<br>#PARALLEL_MAKE:pn-webruntime =3D &quot;-j 40&quot;<br></div><di=
v><br></div><div>On 64 thread TR 3970X with 128GB ram, the restriction for =
qtwebruntime and webruntime isn&#39;t necessary, since I&#39;ve added=C2=A0=
BB_PRESSURE_MAX_CPU I haven&#39;t seen OOMK just from the OE builds.</div><=
div><br></div>&gt; Why isn&#39;t it more common that we end up in issues du=
e to cpu_count^2 threads being spawned?<br><div><br></div><div>It&#39;s ver=
y common when you build some &quot;big&quot; images with &quot;big&quot; co=
mponents.</div><div><br></div><div>Many components cannot utilize very high=
 PARALLEL_MAKE for very long or for demanding processes. nodejs, chromium, =
webkit-gtk, firefox are notable exceptions which take long time to build an=
d scale very well with PARALLEL_MAKE (while hammering the HW as much as you=
 let them).</div><div><br></div><div>There is now also the pressure regulat=
ion in bitbake, which might help to limit overall load on the system, when =
too many heavy do_compile tasks get triggered at the same time (see=C2=A0<a=
 href=3D"https://git.openembedded.org/bitbake/commit/?id=3D502e05cbe67fb7a0=
e804dcc2cc0764a2e05c014f">https://git.openembedded.org/bitbake/commit/?id=
=3D502e05cbe67fb7a0e804dcc2cc0764a2e05c014f</a> )</div><div><br></div><div>=
See=C2=A0<a href=3D"https://github.com/shr-project/test-oe-build-time">http=
s://github.com/shr-project/test-oe-build-time</a> and you can compare your =
dual-epyc with the entries there.</div><div><br></div><div>Regards,</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Sep 27, 2022 at 11:02 AM Oliver Westermann via <a href=3D"http://list=
s.yoctoproject.org">lists.yoctoproject.org</a> &lt;oliver.westermann=3D<a h=
ref=3D"mailto:cognex.com@lists.yoctoproject.org">cognex.com@lists.yoctoproj=
ect.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">&gt; Am Dienstag, 27. September 2022 10:50 schrieb Alexander Kanavin=
 &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanav=
in@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; Do keep in mind that PARALLEL_MAKE can and should be set per recipe, s=
o you can make-limit only the worst items.<br>
&gt; <br>
&gt; Alex<br>
<br>
Yeah, I&#39;m currently using<br>
<br>
PARALLEL_MAKE =3D &quot;-j ${@int(oe.utils.cpu_count() / 4)}&quot;<br>
<br>
In a .bbappend to limit it, but keep it dynamic.<br>
<br>
One question out of curiosity or lack of understanding:<br>
Bitbake offers BB_NUMBER_THREADS to limit (IMHO) the number of bitbake task=
s, eg parallel do_compile() tasks. Each of these however spawn the compiler=
 with several parallel threads oe.utils.cpu_count (PARALLEL_MAKE defaults t=
o cpu_count()). Why isn&#39;t it more common that we end up in issues due t=
o cpu_count^2 threads being spawned? Shouldn&#39;t (roughly) BB_NUMBER_THRE=
ADS * PARALLEL_MAKE fully load the CPU?<br>
<br>
Best regards, a curious Olli<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58179): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58179" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58179</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93931877/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93931877/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000001673ca05e9a518a6--

