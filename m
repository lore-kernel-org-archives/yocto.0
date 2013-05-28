Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f195.google.com (mail-ie0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8379E01423
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 07:02:15 -0700 (PDT)
Received: by mail-ie0-f195.google.com with SMTP id s9so189161iec.6
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 07:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=ae/N0bmpMjsPhjcAuBBGSL56N22czkcLNnY2e+NFOUw=;
	b=io90tekkql3GRYSQz/Ao/E8zKuT5b8rTMLx/xcqctP1R3zersXUdmkCRjJ/91UGFDt
	pK4fWD5PIj6RBhXt+L7/L8zcqKv46XO/WqpMG/cdhrZMVXHh1p1ZUYTNiSWBJry8ccL8
	euMV5L/vfJmSYs3zwNm//R9kf+PT8OZ4D9jklICFm9xwKkubV7rD5srvsRC6VeWOGKve
	GF5gV+K5oAAwKmjGbgqKEt4jHjMaXIm/OoP+5k9IADpyFT9sB8R6wlTkfskUY5BRSMjZ
	v6VL0cb0kUX4ynQpJmbJMI3Fw1CqiSQ6pmIFxTN68Ntqaao7koC2iMHzswZ60/UPFyX9
	SJfg==
MIME-Version: 1.0
X-Received: by 10.50.79.200 with SMTP id l8mr6986314igx.6.1369749734882; Tue,
	28 May 2013 07:02:14 -0700 (PDT)
Received: by 10.50.34.163 with HTTP; Tue, 28 May 2013 07:02:14 -0700 (PDT)
In-Reply-To: <1439859.cGLdtq2HGo@helios>
References: <51A4A0AD.1000207@mycable.de>
	<1439859.cGLdtq2HGo@helios>
Date: Tue, 28 May 2013 15:02:14 +0100
Message-ID: <CAM1ZcoWg1zrZ448aTab90HggfUp_OLGucbHUXTubyePwDcXGEw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I get the kernel modules into rootfs?
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
X-List-Received-Date: Tue, 28 May 2013 14:02:15 -0000
Content-Type: multipart/alternative; boundary=089e012946146102df04ddc7b6b2

--089e012946146102df04ddc7b6b2
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sebastian,
if you read this
https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-la=
b.pdf
you might find a solution for your problem. Check lab 3.

Thanks,
Katu


2013/5/28 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Tuesday 28 May 2013 14:18:53 Sebastian S=FCsens wrote:
> > I have build the system with MACHINE_EXTRA_RRECOMMENDS +=3D "
> > kernel-modules" at the machine configuration.
> > When I look into the rootfs.tar archive I see no modules installed in
> > /lib/modules. I get only a modules.tar archive at the deploy folder.
> >
> > How do I get the modules into the rootfs?
>
> This will only work if your image includes packagegroup-base, as noted
> in the glossary entry for this variable:
>
>
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-M=
ACHINE_EXTRA_RRECOMMENDS
>
> Presumably the image you are building does not include packagegroup-base
> (or more specifically, packagegroup-machine-base)?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e012946146102df04ddc7b6b2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sebastian,<div style>if you read this=A0<a href=3D"http=
s://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pd=
f">https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel=
-lab.pdf</a></div>
<div style>you might find a solution for your problem. Check lab 3.</div><d=
iv style><br></div><div style>Thanks,</div><div style>Katu</div></div><div =
class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2013/5/28 Paul Egg=
leton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 28 May 2013 14:=
18:53 Sebastian S=FCsens wrote:<br>
&gt; I have build the system with MACHINE_EXTRA_RRECOMMENDS +=3D &quot;<br>
&gt; kernel-modules&quot; at the machine configuration.<br>
&gt; When I look into the rootfs.tar archive I see no modules installed in<=
br>
&gt; /lib/modules. I get only a modules.tar archive at the deploy folder.<b=
r>
&gt;<br>
&gt; How do I get the modules into the rootfs?<br>
<br>
</div>This will only work if your image includes packagegroup-base, as note=
d<br>
in the glossary entry for this variable:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.h=
tml#var-MACHINE_EXTRA_RRECOMMENDS" target=3D"_blank">http://www.yoctoprojec=
t.org/docs/current/ref-manual/ref-manual.html#var-MACHINE_EXTRA_RRECOMMENDS=
</a><br>

<br>
Presumably the image you are building does not include packagegroup-base<br=
>
(or more specifically, packagegroup-machine-base)?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">_____________________=
__________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--089e012946146102df04ddc7b6b2--
