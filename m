Return-Path: <bhushan.az@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07F18E00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 05:58:37 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hm4so929014wib.4
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 05:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DbDp8EA4tNhX9rGgaCGvZrKdH6F6cIe956lErfACnzU=;
	b=exZQFmyNyKA1JWtV6N8ER9xXIi7FGaA7x7DSv6pAK4DzJPPCe+U5BGLl1I9/r6ePJy
	3ZptP+aSj60FFHBA5ohXO4d7hXRRafcCPVmmNx1EREmrCv7B8wcZDprzFHOjU6iq7c/D
	6WicNOHX2FcyLhNQN9nVCCpNdlh/kueXtl+zAd+b6IY7gpLYRA9dihLKINZd8qMY+kDI
	z7IUcPvsOp+R6PXbxMhjnpilkJ51oPxT8JTzwkF351uDH+7FQ/xKSQg7bzkUIx6aahbF
	KfT6d08q0pZOnSi5PI7zNUuh4qxQiznV6rlzwnCQB7Iy6FS973SB5vv4xPcJinbKCmrB
	uUPA==
MIME-Version: 1.0
X-Received: by 10.180.109.231 with SMTP id hv7mr43103706wib.38.1397134716103; 
	Thu, 10 Apr 2014 05:58:36 -0700 (PDT)
Received: by 10.217.12.74 with HTTP; Thu, 10 Apr 2014 05:58:36 -0700 (PDT)
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5@IRSMSX105.ger.corp.intel.com>
References: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE7762E@IRSMSX105.ger.corp.intel.com>
	<CAG2NicJgs3qFJ5-mhDJUzegrE30NuN2Ci6-BG=WhbKzdSjmQQg@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE79221@IRSMSX105.ger.corp.intel.com>
	<CAG2NicJbdvb75WFKFcAeMQFywYkdE7jLbB4rp3dibzHXTi92Dw@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CE7AFA5@IRSMSX105.ger.corp.intel.com>
Date: Thu, 10 Apr 2014 18:28:36 +0530
Message-ID: <CAG2NicJrceM9=3g0bJxkJyGLMRNQaJTqUEjgvcwQaPAtRfD5ew@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 Apr 2014 12:58:40 -0000
Content-Type: multipart/alternative; boundary=e89a8f23574374f15e04f6afc6de

--e89a8f23574374f15e04f6afc6de
Content-Type: text/plain; charset=ISO-8859-1

Hi Cristian,

I meant passing the --enable-<plugin_name> to ./configure.
# cd gst-plugins-base
# ./configure --enable-audiotestsrc --enable-videotestsrc ..

Regards,
--bhushan



On Tue, Apr 8, 2014 at 11:14 PM, Iorga, Cristian
<cristian.iorga@intel.com>wrote:

>  Hello,
>
> Sorry, what exactly to enable in ./configure?
>
> Regards,
>
> Cristian
>
>
>
>
>
> *From:* Bhushan S [mailto:bhushan.az@gmail.com]
> *Sent:* Tuesday, April 8, 2014 2:48 PM
>
> *To:* Iorga, Cristian
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] copying media files to qemux86
>
>
>
> Hello Cristian,
>
>
>
> Had a similar doubt as described by Paul in Bug 5589<https://bugzilla.yoctoproject.org/show_bug.cgi?id=5589>
> .
>
> Basically i wanted the "audiotestsrc" and "videotestsrc" plugins from
> gst-plugins-base and even though *-base was configured with those options,
>
> I still didn't see it in gst-inspect on qemux86.
>
> only after I added it to "CORE_IMAGE_EXTRA_INSTALL" i got it in the final
> image.
>
>
>
> Normal understanding was to enable it while ./configure and that should
> work. Am I missing something here ?
>
>
>
> Regards,
>
> --bhushan
>
>
>
>
>
> On Fri, Apr 4, 2014 at 7:20 PM, Iorga, Cristian <cristian.iorga@intel.com>
> wrote:
>
>   Hello,
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
>
>

