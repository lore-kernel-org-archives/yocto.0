Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36232C00140
	for <webhook@archiver.kernel.org>; Fri, 29 Jul 2022 03:02:21 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web09.3915.1659063737017429522
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 20:02:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZNzAkSxR;
 spf=pass (domain: gmail.com, ip: 209.85.216.42,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id
 f11-20020a17090a4a8b00b001f2f7e32d03so6335114pjh.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 20:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Xa2j46xWoFdgKR+cTVPO8V12Wx3iAglVN4/0PvvjUSE=;
        b=ZNzAkSxRxaV0Gb9lS05tQN5cnKY/ugIC0lxwR3ZdH1tzQECwSFc1DKEcd+dHvaogcw
         IT5Hb3bJM/+R54ilZjC/iEsNDe0jrnOFJ7nrw1Rx+A/X02Ds2bEqvrh16E3SZGFnXCjJ
         /pd1awpMb9jLzLraPgfU0b7YgV1Q4YoSP9gosfSyFAVJxCnNLT8bky2awrONQPogM/BH
         1YwyPLHlH+/d7CIKgv3J191N+Pm13iTuAFUAO0cwiKwp+zXxv/a9S9+AL7fx5QudFatH
         oJxJdesRSv+uMosJ/AQzhhJengmESejkKDfttC3yYl+plMFRjYD14GCZZkQpE6GzEl3C
         T0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Xa2j46xWoFdgKR+cTVPO8V12Wx3iAglVN4/0PvvjUSE=;
        b=pSXcNsVkD05LxuHGReIpU5lB98FdMr3O9o9bRoWx/29x6CwTdQPK6n2y4sahUdoUj/
         TIU9Y21gNtNO6v9/mX0xldwixpJYCNhs+WDj1CALShIGqX/yLDFf8/5ine+XIdV69uzC
         hTer10kspMAr/IkBzmtxjVdU6I3Z6H5mZwHvV+oNMXUZVyUz97OYz013GOTmR5RqMYPl
         ANLXCosEm76zovOX/YaZBCACBvt7vTAMOhiEuMpZaElgEdmm8fffQtLFzQWVcKftyq/f
         oIe+rynG35cqbpivNo/w9Enz9zVCqPcsQLWch/APYcGiRe7sXlqaOZPa6iqSPifGSp+5
         Qx+A==
X-Gm-Message-State: ACgBeo1fZ7e18/OWH+pDPytcVwo0cfbFUN+MTqy11/H53mfnaVpD2Gg2
	0ePl5sD687fgq/4dLLnU5ngcuS2WfL3MUWwtCEDqWUUc1/jRUQ==
X-Google-Smtp-Source: 
 AA6agR60GevPU1pkYyeWUAplEywaemeyKcIXd7iUB4hmO3ynBllrXJJe+FPwt5vfespzxofaHpSDd3nml6u7M1ru6yc=
X-Received: by 2002:a17:90b:4b0a:b0:1f2:a904:8af7 with SMTP id
 lx10-20020a17090b4b0a00b001f2a9048af7mr1821971pjb.76.1659063736467; Thu, 28
 Jul 2022 20:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <17062D8F2733D886.12308@lists.yoctoproject.org>
In-Reply-To: <17062D8F2733D886.12308@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 28 Jul 2022 20:02:05 -0700
Message-ID: 
 <CABKMkPLtB8PyX5=Rd13xCcBtPWeQWkRL96T_gA_-vczAhSh02A@mail.gmail.com>
Subject: Re: [yocto] user service autostart
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ac046205e4e8e041"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Jul 2022 03:02:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57680

--000000000000ac046205e4e8e041
Content-Type: text/plain; charset="UTF-8"

Like maybe simply:

systemd_postinst_ontarget () {
if [ "${SYSTEMD_AUTO_ENABLE}" = "enable" ]; then
for service in ${FLUTTER_USER_SERVICE_ESCAPED}; do
 su <desired user>
systemctl --user enable "$service"
systemctl --user start "$service"
done
fi
}

On Thu, Jul 28, 2022 at 8:00 PM Joel Winarske via lists.yoctoproject.org
<joel.winarske=gmail.com@lists.yoctoproject.org> wrote:

> How does one enable a user service for a specific user at postinst?
>
> User service in question is located in ${system_user_unitdir}.
>
> Seems the problem is related to determining what user, which makes sense
> why this combo is not allowed: "systemctl --user --root=..."
>
> I'm figuring this run as root?  Is there a way to have it run for a
> specific user?
> systemd_postinst_ontarget () {
> if [ "${SYSTEMD_AUTO_ENABLE}" = "enable" ]; then
> for service in ${FLUTTER_USER_SERVICE_ESCAPED}; do
> systemctl --user enable "$service"
> systemctl --user start "$service"
> done
> fi
> }
>
> Thanks,
> Joel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57679):
> https://lists.yoctoproject.org/g/yocto/message/57679
> Mute This Topic: https://lists.yoctoproject.org/mt/92684003/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000ac046205e4e8e041
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Like maybe simply:<div><br></div><div><div style=3D"color:=
rgb(212,212,212);font-family:Menlo,Monaco,&quot;Courier New&quot;,monospace=
;font-size:12px;white-space:pre-wrap;background-color:rgb(30,30,30)"><span =
style=3D"color:rgb(220,220,170)">systemd_postinst_ontarget</span> () {</div=
><div style=3D"color:rgb(212,212,212);font-family:Menlo,Monaco,&quot;Courie=
r New&quot;,monospace;font-size:12px;white-space:pre-wrap;background-color:=
rgb(30,30,30)">    <span style=3D"color:rgb(197,134,192)">if</span> [ <span=
 style=3D"color:rgb(206,145,120)">&quot;</span><span style=3D"color:rgb(156=
,220,254)">${SYSTEMD_AUTO_ENABLE}</span><span style=3D"color:rgb(206,145,12=
0)">&quot;</span> =3D <span style=3D"color:rgb(206,145,120)">&quot;enable&q=
uot;</span> ]; <span style=3D"color:rgb(197,134,192)">then</span></div><div=
 style=3D"color:rgb(212,212,212);font-family:Menlo,Monaco,&quot;Courier New=
