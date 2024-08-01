Return-Path: <bbergquist@epc-instore.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E831AC3DA4A
	for <webhook@archiver.kernel.org>; Thu,  1 Aug 2024 09:24:35 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web10.64115.1722504275239360779
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Aug 2024 02:24:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@epc-instore.com header.s=google header.b=Ajrp/E6B;
 spf=permerror, err=too many SPF records (domain: epc-instore.com, ip: 209.85.221.175, mailfrom: bbergquist@epc-instore.com)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-4f52cc4d3beso2455310e0c.3
        for <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 02:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=epc-instore.com; s=google; t=1722504274; x=1723109074; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=08joAD0Ju93ClxuKuijHlYeuj/EdHiAsxqQwExR6bDQ=;
        b=Ajrp/E6BF2PiUYpL2zo58lRnr/885/YfAjl6Ed3kb6sKbyv0FukCXfFwiR3F0ziTt0
         WBoZSuh4gG2JBLJtHMjs+MUzbe5b+EIUvl1mNhoM/qMUUiQd/az8nv4PSCd+kXbopSWc
         fFmmoAkvv4txqOc0vix9jR8N+tRDWGL9tuYtZPXS5Iog514KMxstg6sHd85+0vh4Xyys
         z5/ztGy2SgxOebVpn6FvAh0MOdGNQPqIHF6AWxyWnq61DIKtN86sz7mGEH5KyR+1od38
         B+QNNmCSPElxRML4PyHtdkZz4Vw61X3a7NhomyS40Erqgk7o4IYyyIf4asPRKx3vB7Zm
         b9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722504274; x=1723109074;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=08joAD0Ju93ClxuKuijHlYeuj/EdHiAsxqQwExR6bDQ=;
        b=QWQ7Mxq6qlmpSRe69AaKU/jEfN/Ay9rNxH4KjEELGppni65cL7SmiwqwyNas39GpUg
         iQbWFRi1JHIvaGgHTPah4QYipUS999aCR4F6Pmth2+V0FxsdAs+mfyfM1ZK0k8TCwbst
         9R0fv49kvBHQAEFwbSxbqWpixILLJ2T8z8UjzWyVF39jG5NacJ4UL0IsgvEsyJEtnm/W
         341fqWV77buoSCtYiUy2iLLiGGKm0HSZ4KPADyZo2CE4HdpLcaorqiO98hQ85ZLFYI4I
         GKbJZx6l9ItHVbWqRTDOsyJc7tyOeJXVw/RbXIvs3aBtxn0Vxp6372WoLgG5R9GYwaXM
         basw==
X-Gm-Message-State: AOJu0YzadPnvLB5GweB9HnRTAS5VsaXurtF1rmOeSnyEt4HVv/FAqosb
	C0ckJoOy2Ay0VIk8IDM+F9DYqSp8u2vgDmvOTVce2vu6U6KCSpHqP5KcZ/zzod8y2EB6jWInMrZ
	xutjD104nizZSsC0VbGDjWga1SoPKKF0jiZ1qi4meMGaELddZRy8=
X-Google-Smtp-Source: AGHT+IETP4Gb4KTaeVhlm1NJD0SbMnVHUCMJiioppsIrM/iJKc26e4mMZgIdB56EA+57MrJsys97Q/TNUSbC/Z2k5wg=
X-Received: by 2002:a05:6102:f13:b0:493:ddd1:d7fc with SMTP id
 ada2fe7eead31-494506eb0f9mr2635143137.11.1722504274057; Thu, 01 Aug 2024
 02:24:34 -0700 (PDT)
MIME-Version: 1.0
References: <17E714A7AAB22D55.20637@lists.yoctoproject.org>
In-Reply-To: <17E714A7AAB22D55.20637@lists.yoctoproject.org>
From: Brett Bergquist <bbergquist@epc-instore.com>
Date: Thu, 1 Aug 2024 05:24:23 -0400
Message-ID: <CAH+ZgJtOo_jROD_5T1Uwom5cGO-Mp4ANYesubKMK3_B8-YT1kA@mail.gmail.com>
Subject: Re: [yocto] Question on how to enforce a task dependency
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000613583061e9bc7fd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 09:24:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63638

