Return-Path: <andrei@gherzan.ro>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0750AE006DC
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 02:26:33 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id uz6so1341751obc.6
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 02:26:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:x-originating-ip:in-reply-to:references
	:date:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=aVULuM2rZM3GOShoj1mWDHp02U70ghVzMzD2rDtU6n0=;
	b=Z52JuOKA/3RbnO+CSLMHnA1gDFXy+4sJnYrwojVTaWhRn4mJj0YZSYhqaPcx4mwJGq
	H8y6/EzUnZMbPPXNPwWEG41CxYxy6HWXav6zdObFLUXAcBNNcDC5ODZ6HzccB1MPAO0N
	h6JfsYyd3yyw0SCSvQ2+BEwauHiE0uxT/CRkP+meQuJt8sRrFDpagRB59hWCXARlXMky
	8i/jJ75fH3swaln73kQMeho3teXSFNkx8lMmgSIRQc1LEeRYHoW6kisbx0WWLJpLdEgd
	UBpXYsxd0zM72hFYtmuf+4X7S/K0KVM8cRckM0E1r+6oagSPaBEe61DFQzXQhbg/PJfJ
	RUkQ==
MIME-Version: 1.0
X-Received: by 10.60.30.201 with SMTP id u9mr6930880oeh.28.1359195992970; Sat,
	26 Jan 2013 02:26:32 -0800 (PST)
Received: by 10.182.128.133 with HTTP; Sat, 26 Jan 2013 02:26:32 -0800 (PST)
X-Originating-IP: [109.166.133.206]
Received: by 10.182.128.133 with HTTP; Sat, 26 Jan 2013 02:26:32 -0800 (PST)
In-Reply-To: <5103997b.a3e8440a.60aa.ffffa1c8SMTPIN_ADDED_BROKEN@mx.google.com>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
	<1359120805-25408-3-git-send-email-thaytan@noraisin.net>
	<CAK18fxFcUy4Vc40PitX5u+f46V0VpOn0anxg1wSyaWFHFZ-Xbg@mail.gmail.com>
	<5103997b.a3e8440a.60aa.ffffa1c8SMTPIN_ADDED_BROKEN@mx.google.com>
Date: Sat, 26 Jan 2013 12:26:32 +0200
Message-ID: <CAK18fxGkua6-mOKt_c1h+GujWmpApB4-i3no-2WZyeMt4YT5cg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jan Schmidt <thaytan@noraisin.net>
X-Gm-Message-State: ALoCoQlUtpYU3HeDiIkGUTntxSSzyxSBJC9cIFXAekKv+sGnH+An6t4GaJxgAeH0QzKRllbMDsTo
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 26 Jan 2013 10:26:34 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c58457579d04d42e7a8d

--e89a8ff1c58457579d04d42e7a8d
Content-Type: text/plain; charset=ISO-8859-1

On Jan 26, 2013 10:53 AM, "Jan Schmidt" <thaytan@noraisin.net> wrote:
>
> On Sat, 2013-01-26 at 02:19 +0200, Andrei Gherzan wrote:
> > On Fri, Jan 25, 2013 at 3:33 PM, Jan Schmidt <thaytan@noraisin.net>
> > wrote:
>
> >
> >
> > This is a good idea but you will have to align the new ROOTFS_SIZE
> > to IMAGE_ROOTFS_ALIGNMENT.
> >
> >         +       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> >         ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
> >
> >
> > So you are actually removing IMAGE_ROOTFS_ALIGNMENT space at the end
> > of the sd image. Why are you doing this? Nothing stated in the
> > comment.
>
> Sorry, yeah - I forgot to mention it. I removed it because it's
> pointless. It's not actually aligning to anything (it doesn't calculate
> an alignment based on the difference between the ROOTFS_SIZE and some
> target multiple). Instead, it was just arbitrarily padding some
> megabytes onto the end of the image file.
>

Makes sense. I added that because we had a strange bug where the final
sdimg file size was not enough. Maybe this was fixed now - something
related to parted. Please add your comment and modify the asci partition
layout in the bbclass file too.

Thanks,
Andrei

Thanks,

--e89a8ff1c58457579d04d42e7a8d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jan 26, 2013 10:53 AM, &quot;Jan Schmidt&quot; &lt;<a href=3D"mailto:tha=
ytan@noraisin.net">thaytan@noraisin.net</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sat, 2013-01-26 at 02:19 +0200, Andrei Gherzan wrote:<br>
&gt; &gt; On Fri, Jan 25, 2013 at 3:33 PM, Jan Schmidt &lt;<a href=3D"mailt=
o:thaytan@noraisin.net">thaytan@noraisin.net</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; This is a good idea but you will have to align the new ROOTFS_SIZ=
E<br>
&gt; &gt; to IMAGE_ROOTFS_ALIGNMENT.<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 =A0 =A0 + =A0 =A0 =A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_=
ALIGNMENT} +<br>
&gt; &gt; =A0 =A0 =A0 =A0 ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; So you are actually removing IMAGE_ROOTFS_ALIGNMENT space at the =
end<br>
&gt; &gt; of the sd image. Why are you doing this? Nothing stated in the<br=
>
&gt; &gt; comment.<br>
&gt;<br>
&gt; Sorry, yeah - I forgot to mention it. I removed it because it&#39;s<br=
>
&gt; pointless. It&#39;s not actually aligning to anything (it doesn&#39;t =
calculate<br>
&gt; an alignment based on the difference between the ROOTFS_SIZE and some<=
br>
&gt; target multiple). Instead, it was just arbitrarily padding some<br>
&gt; megabytes onto the end of the image file.<br>
&gt;</p>
<p dir=3D"ltr">Makes sense. I added that because we had a strange bug where=
 the final sdimg file size was not enough. Maybe this was fixed now - somet=
hing related to parted. Please add your comment and modify the asci partiti=
on layout in the bbclass file too.</p>

<p dir=3D"ltr">Thanks,<br>
Andrei<br><br></p>
<p dir=3D"ltr">Thanks,</p>

--e89a8ff1c58457579d04d42e7a8d--
