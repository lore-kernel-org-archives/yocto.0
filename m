Return-Path: <shravan@bluesparq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02CC7E00963; Tue,  8 Oct 2019 06:57:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C54E00798
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 06:57:55 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id l13so5192773uap.8
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2019 06:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bluesparq-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AanR/+iYx1aW/LEkJPItkz5KnSUbfSHgpWt/PKzC89U=;
	b=xFrv4a3ifn11q2Ce918L4LZslTqrcjMFzO/sFs1EX6/oE8Ok0sJyFUi/Qr1uacc6+2
	NrCDzdA9ulNkJtUY9FMQi5mZCynJlKsOF7tQOOibGxJhvWZK18Y5/W59lCJ0c4inlBdW
	WRPh08pqDOzUn/kcj16kvaLieGz0iUOaAUctOczU+apjBCLqiOQV/MSff8+afFqY7ksm
	QY7/w5RD//8T9a8H95Ng9dF2eTdzeL25+i2PYYjkNkcAVIURoSep7UIizhdgnDb3IzU9
	8wUD6kArnv0zXVztfauSn1G+/6EIRxv5QO3cnNu7X4CQjQQTKAWPUld0UHmcSeQFDG16
	9sFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AanR/+iYx1aW/LEkJPItkz5KnSUbfSHgpWt/PKzC89U=;
	b=JYTDwRpadWZeJEfO5oXRdk3TYWJeNAzI0T65v2lVWidjGLJnCYwJluY6eW1IzImi1j
	zkAbLrm5X0P0AFE3H+fZK/+YARGW/BLiHeVMmEBIpk+1/FnbV1u6k0HQMbBiI6VGRBPx
	HhzymvqHs/AiOEwAeLRFdk0Su/fn2aIJ3FGVjdry92cRulefATaWt6G+Fyv31lQZm+/3
	xByZt/WVURc541RzEiFpZDf/lhoYpGBLIg9Y44VOV8Z3OpE+4/sRVcH4wIv8sHJIn0Lo
	E7zCe4ibMux0s1qm5DzudO81S13dQAd56alXgHty0zlKn3SMLIvm1P4i8K9n29hN0hTM
	K87A==
X-Gm-Message-State: APjAAAUiLGEKj8THyNHSLSoeM4ggS/+wDtKy+/aSCX+B+ZWkQ+ihyItS
	KCkWPw98krwqboQ9WGMuLHQ40rYCoXsxSWFVrCwy8Q==
X-Google-Smtp-Source: APXvYqxKuLr7f9tbd1ML4b8Cc15tR0WiFfZhCjEUYImDbVbyjAun+5hbACsvSFzPRd/zVoEMo60Rhzl+/hwZR/TY4lY=
X-Received: by 2002:ab0:3d4:: with SMTP id 78mr18228726uau.51.1570543075118;
	Tue, 08 Oct 2019 06:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABjzrPTAFGE8nua4ONh0S_6zrFL38LSojCpFyR_ELp6p3Lcx5w@mail.gmail.com>
	<CADkTA4M0gW+bRdRLEp8nZ4nS6Z9_q6G3SjBir5+FOOxe3_8BfA@mail.gmail.com>
In-Reply-To: <CADkTA4M0gW+bRdRLEp8nZ4nS6Z9_q6G3SjBir5+FOOxe3_8BfA@mail.gmail.com>
From: Shravan Singh <shravan@bluesparq.com>
Date: Tue, 8 Oct 2019 09:57:45 -0400
Message-ID: <CABjzrPS6Lzn2_QRAQu06J=RMNfgbtnMA8a_JrETKEpKRV5U6RQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailman-Approved-At: Wed, 09 Oct 2019 03:45:44 -0700
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Building a out of tree kernel module on target system
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
X-List-Received-Date: Tue, 08 Oct 2019 13:57:58 -0000
Content-Type: multipart/alternative; boundary="00000000000018e2eb0594668e17"

--00000000000018e2eb0594668e17
Content-Type: text/plain; charset="UTF-8"

Hello Bruce,

So I was finally able to compile the kernel module by creating a patch and
then applying that patch to linux recipe file.
However now, I am facing a different issue and have been trying to figure
that one out, Hence the delay in my response.

After creating an appropriate device tree overlay file. After loading the
module, the I2C driver still reads the screen abs_x_max=800 and
abs_y_max=480.
I have specified the frame_buffer_width and frame_buffer height as 1024 X
600. Also I have specifically provided touchscreen-x-size and
touchscreen-y-size in my device tree overlay to match the same.

Why could this be happening?

Regards,
Shravan Singh
(239) 243-0838

Blue Sparq, Inc.
928 NE 24th Lane unit 4 and 5.
Cape Coral, FL 33993

IMPORTANT: The contents of this email and any attachments are confidential.
They are intended for the named recipient(s) only. If you have received
this email by mistake, please notify the sender immediately and do not
disclose the contents to anyone or make copies thereof.


