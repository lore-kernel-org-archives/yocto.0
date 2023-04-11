Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868FC7619A
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 08:16:30 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.8647.1681200982723576118
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 01:16:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MS9UEGWO;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id gb34so18395058ejc.12
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 01:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681200979;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dUXnKF1JWw40dD1YtML6o/jYznQHI0ujhh6O1r1NyQY=;
        b=MS9UEGWOi3RyNyWjTlX8+LxtVhLG/JnGSteCOceu89mc2SYRAcsEofbemWJZy46XCg
         q2ON5XDdQ2ZUnIMo/pcY/SzzvtcTwcBt0P28zFFPWfIMpDjDCoARAxqRv58Es3rQxvJF
         J4ZXuukbpnJtXrh6QVB5IVIQ7eMVoK5hw8WkX21m8DlCUgNXYtgijMUA0kvcg0AMg13M
         rOhA45V14lbA+qvk5FjYirelwZf9tCdRYuQ3KM/RmlWuPO/2J8L27n/uDr+XXEIr8gN9
         G+JrNLr+aTTt9RA2CGos/GpKkCUCZ6qhryyTx2e5hs4DzDIARoSkmSsys/3ImyxJhAvv
         S0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681200979;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dUXnKF1JWw40dD1YtML6o/jYznQHI0ujhh6O1r1NyQY=;
        b=TSvjO0QKWREju/oh6NGPuBoJ6UyhHMDXXkHVx/VuVUI10FtADnYh9ED7JlNje58QnQ
         igVSgk1aMh91MTncjBNLpzhNXJ33cBajdosPHRWLuWxwI5y9YUnqoZ8Xm+rjVOtFmBtr
         FcX+b7UP69RG/VeHykldoiq10nd+WQCBLp8njFPL2kQJNeOnlCdpsXxSZTw9rZKo4Zk8
         IfTetGXS+MDjD88ouH9f6hWLsvo0QlVsbRUxfns0SCNh2DQHVvqH4q1DlJHFDwOH4JuF
         zBAK3gphl/Wi5kOB+oL4Ags9Bh3I46SU+L443EVF6IyB4AHaiFHEU7ixtsPaRmGXYATJ
         uztA==
X-Gm-Message-State: AAQBX9cfnsRc3M0B4Jt/5SnON7jkXFoDfUgOQ5Zbl06iSBEgJnN1WUx9
	znRUjIDEMGrMk1M+t77u84k+fb0tm/muuH2lmP8=
X-Google-Smtp-Source: AKy350YesFqiNuyRNUzK4cl9OiGa9JFON5vN1/4uQuowGZJrTMFh3Uol5dJSsfz3LpHNxo96UnhOKfcqX3s2AsKyUwI=
X-Received: by 2002:a17:906:8d0b:b0:94a:873e:bda4 with SMTP id
 rv11-20020a1709068d0b00b0094a873ebda4mr2603929ejc.9.1681200978521; Tue, 11
 Apr 2023 01:16:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1srFjLA0S+TOprWbfOV4er40E2KQ7GOkW7S=2_JgeKy0yw@mail.gmail.com>
 <10320.1681197193406830686@lists.yoctoproject.org> <CAMKF1sq8ua5kXuoYz1x=8_yGfL3cMYRWqTnuQD_iKkj9Hd=75w@mail.gmail.com>
In-Reply-To: <CAMKF1sq8ua5kXuoYz1x=8_yGfL3cMYRWqTnuQD_iKkj9Hd=75w@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 11 Apr 2023 13:46:07 +0530
Message-ID: <CAPJWBnhb+Tets9-K7=jnTtpEhJG75hRv65wT7oeN340G+YmJ0w@mail.gmail.com>
Subject: Re: [yocto] Missing .o files.
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001ef1ff05f90b1bd3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 08:16:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59674

--0000000000001ef1ff05f90b1bd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi khem,
If possible can check the makefile once and guide me.