&quot;,monospace;font-size:12px;white-space:pre-wrap;background-color:rgb(3=
0,30,30)">        <span style=3D"color:rgb(197,134,192)">for</span> <span s=
tyle=3D"color:rgb(156,220,254)">service</span> <span style=3D"color:rgb(197=
,134,192)">in</span> <span style=3D"color:rgb(156,220,254)">${FLUTTER_USER_=
SERVICE_ESCAPED}</span>; <span style=3D"color:rgb(197,134,192)">do</span></=
div><div style=3D"color:rgb(212,212,212);font-family:Menlo,Monaco,&quot;Cou=
rier New&quot;,monospace;font-size:12px;white-space:pre-wrap;background-col=
or:rgb(30,30,30)">           =C2=A0su &lt;desired user&gt;</div><div style=
=3D"color:rgb(212,212,212);font-family:Menlo,Monaco,&quot;Courier New&quot;=
,monospace;font-size:12px;white-space:pre-wrap;background-color:rgb(30,30,3=
0)">            systemctl --user <span style=3D"color:rgb(220,220,170)">ena=
ble</span> <span style=3D"color:rgb(206,145,120)">&quot;</span><span style=
=3D"color:rgb(156,220,254)">$service</span><span style=3D"color:rgb(206,145=
,120)">&quot;</span></div><div style=3D"color:rgb(212,212,212);font-family:=
Menlo,Monaco,&quot;Courier New&quot;,monospace;font-size:12px;white-space:p=
re-wrap;background-color:rgb(30,30,30)">            systemctl --user start =
<span style=3D"color:rgb(206,145,120)">&quot;</span><span style=3D"color:rg=
b(156,220,254)">$service</span><span style=3D"color:rgb(206,145,120)">&quot=
;</span></div><div style=3D"color:rgb(212,212,212);font-family:Menlo,Monaco=
,&quot;Courier New&quot;,monospace;font-size:12px;white-space:pre-wrap;back=
ground-color:rgb(30,30,30)">        <span style=3D"color:rgb(197,134,192)">=
done</span></div><div style=3D"color:rgb(212,212,212);font-family:Menlo,Mon=
aco,&quot;Courier New&quot;,monospace;font-size:12px;white-space:pre-wrap;b=
ackground-color:rgb(30,30,30)">    <span style=3D"color:rgb(197,134,192)">f=
i</span></div><div style=3D"color:rgb(212,212,212);font-family:Menlo,Monaco=
,&quot;Courier New&quot;,monospace;font-size:12px;white-space:pre-wrap;back=
ground-color:rgb(30,30,30)">}</div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 28, 2022 at 8:00 PM Jo=
el Winarske via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;joel.winarske=3D<a href=3D"mailto:gmail.com@lists.yoctoprojec=
t.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">How does one enable a user service for=C2=A0a specif=
ic=C2=A0user at postinst?<div><br></div><div>User service in question is lo=
cated in ${system_user_unitdir}.</div><div><br></div><div><div>Seems the pr=
oblem is related to determining what user, which makes sense why this combo=
 is not allowed:=C2=A0&quot;systemctl --user --root=3D...&quot;</div><br></=
