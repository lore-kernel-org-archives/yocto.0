Return-Path: <luis.merayo@ridgerun.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C81C43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 20:56:51 +0000 (UTC)
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3090.1783717001561300171
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 13:56:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ridgerun.com header.s=google header.b=H0ygoZT4;
 spf=pass (domain: ridgerun.com, ip: 74.125.224.46, mailfrom: luis.merayo@ridgerun.com)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-667b9bee563so179518d50.3
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 13:56:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783717000; cv=none;
        d=google.com; s=arc-20260327;
        b=GXJCr4NLuOVdvx+MHF49qoIqVx9KAJmRDgPLb2xmnM/uOIyaXyg/KuI0TWpdAg5g27
         QiIdCm0t5Ifno/T60q6uaSkM48jaYEMn9oknCyMAnTep7J6N/a6L4rhca4XBohlYMG1t
         W+Y46pYxUoQClUee6Z9Ezlol2DCrDFvaOcQQ6zyJYxcXsTo/nlzsDSlWmMbnpnO9M05U
         M1ueBPvNtOR73oWOJXr1qIBnY1eVZr+fd4lxjmnE8yxBwtlyv/Yo1VBu9nOeCEkplrqd
         voxiqczCuN+69Iy388209+4wxNsFWC2N5kL+bz+lVjIhB2ZkO7+GHO8+UoKHm3sZMVwA
         N4XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HHmwRRjLF0/TULZ4o271PcN/55RPXT/FD2IDISTYAmQ=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=TX4RQ5XnWs34oZ1iynZYe3ifW/1QpfWOhBZSThKE0oYPKC4v4E9hYKuXxSpox10BRa
         TTA8VExD+NGE/h+bX5ntv+3x26aKXqwvHK4HqhzVTi3ySBz5RrNsbgzHEL/0uPe+jQgI
         cgxZjfsMasOD1y/joH27XYILNK8UY9IrNOzxa6btgJBGLgWmJsekJvf9ggCuvMPbY825
         cDqRIi7+YpQhTj3t7RZeFmZKlbulimX0+IUJPGBKrzTeOINdzcqy6lYJr6GFI8xROFDu
         7rUm1Rphl5bZ7pL3i7Hi7+b9/IgbNTn1dZ6NjorncqIx9ViGyw1wjyAJzkotLcmd588n
         8naw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ridgerun.com; s=google; t=1783717000; x=1784321800; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=HHmwRRjLF0/TULZ4o271PcN/55RPXT/FD2IDISTYAmQ=;
        b=H0ygoZT4JVg2G/218qwpusgc6TyuKEQsJoFc2lXiucYn/p2iOy8M2WpPlDjLPMs41s
         zuQfWd22N8bJcQl/9QFJ9jTCdfrG6c56ZxMqUyOX7rQS4HWsHYM90w0Vls8rHADF/wgQ
         F1T3DnPShUz2UcHyyVLpZhoaSrajTvAZuR06uFk3VG/UKwEKphGW9skG3ixZ5Z9/CNdM
         UFZBYSB7eGz9le0KBJsHSL4imADAat65dZOt2BFkjrL9vYTi0NKcNxmT+2DmIBW3cmQ/
         E4fKze4RMZIvuc6QdsdJg7SAOaxeI+0JQyIOJxs8WdJzDxSOuZ/hy4wugV/B/fR/kXXH
         3Jqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783717000; x=1784321800;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HHmwRRjLF0/TULZ4o271PcN/55RPXT/FD2IDISTYAmQ=;
        b=lD/ltk2EfM9haWEIP+0bQf0bdHibhWQDHPM+eBVrmZet1L6SMNWgR1i7ylDTEYN0y7
         O7WgIONHxZkz1u+QrhqBPRUr+/HBoOaAf1iKTRCSb4qEFYa37HBCpqu9PTZL9CNNlJ+Z
         ELgdy4znhAC2gIXZxG/z0LYJ4r3eDxVFihPb/mDTf+W2qaTcPtFS9rjt9iUfsOTtnDWA
         prmfXE10qt3k1eJ+CVwPBEmYKjUSgeSiO775o2ugYYtV9bQh7AOCiJEH/UVYyeupQ4ER
         P/3kGB6x2cxC2yV03T3pQmwLMrbYBO7bgrBGQRU3Xu6MI6w3/C8jGfYVeR1hYNvTpVUc
         g0rA==
