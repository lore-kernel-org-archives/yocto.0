Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web11.167.1585693779644338045
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 15:29:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=IH6XTzUd;
 spf=pass (domain: blade-group.com, ip: 209.85.210.45, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f45.google.com with SMTP id 22so23887357otf.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2020 15:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gZ14QvPmWn352/j4P37sD0NxaIb1Y4eompdPUYenr8Q=;
        b=IH6XTzUdk4ugoFiIio/lDOqk7sYR3Ip2i4fNLgvP+Jl5uKYnffB/8t5p6q7bP49FPX
         VPRb2AsJ7qK1eS2vLj9dciF67fBvUs/BBzJm8FwcQF54CO/Aoatr0tkktvZOzGlWoDm9
         9Eleiv3h7A/HMcslue6RHgLQjKtIe9iko2dEiJeypNOOKC2q1tPgtAVOuzpSeb4tgjLq
         wDqLbXqQYBxfWKHtP656bRT2xVgrbWAF6I3lxnuQ2catFTdF3T3y61643CNVQubqHCEz
         E77bQ8keGobUw5Oc25ssmhWOrJODR1lR5tXHIVKGnB/zEhziTxw9rDo44v2VsLNzmna5
         Q6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gZ14QvPmWn352/j4P37sD0NxaIb1Y4eompdPUYenr8Q=;
        b=i1fNujDeri4VoSAR4SanGMphLd5wNLm5OcrXtWdwAe0iqkqNH5+IfH9t8WytrY2lNm
         5ES8NghTcXOOS2BGhSqeW32ehCIKGcPxVolYv5lUlKQnwE9agYy7L4Mqz7c8q5sq9p/N
         p3y8OhEDRKdx2C9moiHzjaYzbY6+2jSo7raYTziUB8b/kzXJ1zafsNzhO2lgcD3Ayr/X
         04PIidTj5Jndre3qNIUzpQ3b1fPz3S8eVPwazggjPjAa47VDfg/78+fyvQN8bW4AJWJK
         GGn5big/nVNwY6ma2WR+3E9YTFPI3L4gKKk31LVI2z6BdBOBlL54l2M8C9Y93zGByrAr
         cWyg==
X-Gm-Message-State: ANhLgQ0hr0RCMMM0w16iyVnUVq7kV/VBOfnV41GaHinRwZRwwFvz+GRR
	4jHC45z9JHV3HjCnYrTWgwRFTWMzH8CwPFUasBJvwQ==
X-Google-Smtp-Source: ADFU+vsR5WwXabYmJJbgx39IrgEsdMFNW0+g7sct0d/eZvLYKilz9hi/kjoIhcnpPjVjejiB8mtvehazYVoPRltfeIU=
X-Received: by 2002:a05:6830:1c77:: with SMTP id s23mr15209689otg.191.1585693778990;
 Tue, 31 Mar 2020 15:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <76CA873A-5C59-4578-BCFB-61E21B116DE2@gmail.com> <CANNYZj9=Sm_sG-jqen_A0TeKzkKS-fNgR0b1h2eN6MocGSyypw@mail.gmail.com>
In-Reply-To: <CANNYZj9=Sm_sG-jqen_A0TeKzkKS-fNgR0b1h2eN6MocGSyypw@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 1 Apr 2020 00:29:28 +0200
Message-ID: <CA+4=imZWgR4U_vHfCejQpSyd67tg0edvhTvQ+dYmYfmb2JcJ=A@mail.gmail.com>
Subject: Re: [yocto] boost monthly download limits
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Andrew Geissler <geissonator@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006b69cc05a22e1a9f"

--0000000000006b69cc05a22e1a9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That may be not a problem to us, but we could still avoid to contribute to
them hitting this limitation,
I guess that was part of the original point :)

Le mar. 31 mars 2020 =C3=A0 21:34, Alexander Kanavin <alex.kanavin@gmail.c=
om> a
=C3=A9crit :

