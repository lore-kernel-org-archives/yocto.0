Return-Path: <edmundwatson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 236D6C77B78
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 10:40:36 +0000 (UTC)
Subject: #raspberrypi #ffmpeg 
To: yocto@lists.yoctoproject.org
From: "Ed Watson" <edmundwatson@gmail.com>
X-Originating-Location: Skondal, Stockholm County, SE (79.136.21.82)
X-Originating-Platform: Linux Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 May 2023 03:40:30 -0700
Message-ID: <OsUz.1683196830565737529.0oYZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rUzG0SsasHU84wwoPUyS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 10:40:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59866

--rUzG0SsasHU84wwoPUyS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to get v4l_mem2mem in to ffmpeg. It does hardware h264 encoding=
 on a RPI4

ffmpeg=C2=A0 -encoders | grep h264

for example

ffmpeg -f v4l2=C2=A0 - i /dev/video0 -v:c v4l_mem2mem out.mp4

would take the a webcam output and encode it in h264 using the hardware enc=
oder.

On raspberry pi os:

V..... libx264=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libx264 H.26=
4 / AVC / MPEG-4 AVC / MPEG-4 part 10 (codec h264)

V..... libx264rgb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libx264 H.264 / A=
VC / MPEG-4 AVC / MPEG-4 part 10 RGB (codec h264)

V..... h264_omx=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0OpenMAX IL H=
.264 video encoder (codec h264)

V..... h264_v4l2m2m=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0V4L2 mem2mem H.264 enc=
oder wrapper (codec h264)

V..... h264_vaapi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0H.264/AVC (VAAPI)=
 (codec h264)

On yocto so far this is what I have managed so far ....

V....D libx264=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libx264 H.26=
4 / AVC / MPEG-4 AVC / MPEG-4 part 10 (codec h264)

V....D libx264rgb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libx264 H.264 / A=
VC / MPEG-4 AVC / MPEG-4 part 10 RGB (codec h264)

I am working from this:

https://git.yoctoproject.org/poky/tree/meta/recipes-multimedia/ffmpeg/ffmpe=
g_5.1.2.bb?h=3Dlangdale

Anyone else go anywhere close?

--rUzG0SsasHU84wwoPUyS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,&nbsp;<br /><br />I am trying to get v4l_mem2mem in to ffmpeg. It =
does hardware h264 encoding on a RPI4</p>
<p style=3D"line-height: 1.42857;">ffmpeg&nbsp; -encoders | grep h264</p>
<p style=3D"line-height: 1.42857;">&nbsp;</p>
<p style=3D"line-height: 1.42857;">for example</p>
<p style=3D"line-height: 1.42857;"><span class=3D"NormalTextRun SCXO9902203=
8 BCX0" style=3D"margin: 0px; padding: 0px; user-select: text; -webkit-user=
-drag: none; -webkit-tap-highlight-color: transparent; color: #000000; font=
-family: Calibri, sans-serif; font-size: 14.6667px; font-variant-ligatures:=
 none; background-color: inherit;">&nbsp;</span><span class=3D"SpellingErro=
r SCXO99022038 BCX0" style=3D"margin: 0px; padding: 0px; user-select: text;=
 -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; backgro=
und-repeat: repeat-x; background-position: left bottom; background-image: u=
rl('data:image/gif;base64,R0lGODlhBQAEAJECAP////8AAAAAAAAAACH5BAEAAAIALAAAA=
AAFAAQAAAIIlGAXCCHrTCgAOw=3D=3D'); border-bottom: 1px solid transparent; co=
lor: #000000; font-family: Calibri, sans-serif; font-size: 14.6667px; font-=
variant-ligatures: none; background-color: inherit;">ffmpeg</span><span cla=
ss=3D"NormalTextRun SCXO99022038 BCX0" style=3D"margin: 0px; padding: 0px; =
user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: tr=
ansparent; color: #000000; font-family: Calibri, sans-serif; font-size: 14.=
6667px; font-variant-ligatures: none; background-color: inherit;">&nbsp;-f =
v4l2&nbsp; -</span><span class=3D"SpellingError SCXO99022038 BCX0" style=3D=
"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -we=
bkit-tap-highlight-color: transparent; background-repeat: repeat-x; backgro=
und-position: left bottom; background-image: url('data:image/gif;base64,R0l=
GODlhBQAEAJECAP////8AAAAAAAAAACH5BAEAAAIALAAAAAAFAAQAAAIIlGAXCCHrTCgAOw=3D=
=3D'); border-bottom: 1px solid transparent; color: #000000; font-family: C=
alibri, sans-serif; font-size: 14.6667px; font-variant-ligatures: none; bac=
kground-color: inherit;">i</span><span class=3D"NormalTextRun SCXO99022038 =
BCX0" style=3D"margin: 0px; padding: 0px; user-select: text; -webkit-user-d=
rag: none; -webkit-tap-highlight-color: transparent; color: #000000; font-f=
amily: Calibri, sans-serif; font-size: 14.6667px; font-variant-ligatures: n=
one; background-color: inherit;">&nbsp;/dev/video0 -v:c&nbsp;</span>v4l_mem=
2mem<span class=3D"NormalTextRun SCXO99022038 BCX0" style=3D"background-col=
or: inherit; margin: 0px; padding: 0px; user-select: text; -webkit-user-dra=
g: none; -webkit-tap-highlight-color: transparent; color: #000000; font-fam=
ily: Calibri, sans-serif; font-size: 14.6667px; font-variant-ligatures: non=
e;">&nbsp;out.mp4<br /><br /></span></p>
<p style=3D"line-height: 1.42857;"><span class=3D"NormalTextRun SCXO9902203=
8 BCX0" style=3D"background-color: inherit; margin: 0px; padding: 0px; user=
-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transp=
arent; color: #000000; font-family: Calibri, sans-serif; font-size: 14.6667=
px; font-variant-ligatures: none;">would take the a webcam output and encod=
e it in h264 using the hardware encoder.&nbsp;</span></p>
<div>&nbsp;</div>
<p>On raspberry pi os:</p>
<p>&nbsp;V..... libx264&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lib=
x264 H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 (codec h264)</p>
<p>&nbsp;V..... libx264rgb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libx264 =
H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 RGB (codec h264)</p>
<p>&nbsp;V..... h264_omx&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Ope=
nMAX IL H.264 video encoder (codec h264)</p>
<p>&nbsp;V..... h264_v4l2m2m&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;V4L2 mem2mem =
H.264 encoder wrapper (codec h264)</p>
<p>&nbsp;V..... h264_vaapi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;H.264/AV=
C (VAAPI) (codec h264)</p>
<div>On yocto so far this is what I have managed so far ....</div>
<p>&nbsp;V....D libx264&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lib=
x264 H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 (codec h264)</p>
<p>&nbsp;V....D libx264rgb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libx264 =
H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 RGB (codec h264)</p>
<div>&nbsp;</div>
<p>I am working from this:</p>
<p><a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-multimedi=
a/ffmpeg/ffmpeg_5.1.2.bb?h=3Dlangdale" target=3D"_blank" rel=3D"noopener">h=
ttps://git.yoctoproject.org/poky/tree/meta/recipes-multimedia/ffmpeg/ffmpeg=
_5.1.2.bb?h=3Dlangdale</a></p>
<p>&nbsp;</p>
<p>Anyone else go anywhere close?</p>

--rUzG0SsasHU84wwoPUyS--

