Return-Path: <m.cavallini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF1C1CC6B2A
	for <webhook@archiver.kernel.org>; Sat, 17 Oct 2026 07:40:14 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2529.1792222810244884950
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2026 00:40:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koansoftware-com.20251104.gappssmtp.com header.s=20251104 header.b=jk+FYf8o;
 spf=pass (domain: koansoftware.com, ip: 209.85.208.44, mailfrom: m.cavallini@koansoftware.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6b1d8944cb0so822064a12.3
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2026 00:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792222808; cv=none;
        d=google.com; s=arc-20260327;
        b=oxnPBNqMgDIN5TNNRWGTJDQtcx2Eqj6Avm1DD7f1d0r5g/bsnCFd4MCvv2OZJGnWUF
         ct9hVEO9xfuDVJ9TM8+wNFXr9w6stwAbMcgSoCkVKC7gvnofXfP/4aITld2NAlHsVIWq
         ZPc0h7L+ZwwRh2ZKygV00QAv0R/IT3LWzT3guc7foHjlPujFFg7Co9MG2T0Qw1qGynJu
         JIp+hbgFiggUdYdvbNkmFqmcVm/9wGgC0fyJJ77Ab+3wMzp7Aa4yFfVM9zM9lILYvYKU
         AG2qm2zEDE8S6G/upwwtkNp5gFS9lPSD6HykS1ey1nNuzlhToquUWmXJVkKqbg/lVNxs
         0WMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tq73QP/VW5qD3ndNHwhqnWgvHX2mzsyheM4TZNaSlM4=;
        fh=BARAr80b/Vpf4EDnUXYfgyuKD01PzriEAiXaVbGrIAI=;
        b=HYnl6KH+Q9IRL6nTKP9ZUBMnxd+aD3sLolJCJGl1muYR9omoRt3BZV+C8LggS5nS4F
         S2/piZ9RtbicPasLO7M8DdH56Xg6bhF1bZmsNukyUgGn23DoJKlQBNVy+aOkNaS0lXWz
         /zoTnDx6ap1231DizzTHfik8UyDV9quruMwiN4WW8yj6VoOPlTBM9+FdJUQomadrNg69
         7YgqWpuklcrEJYyUpQHWsBfZpLZM2XyjCag+f3Wu20F3pvY1sCHMWYZn3Omo0DZ01k5i
         YTQZ6tVjfLozaF+HWzXiKybvLLZhBj26lZWNMh13gDBiROE4nI3egN+ihiZXOdD9VdYv
         joJg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=koansoftware-com.20251104.gappssmtp.com; s=20251104; t=1792222808; x=1792827608; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tq73QP/VW5qD3ndNHwhqnWgvHX2mzsyheM4TZNaSlM4=;
        b=jk+FYf8ochjSL2+9RKWS5jUxobXWhCUZZaSvqBv+LVakkhnpP/Y4oXP76cT9OAeo3W
         /5wLiA72k9/ZpbLc1QWmGbAMy1SIoPrqsk6fAQyI9DMVBsjYf3BWr+beqwrZhB4FYzj0
         RgsE7qtBoLpTIX3pfDpG6q/1Q1Cl9Ti8izTzWOrTzhr2gWh1MPBfRb+m3G4jcY6wBlRd
         znkVRvAus7CaiKSH2gUGuTRJWD12usaeCuVi4vuGIXnFJuzcb9a4kZhONw/LevuiFuPp
         RO0AKwgpX4E5J6ez4bEHsYaL210anMg1+g1xFAg/f5jsYe7UBEYuQSPq1OOBo/aQWKvu
         FC3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792222808; x=1792827608;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Tq73QP/VW5qD3ndNHwhqnWgvHX2mzsyheM4TZNaSlM4=;
        b=MgTeV3OBoKgvz/x+3mUwSfGQ+IFQcMHT1hUedGYh7Yr1RH3U0OaXd+ktPCebVz9z0d
         uAtymRWcFfYwvvGI8sHMRoCHkTkXfVszPFWumP5lTud0nAXoQwAXeuBvlSdAFVDI8dfT
         izRsVTeW1qY/7WmWtPJz6EBrY0AGsO8n7C7WEPE0rXEZ077ts0PiUdPq1qzoqg9DbS0s
         jI7y3quRlI4ZQEAhm7hi50z/anmznx6I/HYNE5/Dkzc8A2y1iw2/1M+iPqsInM/MYaXE
         Cvm5eKTgtPXzD6D4zUm7U6HOqQ1m6u9+YmKojSATqS/eDrIK+fD7ZC3rrfR0qFa7wUOi
         KCxw==
X-Gm-Message-State: AFq9FYJUbTsiKnXs0qQ06x5MwEWAT2vGuIEy4SfhC/8o3X1rs7vBrAmJ
	2MHRMmYWaYX0ch2+3HO7s4ukIKFbuxwNIfcu6uZelF7/c07qmwjYFnKxmziyc3S2I1K4wsfU+L5
	22wIhsiQkai6m3kykKit2JOwoXpkU5Z7X5Y8pz5+/uyd1qmAL8VLmJg==
X-Gm-Gg: AYBFou3xABqwgZIN97EWWy12Mo9J2Gi6QsPW+4nU+6r9gTdnE1LV1Xe8NK7Tq5QgNFo
	Ai0iaZnlEEfHwWzK/uGCMEIspOCrJ51XZQ3oIcV+RdM7BFmQIEu6dv9KNVNnDT0yIbhbWe6ahg/
	+XEJ6Js6s1YYMbJEdhCNeIxNtdqdbd1chC1zq2n9ZwuNftdbd8ncsrmdcq8H7cHAOFmjlbFIPZw
	GYjp8NMLfUuFlOpCucrRMq3uidIMPwVV4En4MDu/5FpSfLpgkFr+/Z2qP5nKkqWTFJrQmjrQKZ+
	gajXCAWS54NnqJaZmvjrIra1HHEM6LLa8QyjYxIWFJwmwckzcZkLWKyqwlpf/q5NKA==
X-Received: by 2002:a05:6402:4582:b0:6b1:b97b:74f with SMTP id
 4fb4d7f45d1cf-6b3a8191599mr1173211a12.31.1792222808193; Sat, 17 Oct 2026
 00:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <BF261D3A-0BBD-BA4E-A259-659FCE539341@hxcore.ol>
 <DA15A4AF-6AE2-BB41-BB93-694E7E28074D@hxcore.ol> <2381784.1792222325968944005@lists.yoctoproject.org>
In-Reply-To: <2381784.1792222325968944005@lists.yoctoproject.org>
From: Marco Cavallini KOAN <m.cavallini@koansoftware.com>
Date: Sat, 17 Oct 2026 09:39:57 +0200
X-Gm-Features: AclHuK8hg9-K_Qn7QE4wovywZcg30S0EtchJzsgdLgMVL1ZwgpGRcQjr2J_sxUc
Message-ID: <CAP-mP6m+g6rg3iu7EZg2RSZ-iiN3W4CBwCa2C_cqWqk+gzwfHg@mail.gmail.com>
Subject: Re: [yocto] Interest in an open-source vulnerability management tool
 for Yocto-based products?
To: yocto@lists.yoctoproject.org, Prashant Divate <diwateprashant44@gmail.com>
Cc: rz@zippel.org
Content-Type: multipart/alternative; boundary="000000000000d748a1065e046391"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2026 07:40:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66762

--000000000000d748a1065e046391
Content-Type: text/plain; charset="UTF-8"

Hi Robby,
It looks interesting to me.
Could you tell us under which license it is released?

Thanks
--
Marco

Il sab 17 ott 2026, 09:32 Prashant Divate via lists.yoctoproject.org
<diwateprashant44=gmail.com@lists.yoctoproject.org> ha scritto:

> Hey Robby,
>
> It was great idea to utilize existing bbclass, I also had similar idea in
> past and designed something similar tool. It would be great if you want to
> contribute your thoughts in same tool.
> Browser-based Yocto CVE dashboard for analyzing cve-summary.json,
> reviewing embedded Linux vulnerabilities, and exporting HTML/PDF security
> reports. here is the repo link -
> https://github.com/prashantdivate/VulnTrack
>
> My UI might not be as much great as you but my core idea is some of the
> organizations dont want to share their properitery image CVE and SBOM files
> to 3rd party servers for scanning so I dont wanted any server in the
> background and anyone can host the tool or directly use it in the browser.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66761):
> https://lists.yoctoproject.org/g/yocto/message/66761
> Mute This Topic: https://lists.yoctoproject.org/mt/121800778/1051792
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> m.cavallini@koansoftware.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d748a1065e046391
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Robby,<div dir=3D"auto">It looks interesting to me.</d=
iv><div dir=3D"auto">Could you tell us under which license it is released?<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=C2=A0</div><div d=
ir=3D"auto">--</div><div dir=3D"auto">Marco=C2=A0</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">Il sab 17 ott 2026, 09:32 Prashant Divate via <a href=3D"http://lists.yoc=
toproject.org">lists.yoctoproject.org</a> &lt;diwateprashant44=3D<a href=3D=
"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org<=
/a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Hey=C2=A0R=
obby,<br><br>It was great idea to utilize existing bbclass, I also had simi=
lar idea in past and designed something similar tool. It would be great if =
you want to contribute your thoughts in same tool.<br><span style=3D"color:=
#1f2328;font-family:&#39;Mona Sans VF&#39;,-apple-system,BlinkMacSystemFont=
,&#39;Segoe UI&#39;,&#39;Noto Sans Backtick Fix&#39;,&#39;Noto Sans&#39;,He=
lvetica,Arial,sans-serif,&#39;Apple Color Emoji&#39;,&#39;Segoe UI Emoji&#3=
9;;font-size:16px;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgro=
und-color:#ffffff;text-decoration-style:initial;text-decoration-color:initi=
al;display:inline!important;float:none">Browser-based Yocto CVE dashboard f=
or analyzing cve-summary.json, reviewing embedded Linux vulnerabilities, an=
d exporting HTML/PDF security reports. here is the repo link - </span><a hr=
ef=3D"https://github.com/prashantdivate/VulnTrack" rel=3D"noopener noreferr=
er" target=3D"_blank">https://github.com/prashantdivate/VulnTrack</a>=C2=A0=
<br><br>My UI might not be as much great as you but my core idea is some of=
 the organizations dont want to share their properitery image CVE and SBOM =
files to 3rd party servers for scanning so I dont wanted any server in the =
background and anyone can host the tool or directly use it in the browser.<=
/div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66761): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66761" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/66761</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/121800778/105=
1792" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/121800778/1051792</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:m.cavallini@koansoftware.com" target=
=3D"_blank" rel=3D"noreferrer">m.cavallini@koansoftware.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d748a1065e046391--

