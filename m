Return-Path: <bhushan.az@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 359FFE00BB6
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 04:06:45 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hm4so6316310wib.2
	for <yocto@yoctoproject.org>; Wed, 02 Apr 2014 04:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=E/fWXzY+2eNFQ2tFoCvgWLPb1BXmIJPaLBhQ1uFMRhs=;
	b=Y975cvveLJCp8RTMoy1lYnEOFhzqJjcHVxFkbRI485hYWVnUCBxpltGCaPkwzhyXD5
	YziZzazJOH4wPAcXUneMwGhcy4CLfkt1xSs9G+JOkJX8TiiPoepwySH5oLCBcXVRZfDq
	A77jHBLAoiqkrFqdnTDPbnnwyR/mYJ87vtQ2sH9lBApH5aXvQn1RUd/hvLTtvu2qNvT2
	Nml0SS2lKNQvWgEA+kaKIEoUj5Io8s8dYef5WbCUROXTgBKk74XmDwkV50r/48kt4bKI
	tcKHDah3P9hhPQjGIy3VMX2G8VyXah7XQoIF92lvySoHRQQAjRN/6XSJiase9Psm7DnV
	dDQg==
MIME-Version: 1.0
X-Received: by 10.194.118.163 with SMTP id kn3mr12498645wjb.77.1396436803851; 
	Wed, 02 Apr 2014 04:06:43 -0700 (PDT)
Received: by 10.217.12.74 with HTTP; Wed, 2 Apr 2014 04:06:43 -0700 (PDT)
Date: Wed, 2 Apr 2014 16:36:43 +0530
Message-ID: <CAG2NicKU0K+KVJ6XJgb9-zatAq81qtDxrJtC_g2W8AZ7nGtrig@mail.gmail.com>
From: Bhushan Shirsath <bhushan.az@gmail.com>
To: yocto@yoctoproject.org
Subject: copying media files to qemux86
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
X-List-Received-Date: Wed, 02 Apr 2014 11:06:46 -0000
Content-Type: multipart/alternative; boundary=089e01228800a518d104f60d479d

--089e01228800a518d104f60d479d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm able to successfully launch "runqemu qemux86".
Now i intend to test the media libs built using Yocto on qemu currently.
Is it possible to transfer/copy media files to qemux86 emulator ?

I tried copying files to tmp/sysroots/qemux86/ but it didn't work.

Thanks,
--bhushan

--089e01228800a518d104f60d479d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m able to successfully launch=
 &quot;runqemu qemux86&quot;.</div><div>Now i intend to test the media libs=
 built using Yocto on qemu currently.</div><div>Is it possible to transfer/=
copy media files to qemux86 emulator ?</div>
<div><br></div><div>I tried copying files to=A0tmp/sysroots/qemux86/ but it=
 didn&#39;t work.<br></div><div><br></div><div>Thanks,</div><div>--bhushan<=
/div></div>

--089e01228800a518d104f60d479d--
