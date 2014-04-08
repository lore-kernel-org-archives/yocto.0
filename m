Return-Path: <bhushan.az@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E10E00C51
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 04:48:27 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id q5so1172783wiv.7
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 04:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2kpcPPrqP/fB2g91P+m7/dkgd7EfjmpAvZFPowavZS0=;
	b=yXpOcrZJVfmoYFWrfPh6sIB2hqZX0+1mIBw8z1gU/pUIljd479db74zv05rsVnIdqU
	EpAWPxpQpccY7V94Ofu9wBd1GsISEwA4oupDaLJCQgMI0j0ZbLFQURN4VKQ0+tNnTtnh
	MkhMA6AZCtVTtt0A8Bdy5c6hE+1blvDbHSPbPn3EMjOAGUyr6Y/jK6M81RbmyOdCYGsk
	L9kTBv0t266VjcBaDbVWW0B2FSMyoDg2TxwrbpYya7NUsfJ5NSedh27hrmKe+dm9cW6o
	XxYrlbgSpp1mdWOHCs18hjUKhktqULXqQxm8fmDlSws8tkEVuvm2LIiDFYMELEGxs75m
	FyiA==
MIME-Version: 1.0
X-Received: by 10.180.108.147 with SMTP id hk19mr31310482wib.42.1396957706581; 
	Tue, 08 Apr 2014 04:48:26 -0700 (PDT)
Received: by 10.217.12.74 with HTTP; Tue, 8 Apr 2014 04:48:26 -0700 (PDT)
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CE79221@IRSMSX105.ger.corp.intel.com>
References: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE7762E@IRSMSX105.ger.corp.intel.com>
	<CAG2NicJgs3qFJ5-mhDJUzegrE30NuN2Ci6-BG=WhbKzdSjmQQg@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE79221@IRSMSX105.ger.corp.intel.com>
Date: Tue, 8 Apr 2014 17:18:26 +0530
Message-ID: <CAG2NicJbdvb75WFKFcAeMQFywYkdE7jLbB4rp3dibzHXTi92Dw@mail.gmail.com>
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
X-List-Received-Date: Tue, 08 Apr 2014 11:48:28 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba5b5ddfae404f6868f3f

--e89a8f3ba5b5ddfae404f6868f3f
Content-Type: text/plain; charset=ISO-8859-1

Hello Cristian,

Had a similar doubt as described by Paul in Bug
5589<https://bugzilla.yoctoproject.org/show_bug.cgi?id=5589>
.
Basically i wanted the "audiotestsrc" and "videotestsrc" plugins from
gst-plugins-base and even though *-base was configured with those options,
I still didn't see it in gst-inspect on qemux86.
only after I added it to "CORE_IMAGE_EXTRA_INSTALL" i got it in the final
image.

Normal understanding was to enable it while ./configure and that should
work. Am I missing something here ?

Regards,
--bhushan



On Fri, Apr 4, 2014 at 7:20 PM, Iorga, Cristian <cristian.iorga@intel.com>wrote:

>  Hello,
>
> What kind of troubles with gst-plugins-base?
>
> See YB5589: https://bugzilla.yoctoproject.org/show_bug.cgi?id=5589
>
> Maybe there is a hint in there, and the meta gst package will help..
>
> /Cristian
>
>
>
> *From:* Bhushan S [mailto:bhushan.az@gmail.com]
> *Sent:* Friday, April 4, 2014 1:35 PM
> *To:* Iorga, Cristian
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] copying media files to qemux86
>
>
>
> Yes Cristian.
>
> My earlier attempt with scp was unsuccessful (probably lack of ssh
> support).
>
>
>
> Currently I'm stuck with enabling gst-plugins-ugly package and plugins
> from gst-plugins-base package
>
>
>
>
>
> On Wed, Apr 2, 2014 at 5:44 PM, Iorga, Cristian <cristian.iorga@intel.com>
> wrote:
>
>   Hello,
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
>
>

--e89a8f3ba5b5ddfae404f6868f3f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Cristian,<div><br></div><div>Had a similar doubt as =
described by Paul in=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D5589">Bug 5589</a>.</div><div>Basically i wanted the &quot;audio=
testsrc&quot; and &quot;videotestsrc&quot; plugins from gst-plugins-base an=
d even though *-base was configured with those options,=A0</div>
<div>I still didn&#39;t see it in gst-inspect on qemux86.</div><div>only af=
ter I added it to &quot;CORE_IMAGE_EXTRA_INSTALL&quot; i got it in the fina=
l image.</div><div><br></div><div>Normal understanding was to enable it whi=
le ./configure and that should work. Am I missing something here ?=A0</div>
<div><br></div><div>Regards,</div><div>--bhushan</div><div><br></div></div>=
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Apr 4=
, 2014 at 7:20 PM, Iorga, Cristian <span dir=3D"ltr">&lt;<a href=3D"mailto:=
cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com</a>&gt=
;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hello,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">What kind of troubles wit=
h
</span>gst-plugins-base?<u></u><u></u></p>
<p class=3D"MsoNormal">See YB5589: <a href=3D"https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D5589" target=3D"_blank">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5589</a><u></u><u></u><=
/p>
<p class=3D"MsoNormal">Maybe there is a hint in there, and the meta gst pac=
kage will help..<u></u><u></u></p>
<p class=3D"MsoNormal">/Cristian<span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><a name=3D"1452d02992ac7263__MailEndCompose"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1f497d"><u></u>=A0<u></u></span></a></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:</sp=
an></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"> Bhushan S [mailto:<a href=3D"mailto:bhushan.az@gmail.c=
om" target=3D"_blank">bhushan.az@gmail.com</a>]
<br>
<b>Sent:</b> Friday, April 4, 2014 1:35 PM<br>
<b>To:</b> Iorga, Cristian<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] copying media files to qemux86<u></u><u></u></s=
pan></p><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Yes Cristian.<u></u><u></=
u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">My earlier attempt with s=
cp was unsuccessful (probably lack of ssh support).<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Currently I&#39;m stuck w=
ith enabling gst-plugins-ugly package and plugins from gst-plugins-base pac=
kage<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-right:0in;margin-bottom:12.0pt;margi=
n-left:.5in">
<u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">On Wed, Apr 2, 2014 at 5:=
44 PM, Iorga, Cristian &lt;<a href=3D"mailto:cristian.iorga@intel.com" targ=
et=3D"_blank">cristian.iorga@intel.com</a>&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Hello,</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">By=A0 media files, you mean music or video files=
?</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">If so, depending on the image (if it has ssh sup=
port), you can copy into /home/root using scp after you boot the image.</sp=
an><u></u><u></u></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">I have use this to test mp3 playback, for exampl=
e with some audio files.</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Regards,</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Cristian Iorga</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">YP</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Intel Corporation</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<a name=3D"1452d02992ac7263_145225d2fee78011__MailEndCompose"><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
;color:#1f497d">=A0</span></a><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;">From:</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Bhushan Shirsath<br>
<b>Sent:</b> Wednesday, April 2, 2014 2:07 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] copying media files to qemux86</span><u></u><u></u>=
</p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
I&#39;m able to successfully launch &quot;runqemu qemux86&quot;.<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
Now i intend to test the media libs built using Yocto on qemu currently.<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
Is it possible to transfer/copy media files to qemux86 emulator ?<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
I tried copying files to=A0tmp/sysroots/qemux86/ but it didn&#39;t work.<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
Thanks,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
--bhushan<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--e89a8f3ba5b5ddfae404f6868f3f--