> I wouldn't be super concerned about that, as Yocto servers carry copies =
of
> oe-core tarballs, and there is a fallback for that scenario. If it does
> occur, we should explore alternatives, but there's no need to panic.
>
> Alex
>
> On Tue, 31 Mar 2020 at 21:07, Andrew Geissler <geissonator@gmail.com>
> wrote:
>
>> Greetings,
>>
>> Recently, the OpenBMC project started to hit
>> https://github.com/boostorg/boost/issues/299#issuecomment-593064251.
>> Basically
>> the site that hosts the boost packages has a monthly download limit and
>> once
>> hit, starts to fail.
>>
>> There was a commit last year,
>>
>> https://github.com/openembedded/openembedded-core/commit/810aded01fc2ae=
2c27c2573135c20947453e50c6
>> which moved from using sourceforge to dl.bintray.com. I don't see a
>> reason in
>> the commit message but I suspect it was because sourceforge for some
>> reason did
>> not mirror 1.71.0. They have 1.70.0 and 1.72.0 but not 1.71.0. I opened
>>
>> https://sourceforge.net/p/boost/discussion/23622/thread/4fe1cce13b/?lim=
it=3D25#7d3e
>> to try and understand why this was.
>>
>> Given the download limitations of dl.bintray.com, does it make sense to
>> try
>> and move back to sourceforge? Someone also had recommended we just grab
>> from github (i.e.
>> https://github.com/boostorg/boost/archive/boost-1.71.0.tar.gz)
>>
>> This issue will reset on the first of the month but could come back and
>> bite
>> us again in the future. Anyone else hit this or looking into it?
>>
>> Andrew
>>
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--0000000000006b69cc05a22e1a9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That may be not a problem to us, but we could still a=
void to contribute to them hitting this limitation,</div><div>I guess that =
was part of the original point :)</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 31 mars 2020 =C3=A0=C2=
=A021:34, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">=
alex.kanavin@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I wouldn&#39;t be =
super concerned about that, as Yocto servers carry copies of oe-core tarbal=
ls, and there is a fallback for that scenario. If it does occur, we should =
explore alternatives, but there&#39;s no need to panic.</div><div><br></div=
><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, 31 Mar 2020 at 21:07, Andrew Geissler &lt;<a hr=
ef=3D"mailto:geissonator@gmail.com" target=3D"_blank">geissonator@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Greetings,<br>
<br>
Recently, the OpenBMC project started to hit<br>
<a href=3D"https://github.com/boostorg/boost/issues/299#issuecomment-59306=
4251" rel=3D"noreferrer" target=3D"_blank">https://github.com/boostorg/boos=
t/issues/299#issuecomment-593064251</a>. Basically<br>
the site that hosts the boost packages has a monthly download limit and on=
ce<br>
hit, starts to fail.<br>
<br>
There was a commit last year,<br>
<a href=3D"https://github.com/openembedded/openembedded-core/commit/810ade=
d01fc2ae2c27c2573135c20947453e50c6" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/openembedded/openembedded-core/commit/810aded01fc2ae2c27c2=
573135c20947453e50c6</a><br>
which moved from using sourceforge to <a href=3D"http://dl.bintray.com" re=
l=3D"noreferrer" target=3D"_blank">dl.bintray.com</a>. I don&#39;t see a re=
ason in<br>
the commit message but I suspect it was because sourceforge for some reaso=
n did<br>
not mirror 1.71.0. They have 1.70.0 and 1.72.0 but not 1.71.0. I opened<br=
>
<a href=3D"https://sourceforge.net/p/boost/discussion/23622/thread/4fe1cce=
13b/?limit=3D25#7d3e" rel=3D"noreferrer" target=3D"_blank">https://sourcefo=
rge.net/p/boost/discussion/23622/thread/4fe1cce13b/?limit=3D25#7d3e</a><br>
to try and understand why this was.<br>
<br>
Given the download limitations of <a href=3D"http://dl.bintray.com" rel=3D=
"noreferrer" target=3D"_blank">dl.bintray.com</a>, does it make sense to tr=
y<br>
and move back to sourceforge? Someone also had recommended we just grab<br=
>
from github (i.e. <a href=3D"https://github.com/boostorg/boost/archive/boo=
st-1.71.0.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://github.com/b=
oostorg/boost/archive/boost-1.71.0.tar.gz</a>)<br>
<br>
This issue will reset on the first of the month but could come back and bi=
te<br>
us again in the future. Anyone else hit this or looking into it?<br>
<br>
Andrew<br>
</blockquote></div>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" ta=
rget=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=
=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></=
div>

--0000000000006b69cc05a22e1a9f--
