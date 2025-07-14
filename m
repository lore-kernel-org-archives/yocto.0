Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C1AC83F17
	for <webhook@archiver.kernel.org>; Mon, 14 Jul 2025 23:49:19 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.2384.1752536956162642253
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jul 2025 16:49:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=T862Dl9j;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3122368d7c4so4019177a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 16:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752536955; x=1753141755; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZMrtCJJXBSrkOf5BdYdjBHJMfgljgE0E9jkmdb8Iqeg=;
        b=T862Dl9j8jnqF+aQYUnlhMKPsflXQ1KnqG5eZcaCoO9R+MbKgJMZGYPre277LUN+CB
         2XJT2TlFxVkYXa1Y784dMowIa2WS58i32cAvPZUBvTo0C4rNbmaYVvO4gbOASvcXpLm7
         /nwpN752UUOJjvr7Dw4AGCA7iJoSmfjnFAi7X1mFeEMu9odz+sqnqp2GU73CVyJEi+Sx
         yJaZxN7Ly6Iz0WvEE+ZxgExz/4c975S8zTMoxImVNc3heaVVQ3LUI+4urCnBMvWM0xnj
         6syoN05G7stE6G72CDgQgUaXX70lDWCms/0fbY2T+DeL6ifYka8QVnC+xmhkaD7K2I0D
         CYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752536955; x=1753141755;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZMrtCJJXBSrkOf5BdYdjBHJMfgljgE0E9jkmdb8Iqeg=;
        b=BPX6tjjTVJeM2llXdMl5ozuXGvPzyHTNbnhAwQeQ8fxYS1PLRs1YJyR8XGhuArThb6
         ASIKHL1YrrAbvjc9hMlVcO9OTOh0JXClwoqbM4oCRA/w0CR+4cq2HBc147BU7HAP9Zko
         SkFa+0Yj+xS7ToYENzkutH+DZySS0kHl6CCQYYcHv0H7auDTZKrCgvwwPSOENmmjI0f2
         rh7huv7wCh5zihwer3VVREBFvbU7+tZbb669puP/z9Bcv7TaEEeTdb7+VwvbSk2pKnn/
         z2IWfFQ9jSlmXDxWfNEkHaAQHJvsKlu76bN8NyMPFyU7BJx+tbwLjGE3lGHj/1UtLSvm
         yDqw==
X-Gm-Message-State: AOJu0YxcH0at0B3B6FxA1049+Uf49CPT4HP/NNtDxnum0d+Dna3wiX66
	8j/DMH07KUuQnG1RwR/RN2VfHFJ4ObztdoUrocKjUmh1bkZ441kpcTsYM/YTFP0peybjEN2zzoV
	cJvOkGSAoUAWUTvVV88IvHtQb7BXPAVVDAqBg2qI=
X-Gm-Gg: ASbGncvG0RQuXMWuDdYegGIEu97PB/7Wq+hUNciRC1vFI1pfuLLTdOPhKXIVYxa18RS
	zSJl/tyJZyXXa1y4LYJJHB87OB/KPOM8EphNnngHRUCXp5z++g5AxTPxQI+pX7kRe6bK8ARpXho
	O4nDl8U2QwH1pM54x7lkHP9KGYfAlShaGQiZoe/S9R7r1MBIZyaB3/8rVTw+mE0emgYTS5SKNmQ
	Ek4kOB/14ZNF1Rcus6rm8eKXRfSv+6SgjXLyzljTA==
X-Google-Smtp-Source: AGHT+IHpPonU355ivwL+RY0WzF9F6xFtLtK9P+/zr5zkyStRWBZu0FyjnZNpyBbFTfOgJ1RcyDVdJbbo+j5YC2GJajE=
X-Received: by 2002:a17:90b:4fce:b0:312:e6f1:c05d with SMTP id
 98e67ed59e1d1-31c50d5e58dmr20302203a91.2.1752536955237; Mon, 14 Jul 2025
 16:49:15 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Jul 2025 16:49:04 -0700
X-Gm-Features: Ac12FXxJYc4lgvZfhQflI1X-As9wWORjtFP9mfVBIYqi4V-GUyw-KNQmsf3rhZM
Message-ID: <CAK5yBb92Emoo=pH3hq4Mrnv9_4bpFqBw2rdjk19ro6tWPs9FLQ@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ac38b90639ec4ebf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 23:49:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65655

--000000000000ac38b90639ec4ebf
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 22 bug owners as of the end of WW28 who have open
medium or higher bugs and enhancements against YP 5.3. There are 62
possible work days left until the final release candidates for YP 5.3 needs
to be released.
Who Count
ross.burton@arm.com 28
bruce.ashfield@gmail.com 24
richard.purdie@linuxfoundation.org 23
tgamblin@baylibre.com 22
randy.macleod@windriver.com 17
tim.orling@konsulko.com 11
david.reyna@windriver.com 9
yoann.congal@smile.fr 7
JPEWhacker@gmail.com 7
pavel@zhukoff.net 6
Yash.Shinde@windriver.com 4
mingli.yu@windriver.com 4
sundeep.kokkonda@windriver.com 2
raj.khem@gmail.com 2
mhalstead@linuxfoundation.org 2
Harish.Sadineni@windriver.com 2
william.lyu@windriver.com 1
twoerner@gmail.com 1
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
Qi.Chen@windriver.com 1
bbergquist@canogaperkins.net 1
Grand Total 176

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ac38b90639ec4ebf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 22 bug owners as of the end of WW2=
8 who have open medium or higher bugs and enhancements against YP 5.3.   Th=
ere are 62 possible work days left until the final release candidates for Y=
P 5.3 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D=
"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" s=
tyle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bor=
der-collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=
=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px=
 solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;bac=
kground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">28</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.a=
shfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">24</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfo=
undation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">23</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">22</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">17</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kons=
ulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">davi=
d.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">9</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.=
fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">7=
</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmai=
l.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>7</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff=
.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@windr=
iver.com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mingl=
i.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:sundeep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfounda=
tion.org</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">H=
arish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">2</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:william.lyu@=
windriver.com">william.lyu@windriver.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
twoerner@gmail.com">twoerner@gmail.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tv=
gamblin@gmail.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:to=
ni.lammi@tl-software.fi">toni.lammi@tl-software.fi</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:bbergquist@canogaperkins.net">bbergquist@canogaperkins.net=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand T=
otal</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weigh=
t:bold;text-align:right">176</td></tr></tbody></table><p class=3D"MsoNormal=
" style=3D"background-image:initial;background-position:initial;background-=
repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif"=
>Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>

--000000000000ac38b90639ec4ebf--

