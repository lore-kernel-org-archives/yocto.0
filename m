Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F313E00563
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 14:13:51 -0800 (PST)
Received: by mail-pb0-f54.google.com with SMTP id un15so21910966pbc.41
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 14:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1H37s/WW/CVa4GX5PYoqRzvi27k8lJ5Ckamuu2ZYRUk=;
	b=Jv0eZg7xnbrRDz9BRpaJvu/W6cRBFaN3KgPN5VhPtkB3hUkH1Hb2DDLff6NMeXzpNM
	JmzuTOtoboDZ6F/P8WG8rgPOqjfProSIdq5pRvLfQ41LAMtpRkTMXt86sPApA88CJ4v4
	jlqp3FbvUijeVtFi9m2H4lvywI391DsCYiRykVJDcuYmgNxpoTFa6iU14f2Jr44x4sdo
	XpyZMOfuWpGQTA9ndDuUrwku21NT7Tk6qAEWnhGUtKj45oSxa6gcsCPiR42st93hy/op
	xEg27vR5dSu/VnuXw2whhKcUPeYR3nmu/ZY7q+aOeB5tPkdPmI+xregO/PDZHwrkl9Dd
	pxZQ==
MIME-Version: 1.0
X-Received: by 10.68.236.103 with SMTP id ut7mr41411868pbc.118.1386108831362; 
	Tue, 03 Dec 2013 14:13:51 -0800 (PST)
Received: by 10.68.104.133 with HTTP; Tue, 3 Dec 2013 14:13:51 -0800 (PST)
In-Reply-To: <CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
Date: Wed, 4 Dec 2013 00:13:51 +0200
Message-ID: <CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Tue, 03 Dec 2013 22:13:54 -0000
Content-Type: multipart/alternative; boundary=047d7b33daa883750204eca89cc8

--047d7b33daa883750204eca89cc8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello guys, I am trying to enable the functionality for the camera.
I am trying to solve the following problem:
    mmal: mmal_vc_component_create: failed to create component
'vc.ril.camera'
    mmal: mmal_component_create_core: could not create component
'vc.ril.camera'
    mmal: Failed to create camera component
Updated to the latest firmware, enabled the functionality into config.txt
but the problem continues.

The problem seems to be the rootfs constructions. The right libraries are
there but the name of the component that the function needs is not there. I
assume it will take me some time to solve it, but when the time permits I
will try to wrap this thing up.


Regards,
Alex


On Tue, Dec 3, 2013 at 11:54 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
>
> On Tue, Nov 19, 2013 at 6:22 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>
>> On 2013-11-19 09:18, Edward Vidal wrote:
>>
>>> Hello,
>>> To get my C920 camera to work with the zedboard
>>> I needed to add v4l-utils and then I need several modules that I add to
>>> 3.6 kernel
>>> https://github.com/Digilent/linux-digilent.git
>>>      3.6.0-digilent-13.01-00002-g06b3889/
>>>      =E2=94=9C=E2=94=80=E2=94=80 kernel
>>>      =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 drivers
>>>      =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 media
>>>      =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 video
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gspca
>>>      =E2=94=82       =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=
=94=80 gspca_main.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 uvc
>>>      =E2=94=82       =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=
=94=80 uvcvideo.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 v4l2-c=
ommon.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 v4l2-i=
nt-device.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 videob=
uf2-core.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 videob=
uf2-memops.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 videob=
uf2-vmalloc.ko
>>>      =E2=94=82       =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 videod=
ev.ko
>>> Hope this helps
>>>
>>
>> Thanks for the reply, but this is not what I'm looking for.  The
>> camera module I'm using is directly connected to the RaspberryPi
>> via the CSI interface, not USB like your C920 and it uses very
>> different drivers to access.
>
>
> Alexandru was working on this (camera support). Maybe he can help you wit=
h
> this. Adding him in the loop.
>
> ag
>

--047d7b33daa883750204eca89cc8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello guys, I am trying to enable the functional=
ity for the camera.<br>I am trying to solve the following problem:<br>=C2=
=A0=C2=A0=C2=A0 mmal: mmal_vc_component_create: failed to create component =
&#39;vc.ril.camera&#39;<br>
=C2=A0=C2=A0=C2=A0 mmal: mmal_component_create_core: could not create compo=
nent &#39;vc.ril.camera&#39;<br>=C2=A0=C2=A0=C2=A0 mmal: Failed to create c=
amera component<br></div>Updated to the latest firmware, enabled the functi=
onality into config.txt but the problem continues.<br>
<br></div><div>The problem seems to be the rootfs constructions. The right =
libraries are there but the name of the component that the function needs i=
s not there. I assume it will take me some time to solve it, but when the t=
ime permits I will try to wrap this thing up.<br>
<br><br></div><div>Regards,<br>Alex<br></div></div><div class=3D"gmail_extr=
a"><br><br><div class=3D"gmail_quote">On Tue, Dec 3, 2013 at 11:54 PM, Andr=
ei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" targe=
t=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Tue, Nov 19, 2013 at 6:22 PM, Gar=
y Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div>On 2013-11-19 09:18, Edward Vidal =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello,<br>
To get my C920 camera to work with the zedboard<br>
I needed to add v4l-utils and then I need several modules that I add to 3.6=
 kernel<br>
<a href=3D"https://github.com/Digilent/linux-digilent.git" target=3D"_blank=
">https://github.com/Digilent/<u></u>linux-digilent.git</a><br>
=C2=A0 =C2=A0 =C2=A03.6.0-digilent-13.01-00002-<u></u>g06b3889/<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 kernel<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 drivers<br=
>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 media<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =E2=94=
=94=E2=94=80=E2=94=80 video<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 gspca<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 gspca_main.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 uvc<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 uvcvideo.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 v4l2-common.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 v4l2-int-device.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 videobuf2-core.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 videobuf2-memops.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 videobuf2-vmalloc.ko<br>
=C2=A0 =C2=A0 =C2=A0=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =
=C2=A0 =E2=94=94=E2=94=80=E2=94=80 videodev.ko<br>
Hope this helps<br>
</blockquote>
<br></div></div>
Thanks for the reply, but this is not what I&#39;m looking for. =C2=A0The<b=
r>
camera module I&#39;m using is directly connected to the RaspberryPi<br>
via the CSI interface, not USB like your C920 and it uses very<br>
different drivers to access.</blockquote><div><br></div><div>Alexandru was =
working on this (camera support). Maybe he can help you with this. Adding h=
im in the loop.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><b=
r>
</div><div>ag</div></font></span></div>
</div></div>
</blockquote></div><br></div>

--047d7b33daa883750204eca89cc8--
