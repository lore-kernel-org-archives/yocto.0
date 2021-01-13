Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.11160.1610557063408043360
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 08:57:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GQ1UE07I;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id d9so5500961iob.6
        for <yocto@lists.yoctoproject.org>; Wed, 13 Jan 2021 08:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H6bo78jsqCcemat6XWyYROAi8XqcgSa89FX07AOIjrg=;
        b=GQ1UE07IekLr5cKj3hC5dFH7kqWrMUS+FXZWFdmJw7IRjPQrbf4A+6iYzGazY3GKnJ
         bbgLrmMastrr3505QLfVzy/hUDTxqSL25pSuz/uDbMGaeZY7woOl+wzSwnpt3nmmwATE
         Jm3JDAOmST8L0FAv735xre9SGmNQrZS7aViLbTveKyClJ+9zPPDat69AjnAJKL8yECTs
         t+wCAL8dcIkZHYryEyR7d4ds5wVfl5U5O14dd8NqTg6ejMNEO5Dr69bCLNY4coJCgT+t
         iBeLqsHExyYR6TFMUkVbiuRl9IVqkbsIiHcum/9SFaPvnf7ffWwETEh7C8lctG611PXw
         udfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H6bo78jsqCcemat6XWyYROAi8XqcgSa89FX07AOIjrg=;
        b=Yu+fLNUVfnKZvSK7jU9p4+OGz3GPl/byzaOXkauZoXE7P1ZbjbHFtYNQ/p2XtS/V/Y
         xZLw09HOhes9fnZ9xwgA1F4R9jUU2vTegOyToG/vlmFbExLRlfvNMjohOaMo9sjLZwPe
         GtbzSHmu7LtXFqhMTx4NtNSlF1+pOtShGmpWKGTQf4a7uv1OTNDbIUCXhLj7P9Qx0ljH
         qjD1zcET22obVcEEKxJ/haRKbuZGkdqIWxdzL9qcQN53yF8pM5UYRwz2dxVu5+xns9OY
         Jv3m6rqlN1017ypy6a+u78JdPsjPNtnYhf4HWyAl+xrMCyNnmmBHxWnIQ5fVN/r5jaJK
         Bn8g==
X-Gm-Message-State: AOAM532PK4DqBAjSVt5jRuX+YDm8LcGrPpKY1uIFSMsrdcC0xPt1QP9z
	OZ4moDroLwhP7YqpgxhNkU5TKk9gEMpSllMlMUk=
X-Google-Smtp-Source: ABdhPJz23dVwE0W03uccYl2Tvk7vB5e4DFJk1PFQpM8NPMeoz3LJKMRCwlOtO2rEyWXmMjFHhe+BbMG71q7SGH687vQ=
X-Received: by 2002:a05:6602:106:: with SMTP id s6mr2508566iot.17.1610557062706;
 Wed, 13 Jan 2021 08:57:42 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dXasA=Q4vjDXza9N36K=yZ68REiSTXEtTitbta3E71aUQ@mail.gmail.com>
 <DM6PR17MB2474AD2BC28614101A2F9F90F8AB0@DM6PR17MB2474.namprd17.prod.outlook.com>
 <165966CABC487B39.2531@lists.yoctoproject.org>
In-Reply-To: <165966CABC487B39.2531@lists.yoctoproject.org>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Wed, 13 Jan 2021 22:27:31 +0530
Message-ID: <CACX=-dWsEAgfAaVaBHYGM276=Rcsfag0d8Cp+1aYRNJC0PCHww@mail.gmail.com>
Subject: Re: [yocto] BITBAKE HANGS
To: uppadaravi2511@gmail.com
Cc: "Davis, Michael" <michael.davis@essvote.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009cf9c805b8cb09a0"

--0000000000009cf9c805b8cb09a0
Content-Type: text/plain; charset="UTF-8"

Hello guys,

            I have done with installing the qtwebengine.But iam having some
trouble in how to configure the qtbrowser from the qtwebengine.I am using a
GUI based core-image-sato image. So please guide me on how to configure the
browser in this particular image.

Thanks,
ravi uppada.

On Tue, Jan 12, 2021 at 11:32 AM U RAVI KUMAR via lists.yoctoproject.org
<uppadaravi2511=gmail.com@lists.yoctoproject.org> wrote:

