Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F03E5C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 07:26:11 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.5766.1659511569566796561
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 00:26:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aRYwwf9+;
 spf=pass (domain: gmail.com, ip: 209.85.221.49,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id l22so20478589wrz.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 00:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=kPq7fWIEXku7+0MIYInqVfqZpAWtK/8fJWqCib2DBo0=;
        b=aRYwwf9+xkr39AliiG6JrSoK06P1GjZ6JLA9MfcrqTmRa6fT5inWZKKj9seKNpdvtx
         5LmCn6pLaxWJX9XTPURdbkCEa9F7gEMIyTXMqgNBMtBa4FUSEKqXZX7hmntVYOC4Uxdc
         f9wo/bla7FH7baMqK3N2N6wOBFNh8eAV/ik0UW6De328H/64vdBcz21WQyoQi7NMt9Jg
         Miv6nhF/aMj42Fw6Bd3tdKuHjBrlHsammR9lBgUX4ekneIWYur8/xxC7c+Lgu2a9OnFv
         eUBl2yAWvkoOZgLkWraWABZxdEoS04y1KObDLxOYbpntYExEHyXICwaN1Kpzg14FNQBR
         TduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=kPq7fWIEXku7+0MIYInqVfqZpAWtK/8fJWqCib2DBo0=;
        b=ikCS79KO3kMb/JvYk1ZSKbsj3TnCJLgQfB51UAGM9p2X1eOhXs6zJL6NMFOvf7tBVF
         ueb1pXOKnOhAzCbxsnPWUQyTFjvhA/yiUoIZqbegukG411zT2TIsWQTeYczhp99O+bYt
         DNTl+Np2zIpjnkythebRoZC/wIBpTmtKoUS1cNbpDLKNNFU/vFVKFEE4kXQ713a1QPf3
         FxdF7ETQFz03M4EAt9qNwaAkNaerMHT2Ws9Li3NHSkwXcocQQ+wlzT0HB4HhTBsPz2Yr
         tHmbCBfr4cMyKU3mRmbUaePNqCrrKSb4Hw2jucllvyjHkP8usZQ39Ws1fmQZBdQI7mdi
         OpzA==
X-Gm-Message-State: ACgBeo0wZ0YG4ATwJR/0Gqqe90YG3PMtLqJM/+un+tesOT6xIi9hQ5+u
	lqf97J3EzVRhoLpp+Ks9U6niwD4w3wT9jKnhKmo=
X-Google-Smtp-Source: 
 AA6agR5eCx4zj7G5nrGNDqk50NGImlazscyFrynZLrUylb1wT+UUjIjhrlni7kWsJmwjerb9aNfqYCADNL9E6c3oANE=
X-Received: by 2002:a05:6000:186f:b0:21d:969e:c80e with SMTP id
 d15-20020a056000186f00b0021d969ec80emr14303674wri.129.1659511567825; Wed, 03
 Aug 2022 00:26:07 -0700 (PDT)
MIME-Version: 1.0
References: 
 <80bf30b6-c5f8-4dbd-96fd-1bd52e1c129b.03082a28-859c-4ed7-bdd3-b360c084ba83.200c086d-1ebc-447c-bcf7-1ae3360185ee@emailsignatures365.codetwo.com>
 <ME3PR01MB661227E878D8E6B5B3254050809C9@ME3PR01MB6612.ausprd01.prod.outlook.com>
In-Reply-To: 
 <ME3PR01MB661227E878D8E6B5B3254050809C9@ME3PR01MB6612.ausprd01.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 3 Aug 2022 09:25:50 +0200
Message-ID: 
 <CA+chaQfcqnjBAtSTfwGWTY8SdD3cPiJ8GW4Y7xKONFcT5DuTUw@mail.gmail.com>
Subject: Re: [yocto] RDEPENDS of something provided by ALTERNATIVE
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/related; boundary="00000000000080c87505e5512587"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 07:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57758

--00000000000080c87505e5512587
Content-Type: multipart/alternative; boundary="00000000000080c87405e5512586"

--00000000000080c87405e5512586
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can use VIRTUAL-RUNTIME_sed variable instead of 'sed' _everywhere_ and
then change the preferred runtime provider in your DISTRO config.

Similar case for "stat" from busybox in webOS OSE:
https://github.com/webosose/meta-webosose/search?q=3DVIRTUAL-RUNTIME_stat

and much worse case (because too many places add runtime dependency on
bash) to replace bash:
https://github.com/webosose/meta-webosose/search?q=3DVIRTUAL-RUNTIME_bash
see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9217#c5

Regards,

On Wed, Aug 3, 2022 at 7:03 AM Craig McQueen <craig.mcqueen@innerrange.com>
wrote:

> I have a recipe which contains a script that uses /bin/sed.
>
> When I build it, I get an error:
>
> ERROR: myrecipe-1.2.3-r0 do_package_qa: QA Issue: /lib/myrecipe/mycommand
> contained in package myrecipe requires /bin/sed, but no providers found i=
n
> RDEPENDS:myrecipe? [file-rdeps]
>
> My final image contains the BusyBox implementation of sed, so it will be
> fine at runtime.
>
> If I add to my recipe RDEPENDS:${PN} +=3D "sed", then when the image is
> built then it uses /bin/sed from the "sed" package, rather than being hap=
py
> to use the BusyBox sed.
>
> So, what is the correct way to specify a RDEPENDS to say that it depends
> on _any_ implementation of /bin/sed from any ALTERNATIVE provider?
>
> --
> Craig McQueen
>
>
>
>
> <https://www.linkedin.com/company/inner-range-global>
> <https://twitter.com/Inner_Range> <https://www.youtube.com/innerrange>
>
>
>
>
> *Craig McQueen*Embedded Systems Engineer
> t
> e
> w :
> :
> : +61 3 9780 4378 <+61%203%209780%204378>
> craig.mcqueen@innerrange.com
> innerrange.com <http://www.innerrange.com>
>  Inner Range =E2=80=A2 1 Millennium Court =E2=80=A2 Knoxfield =E2=80=A2 V=
ictoria =E2=80=A2 3180
> =E2=80=A2 Australia
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57757):
> https://lists.yoctoproject.org/g/yocto/message/57757
> Mute This Topic: https://lists.yoctoproject.org/mt/92786950/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000080c87405e5512586
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can use VIRTUAL-RUNTIME_sed variable instead of &#39;s=
ed&#39; _everywhere_ and then change the preferred runtime provider in your=
 DISTRO config.<div><br></div><div>Similar case for &quot;stat&quot; from b=