On Fri, Oct 4, 2019 at 1:42 PM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Fri, Oct 4, 2019 at 11:40 AM Shravan Singh <shravan@bluesparq.com>
> wrote:
> >
> > Hello,
> >
> > I am trying to build an out of tree service module on a yocto raspberry
> pi image(target system).
> > I am using yocto version warrior
> > and my machine is Raspberrypi-cm3
> > Kernel version is 4.19.58
> >
> > I was able to get the build directory by including
> >
> > IMAGE_INSTALL_append = " kernel-modules kernel-dev kernel-devsrc"
> > After that, I saw a build directory on raspberrypi-image
> >
> > Now I am trying to compile my source file with the command
> >
> > make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi-
> KSRC="/lib/modules/4.19.58/source" -C /lib/modules/$(shell uname -r)/build
> M=/home/root/tsDriver modules
> >
> > After that I get an error saying asm/bitsperlong.h: no such file or
> directory
> >
> > Am I missing something in my make command?
>
> You need to rebuild/regenerate some file on target (they can't be
> packaged).
> So have you gone to /usr/src/kernel and done a "make scripts prepare" ?
>
> Bruce
>
> >
> >
> > Regards,
> > Shravan Singh
> > (239) 243-0838
> >
> > Blue Sparq, Inc.
> > 928 NE 24th Lane unit 4 and 5.
> > Cape Coral, FL 33993
> >
> > IMPORTANT: The contents of this email and any attachments are
> confidential. They are intended for the named recipient(s) only. If you
> have received this email by mistake, please notify the sender immediately
> and do not disclose the contents to anyone or make copies thereof.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

--00000000000018e2eb0594668e17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Bruce,</div><div><br></div><div>So I was finall=
y able to compile the kernel module by creating a patch and then applying t=
hat patch to linux recipe file.</div><div>However now, I am facing a differ=
ent issue and have been trying to figure that one out, Hence the delay in m=
y response.</div><div><br></div><div>After creating an appropriate device t=
ree overlay file. After loading the module, the I2C driver still reads the =
screen abs_x_max=3D800 and abs_y_max=3D480.</div><div>I have specified the =
frame_buffer_width and frame_buffer height as 1024 X 600. Also I have speci=
fically provided touchscreen-x-size and touchscreen-y-size in my device tre=
e overlay to match the same.</div><div><br></div><div>Why could this be hap=
pening?<br></div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"backgro=
und-color:rgba(255,255,255,0)"></span>Regards,<br>Shravan Singh<br>(239) 24=
3-0838<br><br>Blue Sparq, Inc.<br>928 NE 24th Lane unit 4 and 5.<br>Cape Co=
ral, FL 33993<br><font size=3D"1"><br>IMPORTANT: The contents of this email=
 and any attachments are confidential. They are intended for the named reci=
pient(s) only. If you have received this email by mistake, please notify th=
e sender immediately and do not disclose the contents to anyone or make cop=
ies thereof.</font><br></div></div></div></div></div></div></div></div></di=
v><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Oct 4, 2019 at 1:42 PM Bruce Ashfield &lt;<a href=3D"ma=
ilto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Oct 4, 2019 =
at 11:40 AM Shravan Singh &lt;<a href=3D"mailto:shravan@bluesparq.com" targ=
et=3D"_blank">shravan@bluesparq.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am trying to build an out of tree service module on a yocto raspberr=
y pi image(target system).<br>
&gt; I am using yocto version warrior<br>
&gt; and my machine is Raspberrypi-cm3<br>
&gt; Kernel version is 4.19.58<br>
&gt;<br>
&gt; I was able to get the build directory by including<br>
&gt;<br>
&gt; IMAGE_INSTALL_append =3D &quot; kernel-modules kernel-dev kernel-devsr=
c&quot;<br>
&gt; After that, I saw a build directory on raspberrypi-image<br>
&gt;<br>
&gt; Now I am trying to compile my source file with the command<br>
&gt;<br>
&gt; make ARCH=3Darm CROSS_COMPILE=3Darm-poky-linux-gnueabi- KSRC=3D&quot;/=
lib/modules/4.19.58/source&quot; -C /lib/modules/$(shell uname -r)/build M=
=3D/home/root/tsDriver modules<br>
&gt;<br>
&gt; After that I get an error saying asm/bitsperlong.h: no such file or di=
rectory<br>
&gt;<br>
&gt; Am I missing something in my make command?<br>
<br>
You need to rebuild/regenerate some file on target (they can&#39;t be packa=
ged).<br>
So have you gone to /usr/src/kernel and done a &quot;make scripts prepare&q=
uot; ?<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Shravan Singh<br>
&gt; (239) 243-0838<br>
&gt;<br>
&gt; Blue Sparq, Inc.<br>
&gt; 928 NE 24th Lane unit 4 and 5.<br>
&gt; Cape Coral, FL 33993<br>
&gt;<br>
&gt; IMPORTANT: The contents of this email and any attachments are confiden=
tial. They are intended for the named recipient(s) only. If you have receiv=
ed this email by mistake, please notify the sender immediately and do not d=
isclose the contents to anyone or make copies thereof.<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div>

--00000000000018e2eb0594668e17--