--000000000000613583061e9bc7fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just for the next person that comes along.  My issue was not the
dependencies, it was that I was trying to extract a "control.tar.xz" inside
my custom "do_prepare" task.  I am using "kas-container" for my build and
the Docker image does not contain "xz".  The "tar" command was failing
because of this.

I ended up adding


# This is needed to ensure that xz is staged before it is needed.

do_prepare[depends] =3D "xz-native:do_populate_sysroot"

to the recipe to ensure that "xz" native was built and installed where
"tar" could then find it.  I verified that this is working multiple times b=
y

bitbake -c cleanall xz zebra-scanner-corescanner


to clean the recipe and "xz" and then running

bitbake -c devshell zebra-scanner-corescanner


and I verified that "xz" was present in
"../recipe-sysroot-native/usr/bin/xz".

All is working correctly now.

On Tue, Jul 30, 2024 at 3:34=E2=80=AFPM Brett Bergquist via lists.yoctoproj=
ect.org
<bbergquist=3Depc-instore.com@lists.yoctoproject.org> wrote:

> I have a recipe that basically is repackaging an Debian package.  We don'=
t
> have the source so we cannot build the package directly.
>
> I have to patch the "postinst" file that is within the "control.tar.xz"
> file.   I wrote a task "do_prepare" that will expand the "control.tar.xz"
> file and I want to ensure the task is run before the "do_patch" task but
> after the "do_fetch" task.
>
> I added this
>
> addtask do_prepare after do_unpack before do_patch
>
> Sometimes this fails and the "do_patch" task does not see the extracted
> content to patch.   Adding in a "-D" to the bitbake command will sometime=
s
> cause a difference in what I perceive to be timing and the recipe builds
> fine.  I have not been able to figure out what the issue is.
>
> If I look at the dependencies of the recipe's
> "zebra-scanner-corescanner:do_patch" task, I see for my recipe which is
> "zebra-scanner-corescanner"
>
>    - patch-native:do_populate_sysroot
>    - quilt-native:do_populate_sysroot
>    - zebra-scanner-corescanner:do_prepare
>    - zebra-scanner-corescanner:do_unpack
>
> and for for the "zebra-scanner-corescanner:do_prepare" task I see:
>
>    - zebra-scanner-corescanner:do_unpack
>
> Being a bit new to this, I think the "zebra-scanner-corescanner:do_patch"
> should wait for all of its tasks to complete before it runs and those tas=
ks
> might be run in parallel, one of which will be the
> "zebra-scanner-corescanner:do_unpack" but the
> "zebra-scanner-corescanner:do_prepare" also has a dependency on the
> "zebra-scanner-corescanner:do_unpack" so ultimately the
> "zebra-scanner-corescanner:do_patch" should be waiting until the
> "zebra-scanner-corescanner:do_prepare" completes.
>
> However it appears that sometimes it does not.  Anyone have any ideas on
> this?
>
> --
> Brett M. Bergquist
> *Distinguished Member Technical Staff*
> *EntryPoint Communications LLC*
> *30 Waterside Drive, Suite 100*
> *Farmington, CT 06032*
>
> Phone: (203) 206 3542
> Email: bbergquist@epc-instore.com
>
> CONFIDENTIALITY NOTICE
> This message (including any attachments) contains information that may be
> confidential.  If you are the intended recipient, and the message is mark=
ed
> confidential, by opening the message, you accept responsibility for
> treating the message and information contained in the message as
> confidential, including not distributing or disclosing its contents to an=
y
> third party without the express written consent of the sender.  If you ar=
e
> not the intended recipient, you may not read, print, retain, use, copy,
> distribute or disclose to anyone the message or any information contained
> in the message, and such conduct is prohibited.  If you have received thi=
s
> message in error, please advise the sender by reply e-mail, and destroy a=
ll
> copies of the original message (including any attachments).  Sender
> reserves all rights of confidentiality and privilege, and nothing regardi=
ng
> this e-mail or its transmission is intended to be a waiver thereof.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63612):
> https://lists.yoctoproject.org/g/yocto/message/63612
> Mute This Topic: https://lists.yoctoproject.org/mt/107633847/8566334
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bbergquist@epc-instore.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000613583061e9bc7fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just for the next person that comes along.=C2=A0 My issue =
was not the dependencies, it was that I was trying to extract a &quot;contr=
ol.tar.xz&quot; inside my custom &quot;do_prepare&quot; task.=C2=A0 I am us=
ing &quot;kas-container&quot; for my build and the Docker image does not co=
ntain &quot;xz&quot;.=C2=A0 The &quot;tar&quot; command was failing because=
 of this.<div><br></div><div>I ended up adding</div><div><blockquote style=