> Hello Davis,
>
>               I will try using 16 GB ram. Thank you very much for your
> response.
> Thanks,
> ravi uppada.
>
> On Mon, Jan 11, 2021 at 11:18 PM Davis, Michael <michael.davis@essvote.com>
> wrote:
>
>> QTWebengine needs a considerable amount of RAM to compile and link
>> relative to the rest of Yocto.
>>
>> Normally around 12-16GB.  Less than that and the system tends to hang.
>>
>>
>>
>>
>>
>>
>>
>> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
>> Behalf Of *U RAVI KUMAR via lists.yoctoproject.org
>> *Sent:* Monday, January 11, 2021 11:25 AM
>> *To:* yocto@lists.yoctoproject.org
>> *Subject:* [yocto] BITBAKE HANGS
>>
>>
>>
>> hi guys,
>>
>>
>>
>>  I have encountered with a problem.I have built a custom linux for
>> raspberrypi and included
>> meta-openembedded,meta-raspberrypi,meta-qt5,meta-python2 layers and
>> compiled on the bitbake. it is working fine.
>>
>> I have added recipe "qtwebengine" , here i have encountered an issue i.e
>> the system hangs. only while compiling qtwebengine system hangs.Can anyone
>> suggest me the solution.So that i canovercome and proceed fiurther..
>>
>>
>>
>> Thanks and regards,
>>
>> ravikumar
>>
>>
>> * CONFIDENTIALITY NOTICE:*
>>
>> This e-mail transmission and any documents, files or previous e-mail
>> messages attached to it may contain information that is confidential,
>> protected by the attorney/client or other privileges, and may constitute
>> non-public information. It is intended to be conveyed only to the
>> designated recipient(s) named above.
>>
>> Any unauthorized use, reproduction, forwarding, distribution or other
>> dissemination of this transmission is strictly prohibited and may be
>> *unlawful.* If you are not an intended recipient of this email
>> transmission, please notify the sender by return e-mail and permanently
>> delete any record of this transmission. Your cooperation is appreciated. To
>> find out more Click Here <http://www.essvote.com/legal/>.
>>
>
> 
>
>

--0000000000009cf9c805b8cb09a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello guys,</div><div><br></div><div>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I have done with insta=
lling the qtwebengine.But iam having some trouble in how to configure the q=
tbrowser from the qtwebengine.I am using a GUI based core-image-sato image.=
 So please guide me on how to configure the browser in this particular imag=
e.</div><div><br></div><div><span class=3D"gmail-im"><div>Thanks,</div><div=
>ravi uppada.</div></span></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 12, 2021 at 11:32 AM U RAVI KUM=
AR via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a>=
 &lt;uppadaravi2511=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">g=
mail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Davis,<div><br></d=
iv><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I will try using 1=
6 GB ram. Thank you very=C2=A0much for your response.</div><div>Thanks,</di=
v><div>ravi uppada.</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Jan 11, 2021 at 11:18 PM Davis, Michael &l=
t;<a href=3D"mailto:michael.davis@essvote.com" target=3D"_blank">michael.da=
vis@essvote.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">



<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal">QTWebengine needs a considerable amount of RAM to c=
ompile and link relative to the rest of Yocto.<u></u><u></u></p>
<p class=3D"MsoNormal">Normally around 12-16GB.=C2=A0 Less than that and t=
he system tends to hang.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D=
"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopr=
oject.org</a>&gt;
<b>On Behalf Of </b>U RAVI KUMAR via <a href=3D"http://lists.yoctoproject.=
org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Monday, January 11, 2021 11:25 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] BITBAKE HANGS<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">hi guys,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0I have encountered with a problem.I have buil=
t a custom linux for raspberrypi and included meta-openembedded,meta-raspbe=
rrypi,meta-qt5,meta-python2 layers and compiled on the bitbake. it is worki=
ng fine.
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have added recipe &quot;qtwebengine&quot; , here =
i have encountered an issue i.e the system hangs. only while compiling qtwe=
bengine system hangs.Can anyone suggest me the
<a href=3D"http://solution.So" target=3D"_blank">
solution.So</a> that i canovercome and proceed fiurther..<u></u><u></u></p=
>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks and regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ravikumar<u></u><u></u></p>
</div>
</div>
</div>


<br><br><p style=3D"font-family:Verdana;font-size:10pt;color:rgb(102,102,1=
02)"><b>
CONFIDENTIALITY NOTICE:</b></p><p style=3D"font-family:Verdana;font-size:8=
pt;color:rgb(102,102,102)">This e-mail transmission and any documents, file=
s or previous e-mail messages attached to it may contain information that i=
s confidential, protected by the attorney/client or other privileges, and m=
ay constitute non-public information. It is intended to be conveyed only to=
 the designated recipient(s) named above.<br><br>Any unauthorized use, repr=
oduction, forwarding, distribution or other dissemination of this transmiss=
ion is strictly prohibited and may be <b>unlawful.</b> If you are not an in=
tended recipient of this email transmission, please notify the sender by re=
turn e-mail and permanently delete any record of this transmission. Your co=
operation is appreciated.


To find out more <a href=3D"http://www.essvote.com/legal/" target=3D"_blan=
k">Click Here</a>.</p></div>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000009cf9c805b8cb09a0--
