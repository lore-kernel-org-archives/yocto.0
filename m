Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC2EC433EF
	for <webhook@archiver.kernel.org>; Sat,  5 Mar 2022 07:56:17 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.3592.1646466976196139544
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 23:56:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oy0ugXfb;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id jr3so8356630qvb.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 23:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i7hXTCp/iQRJzR/W5eKWsPH5TUaGU+PdE4Ke69Ukl/c=;
        b=oy0ugXfbBrpqeX9s3ioSLpsV256g56ba0X2vecSa38e9G1Jg8oVLXEaF/wp04KfLBs
         p5+SAuDDOMN4nkeWjxCUlIPhTfA7FfvPlglo1PM4pV16OxQT4NmIFi4FSHV6AwX34kTy
         mVXRFy9YbJWigk+Vjg7Q0k4rZe8sgHIoE8e0evSZHRefBakFVl6EwbWLlFm5m66bPF6P
         VqlgkhK388qS9iyu8F6qugYNs3VhdDV/xvcUF1heNJklHERQg/A5BnkZgui7fZ7lN+Qn
         k1eTNIE8sJVtZVbqNdTRK+i6NROLrjpECYqrEdD1yarYWQjFmsI0FBAgGITdHAvhp01T
         JKDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i7hXTCp/iQRJzR/W5eKWsPH5TUaGU+PdE4Ke69Ukl/c=;
        b=wMJ/B9Bmjk/U4iWmEYVZTm/+raAHZrUDCVCCVEbPAoE5D+I/l0SKV1+w7cdL9v88K9
         cmVIO22iOxsj9S3jSCC868FLl0uI+CmPYAGrbURlcok3G+oF4uUG1XcmBO/8esckglkJ
         lOBmXOKIbCHXWSeZ05Pixzf3QVe8nSQ8CZlgRVBH+flHkAZYvzzAc/MAY28W/GnUaPHT
         HvYd0W6a8+SJN9hAjyYT5BYfDj9JXCeY4wVlV+w/m0zi3xz3oqoEPBrd7myvj7/q/qFl
         Gq59DNO7Rw/sEP7PzbcWSMvt79xPcKRLtTOPR2KW5boxS8EAUeKstv6kNrB6/Vk4VPgz
         u8/Q==
X-Gm-Message-State: AOAM5316jsRWgrDRlomx4guZ/xT+aYPzwrIwHAidA2HDPIQY0JFLLwEZ
	jAo6HYOizONwEsiRr1SqwYky4Wmwv2oOPstvUpo=
X-Google-Smtp-Source: 
 ABdhPJxPrMD2n3m2DjMxsf345YClFRgvXmIEVZYEFfXNJw2N9yxlDAb1laRLOop8lxpyfUQzNMpI0XO7Cq557+0Zm28=
X-Received: by 2002:ad4:5ca7:0:b0:435:49f5:394b with SMTP id
 q7-20020ad45ca7000000b0043549f5394bmr1875105qvh.36.1646466975225; Fri, 04 Mar
 2022 23:56:15 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAMKF1sqMQVeTO_FyyrUWRmV+JjLFH5mxNTvL+JxDgoBrck6V4w@mail.gmail.com>
 <13396.1646434954779482206@lists.yoctoproject.org>
 <d32cf394-4580-4549-0b8c-dd05a61fb1a4@gmail.com>
 <MN2PR17MB39031594692FB5064E0F4225C3069@MN2PR17MB3903.namprd17.prod.outlook.com>
In-Reply-To: 
 <MN2PR17MB39031594692FB5064E0F4225C3069@MN2PR17MB3903.namprd17.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Mar 2022 23:55:48 -0800
Message-ID: 
 <CAMKF1srBN=obfQnySFAbcPnunuOkfxaTPk8LsdjB8REyiqCNAA@mail.gmail.com>
Subject: Re: [yocto] suricata: enable lua support
To: gary@missionsecure.com
Cc: akuster808 <akuster808@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000315a2605d973f7d0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Mar 2022 07:56:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56376

--000000000000315a2605d973f7d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 4, 2022 at 6:23 PM Gary Huband via lists.yoctoproject.org <gary=
=3D
missionsecure.com@lists.yoctoproject.org> wrote:

> The Suricata install site also says to install
>
> liblua5.1-dev
>
> Does this mean that Suricata needs lua 5.1 (which is very old)?? For Zeus
> the lua recipe is 5.3.5.
>
> Do I need to create a recipe for lua 5.1?
>

seems so, lua5.1 is not ABI compatible with newer Lua, so if an app needs
this version then
you will have to add it, perhaps see if you can just use internal version
or something like that

