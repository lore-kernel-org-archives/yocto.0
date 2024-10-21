Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 824DDD15DBD
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 16:42:29 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.51412.1729528945885948014
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 09:42:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kHC8kyT/;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539e1543ab8so7864037e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 09:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729528944; x=1730133744; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KH3Hrzi6M3aTkyG/RRuXhj6SKdXdy0CFynrLIFzY2BA=;
        b=kHC8kyT/+7HSB59Wz13n+kQxkkuRVQ0atqFBL7epxwXiNGSq9W6X1RFryWcFjKT6hL
         PTMp1kYhIIdY2KcD8Es0JboF9IIrGhTKu9dXLOAdsb0SnsmmV7ftIC8jPwkul3tEelZH
         a5yoKHkRKyr9R6a6ob1vnwim9XZYX5Vs5ZP5dkCKr4+1fGkbMV6MCwKKMD6XBztQ6Pbl
         o+bsdvA2F/16p/hWRjm3KtEZIlkzBBpENstjks5WtVimEabR7OI7mU8n6/Xu3LrG3/XF
         KWejNet85n/SP4a2nrpnCm72ZT7K3tMoz6b2u5rfAgH0nKiwdsq1D0aMoVCv/29klWDs
         DONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729528944; x=1730133744;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KH3Hrzi6M3aTkyG/RRuXhj6SKdXdy0CFynrLIFzY2BA=;
        b=rua7oUvJPfVeZW2z05LoKeJvHhjfmtvJRP0aMSPayEtkvHJfjet/Wu3aQOthyQVVE4
         e7q6rtwbusRt1mclJRbwtP/pJvfx1rBtq1DtA6GaKjaSvk//2p4YBRt31ovlShdMYgPC
         oSSr66r3bb+enKc0JMzs/F8FOBMEUnmojzb/q9cVBXb3o+T8GgKzeC5aNnf08LKRIrJZ
         2hCTw9734TdO2YuTS/t2xYsZ+CCwEBb1BodO7ZHjlsGYWVpjZwXY5LCy6IA/gg9F0aRd
         RI4gG5uf0RZJahGFo8nb24FOeBd4sdkm8jiyURIK0m2AXbhaNUILBBxpCHhCMamkKGWF
         wY/Q==
X-Gm-Message-State: AOJu0YwAxYQD5qcY/3+nNBrK5zL0oql6tx4KRqYrxJ4GqCXOnvpxYcOK
	/5ogNUyvRmIRkJZGesfXm7QVcGx3EQnXtQmA3mKLgWb9iQN4+f7q/BgufCpvnu8WpemXJy9BZjq
	bmzXY1tAEHbzJ2Zlo9dHgn2DXJVKymg==
X-Google-Smtp-Source: AGHT+IHx3KGRspXCvNnVezH/Hr1EsQtuCvmNKOg979KHIUmqKGiA08qeWKbwqsyO29sAHiTRS+H/gCIaHtY4+r2Tszg=
X-Received: by 2002:a05:6512:130e:b0:538:9e1e:b06f with SMTP id
 2adb3069b0e04-53a1545e10emr10049933e87.27.1729528943217; Mon, 21 Oct 2024
 09:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
In-Reply-To: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Oct 2024 18:42:10 +0200
Message-ID: <CANNYZj_5e+vqYr+AyiY9j2gx6XXNxVp+AfT=3BT4YvyZCbpSxg@mail.gmail.com>
Subject: Re: [yocto] reading tgz file and uncompress in rootfs
To: yocto@lists.yoctoproject.org, umeshyv@gmail.com
Content-Type: multipart/alternative; boundary="0000000000004a16480624ff566b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 16:42:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64071

--0000000000004a16480624ff566b
Content-Type: text/plain; charset="UTF-8"

Delete all of do_install, then run the unpack task and check WORKDIR for
where the extracted content went (unpack will do this for everything in
SRC_URI). Then write a do_install that installs pieces of the unpacked
content into ${D}.

You don't need to perform a separate unpack operation, and IMAGE_ROOTFS
only exists in the context of an image recipe.

Alex

On Mon, 21 Oct 2024 at 18:30, umeshyv via lists.yoctoproject.org <umeshyv=
gmail.com@lists.yoctoproject.org> wrote:

