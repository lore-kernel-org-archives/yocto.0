Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
 by mx.groups.io with SMTP id smtpd.web12.5081.1596547034436974371
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 06:17:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FthoGuzH;
 spf=pass (domain: gmail.com, ip: 209.85.166.51, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f51.google.com with SMTP id j8so29764941ioe.9
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 06:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yo1YayEJoRkGpRkiBfnNuzGvGhdWr2rznZCjkRxnw+Y=;
        b=FthoGuzHRSdADp2U5YC8D1aDf8XgoY1NDJYTfVik9wj43lm/AxTyXiEqyeLWwi8IAp
         fFmlYiCCK9WHZNFw2S+BYfjjCalLfoqUJIY82bguvTCITnVnGR9/RuR/pkthxJFkQ5K5
         Kqc67ywFti9ulDsOrntbyEeX88hDwDSLGT+KzAo5wQtvPTfqy4Pr2X3j3SnCNMF0CEfU
         VBYKSvcPiOgGk2nPblEmN/Xy2bXxUrLz3PSVdcf6NKYt1wnmOgyKqdZHpNh0rsxF5Dbc
         c3uNNu5g8lQV7w5SZdWYZ0yDxpIUnZJeFc/EPvvDWJyO6pE0fLKfos73nuCbTpc1c6Y7
         c/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yo1YayEJoRkGpRkiBfnNuzGvGhdWr2rznZCjkRxnw+Y=;
        b=derfHrIqtUF/dcw9sQpLqOuOwOcCKeyPHi3OlkxmcpcZMpDZxU2b0k15xOzGhtsPJe
         prdPca4rbSnI3yCPaxFGKkIl9ezPulmUbQvgSKLZacUlM0H4X7wqSqirKb13DNQdc1Pk
         huKsty1/m0DX2XH1/gCvetwbUgl3J8cqTCpaGngxB0emSVRMDr3hf5ja4MIR9jWy2XH4
         p8qtzeKcmndcv22ijgHw2KAXnbX3D3m+Q5PzHENRMB7S5TVrPBWldCZdEeJ6IRDONhIy
         o/X3YwP32ooIUjvLoNxlup5vH6RxBoJIwKUPcAzdbncH3Ozcu5SXoziPUulcTgc3Xj1Z
         4BBA==
X-Gm-Message-State: AOAM532jNNj5kX+RIuZszpn8kysCcmzUFf1dLIuOwqRHpcgVhatDn+4c
	juJYAOZWdARNlKSPDmwfh9Qp1RAUX+vxRqUtRqc=
X-Google-Smtp-Source: ABdhPJxsbRE8pVD2BNTOeRWtmdmIFEwklUsoqpGSNNFDD5a7ZWP6Mr8zzX+eSriXaY0SkAGR48jYIUoAdkJqPfLE02E=
X-Received: by 2002:a5d:9b96:: with SMTP id r22mr5322107iom.66.1596547033951;
 Tue, 04 Aug 2020 06:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com> <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
In-Reply-To: <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Tue, 4 Aug 2020 09:17:02 -0400
Message-ID: <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d372f805ac0d120e"

--000000000000d372f805ac0d120e
Content-Type: text/plain; charset="UTF-8"

I am seeing the following error:
Gateway Timeout

Server error - server 198.145.29.63 is unreachable at this moment.

Please retry the request or contact your administrator.


Kindly help.


Regards,


Ripu

On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:

> Hi,
>
> It seems like Yocto is down again.
>
> http://downloads.yoctoproject.org/
>
> Could you please help solve this?
>
> Regards,
>
> Ripu
>
> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> It is working now.
>>
>> Thank you
>>
>> Regards,
>>
>> Ripu
>>
>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
>> mhalstead@linuxfoundation.org> wrote:
>>
>>> There was a brief outage while rebooting a storage device. The error
>>> should have been resolved several minutes ago. If you are still seeing this
>>> error please let me know.
>>>
>>> Michael Halstead
>>>
>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>
>>>> Also, I do see:
>>>>
>>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection refused.
>>>>
>>>>
>>>>
>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>>
>>>>> Hi,
>>>>>
>>>>> I tried to go into the following:
>>>>> http://downloads.yoctoproject.org/
>>>>>
>>>>> I get the following error:
>>>>>
>>>>> Host Not Found
>>>>>
>>>>> DNS error (the host name of the page you are looking for does not
>>>>> exist) or Server did not accept the connection.
>>>>>
>>>>> Please check that the host name has been spelled correctly.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Ripu
>>>>>
>>>> 
>>>>
>>>

--000000000000d372f805ac0d120e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am seeing the following error:<div><h1 style=3D"color:rg=
b(0,0,0);font-family:&quot;Times New Roman&quot;">Gateway Timeout</h1><p st=
yle=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font-size:m=
edium">Server error - server 198.145.29.63 is unreachable at this moment.<b=
r><br>Please retry the request or contact your administrator.</p><p style=
=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font-size:med=
ium"><br></p><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman=
&quot;;font-size:medium">Kindly help.</p><p style=3D"color:rgb(0,0,0);font-=
family:&quot;Times New Roman&quot;;font-size:medium"><br></p><p style=3D"co=
lor:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font-size:medium">Re=
gards,</p><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&qu=
ot;;font-size:medium"><br></p><p style=3D"color:rgb(0,0,0);font-family:&quo=
t;Times New Roman&quot;;font-size:medium">Ripu</p></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 2020=
 at 9:14 AM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com">eripflo@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>It seems like Yocto is down a=
gain.</div><div><br></div><div><a href=3D"http://downloads.yoctoproject.org=
/" target=3D"_blank">http://downloads.yoctoproject.org/</a>=C2=A0</div><div=
><br></div><div>Could=C2=A0you please help solve this?</div><div><br></div>=
<div>Regards,</div><div><br></div><div>Ripu=C2=A0<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2=
020 at 4:50 PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=
=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"auto">It is working now.=C2=A0<di=
v dir=3D"auto"><br></div><div dir=3D"auto">Thank you</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, =
&lt;<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank">mhal=
stead@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">There was a brief=C2=A0outage whi=
le rebooting a storage device. The error should have been resolved several =
minutes ago. If you are still seeing this error please=C2=A0let me know.<di=
v><br></div><div>Michael Halstead</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2020 at 1:38 PM FLora=
VLogs &lt;<a href=3D"mailto:eripflo@gmail.com" rel=3D"noreferrer" target=3D=
"_blank">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Also, I do see:<br><pre style=3D=
"box-sizing:border-box;white-space:pre-wrap;margin-top:0px;margin-bottom:0p=
x;font-size:14px;background:rgb(38,50,56);color:rgb(233,237,237);padding:10=
px 20px;font-family:&quot;Roboto Mono&quot;,monospace">Connecting to <a hre=
f=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank=
">downloads.yoctoproject.org</a> (<a href=3D"http://downloads.yoctoproject.=
org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctoproject.org</a>)|1=
98.145.29.63|:80... failed: Connection refused.

</pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=3D"mailto:erip=
flo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi,<div><br></div><div>I tried to go into the following:</div><d=
iv><a href=3D"http://downloads.yoctoproject.org/" rel=3D"noreferrer" target=
=
=3D"_blank"><span>http</span>://<span>downloads</span>.<span>yoctoproject<=
/span>.<span>org</span>/</a></div><div><br></div><div>I get the following e=
rror:</div><div>=C2=A0</div><h1 style=3D"color:rgb(0,0,0);font-family:&quot=
;Times New Roman&quot;">Host Not Found</h1><p style=3D"color:rgb(0,0,0);fon=
t-family:&quot;Times New Roman&quot;;font-size:medium">DNS error (the host =
name of the page you are looking for does not exist) or Server did not acce=
pt the connection.<br><br>Please check that the host name has been spelled =
correctly.</p><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roma=
n&quot;;font-size:medium">Regards,</p><p style=3D"color:rgb(0,0,0);font-fam=
ily:&quot;Times New Roman&quot;;font-size:medium">Ripu</p></div>
</blockquote></div>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000d372f805ac0d120e--