usybox in webOS OSE:</div><div><a href=3D"https://github.com/webosose/meta-=
webosose/search?q=3DVIRTUAL-RUNTIME_stat">https://github.com/webosose/meta-=
webosose/search?q=3DVIRTUAL-RUNTIME_stat</a><br></div><div><br></div><div>a=
nd much worse case (because too many places add runtime dependency on bash)=
 to replace bash:</div><div><a href=3D"https://github.com/webosose/meta-web=
osose/search?q=3DVIRTUAL-RUNTIME_bash">https://github.com/webosose/meta-web=
osose/search?q=3DVIRTUAL-RUNTIME_bash</a><br></div><div>see</div><div><a hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9217#c5">https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D9217#c5</a><br></div><div><br><=
/div><div>Regards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Aug 3, 2022 at 7:03 AM Craig McQueen &lt;<a=
 href=3D"mailto:craig.mcqueen@innerrange.com">craig.mcqueen@innerrange.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<font size=3D"2"><div>I have a recipe which contains a script that uses /bi=
n/sed.<br>
<br>
When I build it, I get an error:<br>
<br>
ERROR: myrecipe-1.2.3-r0 do_package_qa: QA Issue: /lib/myrecipe/mycommand c=
ontained in package myrecipe requires /bin/sed, but no providers found in R=
DEPENDS:myrecipe? [file-rdeps]<br>
<br>
My final image contains the BusyBox implementation of sed, so it will be fi=
ne at runtime.<br>
<br>
If I add to my recipe RDEPENDS:${PN} +=3D &quot;sed&quot;, then when the im=
age is built then it uses /bin/sed from the &quot;sed&quot; package, rather=
 than being happy to use the BusyBox sed.<br>
<br>
So, what is the correct way to specify a RDEPENDS to say that it depends on=
 _any_ implementation of /bin/sed from any ALTERNATIVE provider?<br>
<br>
-- <br>
Craig McQueen<br>
<br>
</div></font>
<br>
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
  <tbody>
  <tr>
    <td style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;;wid=
