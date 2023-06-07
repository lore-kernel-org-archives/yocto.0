Return-Path: <huykhacnguyen1983@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DDC3C7EE23
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 12:38:07 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.7268.1686141480796908360
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 05:38:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CLIHki4/;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: huykhacnguyen1983@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-97460240863so968951066b.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 05:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686141479; x=1688733479;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NmFrfzFA9lh9Goc3PlcLVEHeNEkkyCVRwSR1gxNzMbc=;
        b=CLIHki4/9OS/7t0cmn6X2SO8K9vGqA63C00ATBrjT55Q+c1jNsGBzuJpGBu+6IelCJ
         u0w4nctMAOCrw6o1/ZtOHAyfZ3xW7nLEjrO6mIbmnbSGz1eQ+WbhXZVU4I3fSn410pGl
         M1YnSo/TE6A4Saj5NNpTpcKUkfpixiF7yIAm0MX/3OUnYy0xObe2hpnU1uB7Sf2lyoTL
         e4jXOwqUNh3cfjbUlr1eWLkCfuiXD6q+jiq4uTCSgyXzfyVevr8U0sJ4Q8M1ZuW/0F+0
         zfu4CSNUcSlE8mwuhsso6zmmbj+hGG6bGAIjzyLT++KiWnSA7Y7scJPUg97S8S1S/amt
         eE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686141479; x=1688733479;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NmFrfzFA9lh9Goc3PlcLVEHeNEkkyCVRwSR1gxNzMbc=;
        b=RAJFGHYPC4Gp7Rif6VKEeuk5Z5LTf+OboLNPZw1G6+akh6fKFXPZSggAEuuZbRo6cH
         aWfs28+XrpVpqIq7EP7yYnDdYFv7Kf7MBMJCCtQ7FBTsiSUlnEsUd2GFYhnTPmbgNd3w
         9r5A/ooJv420/2K3fl6ZLcKDChEsrLi7pCxGj/kOiU3pY1OE+6s9kpZQa2cDhup59wW5
         dtLuBOCgErTaJ86660fBsXKr10OrEcNHD7FM+/xSbu17LAa+Np/cY4OdXgFJlGZ+cocA
         AmuNzv3MWvvOavb59SjYtghwoSl2TdUZfZnA3cFcLM4NjcD0yQnoGbPuofS1IoPsez9N
         +9fA==
X-Gm-Message-State: AC+VfDzPaXbu1TAJ74oMf+5fAdTB+vhXU2FxhwcF4JeMqHw0LImFr/Mh
	KV8tRyIJlSw1p70K4HPG1VT+2SFqKXT+RoPNu10=
X-Google-Smtp-Source: ACHHUZ61yMxvkN4Z01ykIxWe4cOgJZCmgVarnP3nCsq2fW2zg+PhQzBlNIDCOL5kevF+ycYOysD3AH2Nq/bY+fXe1y4=
X-Received: by 2002:a17:906:9b86:b0:974:9aa9:be3 with SMTP id
 dd6-20020a1709069b8600b009749aa90be3mr5883642ejc.28.1686141478877; Wed, 07
 Jun 2023 05:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <CA+gF+GmO=MJWUzhpmw5J7DoixHkOOcBqNr2f7A2LZe_+FUnOcQ@mail.gmail.com>
 <0028e972a327c914b1cb7979ba8fd82bb2e103a4.camel@intel.com> <17663DD3817D729F.23186@lists.yoctoproject.org>
In-Reply-To: <17663DD3817D729F.23186@lists.yoctoproject.org>
From: huy nguyen <huykhacnguyen1983@gmail.com>
Date: Wed, 7 Jun 2023 19:37:47 +0700
Message-ID: <CA+gF+Gnks8MkHZmW2Z72Dgmn3LdiPPSr-kgyvskdgUcYMaMVzg@mail.gmail.com>
Subject: Re: [yocto][chromium] Need support to enable intel VAAPI with Chromium
To: huykhacnguyen1983@gmail.com
Cc: "Mittal, Anuj" <anuj.mittal@intel.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="000000000000e3f0fd05fd896767"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:38:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60209