>
> Gary
> ------------------------------
> *From:* akuster808 <akuster808@gmail.com>
> *Sent:* Friday, March 4, 2022 7:52 PM
> *To:* Gary Huband <Gary@MissionSecure.com>; yocto@lists.yoctoproject.org =
<
> yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] suricata: enable lua support
>
>
>
> On 3/4/22 15:02, Gary Huband via lists.yoctoproject.org wrote:
> >
> > Adding DEPENDS +=3D "lua"  fixed that error.  I'm assuming that allows
> > the configure to find lua.
> >
> > Now I'm getting a compile error
> >
>
> I added this to the recipe and it appears the liblua it  is looking for
> does not exist.
>
> PACKAGECONFIG[lua] =3D "--enable-lua
> --with-liblua-includes=3D${STAGING_INCDIR}
> --with-liblua-libraries=3D=3D${STAGING_LIBDIR}, --disable-lua,lua, lua"
>
> Error:
>
> checking for luaL_openlibs in -llua5.1... no
> |
> |    ERROR!  liblua library not found, go get it
> |    from
> https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flua.or=
g%2Findex.html&amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0c1=
42b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C637820383=
359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhKNSt41GUO=
gdg%2FG3ajSKIElo0%3D&amp;reserved=3D0
> or your distribution:
> |
> |    Ubuntu: apt-get install liblua5.1-dev
>
>
> It may be  the lua recipe.  I only see the static lib 'liblua.a'
>
> -armin
>
> > |
> >
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
>
> > util-lua-dns.o: in function `DnsGetTxid':
> > |
> > /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80:
> > undefined reference to `rs_dns_lua_get_tx_id'
> > |
> >
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
>
> > util-lua-dns.o: in function `DnsGetAnswerTable':
> > |
> > /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125:
> > undefined reference to `rs_dns_lua_get_answer_table'
> > |
> >
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
>
> > util-lua-dns.o: in function `DnsGetAuthorityTable':
> > |
> > /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133:
> > undefined reference to `rs_dns_lua_get_authority_table'
> > |
> >
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
>
> > util-lua-dns.o: in function `DnsGetQueryTable':
> > |
> > /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117:
> > undefined reference to `rs_dns_lua_get_query_table'
> > |
> >
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
>
> > util-lua-dns.o: in function `DnsGetDnsRrname':
> > |
> > /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69:
> > undefined reference to `rs_dns_lua_get_rrname'
> > |
> >
> /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recipe-s=
ysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
>
> > util-lua-dns.o: in function `DnsGetRcode':
> > |
> > /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92:
> > undefined reference to `rs_dns_lua_get_rcode'
> > | collect2: error: ld returned 1 exit status
> > | Makefile:2118: recipe for target 'suricata' failed
> > | make[2]: *** [suricata] Error 1
> >
> >
> >
> >
>
>
> *Gary Huband*
> *Sr. Software and Systems Engineer*
>
> Office: 434.284.8071 x720
> Direct: 434.260.4995
> Gary@MissionSecure.com
>
> *Follow Us!*
> LinkedIn <https://www.linkedin.com/company/mission-secure-inc->  |  Blog
> <https://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medi=
um=3Demail&utm_campaign=3Dblog-email-sig>
>   |  Website
> <https://www.missionsecure.com/?utm_source=3Demail-signature&utm_medium=
=3Demail&utm_campaign=3Dweb-email-sig>
>
> : : : : : : : : : : : : : : : : : : : : : : : : : : :
>
> [image: MSi]
>
> This email and any files transmitted with it are confidential and
> proprietary and intended solely for the use of the individual or entity t=
o
> whom they are addressed. Any dissemination, distribution or copying of th=
is
> communication is strictly prohibited without our prior permission. If you
> received this in error, please contact the sender and delete the material
> from any computer.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56375):
> https://lists.yoctoproject.org/g/yocto/message/56375
> Unfollow This Topic: https://lists.yoctoproject.org/unft/89556445/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000315a2605d973f7d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace"><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 4, 2022 at 6:23 PM Gary=
 Huband via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.or=
g</a> &lt;gary=3D<a href=3D"mailto:missionsecure.com@lists.yoctoproject.org=
">missionsecure.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The Suricata install site also says to install </div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<pre><span>liblua5</span><span>.</span><span>1</span><span>-</span><span>de=
v</span></pre>
Does this mean that Suricata needs lua 5.1 (which is very old)?? For Zeus t=
he lua recipe is 5.3.5.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Do I need to create a recipe for lua 5.1?</div></div></blockquote><div><br>=
</div><div class=3D"gmail_default" style=3D"font-family:monospace,monospace=
">seems so, lua5.1 is not ABI compatible with newer Lua, so if an app needs=
 this version then</div><div class=3D"gmail_default" style=3D"font-family:m=
