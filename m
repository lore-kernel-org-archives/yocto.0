Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A744F54ABE
	for <webhook@archiver.kernel.org>; Tue, 24 Mar 2026 14:01:58 +0000 (UTC)
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20457.1774360908276742914
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2026 07:01:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=arp9cyn1;
 spf=pass (domain: gmail.com, ip: 74.125.82.172, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2c156c4a9efso365590eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2026 07:01:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774360907; cv=none;
        d=google.com; s=arc-20240605;
        b=Bav/4vcEeLt0PDIQ55ziDaW0MybwvnK73DndFIPIgUzbU8kbYmGS94z1vBDdDmHJ/n
         AXkdl7/kqwCcDAqyaypKxPi3EvEajhkMTNhr9wpkId2jGTDQgS8qF67vpdFYf1kdEHv7
         +2tg9Mg8ZDEsP6tCpnD10O9LlrssdCDDbyAWz00vLxvjIKbA87QPVniuOoqhoSfNZ2YR
         ZVRQ8N17BTxK0WNUtrDq5xGL4LAROyZDf5uqYsJ9Z8QYQtq6cPgC5gVun5m8KPd+bAPh
         6cwldjDWrOpgoUragfL1ld7EHuqXbJ0rAepdSvYZn4PsmtYXlHxNwmcMKNgf61jnz6G2
         vGNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Dz3yS5WAdYrQTRLLTsreSQumJfCMgVLJJb1pLPo/CfQ=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=CLZ4Ux/D2Q+8wfxyA3JzzymxpBGbuLNBQA82NbG/N+H327kMCfF82vF48nowodTH36
         JzlwDL440yLa9Szaes5r6BbBGx0cCg6KVZvAI9vnnT6d6w0NqFhbNHbjmW34hKtKEmB/
         k+3CWS0UQlTow4oWGLaEfuTnMkzEaOPIeYB28qoNm6azdU6vhaqesFteDHXFf4R2K2db
         RAbyhQf/jNwUsa1GzAsVrNVBkIlRAv4hsb8N5DsW0X5j50EXoGuzBflMtfhOFgDOmJH8
         /jLXvpPxcSflSZ9gYkL8lC7Ki/nxa6GASyfaMOXS4RRvThvGjJem60S2hlV+/xnVKykG
         l/MQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774360907; x=1774965707; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Dz3yS5WAdYrQTRLLTsreSQumJfCMgVLJJb1pLPo/CfQ=;
        b=arp9cyn10wvRc3jajvlzGuHQOUPwuc980ut0HLxQqJWn7imJvCAyRGc2fJfSJOCPFG
         ovzxkfXUzSUUIY+Z1YKLljwYXHSPdzzProsqLRfrAQzR7IoFPfs0eQ0oDDeBDDHezbIG
         tVOcsZPI5zuh6TeyvFXyQZSdRyc6zI7CrBOQqeWMAK9xFbZg/Cl9t/ufxU5utw+JCSIN
         Hu+6h2jj8hJYxTnL7RQpCXpp09rsp1pov9HZ3z68LKuRCHOrKCueWuxpXiNpM7vqC5sY
         oaU+o6LzC0LxJmPz5GOOIn29WP2rUUv/yJ6sERkN4laTg2/EbkOf1F52oE/KPDuQrfqJ
         2zMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774360907; x=1774965707;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dz3yS5WAdYrQTRLLTsreSQumJfCMgVLJJb1pLPo/CfQ=;
        b=eBvGESj2tQC7Dt2ptmb1bcGqnvA1a2OyCkdXuj0kgBeKGzkf1Iz/4N7M+uXs91iDYx
         lp8SmTlRFPAlw8O/SCXYxRIcodiJ2WHXY8sZc3YFDmMzRt5KfqAcy69lAf91qA+deevo
         uQyR0AbAduzzOxJt946G+Wnr8dYCeNan60VIYJaIOJXA2wtZeg+fBus4GHGRcQHZHOjK
         Qj4S9cB6CEgFUw5F9Qd0NxRuPelMqkXWRA1JrG9BvhPHNwyZazqdhn2sdDpM6tCrJKpS
         VJz7D5LBYBIGNfs1vH6pGs2I9SUxejqYATPMopxnlEh+MkYs9fgGVDWR2t1bBI2fuckw
         YJhg==
X-Gm-Message-State: AOJu0YyxqW6hfpkiTCxP32Hrp5OeHknEkK/6v44+y0awcpAU1qdoKXq6
	j07KRN1q690ohvv+1XEMA1LyuvZENooNaoCnveppvdQGWxnuk5fjQOU3u69PfGB70Y3GZxAQ3KA
	akOaZMujKG7TZZ9DncjZHINiG5qFoBTS6BfWa
X-Gm-Gg: ATEYQzyrtqg+P/h3GohpVPe1OVhZsxkteTiBKFQQI5G/I6nsyaAtEH5S9RU31nLgPjp
	w8X0zsagmZLBovDE3dM3lpEiiRRR0Sy6EHNYO5VzhrQkdTYYG16eL0eg3D1Hxuot4Gf+udAcwp9
	Fr5BTMTg8l6kwzv5WNtmU5s7QxJ7p90G/SfjgAkRzaejMkoAX+AlErH75d0BwxnfV9mglrO0xKJ
	Obj8F5/tK/OoBc10+sXsGEqCWeHTa3mjQr9bhTLcFtrr3Akya72cPShlzcaglxYJ/NGtvxSzhXv
	x6v/Jj3N9dVoIn2HKpVDWEmB7/EZsp8U00UeqllL9tU3OA/FR2i51Kree876+P0mDs2A8wSojcM
	5mk4nqazGTuIJV6/6nEGYPVjYyoA=
X-Received: by 2002:a05:7300:cb87:b0:2c0:ba91:48b6 with SMTP id
 5a478bee46e88-2c10976028cmr7483336eec.26.1774360907119; Tue, 24 Mar 2026
 07:01:47 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 24 Mar 2026 07:01:36 -0700
X-Gm-Features: AQROBzBx0BKw-XVkSTsyJJv48zlR6BvUyyy8DRpo3pI6sBe5QDNgmJAIcE9bs9I
Message-ID: <CAK5yBb90oGRr6YTqDWfXb81fC9+s0Hrepv7DnjX9z0t4DPR2Lw@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000928039064dc5973b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2026 14:01:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66349

--000000000000928039064dc5973b
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 24 bug owners as of the end of WW12 who have open
medium or higher bugs and enhancements against YP 6.0. There are 24
possible work days left until the final release candidates for YP 6.0 needs
to be released.
Who Count
ross.burton@arm.com 23
richard.purdie@linuxfoundation.org 22
bruce.ashfield@gmail.com 14
tgamblin@baylibre.com 12
tim.orling@konsulko.com 11
randy.macleod@windriver.com 10
david.reyna@windriver.com 9
yoann.congal@smile.fr 7
paul@pbarker.dev 6
JPEWhacker@gmail.com 6
sundeep.kokkonda@windriver.com 4
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
Harish.Sadineni@windriver.com 3
twoerner@gmail.com 1
toni.lammi@tl-software.fi 1
Qi.Chen@windriver.com 1
peter.kjellerstedt@gmail.com 1
mhalstead@linuxfoundation.org 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
denis@denix.org 1
ankur.tyagi85@gmail.com 1
Grand Total 145

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000928039064dc5973b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 24 bug owners as of the end of WW1=
2 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 24 possible work days left until the final release candidates for Y=
P 6.0 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail=
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
adding:0px 3px;vertical-align:bottom;text-align:right">23</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.or=
g">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">22</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:br=
uce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">14</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">12</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">11</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windr=
iver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><tr st=
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
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.de=
v">paul@pbarker.dev</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com"=
>JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@wi=
ndriver.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;tex=
t-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:min=
gli.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;text-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:Harish.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:21px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:toni.lammi@tl-software.fi">toni.lammi@tl-software.fi=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.com">pete=
r.kjellerstedt@gmail.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxf=
oundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@windriver.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D=
"height:21px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:denis@denix.org">denis@denix.org</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:=
21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"><a href=3D"mailto:ankur.tyagi85@gmail.com">ankur.tyagi85@gmail.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D=
"height:21px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Gran=
d Total</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-we=
ight:bold;text-align:right">145</td></tr></tbody></table><p class=3D"MsoNor=
mal" style=3D"background-image:initial;background-position:initial;backgrou=
nd-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-ser=
if">Thanks,<span></span></span></p>

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

--000000000000928039064dc5973b--

