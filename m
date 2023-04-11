Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BBBC76196
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 08:21:50 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.8721.1681201303022546653
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 01:21:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Xtb4zX8k;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-94a34d3812dso176192066b.3
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 01:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681201301;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LzV3Xo3sQENglipuB043gEKLvCVUaBefd251qxMfNBM=;
        b=Xtb4zX8ksZsfBfz3AzUILW0OxWFt4zrEhqypj2N/EQUOZVFLFSBS/U91+0+EUzzoAU
         ge4SxK+V1TRV5LGhCYUXvk9xQPOyoAzCL0u0u50fJ/W2b0kX2RJyhCo5TnbS1eeiDsem
         /42jfJAPv6ymEM7KqWbOHQE5aINQtUhxRVVxsoPM/PYjWo5y3QNu4QZDcheFllivcPz9
         OjTmiUvXHkH3sIIoYWYUqSSOp0KUf/NV38ZHbz/PLYqdg7sQwhTkmR9GybCib47JmyQC
         8WUpsu60+ps01vy9g4Z2Dk+wnL/tuaEhPzDc+tkYX4x0hvfSIjQG47JIqS2YTEPbkWwc
         a/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681201301;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LzV3Xo3sQENglipuB043gEKLvCVUaBefd251qxMfNBM=;
        b=H90TgG+6qygu33KXbCD6tqwLVk0IRI0lM1xO3CdfptGTPBVbxnyxVUmHxptdc1Snve
         GIZomcXLIPieMqVM081z8zm8Dtc0yyrd1sSiSrHZJvwzloy7tfmLeIGq8qXQjCGgHPb2
         DiSj7kb+nhD3yPgSmJ6vPoYEIfLrQ57vNRRW15XDEoSQTgrXqDAxtO2e3PTPPcQaX5e5
         TymNtI+nxhUS3817vEn2EimhI7klBXZZwU6Zp9udIYqh6stajvMeKZiNCm+dw0YFJfkL
         3Tt4+7ZFpHhXKH1lyX6dZbDt47pQql/glZ3X1Zk8OhugTBU48wk5uEMQ0TZoa4qv5z+0
         n3fg==
X-Gm-Message-State: AAQBX9cGQoisCKQVtY4vxFXz+oVEgUbHa22Fq6uYVqRKkyWdKoeoSqab
	nW6aFdtrG5CyfP4E67NIWa/RD7m0T56/rFEsdiO/AzON
X-Google-Smtp-Source: AKy350aORjIkWRzNQ/WW7uROHlgZnT0VoaWynuG0OeJ1HE6k03own2MNK16XqCnMKfCh7myAIV39t8T+Z6E+bBnBgrI=
X-Received: by 2002:a50:aa9b:0:b0:4fa:e5c1:d142 with SMTP id
 q27-20020a50aa9b000000b004fae5c1d142mr6300538edc.0.1681201301120; Tue, 11 Apr
 2023 01:21:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1srFjLA0S+TOprWbfOV4er40E2KQ7GOkW7S=2_JgeKy0yw@mail.gmail.com>
 <10320.1681197193406830686@lists.yoctoproject.org> <CAMKF1sq8ua5kXuoYz1x=8_yGfL3cMYRWqTnuQD_iKkj9Hd=75w@mail.gmail.com>
 <1754D3631BA05211.26696@lists.yoctoproject.org>
In-Reply-To: <1754D3631BA05211.26696@lists.yoctoproject.org>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 11 Apr 2023 13:51:29 +0530
Message-ID: <CAPJWBnhknUP+zk7G=7zNcxOKRQVBSfZzEtX6mAeZpra-ofg1wg@mail.gmail.com>
Subject: Re: [yocto] Missing .o files.
To: hassanchattarki@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000059694b05f90b2eef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 08:21:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59675