div><div><div>I&#39;m figuring this run as root?=C2=A0 Is there a way to ha=
ve it run for a specific user?</div><div><div style=3D"color:rgb(212,212,21=
2);background-color:rgb(30,30,30);font-family:Menlo,Monaco,&quot;Courier Ne=
w&quot;,monospace;font-size:12px;line-height:18px;white-space:pre-wrap"><di=
v><span style=3D"color:rgb(220,220,170)">systemd_postinst_ontarget</span> (=
) {</div><div>    <span style=3D"color:rgb(197,134,192)">if</span> [ <span =
style=3D"color:rgb(206,145,120)">&quot;</span><span style=3D"color:rgb(156,=
220,254)">${SYSTEMD_AUTO_ENABLE}</span><span style=3D"color:rgb(206,145,120=
)">&quot;</span> =3D <span style=3D"color:rgb(206,145,120)">&quot;enable&qu=
ot;</span> ]; <span style=3D"color:rgb(197,134,192)">then</span></div><div>=
        <span style=3D"color:rgb(197,134,192)">for</span> <span style=3D"co=
lor:rgb(156,220,254)">service</span> <span style=3D"color:rgb(197,134,192)"=
>in</span> <span style=3D"color:rgb(156,220,254)">${FLUTTER_USER_SERVICE_ES=
CAPED}</span>; <span style=3D"color:rgb(197,134,192)">do</span></div><div> =
           systemctl --user <span style=3D"color:rgb(220,220,170)">enable</=
span> <span style=3D"color:rgb(206,145,120)">&quot;</span><span style=3D"co=
lor:rgb(156,220,254)">$service</span><span style=3D"color:rgb(206,145,120)"=
>&quot;</span></div><div>            systemctl --user start <span style=3D"=
color:rgb(206,145,120)">&quot;</span><span style=3D"color:rgb(156,220,254)"=
>$service</span><span style=3D"color:rgb(206,145,120)">&quot;</span></div><=
div>        <span style=3D"color:rgb(197,134,192)">done</span></div><div>  =
  <span style=3D"color:rgb(197,134,192)">fi</span></div><div>}</div></div><=
/div></div><div><br></div><div>Thanks,</div><div>Joel</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57679): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57679" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57679</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92684003/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92684003/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ac046205e4e8e041--

