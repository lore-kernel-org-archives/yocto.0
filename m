Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AD7EB64D8
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 11:21:42 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.5969.1686914495420340821
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jun 2023 04:21:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=nHFQuoc9;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: sateesh0457@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-394c7ba4cb5so458387b6e.1
        for <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 04:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686914494; x=1689506494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e2nJuVODo8V2+j3H4ctHaBJLL9qLp17bDc/Tgpfo6tY=;
        b=nHFQuoc98sQduUTIQ8lzlTx12s0uSw0VL/lSxOBsf2corb781z04SsdslvSHxrHcae
         WySDdRXZQp6iC9jyxQTcBscXymEQ6vHbodZKNjc24tkpnHcP1rbyWtu0RbUpmPN0E7Y0
         LR6PogDPdgLMgqSJGi9jQ1f8hLHKhmPpju+A+mYCpNkTbt8cLBbMuiZQZ3PnEDzSG2YC
         IsdsBGmp7RDHlF62M90Hf9p7/TXsfHLFl88qnFO+vai3H6HiVtsz2TXhdiCiXxqwNg6J
         11VPilnBF0Wj9/jTW10/zCeSBns+h/vO6pu4GHX0s/R3yrC8r5bT0ZRsV5d9eYC++Rdq
         hTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686914494; x=1689506494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e2nJuVODo8V2+j3H4ctHaBJLL9qLp17bDc/Tgpfo6tY=;
        b=dwMw/fcIGUxmns0MyhtcwLavhS0GjUht6Z5YJmAJ8GoDLK+5coaeSVNO/iREW/IbUI
         mVdZTJ0QJ9RGlWnmTx/A29f6TkZqhW55i9/y5J2p7mobD/AP1qzIxXU2lcqcnhRhqao2
         cU9zurKyWUhfDELVAtWqey2S0fAFgdFayc3K6LVra6/zezygSQOcB7FORhT9n8BO9Py2
         AhWXzA0B+/mE2qvJZAuUh052CntKLXsmcKQqC4wbxLyUK3K/j0e8zY+g83P1f4U2GTxd
         Kz40xN+b9HeOn4HthMubqDUnQ3WpbiwkYAFzP85/z4LTV15Q088IU5NNJpNl84jjJV5j
         zVsA==
X-Gm-Message-State: AC+VfDzqId/WicTMYx7GxMreAjcIyT15GyeGFBDPHaPYlDrTsQ9Z6El/
	Kx4Buq+3Y8APwslifhWiXXiLPpDGAOc7aAYPPOs=
X-Google-Smtp-Source: ACHHUZ7NdPL0RahQQDNYYWH0J3zy/ftBLG78IlwBLuPoB8FCWxGV14O/HnJ2+cobmWYCSKFRaoyuxcdP7mSYysGMup0=
X-Received: by 2002:a54:4509:0:b0:39e:9def:850 with SMTP id
 l9-20020a544509000000b0039e9def0850mr1204312oil.2.1686914494503; Fri, 16 Jun
 2023 04:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <mkpv.1686732587244371536.088u@lists.yoctoproject.org>
 <CAMKF1srg5P9TfOB=K+QHbqvmthTj3FC6eZymJ36GZmJtay5xMw@mail.gmail.com>
 <CACsETSt9Kg1CV3fS6z25cjX4-1v0=gFgLDmkoURPQr1ebz2_FQ@mail.gmail.com> <CAMKF1spuxUJ2ePkEak2vafB8+ZQJyGpUxhfe_5m6vyvWSJcK4A@mail.gmail.com>
In-Reply-To: <CAMKF1spuxUJ2ePkEak2vafB8+ZQJyGpUxhfe_5m6vyvWSJcK4A@mail.gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Fri, 16 Jun 2023 16:51:21 +0530
Message-ID: <CACsETSvU0geWhDNK6z-LpNweqyA-5OBrtFhWH2Z_XU6wTvZV4g@mail.gmail.com>
Subject: Re: [yocto] Error while testing "bitbake core-image-base -c testimage
 -v" #bitbake #dunfell
To: Khem Raj <raj.khem@gmail.com>
Cc: lavkhush2208@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000361fc005fe3d6325"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 11:21:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60324

--000000000000361fc005fe3d6325
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Very helpful! Issue fixed.

Thank you Khem Raj.


Regards,
Sateesh


On Thu, 15 Jun, 2023, 10:37 pm Khem Raj, <raj.khem@gmail.com> wrote:

