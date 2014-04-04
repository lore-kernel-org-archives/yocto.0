Return-Path: <bhushan.az@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A999E00BE0
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 03:34:52 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id x12so3164753wgg.18
	for <yocto@yoctoproject.org>; Fri, 04 Apr 2014 03:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ujAwaY+erVeyqfbTu8GJBfLPUHirnitx4RMCzHwsvSI=;
	b=sL8mnYFskVmD/FETLbzv8PrQpjcFGHerDKV3y8eE4PWC/7hTXvWfETFJ3aaM1pkvYq
	R0rYtcdWNk2GZCMGsQskCdB0Q2GsfLlYFp0912Wybqwii+GjbmSq3WDRx6Yp//5cQ9fr
	+qVvDiCktht2bwGOvQRPkWOVYy6xxD8wC1GIdI/+JKQBXMyANdqTye37HUDsBnE7jYtf
	52/Bh2JCPQaKChWgHxoi7HFIXOexFOZWRb/3URgfygRPp4Zr4aRBrnpaSSCg4nuKaSTM
	cSKLyT5V4ICgq3K3MBqFwqO0EKfFGnjp4wKidM50/o4OyMaLCJ8Ly1zCPrU9Plyc/99Y
	xF2A==
MIME-Version: 1.0
X-Received: by 10.194.192.132 with SMTP id hg4mr18782099wjc.28.1396607690834; 
	Fri, 04 Apr 2014 03:34:50 -0700 (PDT)
Received: by 10.217.12.74 with HTTP; Fri, 4 Apr 2014 03:34:50 -0700 (PDT)
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CE7762E@IRSMSX105.ger.corp.intel.com>
References: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE7762E@IRSMSX105.ger.corp.intel.com>
Date: Fri, 4 Apr 2014 16:04:50 +0530
Message-ID: <CAG2NicJgs3qFJ5-mhDJUzegrE30NuN2Ci6-BG=WhbKzdSjmQQg@mail.gmail.com>
From: Bhushan S <bhushan.az@gmail.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: copying media files to qemux86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Apr 2014 10:34:53 -0000
Content-Type: multipart/alternative; boundary=047d7b8738964d8cd804f635118b

--047d7b8738964d8cd804f635118b
Content-Type: text/plain; charset=ISO-8859-1

Yes Cristian.
My earlier attempt with scp was unsuccessful (probably lack of ssh support).

Currently I'm stuck with enabling gst-plugins-ugly package and plugins from
gst-plugins-base package



On Wed, Apr 2, 2014 at 5:44 PM, Iorga, Cristian <cristian.iorga@intel.com>wrote:

>  Hello,
>
>
>
> By  media files, you mean music or video files?
>
> If so, depending on the image (if it has ssh support), you can copy into
> /home/root using scp after you boot the image.
>
> I have use this to test mp3 playback, for example with some audio files.
>
>
>
> Regards,
>
> Cristian Iorga
>
> YP
>
> Intel Corporation
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Bhushan Shirsath
> *Sent:* Wednesday, April 2, 2014 2:07 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] copying media files to qemux86
>
>
>
> Hi,
>
>
>
> I'm able to successfully launch "runqemu qemux86".
>
> Now i intend to test the media libs built using Yocto on qemu currently.
>
> Is it possible to transfer/copy media files to qemux86 emulator ?
>
>
>
> I tried copying files to tmp/sysroots/qemux86/ but it didn't work.
>
>
>
> Thanks,
>
> --bhushan
>

--047d7b8738964d8cd804f635118b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes Cristian.<div>My earlier attempt with scp was unsucces=
sful (probably lack of ssh support).</div><div><br></div><div>Currently I&#=
39;m stuck with enabling gst-plugins-ugly package and plugins from gst-plug=
ins-base package</div>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Apr 2, 2014 at 5:44 PM, Iorga, Cristian <span dir=3D"ltr">&=
lt;<a href=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.i=
orga@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hello,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">By=A0 media files, you me=
an music or video files?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">If so, depending on the i=
mage (if it has ssh support), you can copy into /home/root using scp after =
you boot the image.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I have use this to test m=
p3 playback, for example with some audio files.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Cristian Iorga<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">YP<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Intel Corporation<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><a name=3D"145225d2fee78011__MailEndCompose"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1f497d"><u></u>=A0<u></u></span></a></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:</sp=
an></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" targ=
et=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:=
yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoprojec=
t.org</a>]
<b>On Behalf Of </b>Bhushan Shirsath<br>
<b>Sent:</b> Wednesday, April 2, 2014 2:07 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] copying media files to qemux86<u></u><u></u></span>=
</p><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I&#39;m able to successfu=
lly launch &quot;runqemu qemux86&quot;.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Now i intend to test the =
media libs built using Yocto on qemu currently.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Is it possible to transfe=
r/copy media files to qemux86 emulator ?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I tried copying files to=
=A0tmp/sysroots/qemux86/ but it didn&#39;t work.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Thanks,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">--bhushan<u></u><u></u></=
p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--047d7b8738964d8cd804f635118b--