--000000000000e3f0fd05fd896767
Content-Type: multipart/alternative; boundary="000000000000e3f0fc05fd896765"

--000000000000e3f0fc05fd896765
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anuj,

I attached the complete chromium log here.

Thank you,
Huy

On Wed, Jun 7, 2023 at 8:58=E2=80=AFAM HuyK via lists.yoctoproject.org
<huykhacnguyen1983=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi Anuj,
>
> Thank you for the quick response with positive information. It makes me
> feel warm about our community.
>
> 1- "This doesn't look like complete error log. A complete log would have
> helped."
> Do you mean a complete run log from chromium? I will submit a full runnin=
g
> log when I run chromium soon.
>
> 2- Regarding  the suggestion in
> https://github.com/intel/media-driver/issues/1498
>  I reviewed that suggestion during my self-research for a solution. It
> suggests using chromium r107 and adding
> --disable-features=3DUseChromeOSDirectVideoDecoder
>  However, I do not know which chromium recipe version for that r107. For
> the flag UseChromOSDirectVideoDecoder, I already have that.
>
> Thank you,
> Huy
>
>
> On Wed, Jun 7, 2023 at 8:49=E2=80=AFAM Mittal, Anuj <anuj.mittal@intel.co=
m> wrote:
>
>> On Wed, 2023-06-07 at 08:24 +0700, HuyK wrote:
>> > Hi all,
>> >
>> > I am working on Intel J4125 platform with these meta layers:
>> >  - poky: master branch
>> >  - meta-intel: master branch
>> >  - meta-browser: master branch
>> >
>> > 1/ I build chromium by chromium-ozone-wayland_111.0.5563.147.bb
>> > recipe with adding "use-vaapi" and "proprietary-codecs" to
>> > PACKAGECONFI in chromium-gn.inc
>> > That chromium did not call intel VAAPI functions, but I see it
>> > loads iHD_drv_video.so at runtime.
>> >
>> > 2/ Then I research to find this link about applying patches to
>> > support VAAPI in
>> > chromium https://aur.archlinux.org/packages/chromium-wayland-vaapi
>> >    + 0001-ozone-wayland-add-VA-API-support.patch
>> >    + vaapi-add-av1-support.patch
>> >    + use-oauth2-client-switches-as-default.patch
>> > This chromium loads iHD_drv_video.so and calls Intel VAAPI APIs;
>> > however, chromium reports these errors when I open to play an H264
>> > video so that HW Acceleration is not working
>> >
>> >  [13436:13436:0606/150528.263552:ERROR:vaapi_wrapper.cc(2399)]
>> > vaCreateSurfaces (import mode) failed, VA error: resource allocation
>> > failed
>> > [13436:13436:0606/150528.263789:ERROR:vaapi_picture_native_pixmap_ozo
>> > ne.cc(73)] Failed creating VASurface for NativePixmap
>> > [13436:13436:0606/150528.264843:ERROR:vaapi_wrapper.cc(2399)]
>> > vaCreateSurfaces (import mode) failed, VA error: resource allocation
>> > failed
>> > [13436:13436:0606/150528.265073:ERROR:vaapi_picture_native_pixmap_ozo
>> > ne.cc(73)] Failed creating VASurface for NativePixmap
>> > [13436:13436:0606/150528.265294:VERBOSE1:vaapi_video_decode_accelerat
>> > or.cc(142)] NotifyError(): Notifying of error 4
>>
>> This doesn't look like complete error log. A complete log would have
>> helped.
>>
>> >
>> > So far, I could not find a solution to fix chromium errors and I am
>> > new to chromium, intel vaapi, libva debugging.
>> >
>> > Please support how to debug the errors there or guidance on how to
>> > officially build chromium with intel VAAPI support in Yocto?
>>
>> This doesn't seem to be Yocto related. This looks very similar so
>> please try the suggestions here:
>>
>> https://github.com/intel/media-driver/issues/1498
>>
>> Thanks,
>>
>> Anuj
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60194):
> https://lists.yoctoproject.org/g/yocto/message/60194
> Mute This Topic: https://lists.yoctoproject.org/mt/99376559/7514801
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> huykhacnguyen1983@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e3f0fc05fd896765
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anuj,<div><br></div><div>I attached the complete chromi=
um log here.</div><div><br></div><div>Thank you,</div><div>Huy</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Jun 7, 2023 at 8:58=E2=80=AFAM HuyK via <a href=3D"http://lists.yoctoproje=
ct.org">lists.yoctoproject.org</a> &lt;huykhacnguyen1983=3D<a href=3D"mailt=
o:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hi Anuj,<div><br></div><div>Thank you for the quick response with=
 positive=C2=A0information. It makes me feel warm about our community.</div=