On Tue, 11 Apr 2023 at 12:50 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Apr 11, 2023 at 12:13=E2=80=AFAM MOHAMMED HASSAN
> <hassanchattarki@gmail.com> wrote:
> >
> > Hi Khem,
> > Thanks for all your support.
> > I added the following lines in my recipe file.
> > do_install() {
> > install -d ${D}${bindir}
> > # install -m 0755
> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v=
3.2/build/Z3GatewayHostm/build/exe
> ${D}
> > install -m 0755
> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v=
3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
> ${D}${bindir}
>
> > # chmod 0755
> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v=
3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
> > # cp
> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v=
3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
> ${D}${bindir}
>
>
> > }
> >
> > bitbake zigbee works fine but bitbake lib32-amlogic-yocto returns the
> error message.
> >
> > ERROR: lib32-zigbee-0.1-r0 do_package: Fatal errors occurred in
> subprocesses:
> > Command '['arm-pokymllib32-linux-gnueabi-objcopy', '--only-keep-debug',
> '/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnu=
eabi/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3',
> '/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnu=
eabi/lib32-zigbee/0.1-r0/package/usr/bin/.debug/hostforEdge3']'
> returned non-zero exit status 1.
> > Subprocess output:arm-pokymllib32-linux-gnueabi-objcopy:
> /home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnue=
abi/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3:
> file format not recognized
> >
> > ERROR: Logfile of failure stored in:
> /home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnue=
abi/lib32-zigbee/0.1-r0/temp/log.do_package.246282
> > ERROR: Task
> (virtual:multilib:lib32:/home/mohan/amlogic/meta-c/recipes-example/zigbee=
/zigbee_0.1.bb:do_package)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 5830 tasks of which 5825 didn't need to
> be rerun and 1 failed.
> >
> > Is it because of the compiler in the makefile?
>
> you need to build for 32bit as well. I think you are building these
> binaries outside yocto and then weirdly mixing the install. So perhaps
> that should be fixed first maybe.
>
> > Is it possible to bypass this error.
> >
> > Please guide.
> > Thanks and Regards,
> > Hassan
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#59672):
> https://lists.yoctoproject.org/g/yocto/message/59672
> > Unfollow This Topic:
> https://lists.yoctoproject.org/unft/98191767/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
> thats
>

--0000000000001ef1ff05f90b1bd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi khem,</div><div dir=3D"auto">If possible can check the=
 makefile once and guide me.</div><div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, 11 Apr 2023 at 12:50 PM, Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-le=
ft-color:rgb(204,204,204)">On Tue, Apr 11, 2023 at 12:13=E2=80=AFAM MOHAMME=
D HASSAN<br>
&lt;<a href=3D"mailto:hassanchattarki@gmail.com" target=3D"_blank">hassanch=
attarki@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt; Thanks for all your support.<br>
&gt; I added the following lines in my recipe file.<br>
&gt; do_install() {<br>
&gt; install -d ${D}${bindir}<br>
&gt; # install -m 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/fi=
les/gecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe ${D}<br>
&gt; install -m 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/file=
s/gecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3 ${D}${bi=
ndir}<br>
<br>
&gt; # chmod 0755 /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/g=
ecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3<br>
&gt; # cp /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk=
_suite/v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3 ${D}${bindir}<br>
<br>
<br>
&gt; }<br>
&gt;<br>
&gt; bitbake zigbee works fine but bitbake lib32-amlogic-yocto returns the =
error message.<br>
&gt;<br>
&gt; ERROR: lib32-zigbee-0.1-r0 do_package: Fatal errors occurred in subpro=
cesses:<br>
&gt; Command &#39;[&#39;arm-pokymllib32-linux-gnueabi-objcopy&#39;, &#39;--=
only-keep-debug&#39;, &#39;/home/mohan/amlogic/build/tmp/work/armv7at2hf-ne=
on-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdg=
e3&#39;, &#39;/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib3=
2-linux-gnueabi/lib32-zigbee/0.1-r0/package/usr/bin/.debug/hostforEdge3&#39=
;]&#39; returned non-zero exit status 1.<br>
&gt; Subprocess output:arm-pokymllib32-linux-gnueabi-objcopy: /home/mohan/a=
mlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbe=
e/0.1-r0/package/usr/bin/hostforEdge3: file format not recognized<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/wor=
k/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-zigbee/0.1-r0/temp/log.do=
_package.246282<br>
&gt; ERROR: Task (virtual:multilib:lib32:/home/mohan/amlogic/meta-c/recipes=
-example/zigbee/zigbee_0.1.bb:do_package) failed with exit code &#39;1&#39;=
<br>
&gt; NOTE: Tasks Summary: Attempted 5830 tasks of which 5825 didn&#39;t nee=
d to be rerun and 1 failed.<br>
&gt;<br>
&gt; Is it because of the compiler in the makefile?<br>
<br>
you need to build for 32bit as well. I think you are building these<br>
binaries outside yocto and then weirdly mixing the install. So perhaps<br>
that should be fixed first maybe.<br>
<br>
&gt; Is it possible to bypass this error.<br>
&gt;<br>
&gt; Please guide.<br>
&gt; Thanks and Regards,<br>
&gt; Hassan<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#59672): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59672" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/59672</a><br>
&gt; Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/98=
191767/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/unft/98191767/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
thats<br>
</blockquote></div></div>

--0000000000001ef1ff05f90b1bd3--

