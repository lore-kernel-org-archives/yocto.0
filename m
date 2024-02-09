Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A344AC4828F
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 09:44:45 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.7963.1707471884837725870
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 01:44:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VWvJFFaO;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a29c4bbb2f4so87387366b.1
        for <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 01:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707471883; x=1708076683; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xE0gL3yEsBDDVsoHfpsvTo2AcIItDuAcydeAw44gjgo=;
        b=VWvJFFaOy4ibo+9+QHZXGqCawSIqKgkZjrIG6AsFr41OG4e7X0Hld8974EipUCb4ov
         ofV2tpo3nTcx6EG1FPEy5vX6/8I/EBz/g9Yn8HT0iLLt9Ny5/crI3xjM1XILOm0reuWF
         0gpcV6pFkAMOlOh88IftMgmkeV8/Ex3CFhLPSuT4/VfxA2RE/qcxZSvT7Po8lP9beOiW
         PuKQ4DklG6mHK4q6ot1Qie+veZnsms92Mz/lZft9EooEBRXtv9sWzrbZnQgnUZO90LmU
         QvDNReZ7jdErz4Gk0B3ADapu6viFqo6HwY8JBtLgwYvF4XOJi9NtTi4dBywFcnVCNGvv
         Aflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707471883; x=1708076683;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xE0gL3yEsBDDVsoHfpsvTo2AcIItDuAcydeAw44gjgo=;
        b=j6a/6ULz/hWue/WPL733HxKMY9ezAmx0N6nLnSm/DUed52gOn5UROdOmn3yF726P6V
         nS589uQLeHYt8XCuElQ4tB6iWu++Slt8PfOB0ydkJoB+Bfo4hOMDuREURC34OHQi0EFn
         GesOBQuNp+d/SY7o9AUxrsN9xpX7cEW9lxF3YZ48qBVyIjbcGRqaABQ65cs0sI4Eqloe
         x7N3A5DzZk0xBOQNRoM26ZW7H9xe1Hpdtq53R+TUPzonTlr/ogFOBb6SCe3nhXPTKefU
         ca7fZfaUovT7VzeaAjGDduQ0bwtkMYPkxYEW5/31PYOLHK9d3aUW2SG256KeES7p1XfZ
         dTpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhnnZySckaEpTxTtJOzQeaqAxwe3iiitIKTI78NB+0a5yCSqMkbc36xG5VTbRxiGUrNsZ8qf5U0QvOPMeDAFdwuJ8NpKUMav7y3VVE
X-Gm-Message-State: AOJu0YwDR3AbE5s+sm0Cdfj8O69E/252sFRp7FHhDWnUZEokNyezLPef
	TW07ZWMANLU0OUPDZqDApg95SimDn2zcYH70RRKwy/smTNS9ayC4pV+0KozVCty7nFUb6Jq2Kva
	JIl0AK5MZGvHYmIfbKp5mUCQvFxCJLH39
X-Google-Smtp-Source: AGHT+IH6DumFz3y7zOdMeo0dbuatUBxjlMP2GRNwknLfYA/Y3pS2mQuM96i5j4hkSr/461AXmdUWp9QppniwEN4cBvE=
X-Received: by 2002:a17:906:b753:b0:a36:71c1:468c with SMTP id
 fx19-20020a170906b75300b00a3671c1468cmr625917ejb.62.1707471882969; Fri, 09
 Feb 2024 01:44:42 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBngiASed1Y9WaKCSj+t10S=2X6XoQQVC6HRyQAGk6+jmyQ@mail.gmail.com>
 <CAMjhiJgbRoSXpDeAAE7ZEOA+kHO3E0Bb5O3yP70u7-Q7j8c1Ag@mail.gmail.com>
In-Reply-To: <CAMjhiJgbRoSXpDeAAE7ZEOA+kHO3E0Bb5O3yP70u7-Q7j8c1Ag@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 9 Feb 2024 15:14:31 +0530
Message-ID: <CAPJWBni34yfVKMMtebxMBScw2UP=Wccj6-Pws8BM=+gdLP=BAw@mail.gmail.com>
Subject: Re: [yocto] Moving yocto SDK to GIT
To: Leon Woestenberg <leon@sidebranch.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000c67570610efc7bc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 09:44:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62444

--0000000000000c67570610efc7bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Leon,
Thanks for the inputs.
Also my entire kernel and source code does amount to around 25 GB. I think
that shouldn't be a problem.

Regards,
Hassan


On Fri, Feb 9, 2024 at 3:06=E2=80=AFPM Leon Woestenberg <leon@sidebranch.co=
m> wrote:

> Hello Hassan,
>
> On Fri, Feb 9, 2024 at 7:10=E2=80=AFAM MOHAMMED HASSAN <hassanchattarki@g=
mail.com>
> wrote:
>
>> Hi guys,
>> Apart from all the meta-layers, do you guys think it's a good idea to
>> move the downloads, sstate cache and the .conf files of build dir to GIT=
?
>>
>> I think by looking at what GIT tool is for, the general answer is:
>
> downloads: No.
> sstate cache: No.
>
> Because GIT is meant to maintain *source* *code* trees, putting binaries
> in it is generally regarded as not the right tool for the job.
>
> .conf files: Yes, probably, in your build project. (I personally keep
> programming source code apart from build configuration source code.)
>
> Cheers,
>
> Leon.
>

--0000000000000c67570610efc7bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Leon,<div>Thanks for the inputs.=C2=A0</div><div>Also m=
y entire kernel and source code does amount to around 25 GB. I think that s=
houldn&#39;t=C2=A0be a problem.</div><div><br></div><div>Regards,</div><div=
>Hassan</div><div>=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 9, 2024 at 3:06=E2=80=AFPM Leon W=
oestenberg &lt;<a href=3D"mailto:leon@sidebranch.com">leon@sidebranch.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0)"=
>Hello Hassan,</div><div style=3D"color:rgb(0,0,0)"><br></div></div></div><=
/div></div></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Feb 9, 2024 at 7:10=E2=80=AFAM MOHAMMED HASSAN &lt;<a =
href=3D"mailto:hassanchattarki@gmail.com" target=3D"_blank">hassanchattarki=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi guys,<br><div>Apart from all the meta-layers=
, do you guys think it&#39;s a good idea=C2=A0to move the downloads, sstate=
=C2=A0cache and the .conf files of build dir to GIT?</div><div><br></div></=
div></blockquote><div>I think by looking at what GIT tool is for, the gener=
al answer is:</div><div>=C2=A0<br></div><div>downloads: No.</div><div>sstat=
e=C2=A0cache: No.</div><div><br></div><div>Because GIT is meant to maintain=
 *source* *code* trees, putting binaries in it is generally regarded as not=
 the right tool for the job.</div><div><br></div><div>.conf files: Yes, pro=
bably, in your build project. (I personally keep programming source code ap=
art from build configuration source code.)</div><div><br></div><div>Cheers,=
</div><div><br></div><div>Leon.</div></div></div>
</blockquote></div>

--0000000000000c67570610efc7bc--

