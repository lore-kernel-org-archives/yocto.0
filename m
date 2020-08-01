Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web12.7461.1596274028292108718
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Aug 2020 02:27:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=u+x//A3+;
 spf=pass (domain: linaro.org, ip: 209.85.166.172, mailfrom: ryan.harkin@linaro.org)
Received: by mail-il1-f172.google.com with SMTP id z17so12210243ill.6
        for <yocto@lists.yoctoproject.org>; Sat, 01 Aug 2020 02:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q//P/bZ9iTAAoYZOHBRxXp6cMRH8rkg7PhmL357RRq4=;
        b=u+x//A3+sN+7CG9uwBrV9EWkD8sezr0pnSqeBcD0q3G1wZGgrBUJsxe7qp9KlkTtH3
         JkpjP930ihTo8erkfLe0PyPyF4wRZSp5eRsxKfPcBOAmc/wVJP7pzB8xeEpEFihFqsSq
         KBDmS/RJpvD0GahoTzaqLsmgV0lEXletBu1KWhRzUFUnYCCi1ojtwhS4C0p/WZ4XJ1iB
         EEGXZCdHvq+pEyX4mSBF94Ky/gtZvKWT+2MoXHDscBo93q4f+qdBNvcmF4MLi7RQ8yxj
         rX6Iadqwp/7RPudXDo1zb7/TP/dDzqptUGYdK+GBi5VtNeA6I7zq+PEip3NthM1yela6
         ihsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q//P/bZ9iTAAoYZOHBRxXp6cMRH8rkg7PhmL357RRq4=;
        b=EAAbpc2Y7br6Y6bZmwqlRUUgvECWz9pV5F7EZQBBObKH9T5LbBrGh/eevTWNr5nvN3
         sNpyUHV2Zh9uhCzw0ckcx/SCbsQXvgw4C22p2iqRNBtwMOnkEJbhCV8R65nEp3hakiR6
         wspM6jsF46GWxrfgugWJ4otw+jLes6XHnHqzV03xyDfr5Dz5i11biERiMs3pLnKDXYCR
         Ghl7vUwTUUMtb7XxYtov5yd6DeWvkeLq340gPLC+6BJn3VlTRIPu5jFhtfOJjcpXHRG6
         mRZaAWuCzH51hg1T4gntFvAa7hgGGt/ksI7pn4l+YUlDXJQ/BodtHi9KWN95VYKyMtlX
         F30Q==
X-Gm-Message-State: AOAM531E9ws6ekOX4g0/l+NuVQwRsrxeBErKbVc1BcdDPH5+9NNb5WH4
	wH/ujWbQ+wVN+OET1BFQ+kRfLa5UHuawg2Kd6Ucqwg==
X-Google-Smtp-Source: ABdhPJw1C47RmvqCzYbekB1inu4z/TMQCGaL3wS/lrVVJEu3YLna30ttjl4RhjdTzQAW4wTG3tXR3+2gEW1l7Dk76og=
X-Received: by 2002:a92:9a84:: with SMTP id c4mr7930211ill.1.1596274027672;
 Sat, 01 Aug 2020 02:27:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com> <CAD0U-hKWOkCr0dAtfFY4k9+ZerV_ic-GpDc_0=5DQiwaYHuFWw@mail.gmail.com>
In-Reply-To: <CAD0U-hKWOkCr0dAtfFY4k9+ZerV_ic-GpDc_0=5DQiwaYHuFWw@mail.gmail.com>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Sat, 1 Aug 2020 10:26:56 +0100
Message-ID: <CAD0U-hJDL-sbbuQnVwcMYecvWOCi0=QuKK+FKGjazpC_ZeP9Tw@mail.gmail.com>
Subject: Re: [yocto] dunfell gcc-sanitizers-arm-8.3 fails to build
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Sumit Garg <sumit.garg@linaro.org>, 
	Ralph Siemsen <ralph.siemsen@linaro.org>, Jon Mason <Jon.Mason@arm.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, openembedded <openembedded@lists.linaro.org>
Content-Type: multipart/alternative; boundary="000000000000625b4105abcd8258"

--000000000000625b4105abcd8258
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Aug 2020 at 10:09, Ryan Harkin <ryan.harkin@linaro.org> wrote:

