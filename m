Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C894CE0044A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 07:01:56 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 13 Apr 2012 07:01:55 -0700
Received: by lahi5 with SMTP id i5so2129457lah.25
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 07:01:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=RrzTkvEbhd7e9hmbCtGSuvjUNbWznqcgA8+jkzdvnM8=;
	b=RxF9TC2izgcSf071bfob18Whv+1u/0LUlnLIagl61nEyX06CBuRiI1B+72byL2/8zT
	9jY4aodcKSWxu/zmu2A7eLEsK7lJvOkNw/Gv62vYvjeizJgY+F0D2CCGia/x69Y23JMJ
	RehNppSjhU9Mfkap4Gusm5ukow4BzGoifA07LAyfXuEqHhTuCrRibtoSQ9AF9ZM+M/G8
	kON9njiWNfyKKi+7yxAmo5GtNrNzjMR/8E9UkJ1hT3RAFat+2Ik3z4NNVaPBjgzcvYqV
	VfpH8tsMLy0mqtEcDaEQ8YJbPOn1vGHeq1t9OmSB7ya2l/vJ7wUig3G/tPTMz9Bg+6lT
	8DxQ==
MIME-Version: 1.0
Received: by 10.152.123.229 with SMTP id md5mr1551867lab.34.1334325713315;
	Fri, 13 Apr 2012 07:01:53 -0700 (PDT)
Received: by 10.112.102.5 with HTTP; Fri, 13 Apr 2012 07:01:53 -0700 (PDT)
In-Reply-To: <4F878551.8040904@windriver.com>
References: <CAPhnLPDrex8Cw2tK9vkBNu9cSGo6Lo6fnzXoPy=BHCGEFQjcMw@mail.gmail.com>
	<4F878551.8040904@windriver.com>
Date: Fri, 13 Apr 2012 07:01:53 -0700
Message-ID: <CAPhnLPDLcv0GwfJP9+9+p7sKPg65Jqty44NopA2F=L0kV+etJw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Zhao Yi <yi.zhao@windriver.com>
X-Gm-Message-State: ALoCoQkBZ84Ul9SPlTwLHnKjNA74N4w8t7KFvTUJzD+XcD3MkI1USH3cdVQPuh4DYLgBkhL4L0Mw
Cc: yocto@yoctoproject.org
Subject: Re: QA for 1.2_M4.rc3
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
X-List-Received-Date: Fri, 13 Apr 2012 14:01:56 -0000
Content-Type: multipart/alternative; boundary=f46d04426aa42826de04bd8fea1c

--f46d04426aa42826de04bd8fea1c
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: quoted-printable

Yes, sorry, I forgot to send out an email yesterday.

http://autobuilder.yoctoproject.org/pub/nightly/20120412-2

-b

On Thu, Apr 12, 2012 at 6:45 PM, Zhao Yi <yi.zhao@windriver.com> wrote:

> **
> Hi Beth,
>
> We found the rc3 branch has been updated and rebuild on autobuilder. The
> images are available in
> http://autobuilder.pokylinux.org/nightly/20120412-2/
> We should use it rather than 20120411-2 for our rc3 testing,  right ?
>
> Thanks,
> Yi
>
> =D3=DA 2012=C4=EA04=D4=C212=C8=D5 09:31, Flanagan, Elizabeth =D0=B4=B5=C0=
:
>
> Sorry for the lateness on this, we were waiting for a few patches.
>
> We began running the tagged rc3 build today at around 4pm PST. Images
> should be available in about 10 hours (we are building from a clean
> sstate). You can find images in a few hours at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20120411-2
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>
>
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/li=
stinfo/yocto
>
>


--=20
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d04426aa42826de04bd8fea1c
Content-Type: text/html; charset=GB2312
Content-Transfer-Encoding: quoted-printable

Yes, sorry, I forgot to send out an email yesterday.<br><br><a href=3D"http=
://autobuilder.yoctoproject.org/pub/nightly/20120412-2">http://autobuilder.=
yoctoproject.org/pub/nightly/20120412-2</a><br><br>-b<br><br><div class=3D"=
gmail_quote">
On Thu, Apr 12, 2012 at 6:45 PM, Zhao Yi <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<u></u>

 =20
   =20
 =20
  <div bgcolor=3D"#ffffff" text=3D"#000000">
    Hi Beth,<br>
    <br>
    We found the rc3 branch has been updated and rebuild on autobuilder.
    The images are available in
    <a href=3D"http://autobuilder.pokylinux.org/nightly/20120412-2/" target=
=3D"_blank">http://autobuilder.pokylinux.org/nightly/20120412-2/</a>&nbsp; =
<br>
    We should use it rather than 20120411-2 for our rc3 testing,&nbsp; righ=
t
    ?<br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    =D3=DA 2012=C4=EA04=D4=C212=C8=D5 09:31, Flanagan, Elizabeth =D0=B4=B5=
=C0:
    <blockquote type=3D"cite"><div><div class=3D"h5">
     =20
      Sorry for the lateness on this, we were waiting for a few patches.
      <br>
      <br>
      We began running the tagged rc3 build today at around 4pm PST.
      Images should be available in about 10 hours (we are building from
      a clean sstate). You can find images in a few hours at:<br>
      <br>
      <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20120411-2=
" target=3D"_blank">http://autobuilder.yoctoproject.org/pub/nightly/2012041=
1-2</a><br clear=3D"all">
      <br>
      -- <br>
      Elizabeth Flanagan<br>
      Yocto Project<br>
      Build and Release<br>
      </div></div><pre><fieldset></fieldset>
_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
  </div>

</blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth Flanagan<br>Y=
octo Project<br>Build and Release<br>

--f46d04426aa42826de04bd8fea1c--
