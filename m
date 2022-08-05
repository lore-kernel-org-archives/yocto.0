Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89C13C00140
	for <webhook@archiver.kernel.org>; Fri,  5 Aug 2022 15:53:41 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web09.8686.1659714813009692718
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 08:53:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FiwGCCFM;
 spf=pass (domain: gmail.com, ip: 209.85.219.170,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id 7so4500121ybw.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 08:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=w74mp6RPDo0fxjcQRzdn9NuaNEZbs9WLdFm5FK8AFok=;
        b=FiwGCCFMCn9mydqaHSrrM8fYaSYhYREi6rULcUZFuFsiwxJoXMQnegszFY4SKOWo+N
         EpOv0OJkxwWgRgkeXEGG5Y7qUUQ2kfs4f8r8xE/4RqLARXfU/x9CUlw1J1mFYl3PJ/TU
         wY98cDwVElkvdqP+HuVq6KlSyVpxmMa/pqVovTJMSixrqJwU05GOOCrO2DSofCkxaSWf
         7kSqYM/4+VUgqVF/EQsMmZms+xoFHJ8NJpm2rymvoGSbGMQUJBMUvAymDn5Xgy4QYoH6
         SoOjesNvh+n+4v+H9aUAhWcuban8tcxspyXaq6FmA3qc8L1RXwfDiFnIAd88w7tp4hHF
         i4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=w74mp6RPDo0fxjcQRzdn9NuaNEZbs9WLdFm5FK8AFok=;
        b=jO1KeST/H+ExpFdRqnv4uHMt0AE+0VaXEUwt83esUCA/haQ9Zzr5nPifidKu8XCb5q
         jhc0EIJGZHzFpWwamURwQYE5rlcQat6xpNKR3QVAviN1G1ev33c+hiUyBKzmpJNWPPrd
         uXTQP5sEAUPCIHCfZaVG34/fhIsVn7s1PB5MdhaSxIgcmNfIruIJebsVeXixHkfWSRmz
         KXx3CwgelC4MmdYgtK3dGdia2B1kmDWNH1fjmvQ8thMI0fzWDCT3BDvkZ3LChRJHxBtm
         VlYXKntYS9UVicgqs4yozhcr4H3DNU5ITPR+I/Tl2IpkzN78zsXUm3EvMi/ylW2M/Qfm
         1YRg==
X-Gm-Message-State: ACgBeo26ECNnUCQTBmIlu/xVbNcaHfQnUBwKF81pLDQcwkfZL4dc7jb3
	hS4AFZp692uZjIK6TJVRidGNapn37aw64wk1Uv8=
X-Google-Smtp-Source: 
 AA6agR7r16B7Dc6KUY7k8/kpynuUpl9Y25ldWHYaagU92eRTtVCSAvXfLxHJBFKwY95fsCtc/y0Bg5QueJfslxhqRm0=
X-Received: by 2002:a25:b986:0:b0:671:a73:1ea6 with SMTP id
 r6-20020a25b986000000b006710a731ea6mr5563430ybg.405.1659714812094; Fri, 05
 Aug 2022 08:53:32 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMKF1srnN+K5D6Kf+SfRF1=fE9tFzkAje0Bk=5VZndOU3g0tXw@mail.gmail.com>
 <27844.1659684763044762809@lists.yoctoproject.org>
In-Reply-To: <27844.1659684763044762809@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Aug 2022 08:53:20 -0700
Message-ID: 
 <CAMKF1srmUCWZVSixpjBTOG6w4HNXmHXQCMcWEdK+q_qqZ2EemQ@mail.gmail.com>
Subject: Re: [yocto] [Need help] How to add one package to build directory of
 another package
To: Kuzemko Aleksandr <kuzemkoyocto@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cdaf5905e580779e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Aug 2022 15:53:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57785

--000000000000cdaf5905e580779e
Content-Type: text/plain; charset="UTF-8"

Also add

INSANE_SKIP:libspeechd += "dev-so"

On Fri, Aug 5, 2022 at 12:32 AM Kuzemko Aleksandr <kuzemkoyocto@gmail.com>
wrote:

> Report of progress.
>
> https://github.com/Kuzma30/meta-myconf/commit/25035fdb737aecfb765c963085e898d0f33ac0b9
> Have errors
>
> ERROR: speech-dispatcher-git-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk- package libspeechd contains symlink .so '/usr/lib/libspeechd.so' [dev-so]
> ERROR: speech-dispatcher-git-r0 do_package_qa: Fatal QA errors were found, failing task.
> ERROR: Logfile of failure stored in: /home/qtembed/b2qt/build-raspberrypi4/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/speech-dispatcher/git-r0/temp/log.do_package_qa.26981
> ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-multimedia/speech-dispatcher/speech-dispatcher_git.bb:do_package_qa) failed with exit code '1'
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57782):
> https://lists.yoctoproject.org/g/yocto/message/57782
> Unfollow This Topic: https://lists.yoctoproject.org/unft/92675007/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000cdaf5905e580779e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">Also add</div><div dir=3D"auto"><span styl=
e=3D"color:rgb(36,41,47);font-family:ui-monospace,SFMono-Regular,&quot;SF M=
ono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12=
px;white-space:pre;background-color:rgb(255,255,255)"><br></span></div><div=
 dir=3D"auto"><span style=3D"color:rgb(36,41,47);font-family:ui-monospace,S=
FMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot=
;,monospace;font-size:12px;white-space:pre;background-color:rgb(255,255,255=
)">INSANE_SKIP:libspeechd +=3D &quot;dev-so&quot;</span><br></div><div dir=
=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, Aug 5, 2022 at 12:32 AM Kuzemko Aleksandr &lt;<a h=
ref=3D"mailto:kuzemkoyocto@gmail.com">kuzemkoyocto@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Report of progress.<br><a href=3D"=
https://github.com/Kuzma30/meta-myconf/commit/25035fdb737aecfb765c963085e89=
8d0f33ac0b9" rel=3D"noopener" target=3D"_blank">https://github.com/Kuzma30/=
meta-myconf/commit/25035fdb737aecfb765c963085e898d0f33ac0b9</a><br>Have err=
ors<br>
<pre>ERROR: speech-dispatcher-git-r0 do_package_qa: QA Issue: non -dev/-dbg=
/nativesdk- package libspeechd contains symlink .so &#39;/usr/lib/libspeech=
d.so&#39; [dev-so]
ERROR: speech-dispatcher-git-r0 do_package_qa: Fatal QA errors were found, =
failing task.
ERROR: Logfile of failure stored in: /home/qtembed/b2qt/build-raspberrypi4/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/speech-dispatcher/git-r=
0/temp/log.do_package_qa.26981
ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-multimedia/sp=
eech-dispatcher/speech-dispatcher_git.bb:do_package_qa) failed with exit co=
de &#39;1&#39;</pre>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57782): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57782" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57782</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/9267500=
7/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/unft/92675007/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000cdaf5905e580779e--

