Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F036E0044A
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 12:06:48 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1388589eek.35
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 12:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=8/RKRBYeVVxyuKVU1QPi+6p1gV7a3zdKz9hYb9pSsec=;
	b=SWGzj9JSGC/hdPpusv3goDjFYTyMa2GxKQQQiSY/rpJSk1N9zIvcG7Y0kojD2QLZyN
	KQ5fyKRjraIJXjIx//EygT+j75hGPVd05+MHJzqYfmxz8SnCD8QPSnwkBSx/rh4GtvfX
	egS6Ip/m+bMbiBDPsE0/HZmzPhapaLJ5dJyy9ko5Q6CrBnbHZmrZ51DEREJzup5Tce2y
	xg9BbGpflc+eohqqD5u59X3DmZb0Qk47otwC0K31aaIkI062DEzyGw7AoqdtoXrRs3BZ
	ja2JloJZnShCsOlV9tXpHWV2jPUDBfo8SoK2meqRe0FlyvonmRcZSG7EEksR2gJTjg+D
	btGg==
Received: by 10.14.53.76 with SMTP id f52mr4506513eec.79.1338318407178; Tue,
	29 May 2012 12:06:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Tue, 29 May 2012 12:06:17 -0700 (PDT)
In-Reply-To: <CA+Z6RkV3zeyCvfSx0ZrRQP7zhNQknchsN7q_sho1VkE2NGvFzg@mail.gmail.com>
References: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FDCB920@SHSMSX102.ccr.corp.intel.com>
	<CA+Z6RkV3zeyCvfSx0ZrRQP7zhNQknchsN7q_sho1VkE2NGvFzg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 May 2012 12:06:17 -0700
Message-ID: <CAMKF1spg+zYoLks6YNbFd8eXwMwdSLEeY2B2eOBLAJxTE=SODw@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Broken SDK
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
X-List-Received-Date: Tue, 29 May 2012 19:06:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, May 29, 2012 at 2:03 AM, Navani Srivastava
<navani.srivastava@gmail.com> wrote:
>
> "ln -s
> /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs
> mkspecs
> | ln: creating symbolic link `mkspecs': File exists"
>

as it says it seems file is there already. So make sure the preexisting fil=
e
is correct if so then you can check first if file exists before creating sy=
mlink
if the file is incorrect then just use ln -sf to create the symlink

> On commenting out
> =C2=A0"(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s
> ${SDKTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)"

