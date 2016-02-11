Return-Path: <roman.shaposhnikov@globallogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6995CE00C33; Thu, 11 Feb 2016 07:53:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ABA2E00BC2
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 07:53:16 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id l127so58424835iof.3
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 07:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=globallogic.com; s=google;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=2BFQkTVeE8gG/NhKmF0A73ruqc5+7ERZDz9YwOn1VAg=;
	b=VCpaChRVvcdzQnEXE8+DWP6rU/2tWfUPNec1+Z/sV77HJ+r371HqMIGoXRH2lfnkL2
	FioHUNp1qnlPuzOsEnq8wL38hUQAnxE3UZFaQY6qv+0sBFmbsdCBUDzP7zfTVbt75CV8
	G9fjC2rwB1Ady1h2wR2B4sUboq6jeh0XLLt7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-type;
	bh=2BFQkTVeE8gG/NhKmF0A73ruqc5+7ERZDz9YwOn1VAg=;
	b=iCht3FQFsrIKDk05/sEKuG9CJTOysyxExwah8c5LvNJRPTt3gQsxtKiiLJnyXiRhtr
	XO9+2iL4oKURIuwL7x7ktL7Bi0IcLSesn+98zyY2wx6eOaMCMZQcHTBWyFNERdyVk41f
	Y6m/++Wh2GA0G8jbRWyNuSzY23HYPIaWsSYvDY+AkzPTjaT1EUaJIL+U69lpxEByGnW6
	2bXUSukgdGzXuUyJLt4VYczega8YklrqprvDRVqL/8oMYrTH7THAPTa7xmmxcc41usrp
	VTKUVlheAEmVAAspB6WC+9Yi153x10doOdLk4n5iNkaW+6mgEkoQgcHAiTsd+fQdwpu4
	TgLA==
X-Gm-Message-State: AG10YOQurw94dAkopmocd5cUSJlNCEy/Mn6k4/m+IgwdSvo0xL3bP/+bmAeL3r6VpiYR/kPsTEszREqRKIrHFqDn
X-Received: by 10.107.154.79 with SMTP id c76mr43043174ioe.53.1455205996430;
	Thu, 11 Feb 2016 07:53:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.15.170 with HTTP; Thu, 11 Feb 2016 07:52:57 -0800 (PST)
From: Roman Shaposhnikov <roman.shaposhnikov@globallogic.com>
Date: Thu, 11 Feb 2016 17:52:57 +0200
Message-ID: <CAN27R1YrO9QstzxTnq1AtcWkM=wtr4Pkg-f88kPsepCx3+4Obg@mail.gmail.com>
To: Marius <mdlcameras@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to build for various boards from one yocto installatio
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
X-List-Received-Date: Thu, 11 Feb 2016 15:53:21 -0000
Content-Type: multipart/alternative; boundary=001a1140fa207e24d0052b808ceb

--001a1140fa207e24d0052b808ceb
Content-Type: text/plain; charset=UTF-8

Hi Mariues,

Yes, you can do this. At least you should create separate machine config.
For more details please check -
http://www.yoctoproject.org/docs/1.8/bsp-guide/bsp-guide.html (this will
provide you general process overview)

On Thu, Feb 2, 2016 at 3:20 AM, Marius <mdlcameras@gmail.com > wrote:

> I have a custom board (similar to BBB) that has no HDMI and no network
> as well as a standard BBB. I want to build images for each from my yocto
> (poky-jethro) installation.
> Can it be done and if so how do I go about that?
>
> Regards
> Marius
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20160202/980b86b3/attachment.html>
>
>
-- 
Regards,

Roman Shaposhnikov

--001a1140fa207e24d0052b808ceb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mariues,</div><div><br></div><div>Yes, you can do =
this. At least you should create separate machine config.</div><div>For mor=
e details please check -=C2=A0<a href=3D"http://www.yoctoproject.org/docs/1=
.8/bsp-guide/bsp-guide.html">http://www.yoctoproject.org/docs/1.8/bsp-guide=
/bsp-guide.html</a> (this will provide you general process overview)</div><=
div><br></div><font color=3D"#500050"><span style=3D"font-size:12.8px">On T=
hu, Feb 2, 2016 at 3:20 AM, Marius &lt;<a href=3D"mailto:mdlcameras@gmail.c=
om" target=3D"_blank">mdlcameras@gmail.com</a> &gt;=C2=A0</span></font><spa=
n style=3D"color:rgb(80,0,80);font-size:12.8px">wrote:</span><br style=3D"c=
olor:rgb(80,0,80);font-size:12.8px"><blockquote class=3D"gmail_quote" style=
=3D"color:rgb(80,0,80);font-size:12.8px;margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex"><div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;color:rgb=
(0,0,0)">I have a custom board (similar to BBB) that has no HDMI and no net=
work=20
as well as a standard BBB. I want to build images for each from my yocto=20
(poky-jethro) installation.
Can it be done and if so how do I go about that?

Regards
Marius
-------------- next part --------------
An HTML attachment was scrubbed...
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20160202/980b86b3/attachment.html" target=3D"_blank">http://lists.yoctop=
roject.org/pipermail/yocto/attachments/20160202/980b86b3/attachment.html</a=
>&gt;</pre></div></blockquote><div><br></div>--=C2=A0<div><span style=3D"fo=
nt-size:12.8px">Regards,</span><br><div><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div><div dir=3D"ltr">
<p style=3D"margin:0px"><span style=3D"font-family:Calibri;font-size:10pt;f=
ont-weight:600;color:rgb(51,51,51)">Roman Shaposhnikov=C2=A0</span></p></di=
v></div></div></div></div></div>
</div></div>

--001a1140fa207e24d0052b808ceb--