X-Gm-Message-State: AOJu0Yyqg6yIvMQ8AfKtJBYD5t/CmKwVkI7dKTlaDE/l3mQPdKOT3V5a
	kuG/m3k44QFzaxxVd98ElMxbpC7JuH06eJOXdcdhEUtOneTW/m61pbrfTtt3rcVEZmk1099PIMw
	2a3sF+8khX13Gkjym+QuH6GUAbNjtC5l7JDzO5iQJrtFBXgZpwO2S2BJ0KkYNdx8dxvF0ixMpVd
	hhI2guMNgnMpG4MOKmuOLK+qBC66qsG/eEnyGsvJ3TEXGjkWb+
X-Gm-Gg: AfdE7cn/argWrP1upxk10Gbhf5ImB3JI4C+tWxEf0rC3/hT9K3mQ9WE+gB0oSMmcgR3
	yaE6UVXQypNIe5S9ZpJ5cXP33Ku4pUDlH9/NV/vtY2whuwa66SUS5b6yJwIOZEhOON+M7eLZigx
	F0PFmLNBgd+S4if2a3XUAPoCZdUi8EihmTsDkM1HEVIa5XRJjrL+LIC/NL8Da2O5CX9ERmGisRh
	dBqonZcnhpFnXlzOJwY3oBTNJpKD5gPVy7L8vSMv1fPhB8/ygAlZchGUFBEKg1VoSGDU2tuauLH
	XCKNsFkUlCwdxgz3BI0MMMJcm8A5pA==
X-Received: by 2002:a05:690e:458a:20b0:664:f227:385a with SMTP id
 956f58d0204a3-667d7cdec9amr503752d50.6.1783717000481; Fri, 10 Jul 2026
 13:56:40 -0700 (PDT)
MIME-Version: 1.0
From: Luis Merayo <luis.merayo@ridgerun.com>
Date: Fri, 10 Jul 2026 14:56:29 -0600
X-Gm-Features: AUfX_mzS6Ty4bgM-fRRQ3BICzMVxe5TgqA8UVl5U1Qozp7ZfgFOnh3zh9gkQuXE
Message-ID: <CAPGGCfqfv_HHdHZQzyVtV3_GJwxWH80FoQa3tJhOe+mfFoqgjw@mail.gmail.com>
Subject: Limiting Yocto Memory Usage
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000319e76065647fae9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 20:56:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66636

--000000000000319e76065647fae9
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to know if there is a way to limit Bitbake's Memory usage to a
specific percentage of the available RAM. For example, can the Yocto build
be limited to use a maximum of 70% of RAM?

Could these three variables be used to achieve this?

 BB_PRESSURE_MAX_CPU
<https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_CPU>
, BB_PRESSURE_MAX_IO
<https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_IO>
 , BB_PRESSURE_MAX_MEMORY
<https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_MEMORY>

I see the range for these variables is from 1 to 1000000, so I would like
to understand if there is a way to specify their values as a function of
the available RAM.

Regards,

Luis Orlando Merayo Gatica

Embedded Software Engineer

www.ridgerun.com <http://ridgerun.com>

LinkedIn <https://www.linkedin.com/company/ridgerun/> | X
<https://x.com/RidgeRunX> | YouTube
<https://www.youtube.com/@ridgerunengineering6760> | Products Catalog
<https://hubs.ly/Q02wR_H00>

-- 
 <https://ridgerun.ai/>
This email and any attachments are intended for the 
sole use of the named recipient(s) and contain(s) confidential information 
that may be proprietary, privileged, or copyrighted under applicable law. 
If you are not the intended recipient, do not read, copy, or forward this 
email message or any attachments, delete this email message and any 
attachments immediately.