><div><br></div><div>1- &quot;This doesn&#39;t look like complete error log=
. A complete log would have helped.&quot;</div><div>Do you mean a complete =
run log from chromium? I will submit a full running log when I run chromium=
 soon.</div><div><br></div><div>2- Regarding=C2=A0 the suggestion in=C2=A0<=
a href=3D"https://github.com/intel/media-driver/issues/1498" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/intel/media-driver/issues/1498</a=
></div><div>=C2=A0I reviewed that suggestion during my self-research for a =
solution. It suggests using chromium r107 and adding=C2=A0<span style=3D"ba=
ckground-color:rgba(175,184,193,0.2);color:rgb(31,35,40);font-family:ui-mon=
ospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation M=
ono&quot;,monospace;font-size:11.9px;white-space:break-spaces">--disable-fe=
atures=3DUseChromeOSDirectVideoDecoder</span></div><div>=C2=A0However, I do=
 not know which chromium recipe version for that r107. For the flag UseChro=
mOSDirectVideoDecoder, I already have that.</div><div><br></div><div>Thank =
you,</div><div>Huy</div><div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 7, 2023 at 8:49=E2=80=AF=
AM Mittal, Anuj &lt;<a href=3D"mailto:anuj.mittal@intel.com" target=3D"_bla=
nk">anuj.mittal@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On Wed, 2023-06-07 at 08:24 +0700, HuyK wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I am working on Intel J4125 platform with these meta layers:<br>
&gt; =C2=A0- poky: master branch<br>
&gt; =C2=A0- meta-intel: master branch<br>
&gt; =C2=A0- meta-browser: master branch<br>
&gt; <br>
&gt; 1/ I build chromium by <a href=3D"http://chromium-ozone-wayland_111.0.=
5563.147.bb" rel=3D"noreferrer" target=3D"_blank">chromium-ozone-wayland_11=
1.0.5563.147.bb</a><br>
&gt; recipe with adding &quot;use-vaapi&quot; and &quot;proprietary-codecs&=
quot; to<br>
&gt; PACKAGECONFI in chromium-gn.inc=C2=A0<br>
&gt; That chromium did not call intel VAAPI functions, but I see it<br>
&gt; loads=C2=A0iHD_drv_video.so at runtime.<br>
&gt; <br>
&gt; 2/ Then I research to find this link about applying patches to<br>
&gt; support VAAPI in<br>
&gt; chromium=C2=A0<a href=3D"https://aur.archlinux.org/packages/chromium-w=
ayland-vaapi" rel=3D"noreferrer" target=3D"_blank">https://aur.archlinux.or=
g/packages/chromium-wayland-vaapi</a><br>
&gt; =C2=A0=C2=A0=C2=A0+ 0001-ozone-wayland-add-VA-API-support.patch<br>
&gt; =C2=A0=C2=A0=C2=A0+ vaapi-add-av1-support.patch<br>
&gt; =C2=A0=C2=A0=C2=A0+ use-oauth2-client-switches-as-default.patch<br>
&gt; This chromium loads=C2=A0iHD_drv_video.so and calls Intel VAAPI APIs;<=
br>
&gt; however, chromium reports these errors when I open to play an H264<br>
&gt; video so that HW Acceleration is not working=C2=A0<br>
&gt; <br>
&gt; =C2=A0[13436:13436:0606/150528.263552:ERROR:vaapi_wrapper.cc(2399)]<br=
>
&gt; vaCreateSurfaces (import mode) failed, VA error: resource allocation<b=
r>
&gt; failed<br>
&gt; [13436:13436:0606/150528.263789:ERROR:vaapi_picture_native_pixmap_ozo<=
br>
&gt; ne.cc(73)] Failed creating VASurface for NativePixmap<br>
&gt; [13436:13436:0606/150528.264843:ERROR:vaapi_wrapper.cc(2399)]<br>
&gt; vaCreateSurfaces (import mode) failed, VA error: resource allocation<b=
r>
&gt; failed<br>
&gt; [13436:13436:0606/150528.265073:ERROR:vaapi_picture_native_pixmap_ozo<=
br>
&gt; ne.cc(73)] Failed creating VASurface for NativePixmap<br>
&gt; [13436:13436:0606/150528.265294:VERBOSE1:vaapi_video_decode_accelerat<=
br>
&gt; or.cc(142)] NotifyError(): Notifying of error 4<br>
<br>
This doesn&#39;t look like complete error log. A complete log would have<br=
>
helped.<br>
<br>
&gt; <br>
&gt; So far, I could not find a solution to fix chromium errors and I am<br=
>
&gt; new to chromium,=C2=A0intel vaapi, libva debugging.<br>
&gt; <br>
&gt; Please support how to debug the errors there or guidance on how to<br>
&gt; officially build chromium with intel VAAPI support in Yocto?<br>
<br>
This doesn&#39;t seem to be Yocto related. This looks very similar so<br>
please try the suggestions here:<br>
<br>
<a href=3D"https://github.com/intel/media-driver/issues/1498" rel=3D"norefe=
rrer" target=3D"_blank">https://github.com/intel/media-driver/issues/1498</=
a><br>
<br>
Thanks,<br>
<br>
Anuj<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60194): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60194" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60194</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99376559/7514=
801" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99376559/7514801</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:huykhacnguyen1983@gmail.com" target=3D"_blank">h=
uykhacnguyen1983@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e3f0fc05fd896765--

