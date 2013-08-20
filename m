Return-Path: <pcjegan@gmail.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3879CE00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 07:54:52 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id h11so302776vbh.30
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 07:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=pU8xYiqpvQRKqVYXnXETpQRFn+N6/PtYSyePlKdmP34=;
	b=izsFI6Bjb+UZqK+10mQSnhwli0Eo9qNaWhqcq09N8mZXPyGFZu+81KAYo8zmubn05h
	6Cd2O9vQE3VHNSnsJeItPaf/7QpiRMsxiXlOn7fvg1NU3Wm/NDtwQtJPAROJLXwZCjxF
	QChX1O1KJ/kMZx6CyLo7TIfStWfR7bYYZIdIQWZbZGJjpP5k/xqBW2WGr03/NZRJsYFc
	Ee/VTdfe5aBPZnZY13j9W3AXWRSR4uDHeehK3Q2yvu//cMj0pSO7fmitYifnYOsEmRTQ
	5rK+J2LsLl5I4NRITo4YbvJa91q7L5C1nsEr0OcYTFjpNn53coXA0djqtplU7llPDjTr
	0HyA==
X-Received: by 10.58.248.40 with SMTP id yj8mr44421vec.40.1377010492082; Tue,
	20 Aug 2013 07:54:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.169.146 with HTTP; Tue, 20 Aug 2013 07:54:30 -0700 (PDT)
In-Reply-To: <CAJTo0LYbRVtEc-iCv6p3ieY_ZtdcUnYpkcHdM_1OitXNWUOqDw@mail.gmail.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5EA3BEEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<37204F11-4EBA-42E9-8BC2-858EECFC2785@gmail.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<CAAA4K6K7N5GpP3sJYv4BzrXEkv9McPqDptX_0D=RpmXypneFGg@mail.gmail.com>
	<CAJTo0LYbRVtEc-iCv6p3ieY_ZtdcUnYpkcHdM_1OitXNWUOqDw@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 20 Aug 2013 20:24:30 +0530
Message-ID: <CAAA4K6KMYGLbjY=yQokNCYghW=_hS=xrSFPYkFf0ubUi_kWN5Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build packages-ssh, telnet, alsa and other package for arm
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
X-List-Received-Date: Tue, 20 Aug 2013 14:54:55 -0000
Content-Type: multipart/alternative; boundary=047d7bf0ddf43b906204e4623d67

--047d7bf0ddf43b906204e4623d67
Content-Type: text/plain; charset=ISO-8859-1

Yes. It depends on how one need the filesystem would be, regardless of the
packaging format.
It can be attained by looking in local.conf like EXTRA_IMAGE_FEATURES and
so to remove that are not necessary, say for example.
I meant by the above comment for a minimal filesystem albeit that is not
making much difference as you say, leaving to look manually and try to
reduce the image size.



On Tue, Aug 20, 2013 at 2:53 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 17 August 2013 16:45, Jegan Chandru <pcjegan@gmail.com> wrote:
> > About the image size, it really depends on what package system are you
> > using(rpm, deb, ipk)
> > If its rpm, the size would be big for a filesystem, and ipk would have
> the
> > smallest size.
>
> The choice of packaging format will only make a small difference to
> the final image size, and only if you leave the packaging database
> itself on the image (for example if you intend to use the package
> manager to perform "in the field" updates).
>
> Ross
>



-- 
JCP

--047d7bf0ddf43b906204e4623d67
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes. It depends on how one need the filesystem would be, r=
egardless of the packaging format.<div>It can be attained by looking in loc=
al.conf like EXTRA_IMAGE_FEATURES and so to remove that are not necessary, =
say for example.</div>

<div>I meant by the above comment for a minimal filesystem albeit that is n=
ot making much difference as you say, leaving to look manually and try to r=
educe the image size.</div><div><br></div></div><div class=3D"gmail_extra">

<br><br><div class=3D"gmail_quote">On Tue, Aug 20, 2013 at 2:53 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

<div class=3D"im">On 17 August 2013 16:45, Jegan Chandru &lt;<a href=3D"mai=
lto:pcjegan@gmail.com">pcjegan@gmail.com</a>&gt; wrote:<br>
&gt; About the image size, it really depends on what package system are you=
<br>
&gt; using(rpm, deb, ipk)<br>
&gt; If its rpm, the size would be big for a filesystem, and ipk would have=
 the<br>
&gt; smallest size.<br>
<br>
</div>The choice of packaging format will only make a small difference to<b=
r>
the final image size, and only if you leave the packaging database<br>
itself on the image (for example if you intend to use the package<br>
manager to perform &quot;in the field&quot; updates).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r>JCP
</div>

--047d7bf0ddf43b906204e4623d67--
