Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB01E013E3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 09:56:25 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e13so1430370vbg.31
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 09:56:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=vuayRqME1oWmpxkOiLOth+Vk3It5ekSZf+bT9X9n9ZM=;
	b=CGhtUycacBWB0AQL0rKnxqnl8BiowiOe17yoGRGTgCp3Z7tJNlSUKB3QVn+TWhvYgr
	zE8NOKrLSrxYeaXOj8WzVDO3OKcdfyYplHiYbTTb0GlKUhz28nPvcd+pPz+ExXcWfaaz
	I4T/HKKc3+zp9h8tmij5gdKA6grPV2u2cDwRnlAbauJSZkjNLwjBRwQDX8Y6tmFY1v+v
	ycSn4ueJh48aFE5/cvWLy3FxnV4u84qD0aMtE59bfZXxXhi3JVYTuTfYmDRMp6CKJYK4
	YIrW2bQ5Dvws+1aFKAKHg2BSpfDxmPbpZyhjNJIePZ8efommoE96X+QAId6MP9ymsmTT
	F0mg==
X-Received: by 10.58.106.77 with SMTP id gs13mr3076671veb.22.1369241785029;
	Wed, 22 May 2013 09:56:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 22 May 2013 09:56:04 -0700 (PDT)
In-Reply-To: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 May 2013 17:56:04 +0100
Message-ID: <CAJTo0LbaJ4ezpvobr6xGK6-=oPAh_H=Woh1uuY7pcrRZbmXHhg@mail.gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
X-Gm-Message-State: ALoCoQlbzgB4ejdiLtBXJ+1k1ug3BAPS9FEHwggvCArhyBGzWS3ruLLTctubT5/gqDRRO+BJzMIK
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 16:56:25 -0000
Content-Type: multipart/alternative; boundary=047d7b6d8808356a4204dd517213

--047d7b6d8808356a4204dd517213
Content-Type: text/plain; charset=UTF-8

On 22 May 2013 17:45, varun bhatnagar <varun292006@gmail.com> wrote:

> Hi,
>
> I have successfully created a PowerPC image using* bitbake -k
> core-image-minimal*.
> When I am trying to boot it using *runqemu qemuppc* I am getting a
> message saying* vnc server running on ::1:5900.*
>
> I searched on internet and it was written that to resolve this error *SDL
> *and *SDL-devel* package should be installed.
>
> I have installed these packages but it did not work. Still I am getting
> the same message.
> Can anyone help me out with this. Below is the screenshot of message.
>

The bit that you/the internet missed is that the "problem" is that qemu
didn't have SDL available when you built it.  You'll need to rebuild
qemu-native - "bitbake -ccleansstate qemu-native ; bitbake qemu-native".

Ross

--047d7b6d8808356a4204dd517213
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 22 May 2013 17:45, varun bhatnagar <span dir=3D"ltr">&lt;<a href=3D"mail=
to:varun292006@gmail.com" target=3D"_blank">varun292006@gmail.com</a>&gt;</=
span> wrote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr">Hi,<div><br></div><div>I have successfully created a Power=
PC image using<b> bitbake -k core-image-minimal</b>.</div><div>When I am tr=
ying to boot it using <b>runqemu qemuppc</b> I am getting a message saying<=
b> vnc server running on ::1:5900.</b></div>


<div><br></div><div>I searched on internet and it was written that to resol=
ve this error <b>SDL </b>and <b>SDL-devel</b> package should be installed.<=
/div><div><br></div><div>I have installed these packages but it did not wor=
k. Still I am getting the same message.</div>


<div>Can anyone help me out with this. Below is the screenshot of message.<=
/div></div></blockquote><div><br></div><div>The bit that you/the internet m=
issed is that the &quot;problem&quot; is that qemu didn&#39;t have SDL avai=
lable when you built it. =C2=A0You&#39;ll need to rebuild qemu-native - &qu=
ot;bitbake -ccleansstate qemu-native ; bitbake qemu-native&quot;.</div>

<div><br></div><div>Ross</div></div>

--047d7b6d8808356a4204dd517213--