--e89a8f23574374f15e04f6afc6de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Cristian,<div><br></div><div>I meant passing the --enab=
le-&lt;plugin_name&gt; to ./configure.</div><div># cd gst-plugins-base<br><=
/div><div># ./configure --enable-audiotestsrc --enable-videotestsrc ..=A0</=
div>
<div><br></div><div>Regards,<br></div><div>--bhushan</div><div>=A0</div></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Ap=
r 8, 2014 at 11:14 PM, Iorga, Cristian <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hello,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Sorry, what exactly to en=
able in ./configure?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Cristian<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><a name=3D"14543016a5c51997__MailEndCompose"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1f497d"><u></u>=A0<u></u></span></a></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:</sp=
an></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"> Bhushan S [mailto:<a href=3D"mailto:bhushan.az@gmail.c=
om" target=3D"_blank">bhushan.az@gmail.com</a>]
<br>
<b>Sent:</b> Tuesday, April 8, 2014 2:48 PM</span></p><div><div class=3D"h5=
"><br>
<b>To:</b> Iorga, Cristian<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] copying media files to qemux86<u></u><u></u></d=
iv></div><p></p><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Hello Cristian,<u></u><u>=
</u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Had a similar doubt as de=
scribed by Paul in=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D5589" target=3D"_blank">Bug 5589</a>.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Basically i wanted the &q=
uot;audiotestsrc&quot; and &quot;videotestsrc&quot; plugins from gst-plugin=
s-base and even though *-base was configured with those options,=A0<u></u><=
u></u></p>

</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I still didn&#39;t see it=
 in gst-inspect on qemux86.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">only after I added it to =
&quot;CORE_IMAGE_EXTRA_INSTALL&quot; i got it in the final image.<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Normal understanding was =
to enable it while ./configure and that should work. Am I missing something=
 here ?=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Regards,<u></u><u></u></p=
>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">--bhushan<u></u><u></u></=
p>
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
<p class=3D"MsoNormal" style=3D"margin-left:.5in">On Fri, Apr 4, 2014 at 7:=
20 PM, Iorga, Cristian &lt;<a href=3D"mailto:cristian.iorga@intel.com" targ=
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
serif&quot;;color:#1f497d">What kind of troubles with
</span>gst-plugins-base?<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
See YB5589: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
5589" target=3D"_blank">
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5589</a><u></u><u></u><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
Maybe there is a hint in there, and the meta gst package will help..<u></u>=
<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
/Cristian<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">
<a name=3D"14543016a5c51997_1452d02992ac7263__MailEndCompose"><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
;color:#1f497d">=A0</span></a><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;">From:</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;"> Bhushan S [mailto:<a href=3D"=
mailto:bhushan.az@gmail.com" target=3D"_blank">bhushan.az@gmail.com</a>]
<br>
<b>Sent:</b> Friday, April 4, 2014 1:35 PM<br>
<b>To:</b> Iorga, Cristian<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] copying media files to qemux86</span><u></u><u>=
</u></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
Yes Cristian.<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
My earlier attempt with scp was unsuccessful (probably lack of ssh support)=
.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
Currently I&#39;m stuck with enabling gst-plugins-ugly package and plugins =
from gst-plugins-base package<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;margin-left:1.0in">
=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
On Wed, Apr 2, 2014 at 5:44 PM, Iorga, Cristian &lt;<a href=3D"mailto:crist=
ian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com</a>&gt; wro=
te:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Hello,</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">By=A0 media files, you mean music or video files=
?</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">If so, depending on the image (if it has ssh sup=
port), you can copy into /home/root using scp after you boot the image.</sp=
an><u></u><u></u></p>

<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">I have use this to test mp3 playback, for exampl=
e with some audio files.</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Regards,</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Cristian Iorga</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">YP</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">Intel Corporation</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
<a name=3D"14543016a5c51997_1452d02992ac7263_145225d2fee78011__MailE"><span=
 style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;;color:#1f497d">=A0</span></a><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
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
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
I&#39;m able to successfully launch &quot;runqemu qemux86&quot;.<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
Now i intend to test the media libs built using Yocto on qemu currently.<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
Is it possible to transfer/copy media files to qemux86 emulator ?<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
I tried copying files to=A0tmp/sysroots/qemux86/ but it didn&#39;t work.<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
Thanks,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:1.5in">
--bhushan<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">
=A0<u></u><u></u></p>
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

--e89a8f23574374f15e04f6afc6de--
