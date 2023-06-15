Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84E78EB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:43:02 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web11.23718.1686847379712531578
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:42:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=VYgrAwef;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: sateesh0457@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-55b069a7cf4so1640026eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686847379; x=1689439379;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/Fk4Xs5RmfZ5Sq6AixmG8stPJheX+8AVosx9QCvJnFA=;
        b=VYgrAwefBv2fPLVhOgemWBM8Bsh6GZMhB8YvjrLT2489rs3dwOfcIsX8YfSBXO/l7q
         KS1l+vDLuberidFeLkj3OG7MoxSLU/2xkiq1CO3pf7TrsVl7OdW1OLf5bYaXQaxjWkYP
         RFCkak7k7a35eiMEyAefH/oHgbcV28kXPRKvBHCxWUYBlLXeFtCmlOxHmRmrIfZUsDyI
         rnRl85KT1iE2jVcq6bI5+X50RtlnCKbRwUfp4uifK+86tpSoCL/PxWrNp9gVYGDX7N2e
         Wf9gEczEeXmcw3FC4xtKkQ9wlQmYOk9cZ93y3yGEyxGLa+BDGUDi0P154BSbpuvIwmlM
         mcMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686847379; x=1689439379;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Fk4Xs5RmfZ5Sq6AixmG8stPJheX+8AVosx9QCvJnFA=;
        b=LmbcDRTJoo4lD6pxP1xBU8UbW/cm08bB8v8lZXCQAzSMV//sobhvOBzaV6WiFzCXbV
         kDfhEmih621y6cmVG6CXX013VlUsAE/MDskZuxPziv+59X+NqJgO1gzRJOQ7P5M1Ud2K
         cBH5pJMeDXV9PPcX8NK9hcfhuvp5KxfI2zvS5uSWAmAsdadTMCi2rxpXu8jxzNTENQe/
         Pu0gWTjN6fcgepKDwC/GlbPDKg6ZJtCb/qa35jsB9mENOq6I7akXG7JdujJbANStmop0
         YxTim7lTnHjxlSQhBEDdXIjCZHHOo+IpVarhy0Qz9EtfNJXKWwl784Ereu1P3FxO9iUt
         rAeQ==
X-Gm-Message-State: AC+VfDxSoAr4DC8Fx6NfonDfQrdiJm3B8lSEOsltnFNN/qSskvrCYtHl
	1qHlfqXnx9w7Qe6zToBIfds4YjOgmkx2NWUoRcZcO2Jb
X-Google-Smtp-Source: ACHHUZ6d0obEDv9Hqa5suXN3wLAzW+5/YUqTh5PQyp0kQ+DEpmMCaZ6nT6t3dnxKPDGwjpRVXbUmHzvuAeOxO/6RNtw=
X-Received: by 2002:a4a:d9d5:0:b0:55b:2f80:39e4 with SMTP id
 l21-20020a4ad9d5000000b0055b2f8039e4mr12951606oou.4.1686847378955; Thu, 15
 Jun 2023 09:42:58 -0700 (PDT)
MIME-Version: 1.0
References: <mkpv.1686732587244371536.088u@lists.yoctoproject.org> <CAMKF1srg5P9TfOB=K+QHbqvmthTj3FC6eZymJ36GZmJtay5xMw@mail.gmail.com>
In-Reply-To: <CAMKF1srg5P9TfOB=K+QHbqvmthTj3FC6eZymJ36GZmJtay5xMw@mail.gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Thu, 15 Jun 2023 22:12:46 +0530
Message-ID: <CACsETSt9Kg1CV3fS6z25cjX4-1v0=gFgLDmkoURPQr1ebz2_FQ@mail.gmail.com>
Subject: Re: [yocto] Error while testing "bitbake core-image-base -c testimage
 -v" #bitbake #dunfell
To: Khem Raj <raj.khem@gmail.com>
Cc: lavkhush2208@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d0222005fe2dc255"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:43:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60319

--000000000000d0222005fe2dc255
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We don't want to build qemu at all. We are building  for our custom target
machine.

Same commands we have executed we want to exclude qemu test running. Only
our target  testimage should pass .


Regards,
Sateesh

On Thu, 15 Jun, 2023, 10:10 pm Khem Raj, <raj.khem@gmail.com> wrote:

> On Wed, Jun 14, 2023 at 1:49=E2=80=AFAM <lavkhush2208@gmail.com> wrote:
> >
> > Hi all,
> >
> > I was testing my core-image-base -c testimage with test-suit and gettin=
g
> error:-
> >
> > ERROR: core-image-base-1.0-r0 do_testimage: Output from runqemu:
> > runqemu - WARNING -
> /home/kush/khu/sources/build/tmp-glibc/deploy/images/board/core-image-bas=
e-board.qemuboot.conf
> doesn't exist
>
> You do not have image built. So first build the image then run tests.
>
> bitbake core-image-base
> bitbake core-image-base  -ctestimage
>
> Or you can add TESTIMAGE_AUTO:qemuall =3D "1" to local.conf  which will r=
un
> the tests automatically when doing bitbake core-image-base for any
> qemu based machine target and second step is not needed.
>
> > ls: cannot access
> '/home/kush/khu/sources/build/tmp-glibc/deploy/images/board/*.qemuboot.co=
nf':
> No such file or directory
> > runqemu - ERROR - Command 'ls -t
> /home/kush/khu/sources/build/tmp-glibc/deploy/images/board/*.qemuboot.con=
f'
> returned non-zero exit status 2.
> > runqemu - INFO - Cleaning up
> >
> >
> > WARNING: core-image-base-1.0-r0 do_testimage: Qemu ended unexpectedly,
> dump data from host is in
> /home/integration-team/kush/khu/sources/build/tmp-glibc/log/runtime-hostd=
ump/202306141146_qemu
> > ERROR: core-image-base-1.0-r0 do_testimage: Error executing a python
> function in exec_python_func() autogenerated:
> >
> > The stack trace of python calls that resulted in this exception/failure
> was:
> > File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
> >      0001:
> >  *** 0002:do_testimage(d)
> >      0003:
> > File:
> '/home/integration-team/kush/khu/sources/openembedded-core/meta/classes/t=
estimage.bbclass',
> lineno: 129, function: do_testimage
> >      0125:    netstat -an
> >      0126:}
> >      0127:
> >      0128:python do_testimage() {
> >  *** 0129:    testimage_main(d)
> >      0130:}
> >      0131:
> >      0132:addtask testimage
> >      0133:do_testimage[nostamp] =3D "1"
> > File:
> '/home/integration-team/kush/khu/sources/openembedded-core/meta/classes/t=
estimage.bbclass',
> lineno: 371, function: testimage_main
> >      0367:    orig_sigterm_handler =3D signal.signal(signal.SIGTERM,
> sigterm_exception)
> >      0368:    try:
> >      0369:        # We need to check if runqemu ends unexpectedly
> >      0370:        # or if the worker send us a SIGTERM
> >  *** 0371:        tc.target.start(params=3Dd.getVar("TEST_QEMUPARAMS"),
> runqemuparams=3Dd.getVar("TEST_RUNQEMUPARAMS"))
> >      0372:        import threading
> >      0373:        try:
> >      0374:
> threading.Timer(int(d.getVar("TEST_OVERALL_TIMEOUT")), handle_test_timeou=
t,
> (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start()
> >      0375:        except ValueError:
> > File:
> '/home/integration-team/kush/khu/sources/openembedded-core/meta/lib/oeqa/=
core/target/qemu.py',
> lineno: 67, function: start
> >      0063:            if self.runner.server_ip:
> >      0064:                self.server_ip =3D self.runner.server_ip
> >      0065:        else:
> >      0066:            self.stop()
> >  *** 0067:            raise RuntimeError("FAILED to start qemu - check
> the task log and the boot log")
> >      0068:
> >      0069:    def stop(self):
> >      0070:        self.runner.stop()
> > Exception: RuntimeError: FAILED to start qemu - check the task log and
> the boot log
> >
> > ERROR: Logfile of failure stored in:
> /home/kush/khu/sources/build/tmp-glibc/work/board-oe-linux/core-image-bas=
e/1.0-r0/temp/log.do_testimage.17255
> > ERROR: Task
> (/home/kush/khu/sources/meta-exaleap/recipes-images/images/core-image-bas=
e.bb:do_testimage)
> failed with exit code '1'
> >
> > Can anyone help me in this, where i am doing wrong.
> >
> > T&R
> > luvkhush
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60318):
> https://lists.yoctoproject.org/g/yocto/message/60318
> Mute This Topic: https://lists.yoctoproject.org/mt/99523749/4526955
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> sateesh0457@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d0222005fe2dc255
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">We don&#39;t want to build qemu at all. We are building=
=C2=A0 for our custom target machine.=C2=A0<div dir=3D"auto"><br></div><div=
 dir=3D"auto">Same commands we have executed we want to exclude qemu test r=
unning. Only our target=C2=A0 testimage should pass .</div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><di=
v dir=3D"auto">Sateesh</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, 15 Jun, 2023, 10:10 pm Khem Raj, &lt;=
<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Wed, Jun 14, 2023 at 1:49=E2=80=AFA=
M &lt;<a href=3D"mailto:lavkhush2208@gmail.com" target=3D"_blank" rel=3D"no=
referrer">lavkhush2208@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I was testing my core-image-base -c testimage with test-suit and getti=
ng error:-<br>
&gt;<br>
&gt; ERROR: core-image-base-1.0-r0 do_testimage: Output from runqemu:<br>
&gt; runqemu - WARNING - /home/kush/khu/sources/build/tmp-glibc/deploy/imag=
es/board/core-image-base-board.qemuboot.conf doesn&#39;t exist<br>
<br>
You do not have image built. So first build the image then run tests.<br>
<br>
bitbake core-image-base<br>
bitbake core-image-base=C2=A0 -ctestimage<br>
<br>
Or you can add TESTIMAGE_AUTO:qemuall =3D &quot;1&quot; to local.conf=C2=A0=
 which will run<br>
the tests automatically when doing bitbake core-image-base for any<br>
qemu based machine target and second step is not needed.<br>
<br>
&gt; ls: cannot access &#39;/home/kush/khu/sources/build/tmp-glibc/deploy/i=
mages/board/*.qemuboot.conf&#39;: No such file or directory<br>
&gt; runqemu - ERROR - Command &#39;ls -t /home/kush/khu/sources/build/tmp-=
glibc/deploy/images/board/*.qemuboot.conf&#39; returned non-zero exit statu=
s 2.<br>
&gt; runqemu - INFO - Cleaning up<br>
&gt;<br>
&gt;<br>
&gt; WARNING: core-image-base-1.0-r0 do_testimage: Qemu ended unexpectedly,=
 dump data from host is in /home/integration-team/kush/khu/sources/build/tm=
p-glibc/log/runtime-hostdump/202306141146_qemu<br>
&gt; ERROR: core-image-base-1.0-r0 do_testimage: Error executing a python f=
unction in exec_python_func() autogenerated:<br>
&gt;<br>
&gt; The stack trace of python calls that resulted in this exception/failur=
e was:<br>
&gt; File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function:=
 &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;=C2=A0 *** 0002:do_testimage(d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt; File: &#39;/home/integration-team/kush/khu/sources/openembedded-core/m=
eta/classes/testimage.bbclass&#39;, lineno: 129, function: do_testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0125:=C2=A0 =C2=A0 netstat -an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0126:}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0127:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0128:python do_testimage() {<br>
&gt;=C2=A0 *** 0129:=C2=A0 =C2=A0 testimage_main(d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0130:}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0131:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0132:addtask testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0133:do_testimage[nostamp] =3D &quot;1&quot;<br>
&gt; File: &#39;/home/integration-team/kush/khu/sources/openembedded-core/m=
eta/classes/testimage.bbclass&#39;, lineno: 371, function: testimage_main<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 0367:=C2=A0 =C2=A0 orig_sigterm_handler =3D signal=
.signal(signal.SIGTERM, sigterm_exception)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0368:=C2=A0 =C2=A0 try:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0369:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # We need to chec=
k if runqemu ends unexpectedly<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0370:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # or if the worke=
r send us a SIGTERM<br>
&gt;=C2=A0 *** 0371:=C2=A0 =C2=A0 =C2=A0 =C2=A0 tc.target.start(params=3Dd.=
getVar(&quot;TEST_QEMUPARAMS&quot;), runqemuparams=3Dd.getVar(&quot;TEST_RU=
NQEMUPARAMS&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0372:=C2=A0 =C2=A0 =C2=A0 =C2=A0 import threading<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 0373:=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0374:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 thr=
eading.Timer(int(d.getVar(&quot;TEST_OVERALL_TIMEOUT&quot;)), handle_test_t=
imeout, (int(d.getVar(&quot;TEST_OVERALL_TIMEOUT&quot;)),)).start()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0375:=C2=A0 =C2=A0 =C2=A0 =C2=A0 except ValueError=
:<br>
&gt; File: &#39;/home/integration-team/kush/khu/sources/openembedded-core/m=
eta/lib/oeqa/core/target/qemu.py&#39;, lineno: 67, function: start<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0063:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if =
self.runner.server_ip:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0064:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 self.server_ip =3D self.runner.server_ip<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0065:=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0066:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
f.stop()<br>
&gt;=C2=A0 *** 0067:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Runtime=
Error(&quot;FAILED to start qemu - check the task log and the boot log&quot=
;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0068:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0069:=C2=A0 =C2=A0 def stop(self):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 0070:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.runner.stop(=
)<br>
&gt; Exception: RuntimeError: FAILED to start qemu - check the task log and=
 the boot log<br>
&gt;<br>
&gt; ERROR: Logfile of failure stored in: /home/kush/khu/sources/build/tmp-=
glibc/work/board-oe-linux/core-image-base/1.0-r0/temp/log.do_testimage.1725=
5<br>
&gt; ERROR: Task (/home/kush/khu/sources/meta-exaleap/recipes-images/images=
/core-image-base.bb:do_testimage) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; Can anyone help me in this, where i am doing wrong.<br>
&gt;<br>
&gt; T&amp;R<br>
&gt; luvkhush<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60318): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60318" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/60318</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99523749/4526=
955" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/99523749/4526955</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto/mutehashtag/bitbake</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:sateesh0457@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">sateesh0457@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d0222005fe2dc255--