> Hi, I have requirement where recipe file reads set of .tgz files and it
> should store in a location in rootfs and untar them(on freescale board).
> Can you please show some pointers.
>
> SUMMARY = " Tools"
> LICENSE = "CLOSED"
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> SRCREV = "${AUTOREV}"
>
> SRC_URI = "file://tool1.tgz
> file://tool2.tgz
> file://tool3.tgz
> file://tool4.tgz"
>
> do_install () {
> install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools
>
> for file in ${WORKDIR}/.tgz;do
>
> tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/<folder>
>
> done
>
> Alternatively instead of for loop tried below
>
> tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
> tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
> tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
> tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
>
> But when I build following is the error
>
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing shell function do_install
> tar (child): Cannot connect to file: resolve failed
> gzip: stdin: unexpected end of file
> tar: Child returned status 128
> tar: Error is not recoverable: exiting now
>
> Can you please suggest to resolve errors and provide solutions
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64070):
> https://lists.yoctoproject.org/g/yocto/message/64070
> Mute This Topic: https://lists.yoctoproject.org/mt/109136100/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004a16480624ff566b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Delete all of do_install, then run the unpack task an=
d check WORKDIR for where the extracted content went (unpack will do this f=
or everything in SRC_URI). Then write a do_install that installs pieces of =
the unpacked content into ${D}.</div><div><br></div><div>You don&#39;t need=
 to perform a separate unpack operation, and IMAGE_ROOTFS only exists in th=
e context of an image recipe.<br></div><div><br></div><div>Alex<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, 21 Oct 2024 at 18:30, umeshyv via <a href=3D"http://lists.yoctoprojec=
t.org">lists.yoctoproject.org</a> &lt;umeshyv=3D<a href=3D"mailto:gmail.com=
@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Hi, I have requirement where recipe file rea=
ds set of .tgz files and it should store in a location in rootfs and untar =
them(on freescale board). Can you please show some pointers.</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">SUMMARY =3D &quot; Tools&quot;<br style=3D"o=
utline:none">LICENSE =3D &quot;CLOSED&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR=
}/files:&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">SRCREV =3D &quot;${AUTOREV}&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">SRC_URI =3D &quot;file://tool1.tgz<br style=
=3D"outline:none"><a style=3D"outline:none;color:rgb(0,82,204)" rel=3D"nofo=
llow noopener">file://tool2.tgz</a><br style=3D"outline:none"><a style=3D"o=
utline:none;color:rgb(0,82,204)" rel=3D"nofollow noopener">file://tool3.tgz=
</a><br style=3D"outline:none"><a style=3D"outline:none;color:rgb(0,82,204)=
" rel=3D"nofollow noopener">file://tool4.tgz</a>&quot;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">do_install () {<br style=3D"outline:none"><t=
t style=3D"outline:none">install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools</=
tt></p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">for file in ${WORKDIR}/.tgz;do</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share=
/&lt;folder&gt;</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">done</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Alternatively instead of for loop tried belo=
w</p>
<div style=3D"outline:none;margin:9px 0px;padding:0px;border:1px solid rgb(=
193,199,208);background:rgb(244,245,247);font-size:12px;line-height:1.33333=
;font-family:monospace;border-radius:3px;color:rgb(17,17,17);font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;text-decoration-style:initial;text-decor=
ation-color:initial">
<div style=3D"outline:none;margin:0px;padding:9px 12px">
<pre style=3D"outline:none;margin:0px;padding:0px;max-height:30em;overflow:=
auto;white-space:pre-wrap">tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/us=
r/share/&lt;folder&gt;
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;</pre=
>
</div>
</div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">But when I build following is the error</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">DEBUG: Python function extend_recipe_sysroot=
 finished</p>
<div style=3D"outline:none;margin:0px;padding:0px;color:rgb(17,17,17);font-=
family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Oxygen,=
Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&qu=
ot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:nor=
mal;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial">
<table style=3D"outline:none;border-collapse:collapse;margin:5px 0px 5px 2p=
x;width:auto;word-break:break-all">
<tbody style=3D"outline:none">
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">DEBUG: Executing shell function do_install</td>
</tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">tar (child): Cannot connect to file: resolve failed</td>
</tr>
<tr style=3D"outline:none"></tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">gzip: stdin: unexpected end of file</td>
</tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">tar: Child returned status 128</td>
</tr>
<tr style=3D"outline:none">
<td style=3D"outline:none;border:1px solid rgb(193,199,208);padding:3px 4px=
">tar: Error is not recoverable: exiting now</td>
</tr>
</tbody>
</table>
</div>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Can you please suggest to resolve errors and=
 provide solutions</p>
<p style=3D"outline:none;margin:10px 0px 0px;padding:0px;color:rgb(17,17,17=
);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,=
Oxygen,Ubuntu,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica =
Neue&quot;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Thanks</p>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64070): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64070" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64070</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109136100/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109136100/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004a16480624ff566b--