--00000000000059694b05f90b2eef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi khem,
I didn=E2=80=99t understand your last reply. Please guide.
On Tue, 11 Apr 2023 at 1:46 PM, MOHAMMED HASSAN via lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi khem,
> If possible can check the makefile once and guide me.
>
> On Tue, 11 Apr 2023 at 12:50 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, Apr 11, 2023 at 12:13=E2=80=AFAM MOHAMMED HASSAN
>> <hassanchattarki@gmail.com> wrote:
>> >
>> > Hi Khem,
>> > Thanks for all your support.
>> > I added the following lines in my recipe file.
>> > do_install() {
>> > install -d ${D}${bindir}
>> > # install -m 0755
>> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/=
v3.2/build/Z3GatewayHostm/build/exe
>> ${D}
>> > install -m 0755
>> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/=
v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
>> ${D}${bindir}
>>
>> > # chmod 0755
>> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/=
v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
>> > # cp
>> /home/mohan/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/=
v3.2/build/Z3GatewayHostm/build/exe/hostforEdge3
>> ${D}${bindir}
>>
>>
>> > }
>> >
>> > bitbake zigbee works fine but bitbake lib32-amlogic-yocto returns the
>> error message.
>> >
>> > ERROR: lib32-zigbee-0.1-r0 do_package: Fatal errors occurred in
>> subprocesses:
>> > Command '['arm-pokymllib32-linux-gnueabi-objcopy', '--only-keep-debug'=
,
>> '/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3',
>> '/home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-zigbee/0.1-r0/package/usr/bin/.debug/hostforEdge3']'
>> returned non-zero exit status 1.
>> > Subprocess output:arm-pokymllib32-linux-gnueabi-objcopy:
>> /home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnu=
eabi/lib32-zigbee/0.1-r0/package/usr/bin/hostforEdge3:
>> file format not recognized
>> >
>> > ERROR: Logfile of failure stored in:
>> /home/mohan/amlogic/build/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnu=
eabi/lib32-zigbee/0.1-r0/temp/log.do_package.246282
>> > ERROR: Task
>> (virtual:multilib:lib32:/home/mohan/amlogic/meta-c/recipes-example/zigbe=
e/zigbee_0.1.bb:do_package)
>> failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 5830 tasks of which 5825 didn't need to
>> be rerun and 1 failed.
>> >
>> > Is it because of the compiler in the makefile?
>>
>> you need to build for 32bit as well. I think you are building these
>> binaries outside yocto and then weirdly mixing the install. So perhaps
>> that should be fixed first maybe.
>>
>> > Is it possible to bypass this error.
>> >
>> > Please guide.
>> > Thanks and Regards,
>> > Hassan
>> >
>> >
>> >
>> >
>>
> thats
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59674):
> https://lists.yoctoproject.org/g/yocto/message/59674
> Mute This Topic: https://lists.yoctoproject.org/mt/98191767/7559147
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> hassanchattarki@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000059694b05f90b2eef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">Hi khem,</div><div dir=3D"auto">I didn=E2=
=80=99t understand your last reply. Please guide.<br><div class=3D"gmail_qu=
ote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 11 Apr 2023=
 at 1:46 PM, MOHAMMED HASSAN via <a href=3D"http://lists.yoctoproject.org">=
lists.yoctoproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.co=
m@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left=
-color:rgb(204,204,204)"><div dir=3D"auto">Hi khem,</div><div dir=3D"auto">=
If possible can check the makefile once and guide me.</div><div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 11 Apr 20=
23 at 12:50 PM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"></b=
lockquote></div></div><div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">On T=
ue, Apr 11, 2023 at 12:13=E2=80=AFAM MOHAMMED HASSAN<br>
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
&gt; <br>
&gt;<br></blockquote></div></div><div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204=
,204)">
thats<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59674): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59674" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59674</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98191767/7559=
147" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98191767/7559147</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:hassanchattarki@gmail.com" target=3D"_blank">has=
sanchattarki@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000059694b05f90b2eef--

