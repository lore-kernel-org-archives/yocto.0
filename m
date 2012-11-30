Return-Path: <lee.changil@gmail.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 715AEE00294
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 04:31:40 -0800 (PST)
Received: by mail-vb0-f54.google.com with SMTP id l1so9712205vba.13
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 04:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=vgJl9S56QvpfFlsIxz6vTqtCN724VOJvWyCSsg5jwDQ=;
	b=RLQNnlzwY7i0RXnPaL0asq8nVctJ2YLPQ9VBh1Q4vSRCtCw4DrKN9Hyn+hThx9YS9E
	bkVaOeLUKK7gxRM5RkS2AZ8yTObS0BWgClDsPetMtYVdQSEu84V7TdoeN0ir6JUDDwCF
	ZN41NU8vEHH4WOvpFNkTR+9WonkiTTaQVTcPXNYjPo4gWdliz32/MdJEupan3/5M04AP
	oe3MA/hX5Y3UpVJaom+sW0TiKN7F6TqmQpeVa2RS4u2Z48bxgSPiu5fX97O8igtnsA3i
	k/w1txHpWqf/K67F9ia5oJNrAVtZ2ohFCGzHDto1fSn26sauukMagMOmUcOQceFbyqrX
	kskg==
MIME-Version: 1.0
Received: by 10.220.156.143 with SMTP id x15mr869654vcw.50.1354278699503; Fri,
	30 Nov 2012 04:31:39 -0800 (PST)
Received: by 10.220.92.196 with HTTP; Fri, 30 Nov 2012 04:31:38 -0800 (PST)
Date: Fri, 30 Nov 2012 21:31:38 +0900
Message-ID: <CAOdO+zhVHmgHDmBSHHqu0ehaOpfKyiERwD_vCtZL1C_1w025cA@mail.gmail.com>
From: Joey Lee <lee.changil@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding thumb library to toolchain and how to use TUNE_FEATURE
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
X-List-Received-Date: Fri, 30 Nov 2012 12:31:40 -0000
Content-Type: multipart/alternative; boundary=f46d04388ed3cf8f8804cfb59431

--f46d04388ed3cf8f8804cfb59431
Content-Type: text/plain; charset=UTF-8

Hello.

I'm newbie on yocto project and noticed that beagleboard toolchain doesn't
have thumb library.
So after several hour's search, I found out if I use TUNE_FEATURES, maybe
thumb library would be generated.

Could you simply reply my guessing is right or not and how to use
TUNE_FEATURES variable?

Should I create my own layer to do that ?

Thank you in advance.
Joey.

--f46d04388ed3cf8f8804cfb59431
Content-Type: text/html; charset=UTF-8

Hello.<div><br></div><div>I&#39;m newbie on yocto project and noticed that beagleboard toolchain doesn&#39;t have thumb library.</div><div>So after several hour&#39;s search, I found out if I use TUNE_FEATURES, maybe thumb library would be generated.</div>
<div><br></div><div>Could you simply reply my guessing is right or not and how to use TUNE_FEATURES variable?</div><div><br></div><div>Should I create my own layer to do that ?</div><div><br></div><div>Thank you in advance.</div>
<div>Joey.</div>

--f46d04388ed3cf8f8804cfb59431--
