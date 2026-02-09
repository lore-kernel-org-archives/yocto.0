Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F22E94616
	for <webhook@archiver.kernel.org>; Mon,  9 Feb 2026 21:48:29 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6215.1770673708737167159
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Feb 2026 13:48:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ni0aQTra;
 spf=pass (domain: gmail.com, ip: 74.125.82.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2b86d39cd50so1908192eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Feb 2026 13:48:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770673708; cv=none;
        d=google.com; s=arc-20240605;
        b=cFyN165j/U1JZOiCk7XAM5N16HJGpsBzLv/Q4erFQWAr19UyV9o5VOzdV/XqlNtQMw
         cPmrLVnwAhtJKvUIfxJRhnRAknG3LLAGOuYg5RzOZE6GZt/fh/AMoGukIbMVSZuvpNcV
         H5iDgm6kXzDGrfi7yWVVYhhd84R9wRuRthYiDri5Q8mppECJrDAQY7oaGnzCsurNZsGa
         HNmPLPHSEWBTeEDfO0Oy+rPCPZsX8PKOCn+q4TU4ugQub/Wum68WyCD9ltismwpLfiYF
         9Y8tK6mrk47TO3rBPy6tMeoeZY369LHc3sY+fiAxe3eUDWA9pJTVPV7Xg83YMXotNJkR
         5WUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=WUjMTJYCBRy+BtXL1YR6U41fVK2XAn4wRniW4NC0Qhk=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=LAUkuqqGh9qvGc89ds45CYOUBQGoCmJT8NQfGC7is55zYuwv2WBIZO287ITxLGYMDt
         HgMRAHPrNkJQ8rGsf77XOvDzKCN4iddrxp7MZRgr5W2t87WMhyXtb/00+1AOc6XcFfhj
         crSWn1AyNE4gS4LkXZs0c0a7KDyRz4N+jbARKyFmx+T4bE8vKx0gOMlZQDf6IyhrqHMV
         EhJqpQVzI6baiv2ktBgHLi7mNC+djbHFQoEjR05Emot7z1fILp6JfG5dWLxhwQrUWd35
         Aj6ozXeJ0mEfMpH1RgKmzlHwwDyb1OLmgsD8aqofZy74bOunJEpsyWS6fnDlUZIsrV7F
         WIig==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770673708; x=1771278508; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WUjMTJYCBRy+BtXL1YR6U41fVK2XAn4wRniW4NC0Qhk=;
        b=ni0aQTraSADiDiP0acsy32tDEjmXjZF/7fF7J0oQzcMY570LgmXjeNvFGfLIeeycoQ
         bU8Gpo/Qz4Vt2oners9gR7Gc/9RbUajQ77VZ+DdvC9jpcXbGkaOoCJ588LhqHh9Jn9aq
         h49IkvcJ/iiKDqf7JtsoVZxJStUD6+/W2tzwSZyfL+9Hhh3wqk0TsuvOgN7/Ys8ZgAfK
         ZTnYljb+0uYFt6I/iC3N6tkBXskquxFoNrtxjmNYRqjam2X94tjstycfsvP1OAw79eA7
         6RxgOGITQxr9r3+PeCjbIH5ROlFkZAEjRB5ZUO0e316+29IieZ51/MIKxQat6IpZTmlf
         p/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770673708; x=1771278508;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WUjMTJYCBRy+BtXL1YR6U41fVK2XAn4wRniW4NC0Qhk=;
        b=hQRlFCc6psTzE3LW3QY3Sj1Nu9xBmZkKMSzXyn/419OWSG3SaFWlQ+d0/DVwoezV1+
         7j1U9Q7W96mGQRT4fmOateGsxDXnfusJz/jC9MeebQ1On8jlRF59vJKkTTojmUHfP2zU
         3g5KkZl+jPYR7hlwHttTO5gjPE6n13XV3gRGo85jVZY379FnaaiFsfFoSNzId/Xcgqv2
         t5L80v0dFqXxjTLwTqf2qPt2kiKlCXExABtbO9XvN86Ik3y+Q4hCZmLl06NPPDGQJOL2
         BoHv1yZRl8RpVqv42bJcJMGpGZa4DLDjXNUhzfdv7DzOh+eHTr2Xzc76L022sNRWZnGs
         6Zig==
X-Gm-Message-State: AOJu0YyJGCiMLb96I/M7r5m9iP4ViAGE2W0ewFLJwPdVMI0aEzxZk5Fz
	lnkC4eWRPBKiHh2VqCKV2KFsoVhWb6updq9gXoGpHCxKP/nOdCbnshJsrPg2CoMFINhiZQVC6n9
	vijuUKa8ixhWUod7WJ+2qOicLFXSRId8ERstB
X-Gm-Gg: AZuq6aJyQkQ3QIJAwe7sTKQdO3lSeWdvORyTQduEbcvwrhBP8o7eLqg55K276fCB8Be
	RwkuGUPiP3pWtNX3bAs5fw3/8/6qq6K8Ty8BYjZDGVeXbyumkIEA8gfa575nx+wR5itNxVFUqlO
	2D8ohe75pAnmnC4zWfA4uDJlOVn4w5fkeZONCVIkcquEwOKa8UI2bZwvSjhQ4apZIhFYQ1epevf
	bniTeEYnjfc2ETksw5vUWHqH4o147uWkNYE6SOQtZ9PY6CCK4TxOBEap0wjD16dYtOp3ZMeQlPa
	FJU8GQNzOyI7tefFRFa6MYShH4PRmf3i4O+AgGxUtnWe4tL8W8vWCYapEw==
X-Received: by 2002:a05:7300:d513:b0:2ba:741c:ceee with SMTP id
 5a478bee46e88-2ba741cf1b7mr1532161eec.14.1770673707882; Mon, 09 Feb 2026
 13:48:27 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 9 Feb 2026 18:48:16 -0300
X-Gm-Features: AZwV_QhMmalX2fVLECGyJCqFYUxoFDnUAYvwksYmkffzLLmt4WPOf-wq3CBwA_A
Message-ID: <CAK5yBb8tms+_ezxLsCmoV2K-ij95Sn4h0p0hnioq7S4hc3NE4g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW06!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005f1d15064a6b190b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Feb 2026 21:48:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66235

--0000000000005f1d15064a6b190b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000005f1d15064a6b190b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.=
purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241)=
;font-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:r=
gb(219,229,241);font-weight:bold;text-align:right">1</td></tr></tbody></tab=
le><p class=3D"MsoNormal" style=3D"background-image:initial;background-posi=
tion:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-=
family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000005f1d15064a6b190b--