--000000000000319e76065647fae9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font color=3D"#232e3c" face=3D"Work Sans, sans-serif=
" size=3D"4">Hi,<br><br>I would like to know if there is a way to limit Bit=
bake&#39;s Memory usage to a specific percentage of the available RAM. For =
example, can the Yocto build be limited to use a maximum of 70% of RAM?<br>=
<br>Could these three variables be used to achieve this?<br><br></font><spa=
n style=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-siz=
e:16px;background-color:rgb(252,252,252)">=C2=A0</span><a class=3D"gmail-re=
ference gmail-internal" href=3D"https://docs.yoctoproject.org/dev/ref-manua=
l/variables.html#term-BB_PRESSURE_MAX_CPU" style=3D"box-sizing:border-box;c=
olor:rgb(68,68,68);outline:0px;background:rgb(222,222,222);font-family:Verd=
ana,Sans,sans-serif;font-size:16px"><span class=3D"gmail-xref gmail-std gma=
il-std-term" style=3D"box-sizing:border-box">BB_PRESSURE_MAX_CPU</span></a>=
,=C2=A0<a class=3D"gmail-reference gmail-internal" href=3D"https://docs.yoc=
toproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_IO" style=
=3D"box-sizing:border-box;color:rgb(68,68,68);background:rgb(252,252,252);f=
ont-family:Verdana,Sans,sans-serif;font-size:16px"><span class=3D"gmail-xre=
f gmail-std gmail-std-term" style=3D"box-sizing:border-box">BB_PRESSURE_MAX=
_IO</span></a>=C2=A0,=C2=A0<a class=3D"gmail-reference gmail-internal" href=
=3D"https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRE=
SSURE_MAX_MEMORY" style=3D"box-sizing:border-box;color:rgb(68,68,68);backgr=
ound:rgb(252,252,252);font-family:Verdana,Sans,sans-serif;font-size:16px"><=
span class=3D"gmail-xref gmail-std gmail-std-term" style=3D"box-sizing:bord=
er-box">BB_PRESSURE_MAX_MEMORY</span></a><font color=3D"#232e3c" face=3D"Wo=
rk Sans, sans-serif" size=3D"4"><br><br>I see the range for these variables=
 is from 1 to=C2=A0</font><span style=3D"color:rgb(51,51,51);font-family:Ve=