> for real targets. You need to do some steps
>
> add following to conf/local.conf
>
> TEST_SERVER_IP =3D "<ip of build machine>"
> MAGE_FEATURES:append =3D " debug-tweaks"
> DISTRO_FEATURES:append =3D " ptest"
> TEST_TARGET_IP =3D "<ip of target board>"
> TEST_TARGET =3D "simpleremote"
>
> 2. Build image
> 3. flash this image on to target ( different boards may need different
> instructions )
> 4. boot the target and ensure its connected to network and has IP address
> 5. run bitbake -ctestimage <image>
>
> On Thu, Jun 15, 2023 at 9:42=E2=80=AFAM sateesh m <sateesh0457@gmail.com>=
 wrote:
> >
> > We don't want to build qemu at all. We are building  for our custom
> target machine.
> >
> > Same commands we have executed we want to exclude qemu test running.
> Only our target  testimage should pass .
> >
> >
> > Regards,
> > Sateesh
> >
> > On Thu, 15 Jun, 2023, 10:10 pm Khem Raj, <raj.khem@gmail.com> wrote:
> >>
> >> On Wed, Jun 14, 2023 at 1:49=E2=80=AFAM <lavkhush2208@gmail.com> wrote=
:
> >> >
> >> > Hi all,
> >> >
> >> > I was testing my core-image-base -c testimage with test-suit and
> getting error:-
> >> >
> >> > ERROR: core-image-base-1.0-r0 do_testimage: Output from runqemu:
> >> > runqemu - WARNING -
> /home/kush/khu/sources/build/tmp-glibc/deploy/images/board/core-image-bas=
e-board.qemuboot.conf
> doesn't exist
> >>
> >> You do not have image built. So first build the image then run tests.
> >>
> >> bitbake core-image-base
> >> bitbake core-image-base  -ctestimage
> >>
> >> Or you can add TESTIMAGE_AUTO:qemuall =3D "1" to local.conf  which wil=
l
> run
> >> the tests automatically when doing bitbake core-image-base for any
> >> qemu based machine target and second step is not needed.
> >>
> >> > ls: cannot access
> '/home/kush/khu/sources/build/tmp-glibc/deploy/images/board/*.qemuboot.co=
nf':
> No such file or directory
> >> > runqemu - ERROR - Command 'ls -t
> /home/kush/khu/sources/build/tmp-glibc/deploy/images/board/*.qemuboot.con=
f'
> returned non-zero exit status 2.
> >> > runqemu - INFO - Cleaning up
> >> >
> >> >
> >> > WARNING: core-image-base-1.0-r0 do_testimage: Qemu ended
> unexpectedly, dump data from host is in
> /home/integration-team/kush/khu/sources/build/tmp-glibc/log/runtime-hostd=
ump/202306141146_qemu
> >> > ERROR: core-image-base-1.0-r0 do_testimage: Error executing a python
> function in exec_python_func() autogenerated:
> >> >
> >> > The stack trace of python calls that resulted in this
> exception/failure was:
> >> > File: 'exec_python_func() autogenerated', lineno: 2, function:
> <module>
> >> >      0001:
> >> >  *** 0002:do_testimage(d)
> >> >      0003:
> >> > File:
> '/home/integration-team/kush/khu/sources/openembedded-core/meta/classes/t=
estimage.bbclass',
> lineno: 129, function: do_testimage
> >> >      0125:    netstat -an
> >> >      0126:}
> >> >      0127:
> >> >      0128:python do_testimage() {
> >> >  *** 0129:    testimage_main(d)
> >> >      0130:}
> >> >      0131:
> >> >      0132:addtask testimage
> >> >      0133:do_testimage[nostamp] =3D "1"
> >> > File:
> '/home/integration-team/kush/khu/sources/openembedded-core/meta/classes/t=
estimage.bbclass',
> lineno: 371, function: testimage_main
> >> >      0367:    orig_sigterm_handler =3D signal.signal(signal.SIGTERM,
> sigterm_exception)
> >> >      0368:    try:
> >> >      0369:        # We need to check if runqemu ends unexpectedly
> >> >      0370:        # or if the worker send us a SIGTERM
> >> >  *** 0371:        tc.target.start(params=3Dd.getVar("TEST_QEMUPARAMS=
"),
> runqemuparams=3Dd.getVar("TEST_RUNQEMUPARAMS"))
> >> >      0372:        import threading
> >> >      0373:        try:
> >> >      0374:
> threading.Timer(int(d.getVar("TEST_OVERALL_TIMEOUT")), handle_test_timeou=
t,
> (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start()
> >> >      0375:        except ValueError:
> >> > File:
> '/home/integration-team/kush/khu/sources/openembedded-core/meta/lib/oeqa/=
core/target/qemu.py',
> lineno: 67, function: start
> >> >      0063:            if self.runner.server_ip:
> >> >      0064:                self.server_ip =3D self.runner.server_ip
> >> >      0065:        else:
> >> >      0066:            self.stop()
> >> >  *** 0067:            raise RuntimeError("FAILED to start qemu -
> check the task log and the boot log")
> >> >      0068:
> >> >      0069:    def stop(self):
> >> >      0070:        self.runner.stop()
> >> > Exception: RuntimeError: FAILED to start qemu - check the task log
> and the boot log
> >> >
> >> > ERROR: Logfile of failure stored in:
> /home/kush/khu/sources/build/tmp-glibc/work/board-oe-linux/core-image-bas=
e/1.0-r0/temp/log.do_testimage.17255
> >> > ERROR: Task
> (/home/kush/khu/sources/meta-exaleap/recipes-images/images/core-image-bas=
e.bb:do_testimage)
> failed with exit code '1'
> >> >
> >> > Can anyone help me in this, where i am doing wrong.
> >> >
> >> > T&R
> >> > luvkhush
> >> >
> >> >
> >> >
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#60318):
> https://lists.yoctoproject.org/g/yocto/message/60318
> >> Mute This Topic: https://lists.yoctoproject.org/mt/99523749/4526955
> >> Mute #bitbake:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> >> Mute #dunfell:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> sateesh0457@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
>

--000000000000361fc005fe3d6325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Very helpful! Issue fixed.<div dir=3D"auto"><br></div><di=
v dir=3D"auto">Thank you Khem Raj.</div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Sate=
esh</div><div dir=3D"auto"><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, 15 Jun, 2023, 10:37 pm Khem Ra=
j, &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">for real targets. You need to d=
o some steps<br>
<br>
add following to conf/local.conf<br>
<br>
TEST_SERVER_IP =3D &quot;&lt;ip of build machine&gt;&quot;<br>
MAGE_FEATURES:append =3D &quot; debug-tweaks&quot;<br>
DISTRO_FEATURES:append =3D &quot; ptest&quot;<br>
TEST_TARGET_IP =3D &quot;&lt;ip of target board&gt;&quot;<br>
TEST_TARGET =3D &quot;simpleremote&quot;<br>
<br>
2. Build image<br>
3. flash this image on to target ( different boards may need different<br>
instructions )<br>
4. boot the target and ensure its connected to network and has IP address<b=
r>
5. run bitbake -ctestimage &lt;image&gt;<br>
<br>
On Thu, Jun 15, 2023 at 9:42=E2=80=AFAM sateesh m &lt;<a href=3D"mailto:sat=
eesh0457@gmail.com" target=3D"_blank" rel=3D"noreferrer">sateesh0457@gmail.=
com</a>&gt; wrote:<br>
&gt;<br>
&gt; We don&#39;t want to build qemu at all. We are building=C2=A0 for our =
custom target machine.<br>
&gt;<br>
&gt; Same commands we have executed we want to exclude qemu test running. O=
nly our target=C2=A0 testimage should pass .<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Sateesh<br>
&gt;<br>
&gt; On Thu, 15 Jun, 2023, 10:10 pm Khem Raj, &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com</a>&gt=
; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jun 14, 2023 at 1:49=E2=80=AFAM &lt;<a href=3D"mailto:lavk=
hush2208@gmail.com" target=3D"_blank" rel=3D"noreferrer">lavkhush2208@gmail=
.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I was testing my core-image-base -c testimage with test-suit =
and getting error:-<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ERROR: core-image-base-1.0-r0 do_testimage: Output from runqe=
mu:<br>
&gt;&gt; &gt; runqemu - WARNING - /home/kush/khu/sources/build/tmp-glibc/de=
ploy/images/board/core-image-base-board.qemuboot.conf doesn&#39;t exist<br>
&gt;&gt;<br>
&gt;&gt; You do not have image built. So first build the image then run tes=
ts.<br>
&gt;&gt;<br>
&gt;&gt; bitbake core-image-base<br>
&gt;&gt; bitbake core-image-base=C2=A0 -ctestimage<br>
&gt;&gt;<br>
&gt;&gt; Or you can add TESTIMAGE_AUTO:qemuall =3D &quot;1&quot; to local.c=
onf=C2=A0 which will run<br>
&gt;&gt; the tests automatically when doing bitbake core-image-base for any=
<br>
&gt;&gt; qemu based machine target and second step is not needed.<br>
&gt;&gt;<br>
&gt;&gt; &gt; ls: cannot access &#39;/home/kush/khu/sources/build/tmp-glibc=
/deploy/images/board/*.qemuboot.conf&#39;: No such file or directory<br>
&gt;&gt; &gt; runqemu - ERROR - Command &#39;ls -t /home/kush/khu/sources/b=
uild/tmp-glibc/deploy/images/board/*.qemuboot.conf&#39; returned non-zero e=
xit status 2.<br>
&gt;&gt; &gt; runqemu - INFO - Cleaning up<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; WARNING: core-image-base-1.0-r0 do_testimage: Qemu ended unex=
pectedly, dump data from host is in /home/integration-team/kush/khu/sources=
/build/tmp-glibc/log/runtime-hostdump/202306141146_qemu<br>
&gt;&gt; &gt; ERROR: core-image-base-1.0-r0 do_testimage: Error executing a=
 python function in exec_python_func() autogenerated:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The stack trace of python calls that resulted in this excepti=
on/failure was:<br>
&gt;&gt; &gt; File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, =
function: &lt;module&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0001:<br>
&gt;&gt; &gt;=C2=A0 *** 0002:do_testimage(d)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0003:<br>
&gt;&gt; &gt; File: &#39;/home/integration-team/kush/khu/sources/openembedd=
ed-core/meta/classes/testimage.bbclass&#39;, lineno: 129, function: do_test=
image<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0125:=C2=A0 =C2=A0 netstat -an<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0126:}<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0127:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0128:python do_testimage() {<br>
&gt;&gt; &gt;=C2=A0 *** 0129:=C2=A0 =C2=A0 testimage_main(d)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0130:}<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0131:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0132:addtask testimage<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0133:do_testimage[nostamp] =3D &quot;1&qu=
ot;<br>
&gt;&gt; &gt; File: &#39;/home/integration-team/kush/khu/sources/openembedd=
ed-core/meta/classes/testimage.bbclass&#39;, lineno: 371, function: testima=
ge_main<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0367:=C2=A0 =C2=A0 orig_sigterm_handler =
=3D signal.signal(signal.SIGTERM, sigterm_exception)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0368:=C2=A0 =C2=A0 try:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0369:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # We nee=
d to check if runqemu ends unexpectedly<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0370:=C2=A0 =C2=A0 =C2=A0 =C2=A0 # or if =
the worker send us a SIGTERM<br>
&gt;&gt; &gt;=C2=A0 *** 0371:=C2=A0 =C2=A0 =C2=A0 =C2=A0 tc.target.start(pa=
rams=3Dd.getVar(&quot;TEST_QEMUPARAMS&quot;), runqemuparams=3Dd.getVar(&quo=
t;TEST_RUNQEMUPARAMS&quot;))<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0372:=C2=A0 =C2=A0 =C2=A0 =C2=A0 import t=
hreading<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0373:=C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0374:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 threading.Timer(int(d.getVar(&quot;TEST_OVERALL_TIMEOUT&quot;)), han=
dle_test_timeout, (int(d.getVar(&quot;TEST_OVERALL_TIMEOUT&quot;)),)).start=
()<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0375:=C2=A0 =C2=A0 =C2=A0 =C2=A0 except V=
alueError:<br>
&gt;&gt; &gt; File: &#39;/home/integration-team/kush/khu/sources/openembedd=
ed-core/meta/lib/oeqa/core/target/qemu.py&#39;, lineno: 67, function: start=
<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0063:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if self.runner.server_ip:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0064:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 self.server_ip =3D self.runner.server_ip<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0065:=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br=
>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0066:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 self.stop()<br>
&gt;&gt; &gt;=C2=A0 *** 0067:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rais=
e RuntimeError(&quot;FAILED to start qemu - check the task log and the boot=
 log&quot;)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0068:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0069:=C2=A0 =C2=A0 def stop(self):<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 0070:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.run=
ner.stop()<br>
&gt;&gt; &gt; Exception: RuntimeError: FAILED to start qemu - check the tas=
k log and the boot log<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ERROR: Logfile of failure stored in: /home/kush/khu/sources/b=
uild/tmp-glibc/work/board-oe-linux/core-image-base/1.0-r0/temp/log.do_testi=
mage.17255<br>
&gt;&gt; &gt; ERROR: Task (/home/kush/khu/sources/meta-exaleap/recipes-imag=
es/images/core-image-base.bb:do_testimage) failed with exit code &#39;1&#39=
;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Can anyone help me in this, where i am doing wrong.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; T&amp;R<br>
&gt;&gt; &gt; luvkhush<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; View/Reply Online (#60318): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/60318" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://lists.yoctoproject.org/g/yocto/message/60318</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/9952=
3749/4526955" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists=
.yoctoproject.org/mt/99523749/4526955</a><br>
&gt;&gt; Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mu=
tehashtag/bitbake" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/mutehashtag/bitbake</a><br>
&gt;&gt; Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mu=
tehashtag/dunfell" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/mutehashtag/dunfell</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org<=
/a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/g/yocto/unsub</a> [<a href=3D"mailto:sateesh0457@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">sateesh0457@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
</blockquote></div>

--000000000000361fc005fe3d6325--

