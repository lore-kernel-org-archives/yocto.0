Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88177D1CDD0
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 10:11:54 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.15032.1729591910868080529
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Oct 2024 03:11:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FA8ErGHl;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539983beb19so6043159e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 03:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729591909; x=1730196709; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DwtTjt1NV9AryOfs0ik1XroNEfxSSNaewDDet2idqxk=;
        b=FA8ErGHlh9RU3DLAf88E3s8cwJ4R6DofJ6B2paj0gEDPvs6yHvv2reXFv/hYPTRL8B
         ThuZjDFbZ2t7zqr/yD6KkUsajf+GX+2XVup/jUIwcJwYbe6qGh5DtBd+iKQI+fY4zbHr
         l9sC2/KBImcejeQ/sM+OokG3B/Q1vJx5alxTg1wrNyRzgIBPyRAanELQHQDaPmUIM+rH
         lTnsY8rizYVtwvOEYAuaMc6GBlW2sjn9/1VxPP5iFpcbVdPBQpxitKuEzgk/vyU6D0Ix
         owSXHN7yetiV8aU1p/kkPALMYMT0QJfBiWsAxFdayHw6XUDbbVzsfEu+sdx2Sp6AefPv
         qnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729591909; x=1730196709;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DwtTjt1NV9AryOfs0ik1XroNEfxSSNaewDDet2idqxk=;
        b=YF5flk5mufj3xBFtXjZij/2FhKLICWcoqn+jFa0H6tiNNnkGrvssx7ZT3bMc9JcqmF
         HE6uV0d+TSmmSSB80sWu15DS+2omtW4P915JQd9q9k/LBu38TW5gEDXzP8B4in0tvxz7
         OSPKfEYA1RPPCD0HsKIA1hlwHwmMKaS/P+kN7rug/rQtrZBIyzatH/uls0hGgl6oZGyQ
         XsIJaZohLU7SvzJVUFSPUOXhzYlBoRn3tRsDfGN785KlrNPw/d5ZG0tUHQnCf40B0gcn
         vpOvo6GHGr6S5PdvM7dukG4qMolFAti3a8RgudbOuor+5rasdJElXUa/zhpNxQlImvw3
         fCWw==
X-Gm-Message-State: AOJu0Ywc0j4lhmfXh4RDWWhkvq3eXVyNCKrp6CHl/Mr1/9k16AxHRu/k
	dpQdeBKP39pv3nV9SpEPswaSJhokx5JdFhh8hAqh3eE9CHfI6nFGT3LicFTgMy132OC7/azZDYH
	nO4C1ndZeLfWSkFTAYYjslMH85OHHoQ==
X-Google-Smtp-Source: AGHT+IFEX2xzJGaaKtWjOCesnaOdJ+98rxTl/OtpVqomRX/RgjoR5ElXUjmSfeIwBNjiAb9NbZetLvxasUojVQWLNBY=
X-Received: by 2002:a05:6512:b8f:b0:539:f4c1:71d3 with SMTP id
 2adb3069b0e04-53b13a04029mr1119792e87.29.1729591908677; Tue, 22 Oct 2024
 03:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
 <CAB3asfjOAOcZFBvZB65b_z3EuXx6ryMwB094DWSO8mQUBqkfFQ@mail.gmail.com> <CA+Kjy2yHFUY6b=OYzKzqShrzujsSsc3KWXkC=zR9mO1MF71yCA@mail.gmail.com>
In-Reply-To: <CA+Kjy2yHFUY6b=OYzKzqShrzujsSsc3KWXkC=zR9mO1MF71yCA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Oct 2024 12:11:36 +0200
Message-ID: <CANNYZj8boptuuKddSarLFnMqKwt=7aOP6FsNJ_MGQNYcPeNjNA@mail.gmail.com>
Subject: Re: [yocto] reading tgz file and uncompress in rootfs
To: yocto@lists.yoctoproject.org, umeshyv@gmail.com
Content-Type: multipart/alternative; boundary="00000000000052c0ad06250dff5a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 10:11:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64082

--00000000000052c0ad06250dff5a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

If you do not understand something, formulate a question, and make it as
specific as you can. Show that you're an active learner, and capable of
independently figuring out things without being handed a complete solution.