onospace,monospace">you will have to add it, perhaps see if you can just us=
e internal version or something like that</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Gary<br>
</div>
<div id=3D"gmail-m_-5629631484321457538appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-5629631484321457538divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_bl=
ank">akuster808@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, March 4, 2022 7:52 PM<br>
<b>To:</b> Gary Huband &lt;Gary@MissionSecure.com&gt;; <a href=3D"mailto:yo=
cto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org<=
/a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">y=
octo@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] suricata: enable lua support</font>
<div>=C2=A0</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div><br>
<br>
On 3/4/22 15:02, Gary Huband via <a href=3D"http://lists.yoctoproject.org" =
target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt;<br>
&gt; Adding DEPENDS +=3D &quot;lua&quot;=C2=A0 fixed that error.=C2=A0 I&#3=
9;m assuming that allows <br>
&gt; the configure to find lua.<br>
&gt;<br>
&gt; Now I&#39;m getting a compile error<br>
&gt;<br>
<br>
I added this to the recipe and it appears the liblua it=C2=A0 is looking fo=
r <br>
does not exist.<br>
<br>
PACKAGECONFIG[lua] =3D &quot;--enable-lua <br>
--with-liblua-includes=3D${STAGING_INCDIR} <br>
--with-liblua-libraries=3D=3D${STAGING_LIBDIR}, --disable-lua,lua, lua&quot=
;<br>
<br>
Error:<br>
<br>
checking for luaL_openlibs in -llua5.1... no<br>
|<br>
|=C2=A0=C2=A0=C2=A0 ERROR!=C2=A0 liblua library not found, go get it<br>
|=C2=A0=C2=A0=C2=A0 from <a href=3D"https://nam04.safelinks.protection.outl=
ook.com/?url=3Dhttp%3A%2F%2Flua.org%2Findex.html&amp;amp;data=3D04%7C01%7Cg=
ary%40missionsecure.com%7C7f9815dcc0c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4d=
c98e1b119172b8ec5d%7C0%7C1%7C637820383359878260%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;=
amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhKNSt41GUOgdg%2FG3ajSKIElo0%3D&amp;amp;rese=
rved=3D0" target=3D"_blank">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flua.org%=
2Findex.html&amp;amp;data=3D04%7C01%7Cgary%40missionsecure.com%7C7f9815dcc0=
c142b6d92d08d9fe4262cb%7Cf0ca9611f13f4dc98e1b119172b8ec5d%7C0%7C1%7C6378203=
83359878260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJ=
BTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;amp;sdata=3DFdB7jyQwXX%2BVjjhLSDhKNS=
t41GUOgdg%2FG3ajSKIElo0%3D&amp;amp;reserved=3D0</a>
 or your distribution:<br>
|<br>
|=C2=A0=C2=A0=C2=A0 Ubuntu: apt-get install liblua5.1-dev<br>
<br>
<br>
It may be=C2=A0 the lua recipe.=C2=A0 I only see the static lib &#39;liblua=
.a&#39;<br>
<br>
-armin<br>
<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetTxid&#39;:<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:80:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_tx_id&#39;<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetAnswerTable&#39;:<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:125=
: <br>
&gt; undefined reference to `rs_dns_lua_get_answer_table&#39;<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetAuthorityTable&#39;:<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:133=
: <br>
&gt; undefined reference to `rs_dns_lua_get_authority_table&#39;<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetQueryTable&#39;:<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:117=
: <br>
&gt; undefined reference to `rs_dns_lua_get_query_table&#39;<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetDnsRrname&#39;:<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:69:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_rrname&#39;<br>
&gt; | <br>
&gt; /tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/suricata/6.0.3-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.2.0/ld:
<br>
&gt; util-lua-dns.o: in function `DnsGetRcode&#39;:<br>
&gt; | <br>
&gt; /usr/src/debug/suricata/6.0.3-r0/suricata-6.0.3/src/util-lua-dns.c:92:=
 <br>
&gt; undefined reference to `rs_dns_lua_get_rcode&#39;<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt; | Makefile:2118: recipe for target &#39;suricata&#39; failed<br>
&gt; | make[2]: *** [suricata] Error 1<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
</div>
</span></font></div>
<br>
<div style=3D"font-family:Arial;font-size:12px;font-style:normal;text-trans=
form:uppercase">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family:Arial;font-size:11px;font-style:normal"><font col=
or=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family:Arial;font-size:12px;font-style:normal"><font col=
or=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-" target=3D"=
_blank">LinkedIn</a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=3D"https://www.mission=
secure.com/blog?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm=
_campaign=3Dblog-email-sig" target=3D"_blank">Blog</a>=C2=A0=C2=A0|=C2=A0=
=C2=A0<a href=3D"https://www.missionsecure.com/?utm_source=3Demail-signatur=
e&amp;utm_medium=3Demail&amp;utm_campaign=3Dweb-email-sig" target=3D"_blank=
">Website</a>
</font></div>
<br>
<div style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:12px;font-st=
yle:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;lin=
e-height:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi"></div>
<br>
<div style=3D"font-family:Arial;font-size:11px;font-style:normal"><font col=
or=3D"#595458">This email and any files transmitted with it are confidentia=
l and proprietary and intended solely for the use of the individual or enti=
ty to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#56375): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56375" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56375</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/8955644=
5/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/unft/89556445/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000315a2605d973f7d0--

