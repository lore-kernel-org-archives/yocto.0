Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 066ECD262B2
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 08:17:10 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7506.1768983426116607189
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 00:17:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Njy+hiVx;
 spf=pass (domain: smile.fr, ip: 209.85.221.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42fb2314f52so3494120f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 00:17:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768983424; cv=none;
        d=google.com; s=arc-20240605;
        b=kjCgIIR5VwevU0Qhh1bnt8DCzHi+fZR+jDuYdaW8B/GyvfZRaoiXjb9rZxLEcuo+jK
         zMnOAX70q5oig0JPwec39scVrmEr3tadPQJ1yNzDKvzBJxqo/QXbUfvDY8apnQ4JvEvp
         J8axu0mOerDA6leWakL3+70NrvK+XcQwe0JvbhhhUN1r60smb44cOc21tWBTy/lK5Soe
         g+zaORdDdH6fwC5QikgBHEmxWKLdZvZXdjW9jCgYUXBTfZY1+QBsaBBNQ0Q3Up/8mDTt
         N9YZhLNqIh5No0BNN+5pVX3yuk1B/8G5Owt/o5uQ5dvnmg+LUxpfrjE4Jeno+Nd81qp8
         4yuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I5QhlNhZXCHlCYzzYdoI4h7F5bRKxS0qt/QUyd1cLgU=;
        fh=8PqwfhFekQejlvbVMXUiGT793E1R63OvowZnDbuHfEE=;
        b=Qb7jdCtQqMcaCNJOjS4TFZ6fd/d1N17DW5M8Sj75SlyzM+s5XAuNGFvkopRS8lHIf1
         fm0bNA1CPlu+2fBuW1Jt2tl4U61P6xCSPIgPtB/nLB7wlXog4JgU95Z8d25NNgQ0BqT5
         /GzsGQOHUFvGRc9i7GVNhv9cyr6WGVhQUO5wNzYnYZ912Pu5AtzAkz2tU6tXbsFwh3ty
         gQmYEmAASYv5JVwAcKO0n922pddIec+sLdI9Q3L7k7O5QRAgT4koCFirh7YPOE015o3v
         carbgRp7vjPx3iLmINW/wEEibPUs6nTEs7KsRBEr4a47VeIEIiIXltOWFdPHteEFT9pY
         gCeA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1768983424; x=1769588224; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I5QhlNhZXCHlCYzzYdoI4h7F5bRKxS0qt/QUyd1cLgU=;
        b=Njy+hiVxLOj89fsdHtj0gjLH38F9XXIRsuHkxHtbLWuaLyIwMW5Bh/h7pi5J3GfFeK
         /SAtYrfz0/+fuCsH7ZlPtcXJLMsVxSBMmuc4egyAb+A2FYquiZb9CB13yppc/jcB/GbG
         3zxlffCjF1TLDN/kUf3EAc3mEyYXjgFw527qI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768983424; x=1769588224;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I5QhlNhZXCHlCYzzYdoI4h7F5bRKxS0qt/QUyd1cLgU=;
        b=Z/4I3osf94nUJTGaVnix1Klhm9B6aYxNlzBWnwq4mJxetH8CzFSWlcHG3JgNOI6rYK
         a+N7IJvKxZFw0tNg4fRr/V2zH2rthGFW/HD/wIBcCAmbsvlx9AvT8wCQ3CksOGQDqUSx
         6gRVZaRKDr0GJghTBHZVpc8ejyGbMzeZWJfLgvyCd5E6rMg7bu7FMgfZnhdx1OgqgF2I
         OTxN50+VU+A4hE2+E62QHyxrvqXyIgrg0m6UJ26/OFBP6tw5FkWilVsJi0SB4jyV9Dgq
         EBKHwICpuE/N+0qAlZuWb8l7T3bRr/AU/TzqANHXFn1x/P0E8ASxY5WBd9FS6ltJxZS8
         fXlQ==
X-Gm-Message-State: AOJu0YxUu2lZ8JrOGVjwjjVAGvfBDwPMtBuMVWUQU/hVTA28th4sCZ1f
	ebjQy8oqzjtNvGmAwOdLrnrlstWkfWrfBb8gvzgY2e/aIwhrNgJmD+ofTUs02XIXojdpwF5MIRY
	Zg8DvfcJfn4jpIzUdB01FLez7OE9dfiRIxkQo7m7GNS4DJc4MhzXHTTI=
X-Gm-Gg: AZuq6aIYcC78YXDyUHzGI1+DftA2rA+rCurAQ86w/msePzRj//QyVQR+hF3bgH5TyNJ
	/75VLJg++QBIl18VZbIH4T/g8QTrBPqP122f+XdlotKXbBu2PyhlbdEyJ7/qrp7erSZhMRocHJ/
	a+QdxhN1YXlbcqAIGfg1jRd9mvfnU5mX6Mt57AOyndzIaOx+o+5yvkDHt4ZLUEXEzt69zCjVs0Y
	+2v/2Kos8eFeZIqvqt9L2HQSr8Ss7u01i1z8VT6SuscAiutcEdUcx8VO0WERtLSxvbzBLUa/IM7
	fDevzB5EwSVvGIp6B0kXlpuHB+I/WA==
X-Received: by 2002:a05:6000:178c:b0:431:7a0:dbc2 with SMTP id
 ffacd0b85a97d-4358ff7cec8mr6813062f8f.31.1768983424150; Wed, 21 Jan 2026
 00:17:04 -0800 (PST)
MIME-Version: 1.0
References: <2fb5a1df2514dd372d6681314737889411eb935f.camel@pbarker.dev>
In-Reply-To: <2fb5a1df2514dd372d6681314737889411eb935f.camel@pbarker.dev>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 21 Jan 2026 09:16:37 +0100
X-Gm-Features: AZwV_QiIOs7O-YuT9qPZWPuhl1b9hr7VevHlEI2RS9jMava12gi_R4AR_zftYcI
Message-ID: <CAMSfU+5uQ8w-O4=5Q23rkVX4nTZatJV7zOsMugb8oOoFMLjYTw@mail.gmail.com>
Subject: Re: [yocto] Progress on AB-INT issues // Help needed!
To: yocto@lists.yoctoproject.org, paul@pbarker.dev
Cc: "openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000009c409b0648e18cd9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 08:17:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66164

--0000000000009c409b0648e18cd9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 20 janv. 2026 =C3=A0 18:58, Paul Barker via lists.yoctoproject.org =
<paul=3D
pbarker.dev@lists.yoctoproject.org> a =C3=A9crit :

> Hi all,
>
> Firstly I want to thank everyone who has helped out with the
> intermittent autobuilder issues and our current high priority issues so
> far. There have been contributions from several different folks and they
> are really appreciated.
>
> This help means that we've made good progress!
>
> We've been able to resolve several AB-INT issues so far (#16118, #16121,
> #15912, #15188, #15495) and have patches available for others which need
> reviewing and merging (#15696, #15885). Some issues are resolved on
> master and just waiting on backporting of patches to the relevant stable
> branches (#16000, maybe others).
>

As for stable branches, some AB-INT bugs have fixes in review:
* 16000 =E2=80=93 AB-INT: ffmpeg build failing =3D> fix currently in review=
 for
integration in whinlatter
* 16099 =E2=80=93 devtool: oe-selftest failing on Ubuntu 25.10: couldn't al=
locate
absolute path for 'null'. =3D> patch in review for integration in whinlatte=
r
* 16137 =E2=80=93 AB-INT: core-image-sato.bb:do_testsdk fails on ftpmirror.=
gnu.org
returning 502 Bad Gateway =3D> patch in review for integration in kirkstone

Some are "in progress":
* 15696 =E2=80=93 AB_INT: resulttool: File exists =3D> I've tried a fix but=
 it was
apparently incomplete for stable, I will wait for the recent patches to
land and get tested on master before trying again.
* 16122 =E2=80=93 [scarthgap] AB-INT: qemuarm64-tc/qemux86-tc
rust.RustSelfTestSystemEmulated.test_rust fails with "panicked at
src/tools/compiletest/src/lib.rs:1054:31" =3D> I keep to reproduce this one
under an instrumented branch but no luck. On the other hand, I also did not
trigger this one during my tests on the recent scarthgap patch series.

We need to keep up the momentum as we still have a couple of open issues
> blocking the Yocto 6.0 M1 build and we still have too many intermittent
> failures occurring on the autobuilder.
>
> There are a few issues I can flag where we need extra help:
>
> - segfault in matchbox-windowmanager on qemux86-64 intermittently
>   (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13908):
>   It's unclear why the simple-looking code here is segfaulting. Ross has
>   tried running with ASAN but that didn't give us any new information.
>   Can someone add further debugging to the code to catch what's going
>   on?
>
> - AB-INT: fetch/sstate/CDN - Missing objects in the cache: Bad file
>   descriptor (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15945):
>   The error here suggests we may have exceeded limits on the number of
>   open file descriptors. Can someone add diagnostics to the relevant
>   code path to print how many open file descriptors we have when the
>   error occurs?
>
> - AB-INT: runqemu.QemuTest.test_qemu_can_shutdown hangs with "Data
>   received serial thread"
>   (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15698):
>   This needs further investigation.
>
> - AB-INT PTEST: openssl ['Dubious,_test_returned_1', 'openssl'] test
>   failure (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15357):
>   We need someone to check the logs and confirm that it is always the
>   same test case that is failing. If that's true, we can take a patch to
>   skip the flaky test.
>
> - Various gstreamer PTEST failures (#16127, #16108, #15408, #15973,
>   #15910, #15718):
>   Each of these needs to be reviewed to see if upstream have replied to
>   our bug reports. If any haven't been filed upstream then they need to
>   be. If there isn't an upstream fix available, we can take patches to
>   skip the flaky tests.
>
> - Various PTEST failures on RISC-V (#15895, #15884, #15942, #15929,
>   #15896):
>   We don't use KVM for running qemuriscv64 so tests can be much slower,
>   this may be causing various timeouts. Some of the failing cases create
>   a large amount of data so there may be issues with buffering. Further
>   investigation is needed, we could take patches to skip these tests on
>   RISC-V.
>
> We will have another call tomorrow at 09:00 PST / 17:00 UTC to discuss
> the issues further and make sure we're focusing effort in the right
> places. Please attend via zoom if you're able to help out:
>
> https://lists.yoctoproject.org/g/yocto/topic/yocto_project_ab_int_bug/117=
364044
> .
>
> If you're unable to attend the call then you can still help by picking
> up one of the issues above.
>
> Best regards,
>
> --
> Paul Barker
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66163):
> https://lists.yoctoproject.org/g/yocto/message/66163
> Mute This Topic: https://lists.yoctoproject.org/mt/117367430/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--0000000000009c409b0648e18cd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 20=
 janv. 2026 =C3=A0=C2=A018:58, Paul Barker via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;paul=3D<a href=3D"mailto:pbark=
er.dev@lists.yoctoproject.org">pbarker.dev@lists.yoctoproject.org</a>&gt; a=
 =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi all,<br>
<br>
Firstly I want to thank everyone who has helped out with the<br>
intermittent autobuilder issues and our current high priority issues so<br>
far. There have been contributions from several different folks and they<br=
>
are really appreciated.<br>
<br>
This help means that we&#39;ve made good progress!<br>
<br>
We&#39;ve been able to resolve several AB-INT issues so far (#16118, #16121=
,<br>
#15912, #15188, #15495) and have patches available for others which need<br=
>
reviewing and merging (#15696, #15885). Some issues are resolved on<br>
master and just waiting on backporting of patches to the relevant stable<br=
>
branches (#16000, maybe others).<br></blockquote><div><br></div><div>As for=
 stable branches, some AB-INT bugs have fixes in review:</div><div>* 16000 =
=E2=80=93 AB-INT: ffmpeg build failing =3D&gt; fix currently in review for =
integration in whinlatter<br>* 16099 =E2=80=93 devtool: oe-selftest failing=
 on Ubuntu 25.10: couldn&#39;t allocate absolute path for &#39;null&#39;. =
=3D&gt; patch in review for integration in whinlatter</div><div>* 16137 =E2=
=80=93 AB-INT: core-image-sato.bb:do_testsdk fails on=20
<a href=3D"http://ftpmirror.gnu.org">ftpmirror.gnu.org</a> returning 502 Ba=
d Gateway =3D&gt; patch in review for=20
integration in kirkstone</div><div><br></div><div>Some are &quot;in progres=
s&quot;:</div><div>* 15696 =E2=80=93 AB_INT: resulttool: File exists =3D&gt=
; I&#39;ve tried a fix but it was apparently incomplete for stable, I will =
wait for the recent patches to land and get tested on master before trying =
again.<br>* 16122 =E2=80=93 [scarthgap] AB-INT: qemuarm64-tc/qemux86-tc=20
rust.RustSelfTestSystemEmulated.test_rust fails with &quot;panicked at=20
src/tools/compiletest/src/lib.rs:1054:31&quot; =3D&gt; I keep to reproduce =
this one under an instrumented branch but no luck. On the other hand, I als=
o did not trigger this one during my tests on the recent scarthgap patch se=
ries.<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

We need to keep up the momentum as we still have a couple of open issues<br=
>
blocking the Yocto 6.0 M1 build and we still have too many intermittent<br>
failures occurring on the autobuilder.<br>
<br>
There are a few issues I can flag where we need extra help:<br>
<br>
- segfault in matchbox-windowmanager on qemux86-64 intermittently<br>
=C2=A0 (<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1390=
8" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D13908</a>):<br>
=C2=A0 It&#39;s unclear why the simple-looking code here is segfaulting. Ro=
ss has<br>
=C2=A0 tried running with ASAN but that didn&#39;t give us any new informat=
ion.<br>
=C2=A0 Can someone add further debugging to the code to catch what&#39;s go=
ing<br>
=C2=A0 on?<br>
<br>
- AB-INT: fetch/sstate/CDN - Missing objects in the cache: Bad file<br>
=C2=A0 descriptor (<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D15945" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D15945</a>):<br>
=C2=A0 The error here suggests we may have exceeded limits on the number of=
<br>
=C2=A0 open file descriptors. Can someone add diagnostics to the relevant<b=
r>
=C2=A0 code path to print how many open file descriptors we have when the<b=
r>
=C2=A0 error occurs?<br>
<br>
- AB-INT: runqemu.QemuTest.test_qemu_can_shutdown hangs with &quot;Data<br>
=C2=A0 received serial thread&quot;<br>
=C2=A0 (<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1569=
8" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D15698</a>):<br>
=C2=A0 This needs further investigation.<br>
<br>
- AB-INT PTEST: openssl [&#39;Dubious,_test_returned_1&#39;, &#39;openssl&#=
39;] test<br>
=C2=A0 failure (<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D15357" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproje=
ct.org/show_bug.cgi?id=3D15357</a>):<br>
=C2=A0 We need someone to check the logs and confirm that it is always the<=
br>
=C2=A0 same test case that is failing. If that&#39;s true, we can take a pa=
tch to<br>
=C2=A0 skip the flaky test.<br>
<br>
- Various gstreamer PTEST failures (#16127, #16108, #15408, #15973,<br>
=C2=A0 #15910, #15718):<br>
=C2=A0 Each of these needs to be reviewed to see if upstream have replied t=
o<br>
=C2=A0 our bug reports. If any haven&#39;t been filed upstream then they ne=
ed to<br>
=C2=A0 be. If there isn&#39;t an upstream fix available, we can take patche=
s to<br>
=C2=A0 skip the flaky tests.<br>
<br>
- Various PTEST failures on RISC-V (#15895, #15884, #15942, #15929,<br>
=C2=A0 #15896):<br>
=C2=A0 We don&#39;t use KVM for running qemuriscv64 so tests can be much sl=
ower,<br>
=C2=A0 this may be causing various timeouts. Some of the failing cases crea=
te<br>
=C2=A0 a large amount of data so there may be issues with buffering. Furthe=
r<br>
=C2=A0 investigation is needed, we could take patches to skip these tests o=
n<br>
=C2=A0 RISC-V.<br>
<br>
We will have another call tomorrow at 09:00 PST / 17:00 UTC to discuss<br>
the issues further and make sure we&#39;re focusing effort in the right<br>
places. Please attend via zoom if you&#39;re able to help out:<br>
<a href=3D"https://lists.yoctoproject.org/g/yocto/topic/yocto_project_ab_in=
t_bug/117364044" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/yocto/topic/yocto_project_ab_int_bug/117364044</a>.<br>
<br>
If you&#39;re unable to attend the call then you can still help by picking<=
br>
up one of the issues above.<br>
<br>
Best regards,<br>
<br>
-- <br>
Paul Barker<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66163): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66163" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66163</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117367430/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117367430/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000009c409b0648e18cd9--