Do not ask to write you a complete personal tutorial: it's almost certain
you will not get any response at all. I have to remind you that we're all
unpaid volunteers; you, on the other hand, are presumably paid to solve
this problem.

Thanks,
Alex

On Tue, 22 Oct 2024 at 11:54, umeshyv via lists.yoctoproject.org <umeshyv=
=3D
gmail.com@lists.yoctoproject.org> wrote:

> Hi Alex
>
> Can you please elaborate on this, I did multiple attempts and being new t=
o
> this, finding solutions.
>
> Thanks
>
> On Tue, 22 Oct 2024, 01:43 Adrian Freihofer, <adrian.freihofer@gmail.com>
> wrote:
>
>>
>>
>> umeshyv via lists.yoctoproject.org <umeshyv=3D
>> gmail.com@lists.yoctoproject.org> schrieb am Mo., 21. Okt. 2024, 18:30:
>>
>>> Hi, I have requirement where recipe file reads set of .tgz files and it
>>> should store in a location in rootfs and untar them(on freescale board)=
.
>>> Can you please show some pointers.
>>>
>>> SUMMARY =3D " Tools"
>>> LICENSE =3D "CLOSED"
>>>
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>>
>>> SRCREV =3D "${AUTOREV}"
>>>
>>> SRC_URI =3D "file://tool1.tgz
>>> file://tool2.tgz
>>> file://tool3.tgz
>>> file://tool4.tgz"
>>>
>> The default behavior for tar files is to download them (do_fetch task)
>> and then extract them into WORKDIR (do_unpack task) or into UNPACKDIR if
>> you are on a very new Yocto version.
>>
>> That mean do_install should probably copy files but not call tar. It's
>> simpler than what you are trying :=E2=81=A0-=E2=81=A0).
>>
>> You can see what folder structure each of the tasks creates if you look
>> into the WORKDIR of this recipe. You can find WORKDIR e.g. with
>> bitbake-getvar -r recipe-name WORKDIR
>>
>> Adrian
>>
>>> do_install () {
>>> install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools
>>>
>>> for file in ${WORKDIR}/.tgz;do
>>>
>>> tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/<folder>
>>>
>>> done
>>>
>>> Alternatively instead of for loop tried below
>>>
>>> tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
>>> tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
>>> tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
>>> tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
>>>
>>> But when I build following is the error
>>>
>>> DEBUG: Python function extend_recipe_sysroot finished
>>> DEBUG: Executing shell function do_install
>>> tar (child): Cannot connect to file: resolve failed
>>> gzip: stdin: unexpected end of file
>>> tar: Child returned status 128
>>> tar: Error is not recoverable: exiting now
>>>
>>> Can you please suggest to resolve errors and provide solutions
>>>
>>> Thanks
>>>
>>>
>>>
>>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64081):
> https://lists.yoctoproject.org/g/yocto/message/64081
> Mute This Topic: https://lists.yoctoproject.org/mt/109136100/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000052c0ad06250dff5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div></di=
v><div>If you do not understand something, formulate a question, and make i=
t as specific as you can. Show that you&#39;re an active learner, and capab=
le of independently figuring out things without being handed a complete sol=
ution.<br></div><div><br></div><div>Do not ask to write you a complete pers=
onal tutorial: it&#39;s almost certain you will not get any response at all=
. I have to remind you that we&#39;re all unpaid volunteers; you, on the ot=
her hand, are presumably paid to solve this problem.<br></div></div><div><b=
r></div><div>Thanks,<br></div><div dir=3D"ltr"><div>Alex<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 22 Oct =
2024 at 11:54, umeshyv via <a href=3D"http://lists.yoctoproject.org" target=
=3D"_blank">lists.yoctoproject.org</a> &lt;umeshyv=3D<a href=3D"mailto:gmai=
l.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoprojec=
t.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"auto"><span style=3D"font-size:12.8px">Hi Alex</span><div =
dir=3D"auto" style=3D"font-size:12.8px"><br></div><div dir=3D"auto" style=
=3D"font-size:12.8px">Can you please elaborate on this, I did multiple atte=
mpts and being new to this, finding solutions.=C2=A0</div><div dir=3D"auto"=
 style=3D"font-size:12.8px"><br></div><div dir=3D"auto" style=3D"font-size:=