=3D"margin:0 0 0 40px;border:none;padding:0px"><div><br></div><div><div sty=
le=3D"color:rgb(8,8,8)"><pre style=3D"font-family:&quot;JetBrains Mono&quot=
;,monospace;font-size:9.8pt"><span style=3D"color:rgb(140,140,140);font-sty=
le:italic"># This is needed to ensure that xz is staged before it is needed=
.</span></pre></div></div><div><div style=3D"color:rgb(8,8,8)"><pre style=
=3D"font-family:&quot;JetBrains Mono&quot;,monospace;font-size:9.8pt"><span=
 style=3D"color:rgb(135,16,148);font-style:italic">do_prepare[depends] </sp=
an>=3D <span style=3D"color:rgb(6,125,23)">&quot;xz-native:do_populate_sysr=
oot&quot;<br></span></pre></div></div></blockquote></div>to the recipe to e=
nsure that &quot;xz&quot; native was built and installed where &quot;tar&qu=
ot; could then find it.=C2=A0 I verified that this is working multiple time=
s by<div><br></div><div><blockquote style=3D"margin:0 0 0 40px;border:none;=
padding:0px"><div>bitbake -c cleanall xz zebra-scanner-corescanner</div></b=
lockquote><br></div><div>to clean the recipe and &quot;xz&quot; and then ru=
nning</div><div><br></div><div><blockquote style=3D"margin:0 0 0 40px;borde=
r:none;padding:0px"><div>bitbake -c devshell zebra-scanner-corescanner</div=
></blockquote><br></div><div>and I verified that &quot;xz&quot; was present=
 in &quot;../recipe-sysroot-native/usr/bin/xz&quot;.</div><div><br></div><d=
iv>All is working correctly now.</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 30, 2024 at 3:34=E2=80=AF=
PM Brett Bergquist via <a href=3D"http://lists.yoctoproject.org" target=3D"=
_blank">lists.yoctoproject.org</a> &lt;bbergquist=3D<a href=3D"mailto:epc-i=
nstore.com@lists.yoctoproject.org" target=3D"_blank">epc-instore.com@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">I have a recipe that basically is repackag=
ing an Debian package.=C2=A0 We don&#39;t have the source so we cannot buil=
d the package directly.=C2=A0<div><br></div><div>I have to patch the &quot;=
postinst&quot; file that is within the &quot;control.tar.xz&quot; file.=C2=
=A0 =C2=A0I wrote a task &quot;do_prepare&quot; that will expand=C2=A0the &=
quot;control.tar.xz&quot; file and I want to ensure the task is run before =
the &quot;do_patch&quot; task but after the &quot;do_fetch&quot; task.=C2=
=A0=C2=A0<br clear=3D"all"><div><br></div><div>I added this=C2=A0</div><div=
><br></div></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;p=
adding:0px"><div><div>addtask do_prepare after do_unpack before do_patch</d=
iv></div><div><br></div></blockquote>Sometimes this fails and the &quot;do_=
patch&quot; task does not see the extracted content to patch.=C2=A0 =C2=A0A=
dding in a &quot;-D&quot; to the bitbake command will sometimes cause a dif=
ference in what I perceive to be timing and the recipe builds fine.=C2=A0 I=
 have not been able to figure=C2=A0out what the issue is.<div><br></div><di=
