Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.7049.1632413922821478893
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 09:18:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=I0qQaoVj;
 spf=pass (domain: linaro.org, ip: 209.85.221.44, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f44.google.com with SMTP id t8so18821186wrq.4
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 09:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a0xGOXFyy3+hpGfj2rvrF4Mk/SBLQT8odhLE0RNRqSg=;
        b=I0qQaoVjsCfPnNuhGZ2Ei2n2Sfv9PIXylNXV30sJZG7HUIoH6SBf/GjRslnMAI5LsD
         /ZVmQOqTI6dbrKh9MyJwY5pt4y5/JHsl6YOSit83RnO9BXW6ihCSf08sC83oZrsfME7l
         an5tRC6wzBDcCvNW4oMj88ZmqD7m6ELrYE8QtUZmfE1A+UyFRtSYffq5xyZn2E011n3v
         EbQb857Xg/lHd6GfwdaSGScVD2reUPrYgEmJHWGO/RmhJeuw4iAP5BVPWbLxGagTrdpd
         CqIPxFO7tibuRg3DpEdxQAKkuLtSBGfN01CdzH4WWSuHJQhivBaiNumVgSrf6uDNqak9
         /pBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a0xGOXFyy3+hpGfj2rvrF4Mk/SBLQT8odhLE0RNRqSg=;
        b=oXiJad3I3S0PlVdlYKG5QPPEHsXj2DBirGGxWJRieXincndKR0+832aBFiglTXkpNH
         kOqQlj6OtE9CISWxrkpqE02haurHeIlR8Xp6ckLM3ed7NwV9iRVLi1aEj2v9YxdcVCBr
         cIaqS+/jX4K1SbjqH5uMSc/3S3+bJ+JEkczM+qaqXIo786AP13kQzxCzqOsBa3Sya6h+
         o+vGTW+o/20CgYZXa/wlIS4OSfSeaJJk6pVMu/GIli+zYwkR04URWFHHX8SbrLQ1FxGO
         yDPr/MnI6FKqbmoxSMb0wr4zecL7Zagem0f1hdHf8AN8A/8gax/amtxZqWR/xM/KjJ/g
         n9gg==
X-Gm-Message-State: AOAM531Gyj2bawZgy9XHUczf7mxMnN/sLbGZiPm3UK1gfYH1H8wJpNtP
	CJlsGLveNn09TcWJih/qmiVDs16czSZiqm3PTNhGoA==
X-Google-Smtp-Source: ABdhPJygRZSmQiaCdNi99VeVatRwEX3Oif/9HSN7BpndWfWtq8a9bCcM5bg4OsXtJQxb/UMlIOFEemqmhxSh25qocMg=
X-Received: by 2002:a1c:7413:: with SMTP id p19mr5493870wmc.98.1632413920986;
 Thu, 23 Sep 2021 09:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210817123812.18075-1-lukma@denx.de> <20210817123812.18075-2-lukma@denx.de>
 <20210827124350.71c00d33@ktm> <20210920111852.174eff07@ktm> <CANNYZj8hGOPSa+zAKRSqGmMoEsueb4zB6yNPT7GPnc4Pe-Q+UQ@mail.gmail.com>
In-Reply-To: <CANNYZj8hGOPSa+zAKRSqGmMoEsueb4zB6yNPT7GPnc4Pe-Q+UQ@mail.gmail.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Thu, 23 Sep 2021 11:18:30 -0500
Message-ID: <CA+_AqiteMrG04e=ZA216kKVQBervmHekKZLYypMBNU=Oj-zY2g@mail.gmail.com>
Subject: Re: [yocto] [PATCH v2 ptest-runner 2/2] main: Do not return number of failed tests when calling ptest-runner
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "?ukasz Majewski" <lukma@denx.de>, Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="000000000000e3206d05ccabfbea"

--000000000000e3206d05ccabfbea
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 Sept 2021 at 04:23, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> I think we might be having an 'unresponsive maintainer' situation? How can
> Anibal be reached?
>

I was OOO for futher you can find me with nickname alimon at #yocto at
Libera.


>
> Alex
>
> On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski <lukma@denx.de> wrote:
>
>> Hi Anibal,
>>
>> > Hi Anibal,
>> >
>> > > Up till now ptest-runner2 returns number of failed tests with its
>> > > exit status code. Such use case is not recommended [1] and may cause
>> > > issues when there are more than 256 tests to be executed.
>> > >
>> > > To alleviate this issue the number of total tests with number of
>> > > failed ones is printed before exit. To be more specific - failure of
>> > > tests (one or more) causes ptest-runner to provide exit code of 1.
>> > >
>> > > One can test this change with executing:
>> > > ./ptest-runner -d tests/data fail
>> >
>> > Gentle ping on this patch.
>> >
>>
>> Gentle ping on this patch.
>>
>> Is it OK to be applied?
>>
>
Applied,

Thanks,
Anibal


>
>> > >
>> > > Links:
>> > > [1] -
>> > > https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
>> > >
>> > > Signed-off-by: Lukasz Majewski <lukma@denx.de>
>> > > ---
>> > > Changes for v2:
>> > > - When number of failed tests is N, the ptest-runner returns value
>> > > of 1 to indicate error in the execution
>> > > ---
>> > >  main.c | 3 +++
>> > >  1 file changed, 3 insertions(+)
>> > >
>> > > diff --git a/main.c b/main.c
>> > > index 890bc6a..bcec844 100644
>> > > --- a/main.c
>> > > +++ b/main.c
>> > > @@ -220,6 +220,9 @@ main(int argc, char *argv[])
>> > >             ptest_list_remove(run, opts.exclude[i], 1);
>> > >
>> > >     rc = run_ptests(run, opts, argv[0], stdout, stderr);
>> > > +   fprintf(stdout, "TOTAL: %d FAIL: %d\n",
>> > > ptest_list_length(run), rc);
>> > > +   if (rc > 0)
>> > > +           rc = 1;
>> > >
>> > >     ptest_list_free_all(&run);
>> > >
>> >
>> >
>> >
>> >
>> > Best regards,
>> >
>> > Lukasz Majewski
>> >
>> > --
>> >
>> > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>> > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>> > Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
>> > lukma@denx.de
>>
>>
>>
>>
>> Best regards,
>>
>> Lukasz Majewski
>>
>> --
>>
>> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>> Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de
>>
>> 
>>
>>

--000000000000e3206d05ccabfbea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 20 Sept 2021 at 04:23, Alexan=
der Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>I think we might be having an &#39;unresponsive =
maintainer&#39; situation? How can Anibal be reached?</div></div></blockquo=
te><div><br></div><div>I was OOO for futher you can find me with nickname a=
limon at #yocto at Libera.</div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>Alex<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, 20 Sept 2021 at 11:19, ?ukasz Majewski &lt;<a href=3D"mailto:lukma@=
denx.de" target=3D"_blank">lukma@denx.de</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">Hi Anibal,<br>
<br>
&gt; Hi Anibal,<br>
&gt; <br>
&gt; &gt; Up till now ptest-runner2 returns number of failed tests with its=
<br>
&gt; &gt; exit status code. Such use case is not recommended [1] and may ca=
use<br>
&gt; &gt; issues when there are more than 256 tests to be executed.<br>
&gt; &gt; <br>
&gt; &gt; To alleviate this issue the number of total tests with number of<=
br>
&gt; &gt; failed ones is printed before exit. To be more specific - failure=
 of<br>
&gt; &gt; tests (one or more) causes ptest-runner to provide exit code of 1=
.<br>
&gt; &gt; <br>
&gt; &gt; One can test this change with executing:<br>
&gt; &gt; ./ptest-runner -d tests/data fail=C2=A0 <br>
&gt; <br>
&gt; Gentle ping on this patch.<br>
&gt; <br>
<br>
Gentle ping on this patch.<br>
<br>
Is it OK to be applied?<br></blockquote></div></blockquote><div><br></div><=
div>Applied,</div><div><br></div><div>Thanks,</div><div>Anibal</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; &gt; <br>
&gt; &gt; Links:<br>
&gt; &gt; [1] -<br>
&gt; &gt; <a href=3D"https://www.gnu.org/software/libc/manual/html_node/Exi=
t-Status.html" rel=3D"noreferrer" target=3D"_blank">https://www.gnu.org/sof=
tware/libc/manual/html_node/Exit-Status.html</a><br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Lukasz Majewski &lt;<a href=3D"mailto:lukma@denx.d=
e" target=3D"_blank">lukma@denx.de</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; Changes for v2:<br>
&gt; &gt; - When number of failed tests is N, the ptest-runner returns valu=
e<br>
&gt; &gt; of 1 to indicate error in the execution<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 main.c | 3 +++<br>
&gt; &gt;=C2=A0 1 file changed, 3 insertions(+)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/main.c b/main.c<br>
&gt; &gt; index 890bc6a..bcec844 100644<br>
&gt; &gt; --- a/main.c<br>
&gt; &gt; +++ b/main.c<br>
&gt; &gt; @@ -220,6 +220,9 @@ main(int argc, char *argv[])<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_remove(=
run, opts.exclude[i], 1);<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0rc =3D run_ptests(run, opts, argv[0], stdout, =
stderr);<br>
&gt; &gt; +=C2=A0 =C2=A0fprintf(stdout, &quot;TOTAL: %d FAIL: %d\n&quot;,<b=
r>
&gt; &gt; ptest_list_length(run), rc);<br>
&gt; &gt; +=C2=A0 =C2=A0if (rc &gt; 0)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D 1;<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;run);<br>
&gt; &gt;=C2=A0 =C2=A0 <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Lukasz Majewski<br>
&gt; <br>
&gt; --<br>
&gt; <br>
&gt; DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director:=
 Wolfgang Denk<br>
&gt; HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<=
br>
&gt; Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:<br>
&gt; <a href=3D"mailto:lukma@denx.de" target=3D"_blank">lukma@denx.de</a><b=
r>
<br>
<br>
<br>
<br>
Best regards,<br>
<br>
Lukasz Majewski<br>
<br>
--<br>
<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: <a href=3D"mailt=
o:lukma@denx.de" target=3D"_blank">lukma@denx.de</a><br>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div></div>

--000000000000e3206d05ccabfbea--
