Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B84C433EF
	for <webhook@archiver.kernel.org>; Thu,  4 Nov 2021 20:03:36 +0000 (UTC)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
 [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web11.2985.1636056215208602998
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 13:03:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Srzb+ZMF;
 spf=pass (domain: gmail.com, ip: 209.85.221.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f182.google.com with SMTP id e64so3614886vke.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 13:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lmG7KBr3aNImK+eBByGA+HZ5VEHBcH+ZptB4+bYRIFg=;
        b=Srzb+ZMFBpjNRYqdfGWGUazO5JSZUYJ+ZGbKbvqSJR3XKlZl5HBgmI+aQMA9+GnerB
         ctvBV75broQrFvERgQjqvI3NMfwvBw4ll8D0u67LWOMs7+Vnp64V+aaKUvi0WkJhc3W1
         o8CpVkq56uxu51E6TrAhbdo8PkX9kp3+ax85aOKm62luQNAgriO4AsYoKiSGioqpe6Qm
         gaWSAVB+0IjZmXHwv6yXc+I/0UiKabhOZ6FfS0K8PY8kaxJNBOzzg0/qfcPc/0eHny/o
         dW3CFqR0seWLCpxNXPi+bd5URN+nupR8FSE47cg/XA9FsZSeNVQmykkwvEa0MRW1wysV
         LM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lmG7KBr3aNImK+eBByGA+HZ5VEHBcH+ZptB4+bYRIFg=;
        b=ZwFU2/LErJtIurggrU+7D8MN5vi5xoETBj7SIDrfvWsWqdH/HUoSOROuRviv5rpKY3
         DA1p+XNfwODS9LfZAYrbzvh2URqqIu/UYH2Sthm3egpEMznbgGsMYUy18kJlZpytNKMj
         YDOPH570CT+FzBm58h3Vl0orb+hnsHhXhqOq7f2/wCT+3CQYCy5KsWWrEyV7ceo4FQAh
         TeCh7+V8T7Dn8RIZf90wxCPDQOxjEdTccHrU4mZSAsBXOkJWHvxY0zQT+MIAMpmU/UGx
         Ancrf5YGcLzIYecgP64sGGN8rUhtYzRRo+LEKIPUxD2qYM4XZH1LbjNGUyZ3mi8ShSoB
         Ab3w==
X-Gm-Message-State: AOAM533lSuwCwi6WLN+eJyxK+WfNgF/tC5U+HeEkRkymv2jvoqPUk9Al
	I1caWhgqSb+76sE6th0KSeQu4GfmXxlEEK3OLKs=
X-Google-Smtp-Source: 
 ABdhPJxgQZufEHwDmP95A6DOAYMKizfXuCPpK56MLJ+xZPx8mNmpcIAdrwWabLsy25EI7cX1j95ADBdfAmJHspvQQ0s=
X-Received: by 2002:a05:6122:1815:: with SMTP id
 ay21mr38717589vkb.24.1636056214369;
 Thu, 04 Nov 2021 13:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <euYj.1635972322068884592.0Er3@lists.yoctoproject.org>
 <CANNYZj-fw0kscaYn3BP2DQzb-6Mgr9AJSw8wpbfBwmAGQhLHCA@mail.gmail.com>
 <DS7PR13MB46564C64E6058CB6A289E316998D9@DS7PR13MB4656.namprd13.prod.outlook.com>
In-Reply-To: 
 <DS7PR13MB46564C64E6058CB6A289E316998D9@DS7PR13MB4656.namprd13.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Nov 2021 21:03:22 +0100
Message-ID: 
 <CANNYZj9Kanumk+n8XhLRZ08FvOWz9HzB8e-LAfZgh53--+9v0Q@mail.gmail.com>
Subject: Re: [yocto] Bitbake build fails because of a python function
To: Maksym Iliev <maksym.iliev@litmus.io>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007d76be05cffc05e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Nov 2021 20:03:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55242

--0000000000007d76be05cffc05e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just wondering, what it /srv/yocto? Can you build in your $HOME?

Otherwise, you can run bitbake under 'strace -ff -o strace-log ...' and try
to check exactly what syscall causes cpio to fail.

Alex

On Thu, 4 Nov 2021 at 20:44, Maksym Iliev <maksym.iliev@litmus.io> wrote:

> Dear Alexander,
>
> Thanks a lot for responding. I've attached the log file.
> The only valuable info I could find is the following piece at the end of
> the log file. Could that be a potential cause for failures?
> Deprecated external dependency generator is used! create archive failed:
> cpio: write WARNING: exit code 1 from a shell command.
>
>
>
>
>
>
>
> Thanks in advance,
>
> Maksym
>
> *From: *Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent: *November 3, 2021 4:48 PM
> *To: *Maksym Iliev <maksym.iliev@litmus.io>
> *Cc: *Yocto-mailing-list <yocto@lists.yoctoproject.org>
> *Subject: *Re: [yocto] Bitbake build fails because of a python function
>
>
>
> You don't often get email from alex.kanavin@gmail.com. Learn why this is
> important <http://aka.ms/LearnAboutSenderIdentification>
>
> It's hard to say if we can't replicate the issue. Check
> /srv/yocto/build/tmp/work/corei7-64-poky-linux/perl/5.30.1-r0/temp/log.do=
_package_write_rpm,
> it might have useful debugging info.
>
>
>
> Alex
>
>
>
>
>
> On Wed, 3 Nov 2021 at 21:45, Maksym Iliev via lists.yoctoproject.org
> <https://nam02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists=
.yoctoproject.org%2F&data=3D04%7C01%7Cmaksym.iliev%40litmus.io%7Cef75bd7ac8=
2f48f4070308d99f0b38cd%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C6377156=
92846392465%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DKap99SjWfygE8OmeZ%2FWBrzj5bcA98B=
oU5iOxSZXtcbc%3D&reserved=3D0>
> <maksym.iliev=3Dlitmus.io@lists.yoctoproject.org> wrote:
>
> Hello guys. I am brand new to yocto and bitbake and I am looking for any
> help/advice/hints I can get. I have inherited someone else's code for
> building yocto project images, but the bitbake fails with the following
> error:
>
> ERROR: perl-5.30.1-r0 do_package_write_rpm: Error executing a python func=
tion in exec_func_python()
>
> autogenerated:The stack trace of python calls that resulted in this excep=
tion/failure was: File: 'exec_func_python() autogenerated', lineno: 2, func=
tion: <module>
>
> 0001: ***
>
> 0002:do_package_rpm(d)
>
> 0003:
>
> File: '/srv/yocto/poky/meta/classes/package_rpm.bbclass', lineno: 712, fu=
nction: do_package_rpm
>
> 0708:
>
> 0709:    # Build the rpm package!
>
> 0710:    d.setVar('BUILDSPEC', cmd + \"\\n\" + cleanupcmd + \"\\n\")
>
> 0711:    d.setVarFlag('BUILDSPEC', 'func', '1')
>
> 0712:    bb.build.exec_func('BUILDSPEC', d)
>
> 0713:
>
> 0714:    if d.getVar('RPM_SIGN_PACKAGES') =3D=3D '1':
>
> 0715:        bb.build.exec_func(\"sign_rpm\", d)
>
> 0716:}
>
> File: '/srv/yocto/poky/bitbake/lib/bb/build.py', lineno: 254, function: e=
xec_func
>
> 0250:    with bb.utils.fileslocked(lockfiles):
>
> 0251:    if ispython:
>
> 0252:            exec_func_python(func, d, runfile, cwd=3Dadir)
>
> 0253:    else: ***
>
> 0254:            exec_func_shell(func, d, runfile, cwd=3Dadir)
>
> 0255:
>
> 0256:    try:
>
> 0257:        curcwd =3D os.getcwd()
>
> 0258:    except:
>
> File: '/srv/yocto/poky/bitbake/lib/bb/build.py', lineno: 455, function: e=
xec_func_shell
>
> 0451:    with open(fifopath, 'r+b', buffering=3D0) as fifo:
>
> 0452:        try:
>
> 0453:            bb.debug(2, \"Executing shell function %s\" % func)
>
> 0454:            with open(os.devnull, 'r+') as stdin, logfile: ***
>
> 0455:                bb.process.run(cmd, shell=3DFalse, stdin=3Dstdin, lo=
g=3Dlogfile, extrafiles=3D[(fifo,readfifo)])
>
> 0456:        finally:
>
> 0457:            os.unlink(fifopath)
>
> 0458:
>
> 0459:    bb.debug(2, \"Shell function %s finished\" % func)
>
> File: '/srv/yocto/poky/bitbake/lib/bb/process.py', lineno: 184, function:=
 run
>
> 0180:
>
> 0181:    if pipe.returncode !=3D 0:
>
> 0182:        if log:
>
> 0183:            # Don't duplicate the output in the exception if logging=
 it ***
>
> 0184:            raise ExecutionError(cmd, pipe.returncode, None, None)
>
> 0185:        raise ExecutionError(cmd, pipe.returncode, stdout, stderr)
>
> 0186:    return stdout, stderr Exception: bb.process.ExecutionError: Exec=
ution of '/srv/yocto/build/tmp/work/corei7-64-poky-linux/perl/5.30.1-r0/tem=
p/run.BUILDSPEC.35372' failed with exit code 1
>
> Would anyone be able to point me in the right direction as to what could
> be potentially causing this issue?
>
> Thanks in advance,
> Maksym
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55234):
> https://lists.yoctoproject.org/g/yocto/message/55234
> <https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist=
s.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F55234&data=3D04%7C01%7Cmaksym.il=
iev%40litmus.io%7Cef75bd7ac82f48f4070308d99f0b38cd%7Cf58c63520fff4b5da30b29=
38e0f46152%7C1%7C0%7C637715692846402431%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4=
wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3D85hv=
SIA0P8bUR%2FCwVB0iwtgxzNL6M4nQeLlkpwRaVTE%3D&reserved=3D0>
> Mute This Topic: https://lists.yoctoproject.org/mt/86801772/1686489
> <https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist=
s.yoctoproject.org%2Fmt%2F86801772%2F1686489&data=3D04%7C01%7Cmaksym.iliev%=
40litmus.io%7Cef75bd7ac82f48f4070308d99f0b38cd%7Cf58c63520fff4b5da30b2938e0=
f46152%7C1%7C0%7C637715692846402431%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjA=
wMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DxbpoktCx=
bLmI7ttDLzpUcrMsbcm%2B%2BNW8rUW2yWJQOH8%3D&reserved=3D0>
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> <https://nam02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist=
s.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=3D04%7C01%7Cmaksym.iliev%40litm=
us.io%7Cef75bd7ac82f48f4070308d99f0b38cd%7Cf58c63520fff4b5da30b2938e0f46152=
%7C1%7C0%7C637715692846412388%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiL=
CJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3D6Q3koti49D8Yfe=
ST6nWO4FiSz8zdr7iKhybrHU5bmFA%3D&reserved=3D0>
> [alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>

--0000000000007d76be05cffc05e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just wondering, what it /srv/yocto? Can you build in =
your $HOME?</div><div><br></div><div>Otherwise, you can run bitbake under &=
#39;strace -ff -o strace-log ...&#39; and try to check exactly what syscall=
 causes cpio to fail.</div><div><br></div><div>Alex<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 4 Nov =
2021 at 20:44, Maksym Iliev &lt;<a href=3D"mailto:maksym.iliev@litmus.io">m=
aksym.iliev@litmus.io</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-CA">
<div class=3D"gmail-m_1169630487469422345WordSection1">
<p>Dear Alexander,<br>
<br>
Thanks a lot for responding. I&#39;ve attached the log file.<br>
The only valuable info I could find is the following piece at the end of th=
e log file. Could that be a potential cause for failures?<u></u><u></u></p>
<h2>Deprecated external dependency generator is used!<u></u><u></u></h2>
<h2>create archive failed: cpio: write<u></u><u></u></h2>
<h2>WARNING: exit code 1 from a shell command.</h2>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p>Thanks in advance,</p>
<p>Maksym</p>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal" style=3D"border:medium none;padding:0cm"><b>From: </=
b><a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">Alexander Kan=
avin</a><br>
<b>Sent: </b>November 3, 2021 4:48 PM<br>
<b>To: </b><a href=3D"mailto:maksym.iliev@litmus.io" target=3D"_blank">Maks=
ym Iliev</a><br>
<b>Cc: </b><a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">Yocto-mailing-list</a><br>
<b>Subject: </b>Re: [yocto] Bitbake build fails because of a python functio=
n</p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<table style=3D"width:100%" width=3D"100%" cellspacing=3D"0" cellpadding=3D=
"0" border=3D"0" align=3D"left">
<tbody>
<tr>
<td style=3D"background:rgb(166,166,166) none repeat scroll 0% 0%;padding:5=
.25pt 1.5pt"></td>
<td style=3D"width:100%;background:rgb(234,234,234) none repeat scroll 0% 0=
%;padding:5.25pt 3.75pt 5.25pt 11.25pt" width=3D"100%">
<div>
<p class=3D"MsoNormal">
<span style=3D"font-size:9pt;font-family:&quot;Segoe UI&quot;,sans-serif;co=
lor:rgb(33,33,33)">You don&#39;t often get email from <a href=3D"mailto:ale=
x.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>.
<a href=3D"http://aka.ms/LearnAboutSenderIdentification" target=3D"_blank">=
Learn why this is important</a><u></u><u></u></span></p>
</div>
</td>
<td style=3D"width:56.25pt;background:rgb(234,234,234) none repeat scroll 0=
% 0%;padding:5.25pt 3.75pt" width=3D"75">
</td>
</tr>
</tbody>
</table>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:white">It&#39;s hard to say if =
we can&#39;t replicate the issue. Check /srv/yocto/build/tmp/work/corei7-64=
-poky-linux/perl/5.30.1-r0/temp/log.do_package_write_rpm, it might have use=
ful debugging info.</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<u></u><u></u></p>
</div>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm;box-sizing=
:inherit;font-variant-ligatures:none;white-space:pre-wrap"><span style=3D"f=
ont-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)"><u></=
u>=C2=A0<u></u></span></pre>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, 3 Nov 2021 at 21:45, Maksym Iliev via <a hre=
f=3D"https://nam02.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flis=
ts.yoctoproject.org%2F&amp;data=3D04%7C01%7Cmaksym.iliev%40litmus.io%7Cef75=
bd7ac82f48f4070308d99f0b38cd%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C6=
37715692846392465%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luM=
zIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DKap99SjWfygE8OmeZ%2FWB=
rzj5bcA98BoU5iOxSZXtcbc%3D&amp;reserved=3D0" target=3D"_blank">
lists.yoctoproject.org</a> &lt;maksym.iliev=3D<a href=3D"mailto:litmus.io@l=
ists.yoctoproject.org" target=3D"_blank">litmus.io@lists.yoctoproject.org</=
a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<p>Hello guys. I am brand new to yocto and bitbake and I am looking for any=
 help/advice/hints I can get. I have inherited someone else&#39;s code for =
building yocto project images, but the bitbake fails with the following err=
or:<u></u><u></u></p>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm;box-sizing=
:inherit;font-variant-ligatures:none;white-space:pre-wrap"><span style=3D"f=
ont-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)">ERROR=
: perl-5.30.1-r0 do_package_write_rpm: Error executing a python function in=
 exec_func_python() <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">autogenerated:The stack trace of python calls that resulted in this excep=
tion/failure was: File: &#39;exec_func_python() autogenerated&#39;, lineno:=
 2, function: &lt;module&gt;<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0001: *** <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0002:do_package_rpm(d)=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre=
>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0003:<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">File: &#39;/srv/yocto/poky/meta/classes/package_rpm.bbclass&#39;, lineno:=
 712, function: do_package_rpm=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span=
></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0708:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0709:=C2=A0=C2=A0=C2=A0 # Build the rpm package!=C2=A0=C2=A0=C2=A0=C2=A0 =
<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0710:=C2=A0=C2=A0=C2=A0 d.setVar(&#39;BUILDSPEC&#39;, cmd + \&quot;\\n\&q=
uot; + cleanupcmd + \&quot;\\n\&quot;)=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></=
u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0711:=C2=A0=C2=A0=C2=A0 d.setVarFlag(&#39;BUILDSPEC&#39;, &#39;func&#39;,=
 &#39;1&#39;)<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0712:=C2=A0=C2=A0=C2=A0 bb.build.exec_func(&#39;BUILDSPEC&#39;, d)=C2=A0=
=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0713:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0714:=C2=A0=C2=A0=C2=A0 if d.getVar(&#39;RPM_SIGN_PACKAGES&#39;) =3D=3D &=
#39;1&#39;:<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0715:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.build.exec_func(\&quot=
;sign_rpm\&quot;, d)=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0716:}<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">File: &#39;/srv/yocto/poky/bitbake/lib/bb/build.py&#39;, lineno: 254, fun=
ction: exec_func=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0250:=C2=A0=C2=A0=C2=A0 with bb.utils.fileslocked(lockfiles):=C2=A0=C2=A0=
=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0251:=C2=A0=C2=A0=C2=A0 if ispython:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></=
u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0252:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 e=
xec_func_python(func, d, runfile, cwd=3Dadir)=C2=A0=C2=A0=C2=A0=C2=A0 <u></=
u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0253:=C2=A0=C2=A0=C2=A0 else: *** <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0254:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 e=
xec_func_shell(func, d, runfile, cwd=3Dadir)=C2=A0=C2=A0=C2=A0=C2=A0 <u></u=
><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0255:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0256:=C2=A0=C2=A0=C2=A0 try:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span=
></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0257:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 curcwd =3D os.getcwd()=C2=
=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0258:=C2=A0=C2=A0=C2=A0 except:<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">File: &#39;/srv/yocto/poky/bitbake/lib/bb/build.py&#39;, lineno: 455, fun=
ction: exec_func_shell=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0451:=C2=A0=C2=A0=C2=A0 with open(fifopath, &#39;r+b&#39;, buffering=3D0)=
 as fifo:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0452:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:=C2=A0=C2=A0=C2=A0=C2=
=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0453:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b=
b.debug(2, \&quot;Executing shell function %s\&quot; % func)=C2=A0=C2=A0=C2=
=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0454:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 w=
ith open(os.devnull, &#39;r+&#39;) as stdin, logfile: *** <u></u><u></u></s=
pan></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0455:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 bb.process.run(cmd, shell=3DFalse, stdin=3Dstdin, =
log=3Dlogfile, extrafiles=3D[(fifo,readfifo)])=C2=A0=C2=A0=C2=A0=C2=A0 <u><=
/u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0456:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 finally:=C2=A0=C2=A0=C2=
=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0457:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 o=
s.unlink(fifopath)=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0458:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0459:=C2=A0=C2=A0=C2=A0 bb.debug(2, \&quot;Shell function %s finished\&qu=
ot; % func)<u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">File: &#39;/srv/yocto/poky/bitbake/lib/bb/process.py&#39;, lineno: 184, f=
unction: run=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0180:=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0181:=C2=A0=C2=A0=C2=A0 if pipe.returncode !=3D 0:=C2=A0=C2=A0=C2=A0=C2=
=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0182:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if log:=C2=A0=C2=A0=C2=A0=
=C2=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0183:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=
 Don&#39;t duplicate the output in the exception if logging it *** <u></u><=
u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0184:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
aise ExecutionError(cmd, pipe.returncode, None, None)=C2=A0=C2=A0=C2=A0=C2=
=A0 <u></u><u></u></span></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0185:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise ExecutionError(cmd,=
 pipe.returncode, stdout, stderr)=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></s=
pan></pre>
<pre style=3D"margin-right:0cm;margin-bottom:3pt;margin-left:0cm"><span sty=
le=3D"font-size:9pt;font-family:&quot;Menlo&quot;,serif;color:rgb(29,28,29)=
">0186:=C2=A0=C2=A0=C2=A0 return stdout, stderr Exception: bb.process.Execu=
tionError: Execution of &#39;/srv/yocto/build/tmp/work/corei7-64-poky-linux=
/perl/5.30.1-r0/temp/run.BUILDSPEC.35372&#39; failed with exit code 1<u></u=
><u></u></span></pre>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:12pt;margin-=
left:4.8pt">
Would anyone be able to point me in the right direction as to what could be=
 potentially causing this issue?<br>
<br>
Thanks in advance,<br>
Maksym <br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55234): <a href=3D"https://nam02.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F55234&amp;data=3D04%7C01%7Cmaksym.iliev%40litmus.io%7Cef75bd7ac82f48f40=
70308d99f0b38cd%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C63771569284640=
2431%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3D85hvSIA0P8bUR%2FCwVB0iwtgxzNL6M4nQe=
LlkpwRaVTE%3D&amp;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/55234</a><br>
Mute This Topic: <a href=3D"https://nam02.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F86801772%2F1686489&amp;d=
ata=3D04%7C01%7Cmaksym.iliev%40litmus.io%7Cef75bd7ac82f48f4070308d99f0b38cd=
%7Cf58c63520fff4b5da30b2938e0f46152%7C1%7C0%7C637715692846402431%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6M=
n0%3D%7C1000&amp;sdata=3DxbpoktCxbLmI7ttDLzpUcrMsbcm%2B%2BNW8rUW2yWJQOH8%3D=
&amp;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/mt/86801772/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://nam02.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D04%7=
C01%7Cmaksym.iliev%40litmus.io%7Cef75bd7ac82f48f4070308d99f0b38cd%7Cf58c635=
20fff4b5da30b2938e0f46152%7C1%7C0%7C637715692846412388%7CUnknown%7CTWFpbGZs=
b3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C10=
00&amp;sdata=3D6Q3koti49D8YfeST6nWO4FiSz8zdr7iKhybrHU5bmFA%3D&amp;reserved=
=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

</blockquote></div>

--0000000000007d76be05cffc05e1--