v>If I look at the dependencies of the recipe&#39;s &quot;zebra-scanner-cor=
escanner:do_patch&quot; task, I see for my recipe which is &quot;zebra-scan=
ner-corescanner&quot;</div><div><ul><li>patch-native:do_populate_sysroot</l=
i><li>quilt-native:do_populate_sysroot</li><li>zebra-scanner-corescanner:do=
_prepare</li><li>zebra-scanner-corescanner:do_unpack</li></ul><div>and for =
for the &quot;zebra-scanner-corescanner:do_prepare&quot; task I see:</div><=
div><ul><li>zebra-scanner-corescanner:do_unpack</li></ul><div>Being a bit n=
ew to this, I think the &quot;zebra-scanner-corescanner:do_patch&quot; shou=
ld wait for all of its tasks to complete before it runs and those tasks mig=
ht be run in parallel, one of which will be the &quot;zebra-scanner-coresca=
nner:do_unpack&quot; but the &quot;zebra-scanner-corescanner:do_prepare&quo=
t; also has a dependency on the &quot;zebra-scanner-corescanner:do_unpack&q=
uot; so ultimately the &quot;zebra-scanner-corescanner:do_patch&quot; shoul=
d be waiting until the &quot;zebra-scanner-corescanner:do_prepare&quot; com=
pletes.=C2=A0 =C2=A0</div><div><br></div><div>However it appears that somet=
imes it does not.=C2=A0 Anyone have any ideas on this?</div><div><br></div>=
<div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" =
class=3D"gmail_signature"><div dir=3D"ltr">Brett M. Bergquist<div><b>Distin=
guished Member Technical Staff</b></div><div><b>EntryPoint Communications L=
LC</b></div><div><b>30 Waterside Drive, Suite 100</b></div><div><b>Farmingt=
on, CT 06032</b></div><div><b><br></b></div><div>Phone: (203) 206 3542</div=
><div>Email: <a href=3D"mailto:bbergquist@epc-instore.com" target=3D"_blank=
">bbergquist@epc-instore.com</a></div><div><br></div><div><span style=3D"co=
lor:rgb(34,34,34);font-family:&quot;Times New Roman&quot;,serif;font-size:1=
3.3333px">CONFIDENTIALITY NOTICE</span><br style=3D"color:rgb(34,34,34);fon=
t-family:&quot;Times New Roman&quot;,serif;font-size:13.3333px"><span style=
=3D"color:rgb(34,34,34);font-family:&quot;Times New Roman&quot;,serif;font-=
size:13.3333px">This message (including any attachments) contains informati=
on that may be confidential.=C2=A0 If you are the intended recipient, and t=
he message is marked confidential, by opening the message, you accept respo=
nsibility for treating the message and information contained in the message=
 as confidential, including not distributing or disclosing its contents to =
any third party without the express written consent of the sender.=C2=A0 If=
 you are not the intended recipient, you may not read, print, retain, use, =
copy, distribute or disclose to anyone the message or any information conta=
ined in the message, and such conduct is prohibited.=C2=A0 If you have rece=
ived this message in error, please advise the sender by reply e-mail, and d=
estroy all copies of the original message (including any attachments).=C2=
=A0 Sender reserves all rights of confidentiality and privilege, and nothin=
g regarding this e-mail or its transmission is intended to be a waiver ther=
eof.</span><br></div></div></div></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63612): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63612</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107633847/856=
6334" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107633847/8566334</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bbergquist@epc-instore.com" target=3D"_blank">bb=
ergquist@epc-instore.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000613583061e9bc7fd--