th:100px" valign=3D"top" rowspan=3D"2" align=3D"center"><font style=3D"font=
-size:8pt;font-family:&quot;Courier New&quot;" face=3D"Courier New"><br></f=
ont>=C2=A0<img style=3D"height: 75px; width: 76px;" border=3D"0" src=3D"cid=
:1826291c80872960a3a1" width=3D"76" height=3D"75"><br><a href=3D"https://ww=
w.linkedin.com/company/inner-range-global" target=3D"_blank"><img style=3D"=
height: 24px; width: 26px;" border=3D"0" src=3D"cid:1826291c80821b60cab2" w=
idth=3D"26" height=3D"24"></a>=C2=A0<a href=3D"https://twitter.com/Inner_Ra=
nge" target=3D"_blank"><img style=3D"height: 24px; width: 23px;" border=3D"=
0" src=3D"cid:1826291c808610071303" width=3D"23" height=3D"24"></a> <a href=
=3D"https://www.youtube.com/innerrange" target=3D"_blank"><img style=3D"hei=
ght: 24px; width: 24px;" border=3D"0" src=3D"cid:1826291c8088874a0154" widt=
h=3D"24" height=3D"24"></a></td>
    <td style=3D"font-size:12pt;font-family:&quot;Lucida Sans Unicode&quot;=
;width:5px" valign=3D"top" rowspan=3D"2"></td>
    <td style=3D"font-size:14pt;font-family:&quot;Lucida Sans Unicode&quot;=
;border-bottom:1px solid black;padding-bottom:5px;padding-left:5px" valign=
=3D"top" colspan=3D"3">
      <p style=3D"margin-bottom:0px;font-size:14pt;font-family:&quot;Lucida=
 Sans Unicode&quot;;white-space:nowrap;margin-top:0px"><strong style=3D"fon=
t-size:14pt"><span style=3D"font-size:12pt"><strong style=3D"font-size:9pt"=
></strong></span></strong>=C2=A0</p>
      <p style=3D"margin-bottom:0px;font-size:14pt;font-family:&quot;Lucida=
 Sans Unicode&quot;;white-space:nowrap;margin-top:0px"><strong style=3D"fon=
t-size:14pt"><span style=3D"font-size:12pt"><strong style=3D"font-size:11pt=
">Craig McQueen<span style=3D"font-size:9pt"></span></strong><br></span></s=
trong><span style=3D"font-size:10pt">Embedded Systems Engineer</span></p></=
td></tr>
  <tr>
    <td style=3D"font-size:10pt;font-family:&quot;Lucida Sans Unicode&quot;=
;width:5px;padding-bottom:5px;padding-top:5px;padding-left:5px" valign=3D"t=
op" align=3D"center"><span style=3D"font-size:10pt">t</span><br><span style=
=3D"font-size:10pt">e<br></span><span style=3D"font-size:10pt">w</span></td=
>
    <td style=3D"font-size:10pt;font-family:&quot;Lucida Sans Unicode&quot;=
;width:5px;padding-bottom:5px;padding-top:5px;padding-left:5px" valign=3D"t=
op" align=3D"right"><span style=3D"font-size:10pt">:</span><span style=3D"f=
ont-size:10pt"><br></span><span style=3D"font-size:10pt">:<br></span><span =
style=3D"font-size:10pt">:</span></td>
    <td style=3D"font-size:10pt;font-family:&quot;Times New Roman&quot;;pad=
ding-bottom:5px;padding-top:5px;padding-left:5px" valign=3D"top"><font styl=
e=3D"font-size:10pt;font-family:&quot;Lucida Sans Unicode&quot;"><span styl=
e=3D"font-size:10pt"><a style=3D"font-size:10pt;text-decoration:none;font-f=
amily:&quot;Lucida Sans Unicode&quot;;color:rgb(0,0,0)" href=3D"tel:+61%203=
%209780%204378" target=3D"_blank"><font style=3D"font-size:10pt;font-family=
:&quot;Lucida Sans Unicode&quot;">+61 3 9780 4378</font></a><br></span></fo=
nt><span style=3D"font-size:10pt"><a style=3D"font-size:10pt;text-decoratio=
n:none;font-family:&quot;Lucida Sans Unicode&quot;;color:rgb(0,0,0)" href=
=3D"mailto:craig.mcqueen@innerrange.com" target=3D"_blank"><font style=3D"f=
ont-size:10pt;font-family:&quot;Lucida Sans Unicode&quot;">craig.mcqueen@in=
nerrange.com</font></a><br></span><a style=3D"font-size:10pt;text-decoratio=
n:none;font-family:&quot;Lucida Sans Unicode&quot;;color:rgb(0,0,0)" href=
=3D"http://www.innerrange.com" target=3D"_blank"><font style=3D"font-size:1=
0pt;font-family:&quot;Lucida Sans Unicode&quot;">innerrange.com</font></a><=
/td></tr>
  <tr>
    <td style=3D"font-size:9pt;border-top:1px solid black;font-family:&quot=