> Hi Khem,
>
> On Fri, 31 Jul 2020, 21:58 Khem Raj, <raj.khem@gmail.com> wrote:
>
>> On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin <ryan.harkin@linaro.org>
>> wrote:
>> >
>> > Hello,
>> >
>> > I'm migrating from Warrior to Dunfell and I'm getting a curious build
>> failure in gcc-sanitizers.
>> >
>> > Here's the full gory detail:
>> >     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
>> >
>> > However, the main error is this:
>> >
>> > | In file included from
>> ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
>> > |
>> ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72:
>> error: size of array 'assertion_failed__1152' is negative
>> > |      typedef char IMPL_PASTE(assertion_failed_##_,
>> line)[2*(int)(pred)-1]
>> >
>> > I have no idea where to begin with this. I don't even know why
>> gcc-sanitizers is included in the build, what it does, or why I need it.
>> I'm building an image with dev packages and gcc, so I guess that's why.
>> >
>> > I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to
>> null out the macros and that builds fine. I'm sure it won't work, should
>> someone want to use it, mind you.
>> >
>> > Is there something obvious that I should be doing as part of a Warrior
>> -> Dunfell migration to get this to work?
>> >
>> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to
>> meta-arm-toolchain.
>> >
>>
>> is gcc 8.3 the latest for linaro
>>
>
> I assume so. I haven't attempted to change the default.
>

I'm sorry, that's incorrect: local.conf has an over-ride to specify 8.3.
I've just removed it and now it's using 9.3. And it's building fine.

Sumit, do you know if there's a reason for using 9.2 in RPB instead of 9.3?


>
>> > Regards,
>> > Ryan.
>> > 
>>
>

--000000000000625b4105abcd8258
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 1 Aug 2020 at 10:09, Ryan Har=
kin &lt;<a href=3D"mailto:ryan.harkin@linaro.org">ryan.harkin@linaro.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"auto"><div>Hi Khem,<br><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, 31 Jul 2020, 21:58 Khem Raj, &lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri,=
 Jul 31, 2020 at 8:35 AM Ryan Harkin &lt;<a href=3D"mailto:ryan.harkin@lina=
ro.org" rel=3D"noreferrer" target=3D"_blank">ryan.harkin@linaro.org</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m migrating from Warrior to Dunfell and I&#39;m getting a curio=
us build failure in gcc-sanitizers.<br>
&gt;<br>
&gt; Here&#39;s the full gory detail:<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://pastebin.ubuntu.com/p/nh4cDKMvg=
S/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://pastebin.ubuntu=
.com/p/nh4cDKMvgS/</a><br>
&gt;<br>
&gt; However, the main error is this:<br>
&gt;<br>
&gt; | In file included from ../../../../../../../../../work-shared/gcc-ar=
m-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_=
posix.cc:193:<br>
&gt; | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/lib=
sanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of=
 array &#39;assertion_failed__1152&#39; is negative<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 typedef char IMPL_PASTE(assertion_failed_##_, l=
ine)[2*(int)(pred)-1]<br>
&gt;<br>
&gt; I have no idea where to begin with this. I don&#39;t even know why gc=
c-sanitizers is included in the build, what it does, or why I need it. I&#3=
9;m building an image with dev packages and gcc, so I guess that&#39;s why.=
<br>
&gt;<br>
&gt; I&#39;ve hacked meta-arm to patch sanitizer_platform_limits_posix.cc =
to null out the macros and that builds fine. I&#39;m sure it won&#39;t work=
, should someone want to use it, mind you.<br>
&gt;<br>
&gt; Is there something obvious that I should be doing as part of a Warrio=
r -&gt; Dunfell migration to get this to work?<br>
&gt;<br>
&gt; note: Warrior used meta-linaro-toolchain and for Dunfell, it&#39;s mo=
ved to meta-arm-toolchain.<br>
&gt;<br>
<br>
is gcc 8.3 the latest for linaro<br></blockquote></div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">I assume so. I haven&#39;t attempted to ch=
ange the default.</div></div></blockquote><div><br></div><div>I&#39;m sorry=
, that&#39;s incorrect: local.conf has an over-ride to specify 8.3.</div><d=
iv>I&#39;ve just removed it and now it&#39;s using 9.3. And it&#39;s buildi=
ng fine.</div><div><br></div><div>Sumit, do you know if there&#39;s a reaso=
n for using 9.2 in RPB instead of 9.3?</div><div><br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"auto"><br><=
/div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<br>
&gt; Regards,<br>
&gt; Ryan.<br>
&gt; <br>
</blockquote></div></div></div>
</blockquote></div></div>

--000000000000625b4105abcd8258--