12.8px">Thanks=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, 22 Oct 2024, 01:43 Adrian Freihofer, &lt;=
<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D"_blank">adrian.frei=
hofer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">umeshyv via <a href=3D"http://lists.yoc=
toproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org<=
/a> &lt;umeshyv=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" rel=
=3D"noreferrer" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; =
schrieb am Mo., 21. Okt. 2024, 18:30:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Hi, I have requirement where recipe file rea=
ds set of .tgz files and it should store in a location in rootfs and untar =
them(on freescale board). Can you please show some pointers.</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">SUMMARY =3D &quot; Tools&quot;<br style=3D"o=
utline:none">LICENSE =3D &quot;CLOSED&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR=
}/files:&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">SRCREV =3D &quot;${AUTOREV}&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">SRC_URI =3D &quot;file://tool1.tgz<br style=
=3D"outline:none"><a style=3D"outline:none;color:rgb(0,82,204)" rel=3D"nofo=
llow noopener noreferrer noreferrer">file://tool2.tgz</a><br style=3D"outli=
ne:none"><a style=3D"outline:none;color:rgb(0,82,204)" rel=3D"nofollow noop=
ener noreferrer noreferrer">file://tool3.tgz</a><br style=3D"outline:none">=
<a style=3D"outline:none;color:rgb(0,82,204)" rel=3D"nofollow noopener nore=
ferrer noreferrer">file://tool4.tgz</a>&quot;</p></div></blockquote></div><=
/div><div dir=3D"auto">The default behavior for tar files is to download th=
em (do_fetch task) and then extract them into WORKDIR (do_unpack task) or i=
nto UNPACKDIR if you are on a very new Yocto version.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">That mean do_install should probably copy fil=
es but not call tar. It&#39;s simpler than what you are trying :=E2=81=A0-=
=E2=81=A0).</div><div dir=3D"auto"><br></div><div dir=3D"auto">You can see =
what folder structure each of the tasks creates if you look into the WORKDI=
R of this recipe. You can find WORKDIR e.g. with</div><div dir=3D"auto">bit=
bake-getvar -r recipe-name WORKDIR=C2=A0</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Adrian</div><div dir=3D"auto"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">do_install () {<br style=3D"outline:none"><t=
t style=3D"outline:none">install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools</=
tt></p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">for file in ${WORKDIR}/.tgz;do</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share=
/&lt;folder&gt;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">done</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Alternatively instead of for loop tried belo=
w</p>
<div style=3D"outline:none;margin:9px 0px;padding:0px;border:1px solid rgb(=
193,199,208);background:rgb(244,245,247);font-size:12px;line-height:1.33333=
;font-family:monospace;border-radius:3px;color:rgb(17,17,17);font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;text-decoration-style:initial;text-decor=
ation-color:initial">
<div style=3D"outline:none;margin:0px;padding:9px 12px">
<pre style=3D"outline:none;margin:0px;padding:0px;max-height:30em;overflow:=
auto;white-space:pre-wrap">tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/us=
r/share/&lt;folder&gt;
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;</pre=
>
</div>
</div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">But when I build following is the error</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">DEBUG: Python function extend_recipe_sysroot=
 finished</p>
<div style=3D"outline:none;margin:0px;padding:0px;color:rgb(17,17,17);font-=
family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Oxygen,=
Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&qu=
ot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:nor=
mal;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial">
<table style=3D"outline:none;border-collapse:collapse;margin:5px 0px 5px 2p=
x;width:auto;word-break:break-all">
<tbody style=3D"outline:none">
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">DEBUG: Executing shell function do_install</td>
</tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">tar (child): Cannot connect to file: resolve failed</td>
</tr>
<tr style=3D"outline:none"></tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">gzip: stdin: unexpected end of file</td>
</tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">tar: Child returned status 128</td>
</tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">tar: Error is not recoverable: exiting now</td>
</tr>
</tbody>
</table>
</div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Can you please suggest to resolve errors and=
 provide solutions</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Thanks</p>
</div>
<br>
<br>
<br>
</blockquote></div></div></div>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64081): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64081" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64081</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109136100/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109136100/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</div>

--00000000000052c0ad06250dff5a--