;Times New Roman&quot;" valign=3D"top" colspan=3D"5"><font style=3D"font-si=
ze:8pt;font-family:&quot;Lucida Sans Unicode&quot;"><span style=3D"font-siz=
e:8pt"><font style=3D"font-size:8pt;font-family:&quot;Lucida Sans Unicode&q=
uot;">=C2=A0Inner Range=20
      =E2=80=A2 </font><span style=3D"font-size:8pt;font-family:&quot;Lucid=
a Sans Unicode&quot;;color:rgb(0,0,0)"><font style=3D"font-size:8pt;font-fa=
mily:&quot;Lucida Sans Unicode&quot;">1 Millennium Court =E2=80=A2 Knoxfiel=
d=20
      =E2=80=A2 Victoria =E2=80=A2=C2=A03180=20
      =E2=80=A2=C2=A0Australia</font></span></span></font>=C2=A0</td></tr><=
/tbody></table>
<p style=3D"margin-bottom:5pt;font-size:10pt;font-family:Arial;margin-top:0=
px">=C2=A0</p>
<p style=3D"margin-bottom:5pt;font-size:10pt;font-family:Arial;margin-top:0=
px">=C2=A0</p></div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57757): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57757" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57757</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92786950/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92786950/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000080c87405e5512586--

--00000000000080c87505e5512587
Content-Type: image/png;
	name="ir-logo_f85269af-e37c-4042-b67a-7a903f6f387d.png"
Content-Disposition: inline;
	filename="ir-logo_f85269af-e37c-4042-b67a-7a903f6f387d.png"
Content-Transfer-Encoding: base64
Content-ID: <1826291c80872960a3a1>
X-Attachment-Id: 1826291c80872960a3a1

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
--00000000000080c87505e5512587
Content-Type: image/png;
	name="SocialLink_Linkedin_32x32_afeefbca-ed45-43fe-92a0-f72f81b506c7.png"
Content-Disposition: inline;
	filename="SocialLink_Linkedin_32x32_afeefbca-ed45-43fe-92a0-f72f81b506c7.png"
Content-Transfer-Encoding: base64
Content-ID: <1826291c80821b60cab2>
X-Attachment-Id: 1826291c80821b60cab2

iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAZdEVYdFNvZnR3YXJlAEFkb2JlIEltYWdlUmVhZHlxyWU8AAABWUlEQVRIS+2Uu0oD
QRSG9xHsbG2sbQTfw8JGsLGxtNEXCMJ6Qy0VFoJF0Cr6ArImUVCiIovaeEWiomjAKBK8jIeZ4bD7
Y8jsciwED18x3z+HOTDsjuf54e+CLg66OOjioIuDLg66H3ZOl8ZXI4IWsJUF8I6pzeiirnTtnz6R
QkNqwIfze+Z0U4NBFRpSAz6wtGvP1kUKDalB98NC5cqcHmycw1YW0DW981s9cxUIM4LuRtdMmW5v
ZPmgb2EbthDw7tmyuR9TnFtXamwlyhWP642mdaVuH19HC4fciYC3HVA6urerWL01P/sXW3wO4G0H
tKq1nWtuTgDuMuDs5pluaWL95PKuYSOlag8v3JwA3GUA38ZQULWRUu8fX97kT789uMsA6jEhPVY2
0sV5AnCXAfFH0Ea6xAZwCPn/AC4OIf8jA+hV4DCeUzkNkAddHHRx0MVBFwddFj/8Bi7kX0EakdxS
AAAAAElFTkSuQmCC
--00000000000080c87505e5512587
Content-Type: image/png;
	name="SocialLink_Twitter_32x32_4c4138b0-4a60-4da0-ac5f-16b0717f844b.png"
Content-Disposition: inline;
	filename="SocialLink_Twitter_32x32_4c4138b0-4a60-4da0-ac5f-16b0717f844b.png"
Content-Transfer-Encoding: base64
Content-ID: <1826291c808610071303>
X-Attachment-Id: 1826291c808610071303

iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAZdEVYdFNvZnR3YXJlAEFkb2JlIEltYWdlUmVhZHlxyWU8AAAB8ElEQVRIS+2VzUsC
QRjG+3e6dOnQoVPQKQiCoL8ggujSJYhOQYcIokuHiAi6RKaFFfRBKUkWklmJWIQRuWqbZX7U+rFl
ZQ/MsOy+jatGHQIffpfdmfd9Zuadfbeh0RL+U+oGFakbVOSHBhPuxP61chkvOEPK1FGi2Sqx9wM7
sjaHQQ36t+VZb5K81NNilTy32ZJRgbv8wmnqJqEunqfJfGqw5E8jYOa4rMf6xTNL+l3Y05Aj3rt5
p59PDbauXths943SaY+S0fbVSPGTjYvllXJNy4YQajDvS/G5pVKm8D7teUJSbRRHzMdEwg60YmhQ
g56NmGpcJB4ROXmYQHmGHXH+ViSMkmyAGrStREZdD+bnUE6Du/ckG6AGtkAm9KjG0m88qBZ1r9Oa
AWow5nrg02tUKlck5WVQA0y6ihd4UC3aCykkFYMagA57NCjneVzVElYYCAzA+MEjegC5TibCpkkG
DbEBSs1Dq9OIU7x8IDZAwzmLVntKaB4kXI/YAKDa+Lh8kdxTtsgziYTDwWpIrJ6yBgBNwh7MmBQC
TVTfSIQYDPAZt9qkvm0Za8fGFfWDZxIJ99J87QyDAQKQOpx85TnKCJcYbVkfaIL4iHCp0bfxA2EZ
cUr4eflj+bmTZNeaoB+YYFaDX6FuUJH/bmAJfwHAIRoVbWUSwwAAAABJRU5ErkJggg==
--00000000000080c87505e5512587
Content-Type: image/png;
	name="SocialLink_Youtube_32x32_d5104d2f-6769-421a-97ec-b788e060c72a.png"
Content-Disposition: inline;
	filename="SocialLink_Youtube_32x32_d5104d2f-6769-421a-97ec-b788e060c72a.png"
Content-Transfer-Encoding: base64
Content-ID: <1826291c8088874a0154>
X-Attachment-Id: 1826291c8088874a0154

iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAZdEVYdFNvZnR3YXJlAEFkb2JlIEltYWdlUmVhZHlxyWU8AAACtklEQVRYR+2W/UuT
URTH+2/sPQyJqKRCkAqpCMEipAh6QYqiwl9C+qFCAqEXgsJfKoJIEKJ+KAgKoSAiCiFqTrfpRvNl
M5s6VjHGaZ/D7rqy5+rjZIzAA1/ufXbvzv3cc889z7Pi27qaVF5SLS0D/B8AkWONEj3fXOyPnDtQ
Mqdc+QJgweyPuARqV8p0X69MdF/2nFeOfAEE6lYpwPDpvZJLpyRyfJcM1K+VcOtObZkTOlgvA1vX
SKh5iwQbNpT4cMl3Dkw9vSuzH17Kn1hAgTLBT9rPfH2vkaEPGHPi1055+vCSbwByAEs+7tLd5mYm
FST3Ky1D+zZVHiDYWKsAgLBQLjWhv9MCVHEAzhpjkaoD6BHkQ0/SSfa3DDbVKcDImf2aExUHIOlm
P77SPGDHjPOc/vJWQSoC4CUiYfpcPZLSHvejeQHY9WhnmySf3Jijqefdku7vK2rm3bOSOeP3OiRy
co+nX1tOAMJMSJdqC5VtJ0D0YotkQv3y/cqJohKPrhfc/rOxmxd0nsvSn1+X+LblBBi73V4EINuH
25o8AbgBJKLLKOFe/o2cAPZiLMK5k/WcL0bLM2PTb3ok2XNLrybGXEo3VxRjA15rICcAJdeYAeCK
MYbR8swY5xzcsV5+vnigb8pQyza9IUQRY47t25YTYLL3jv4ZWwiAI6AIAU3uJO5f1Qia90dZACbU
mC+AfBQAsLOePlYewCKOwAZg17SUZD5eMF5ktm9b7iTMh9FYESA+pGMkGK0BSDzs1DMnESnDsY4j
ErvUKtH2Q/r/wObVc3zbcgJQAY2xO3ZDlnPWo11n9WsoOx7RMZItfLRBry0fKlRAnqmSzPHyb+QE
CB/eXlh+acbN8PJv5ARAhDObiBVcLd6oD4O7N3r6NpoXwBYfm4Tdj8yHqh/5BqiUlgGqDFAjfwGX
yhgOrWH1dwAAAABJRU5ErkJggg==
--00000000000080c87505e5512587--