--000000000000e3f0fd05fd896767
Content-Type: text/plain; charset="US-ASCII"; name="log_chromium.txt"
Content-Disposition: attachment; filename="log_chromium.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_lilp3cce0>
X-Attachment-Id: f_lilp3cce0

c2gtNS4yJCBzb3VyY2UgLi9zdGFydF9jaHJvbWl1bS5zaCAKWzM5ODA6Mzk4MDowNjA3LzEyMjcy
Ny44NzY0NzY6V0FSTklORzpjaHJvbWVfbWFpbl9kZWxlZ2F0ZS5jYyg2MTgpXSBUaGlzIGlzIENo
cm9tZSB2ZXJzaW9uIDExMS4wLjU1NjMuMTQ3IChub3QgYSB3YXJuaW5nKQpbMzk4MDozOTgwOjA2
MDcvMTIyNzI3Ljk2NTE1MDpXQVJOSU5HOndheWxhbmRfb2JqZWN0LmNjKDE1MildIEJpbmRpbmcg
dG8gendwX2xpbnV4X2RtYWJ1Zl92MSB2ZXJzaW9uIDMgYnV0IHZlcnNpb24gNCBpcyBhdmFpbGFi
bGUuClszOTgwOjM5ODA6MDYwNy8xMjI3MjguMDM2MzAwOldBUk5JTkc6d2F5bGFuZF9zdXJmYWNl
LmNjKDE0OSldIFNlcnZlciBkb2Vzbid0IHN1cHBvcnQgemNyX2FscGhhX2NvbXBvc2l0aW5nX3Yx
LgpbMzk4MDozOTgwOjA2MDcvMTIyNzI4LjAzNjMzNzpXQVJOSU5HOndheWxhbmRfc3VyZmFjZS5j
YygxNjQpXSBTZXJ2ZXIgZG9lc24ndCBzdXBwb3J0IG92ZXJsYXlfcHJpb3JpdGl6ZXIuClszOTgw
OjM5ODA6MDYwNy8xMjI3MjguMDM2MzQ1OldBUk5JTkc6d2F5bGFuZF9zdXJmYWNlLmNjKDE3OCld
IFNlcnZlciBkb2Vzbid0IHN1cHBvcnQgc3VyZmFjZV9hdWdtZW50ZXIuClszOTgwOjM5ODA6MDYw
Ny8xMjI3MjguMDM2MzUyOldBUk5JTkc6d2F5bGFuZF9zdXJmYWNlLmNjKDE5MyldIFNlcnZlciBk
b2Vzbid0IHN1cHBvcnQgd3BfY29udGVudF90eXBlX3YxClszOTgwOjM5ODA6MDYwNy8xMjI3Mjgu
MDM2MzU4OldBUk5JTkc6d2F5bGFuZF9zdXJmYWNlLmNjKDIxMildIFNlcnZlciBkb2Vzbid0IHN1
cHBvcnQgemNyX2NvbG9yX21hbmFnZW1lbnRfc3VyZmFjZS4KWzM5ODA6Mzk4MDowNjA3LzEyMjcy
OC4wMzcwMjQ6V0FSTklORzpjdXJzb3JfbG9hZGVyLmNjKDEyMyldIEZhaWxlZCB0byBsb2FkIGEg
cGxhdGZvcm0gY3Vyc29yIG9mIHR5cGUga051bGwKbGlidmEgaW5mbzogT3BlbiBuZXcgbG9nIGZp
bGUgL3RtcC9saWJ2YS4xMjI3MjgudGhkLTB4MDAwMDBmYmUgZm9yIHRoZSB0aHJlYWQgMHgwMDAw
MGZiZQpsaWJ2YSBpbmZvOiBMSUJWQV9UUkFDRSBpcyBvbiwgc2F2ZSBsb2cgaW50byAvdG1wL2xp
YnZhLjEyMjcyOC50aGQtMHgwMDAwMGZiZQpsaWJ2YSBpbmZvOiBWQS1BUEkgdmVyc2lvbiAxLjE3
LjAKbGlidmEgaW5mbzogVHJ5aW5nIHRvIG9wZW4gL3Vzci9saWIvZHJpL2lIRF9kcnZfdmlkZW8u
c28KbGlidmEgaW5mbzogRm91bmQgaW5pdCBmdW5jdGlvbiBfX3ZhRHJpdmVySW5pdF8xXzE3Cmxp
YnZhIGluZm86IHZhX29wZW5Ecml2ZXIoKSByZXR1cm5zIDAKWzQwMzA6NDAzMDowNjA3LzEyMjcy
OC4wODMwMDA6RVJST1I6Z3B1X2luaXQuY2MoNTI1KV0gUGFzc3Rocm91Z2ggaXMgbm90IHN1cHBv
cnRlZCwgR0wgaXMgZWdsLCBBTkdMRSBpcyAKWzQwMzA6NDAzMDowNjA3LzEyMjcyOC4wODk3ODE6
V0FSTklORzpzYW5kYm94X2xpbnV4LmNjKDM5MyldIEluaXRpYWxpemVTYW5kYm94KCkgY2FsbGVk
IHdpdGggbXVsdGlwbGUgdGhyZWFkcyBpbiBwcm9jZXNzIGdwdS1wcm9jZXNzLgpbMzk4MDozOTgw
OjA2MDcvMTIyNzI4LjA5NDM2MzpXQVJOSU5HOmJsdWV6X2RidXNfbWFuYWdlci5jYygyNDcpXSBG
bG9zcyBtYW5hZ2VyIG5vdCBwcmVzZW50LCBjYW5ub3Qgc2V0IEZsb3NzIGVuYWJsZS9kaXNhYmxl
LgpbMzk4MDozOTgwOjA2MDcvMTIyNzU2LjQ2NzA3MjpJTkZPOkNPTlNPTEUoMjIpXSAiVGhlIENv
bnRlbnQgU2VjdXJpdHkgUG9saWN5ICdjaGlsZC1zcmMgJ3Vuc2FmZS1pbmxpbmUnIGNtLmcuZG91
YmxlY2xpY2submV0IGdvb2dsZWFkcy5nLmRvdWJsZWNsaWNrLm5ldCB3d3cuZ29vZ2xlLgpjb20g
YWNjb3VudHMuZ29vZ2xlLmNvbSBwYWdlYWQyLmdvb2dsZXN5bmRpY2F0aW9uLmNvbS9wYWdlYWQv
cy9jb29raWVfcHVzaC5odG1sIGdtc2c6IGh0dHBzOi8vdHBjLmdvb2dsZXN5bmRpY2F0aW9uLmNv
bS9zYWRidW5kbGUvJGNzcCUzRGVyMyQvMTI5MzQyMjgyODEyODA4Nzk4NjIvaQpuZGV4Lmh0bWw7
ZnJhbWUtc3JjICd1bnNhZmUtaW5saW5lJyBjbS5nLmRvdWJsZWNsaWNrLm5ldCBnb29nbGVhZHMu
Zy5kb3VibGVjbGljay5uZXQgd3d3Lmdvb2dsZS5jb20gYWNjb3VudHMuZ29vZ2xlLmNvbSBwYWdl
YWQyLmdvb2dsZXN5bmRpY2F0aW9uLmNvbS9wYWdlYWQvcy9jb29raQplX3B1c2guaHRtbCBnbXNn
OiBodHRwczovL3RwYy5nb29nbGVzeW5kaWNhdGlvbi5jb20vc2FkYnVuZGxlLyRjc3AlM0RlcjMk
LzEyOTM0MjI4MjgxMjgwODc5ODYyL2luZGV4Lmh0bWwnIHdhcyBkZWxpdmVyZWQgdmlhIGEgPG1l
dGE+IGVsZW1lbnQgb3V0c2lkZSB0aGUgZG9jdW1lbnQncwogPGhlYWQ+LCB3aGljaCBpcyBkaXNh
bGxvd2VkLiBUaGUgcG9saWN5IGhhcyBiZWVuIGlnbm9yZWQuIiwgc291cmNlOiBodHRwczovL2dv
b2dsZWFkcy5nLmRvdWJsZWNsaWNrLm5ldC9wYWdlYWQvaHRtbC9yMjAyMzA2MDEvcjIwMTEwOTE0
L3pydF9sb29rdXAuaHRtbD9mc2I9MSAoMjIpClszOTgwOjM5ODA6MDYwNy8xMjI3NTguODIxNzYy
OldBUk5JTkc6Y3Vyc29yX2xvYWRlci5jYygxMjMpXSBGYWlsZWQgdG8gbG9hZCBhIHBsYXRmb3Jt
IGN1cnNvciBvZiB0eXBlIGtIYW5kCls0MDMwOjQwMzA6MDYwNy8xMjI3NTkuNzgxMDM3OlZFUkJP
U0UyOnZhYXBpX3ZpZGVvX2RlY29kZV9hY2NlbGVyYXRvci5jYygyMDApXSBJbml0aWFsaXplKCk6
IEluaXRpYWxpemluZyBWQVZEQSwgcHJvZmlsZTogaDI2NCBoaWdoCmxpYnZhIGluZm86IE9wZW4g
bmV3IGxvZyBmaWxlIC90bXAvbGlidmEuMTIyNzU5LnRoZC0weDAwMDAwZmJlIGZvciB0aGUgdGhy
ZWFkIDB4MDAwMDBmYmUKbGlidmEgaW5mbzogTElCVkFfVFJBQ0UgaXMgb24sIHNhdmUgbG9nIGlu
dG8gL3RtcC9saWJ2YS4xMjI3NTkudGhkLTB4MDAwMDBmYmUKbGlidmEgaW5mbzogVkEtQVBJIHZl
cnNpb24gMS4xNy4wCmxpYnZhIGluZm86IFRyeWluZyB0byBvcGVuIC91c3IvbGliL2RyaS9pSERf
ZHJ2X3ZpZGVvLnNvCmxpYnZhIGluZm86IEZvdW5kIGluaXQgZnVuY3Rpb24gX192YURyaXZlcklu
aXRfMV8xNwpsaWJ2YSBpbmZvOiB2YV9vcGVuRHJpdmVyKCkgcmV0dXJucyAwCls0MDMwOjQ1NzM6
MDYwNy8xMjI3NTkuNzg2MTIzOlZFUkJPU0UyOnZhYXBpX3ZpZGVvX2RlY29kZV9hY2NlbGVyYXRv
ci5jYyg0ODcpXSBEZWNvZGVUYXNrKCk6IERlY29kZXIgcmVxdWVzdGluZyBhIG5ldyBzZXQgb2Yg
c3VyZmFjZXMKWzQwMzA6NDAzMDowNjA3LzEyMjc1OS43ODYzOTM6VkVSQk9TRTI6dmFhcGlfdmlk
ZW9fZGVjb2RlX2FjY2VsZXJhdG9yLmNjKDU4MildIEluaXRpYXRlU3VyZmFjZVNldENoYW5nZSgp
OiAgfHJlcXVlc3RlZF9udW1fcGljc198ID0gMTM7IHxyZXF1ZXN0ZWRfbnVtX3JlZmVyZW5jZV9m
cmEKbWVzX3wgPSAwCls0MDMwOjQwMzA6MDYwNy8xMjI3NTkuNzg2NTQ3OlZFUkJPU0UyOnZhYXBp
X3ZpZGVvX2RlY29kZV9hY2NlbGVyYXRvci5jYyg2NDgpXSBUcnlGaW5pc2hTdXJmYWNlU2V0Q2hh
bmdlKCk6IFJlcXVlc3RpbmcgMTMgcGljdHVyZXMgb2Ygc2l6ZTogMTkyMHgxMDg4IGFuZCB2aXNp
YmxlIHJlCmN0YW5nbGUgPSAwLDAgMTkyMHgxMDgwCls0MDMwOjQwMzA6MDYwNy8xMjI3NTkuNzk0
NTcxOkVSUk9SOnZhYXBpX3dyYXBwZXIuY2MoMjM5OSldIHZhQ3JlYXRlU3VyZmFjZXMgKGltcG9y
dCBtb2RlKSBmYWlsZWQsIFZBIGVycm9yOiByZXNvdXJjZSBhbGxvY2F0aW9uIGZhaWxlZApbNDAz
MDo0MDMwOjA2MDcvMTIyNzU5Ljc5NDc3MzpFUlJPUjp2YWFwaV9waWN0dXJlX25hdGl2ZV9waXht
YXBfb3pvbmUuY2MoNzMpXSBGYWlsZWQgY3JlYXRpbmcgVkFTdXJmYWNlIGZvciBOYXRpdmVQaXht
YXAKWzQwMzA6NDAzMDowNjA3LzEyMjc1OS44MDAyMzU6RVJST1I6dmFhcGlfd3JhcHBlci5jYygy
Mzk5KV0gdmFDcmVhdGVTdXJmYWNlcyAoaW1wb3J0IG1vZGUpIGZhaWxlZCwgVkEgZXJyb3I6IHJl
c291cmNlIGFsbG9jYXRpb24gZmFpbGVkCls0MDMwOjQwMzA6MDYwNy8xMjI3NTkuODAwMzU3OkVS
Uk9SOnZhYXBpX3BpY3R1cmVfbmF0aXZlX3BpeG1hcF9vem9uZS5jYyg3MyldIEZhaWxlZCBjcmVh
dGluZyBWQVN1cmZhY2UgZm9yIE5hdGl2ZVBpeG1hcApbNDAzMDo0MDMwOjA2MDcvMTIyNzU5Ljgw
MDUwNzpWRVJCT1NFMTp2YWFwaV92aWRlb19kZWNvZGVfYWNjZWxlcmF0b3IuY2MoMTQyKV0gTm90
aWZ5RXJyb3IoKTogTm90aWZ5aW5nIG9mIGVycm9yIDQKWzQwMzA6NDAzMDowNjA3LzEyMjc1OS44
MDQ1MzY6VkVSQk9TRTI6dmFhcGlfdmlkZW9fZGVjb2RlX2FjY2VsZXJhdG9yLmNjKDEwNDUpXSBD
bGVhbnVwKCk6IERlc3Ryb3lpbmcgVkFWREEKCg==
--000000000000e3f0fd05fd896767--