rdana,Sans,sans-serif;font-size:16px;background-color:rgb(252,252,252)">100=
0000, so I would like to understand if there is a way to specify their valu=
es as a function of the available=C2=A0RAM.</span><font color=3D"#232e3c" f=
ace=3D"Work Sans, sans-serif" size=3D"4"><br><br>Regards,</font></div><div>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=
=3D"left"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=3D"left"><=
table style=3D"border:none;border-collapse:collapse"><colgroup><col width=
=3D"175"><col width=3D"9"><col width=3D"301"></colgroup><tbody><tr style=3D=
"height:105.98699999999998pt"><td colspan=3D"2" style=3D"border-left:solid =
#ffffff 1pt;border-right:solid #ffffff 1pt;border-bottom:solid #ffffff 1pt;=
border-top:solid #ffffff 1pt;vertical-align:middle;padding:5pt 5pt 5pt 5pt;=
overflow:hidden"><p dir=3D"ltr" style=3D"line-height:1.2;margin-right:1.5pt=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:13pt;font-famil=
y:&quot;Work Sans&quot;,sans-serif;color:rgb(35,46,60);background-color:tra=
nsparent;vertical-align:baseline"><span style=3D"border:none;display:inline=
-block;overflow:hidden;width:170px;height:61px"><img src=3D"https://lh7-rt.=
googleusercontent.com/docsz/AD_4nXdzRZwvuOFNi4jqDxGRVtBXtVItS4luQA3YqtI4MM4=
Nsadw5eIboI8Wxnn2TfhQmpiFcgQMMV4snk3zpI-c13p4lCUPFY9OaamBsMzPZ6b5XK-iTlohUD=
lGvDFSLr7HrwnDoewd260B_Gso98LJRCV-9ym6?key=3D-o2I1kBHE-f0uDWN-tHGwQ" width=
=3D"170" height=3D"61" style=3D"margin-left:0px;margin-top:0px"></span></sp=
an></p></td><td style=3D"border-left:solid #ffffff 1pt;border-right:solid #=
ffffff 1pt;border-bottom:solid #ffffff 1pt;border-top:solid #ffffff 1pt;ver=
tical-align:middle;padding:5pt 5pt 5pt 5pt;overflow:hidden"><p dir=3D"ltr" =
style=3D"line-height:1.2;margin-right:3.75pt;margin-top:0pt;margin-bottom:0=
pt"><font color=3D"#232e3c" face=3D"Work Sans, sans-serif"><span style=3D"f=
ont-size:12px">Luis Orlando Merayo Gatica</span></font></p><p dir=3D"ltr" s=
tyle=3D"line-height:1.2;margin-right:3.75pt;margin-top:0pt;margin-bottom:0p=
t">Embedded Software Engineer<br></p><br><p dir=3D"ltr" style=3D"line-heigh=
t:1.7999999999999998;margin-right:3.75pt;margin-top:0pt;margin-bottom:0pt">=
<a href=3D"http://ridgerun.com" target=3D"_blank"><span style=3D"font-size:=
8pt;font-family:&quot;Work Sans&quot;,sans-serif;color:rgb(35,46,60);vertic=
al-align:baseline">www.ridgerun.com</span></a></p><p dir=3D"ltr" style=3D"l=
ine-height:1.7999999999999998;margin-right:3.75pt;margin-top:0pt;margin-bot=
tom:0pt"><a href=3D"https://www.linkedin.com/company/ridgerun/" target=3D"_=
blank"><span style=3D"font-size:8pt;font-family:&quot;Work Sans&quot;,sans-=
serif;color:rgb(7,55,99);vertical-align:baseline">LinkedIn</span></a><span =
style=3D"font-size:8pt;font-family:&quot;Work Sans&quot;,sans-serif;color:r=
gb(7,55,99);vertical-align:baseline"> | </span><a href=3D"https://x.com/Rid=
geRunX" target=3D"_blank"><span style=3D"font-size:8pt;font-family:&quot;Wo=
rk Sans&quot;,sans-serif;color:rgb(7,55,99);vertical-align:baseline">X</spa=
n></a><span style=3D"font-size:8pt;font-family:&quot;Work Sans&quot;,sans-s=
erif;color:rgb(7,55,99);vertical-align:baseline"> | </span><a href=3D"https=
://www.youtube.com/@ridgerunengineering6760" target=3D"_blank"><span style=
=3D"font-size:8pt;font-family:&quot;Work Sans&quot;,sans-serif;color:rgb(7,=
55,99);vertical-align:baseline">YouTube</span></a><span style=3D"font-size:=
8pt;font-family:&quot;Work Sans&quot;,sans-serif;color:rgb(7,55,99);vertica=
l-align:baseline"> | </span><a href=3D"https://hubs.ly/Q02wR_H00" target=3D=
"_blank"><span style=3D"font-size:8pt;font-family:&quot;Work Sans&quot;,san=
s-serif;color:rgb(7,55,99);vertical-align:baseline">Products Catalog</span>=
</a><span style=3D"font-size:8pt;font-family:&quot;Work Sans&quot;,sans-ser=
if;color:rgb(7,55,99);vertical-align:baseline">=C2=A0</span></p></td></tr><=
/tbody></table></div><br></span></div></span></div></div></div></div>

<br>
<div><a href=3D"https://ridgerun.ai/" target=3D"_blank"><img src=3D"https:/=
/developer.ridgerun.com/wiki/images/thumb/5/57/RidgeRun.ai_banner.png/800px=
-RidgeRun.ai_banner.png?20260326200537" alt=3D"File:RidgeRun.ai banner.png"=
></a><span style=3D"color:rgb(0,0,0);font-family:&quot;Work Sans&quot;,sans=
-serif;font-size:9.33333px;text-align:justify"></span></div><font size=3D"1=
">This email and any attachments are intended for the sole use of the named=
 recipient(s) and contain(s) confidential information that may be proprieta=
ry, privileged, or copyrighted under applicable law. If you are not the int=
ended recipient, do not read, copy, or forward this email message or any at=
tachments, delete this email message and any attachments immediately.</font=
>
--000000000000319e76065647fae9--

