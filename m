Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDEECE0073F
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 05:18:42 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so6250975bkc.35
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2012 05:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Dxi2drfuzknzLgK16P0r+Qc8mv6/pupw7/IGF3CGr+s=;
	b=ZTe0SE2yJ+7usLR32pPZxyp9omwTDxphdaJikAkg2clYUWPUWIQhJt8sLnvxH4WBC8
	cTFXipnejLAlqaNfNVRyVY87GnnguO2Ic3rIV8U4nwzptqK6RNxGYWGYoa4R/YBaD4I0
	EdRPgz6FkMsMm9j23sEzPw8BO6gFIzY2ekAd2Gm19yfLW6T2hCsIXwA7qf0OG2T42Qsi
	xI0OK+h5+KdDDVo3Uzl3qHm8A5RzlCFCAlj2zEdd2RcNW4E5NQmCNHwVZhIqWS3LvUHx
	3fCkuOUjNOxcAuVTgStR5F3MtoPm/HgGdeXheU7Jjlw6A8VzOLL8PSX1N2dURkWp9u4/
	ZhzA==
Received: by 10.205.33.136 with SMTP id so8mr8728589bkb.1.1338898721421; Tue,
	05 Jun 2012 05:18:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.232.209 with HTTP; Tue, 5 Jun 2012 05:18:21 -0700 (PDT)
In-Reply-To: <CAMKF1spg+zYoLks6YNbFd8eXwMwdSLEeY2B2eOBLAJxTE=SODw@mail.gmail.com>
References: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FDCB920@SHSMSX102.ccr.corp.intel.com>
	<CA+Z6RkV3zeyCvfSx0ZrRQP7zhNQknchsN7q_sho1VkE2NGvFzg@mail.gmail.com>
	<CAMKF1spg+zYoLks6YNbFd8eXwMwdSLEeY2B2eOBLAJxTE=SODw@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 5 Jun 2012 17:48:21 +0530
Message-ID: <CA+Z6RkUEkbtpytcF93wvziDoj+LcvJZQyDQUhwD+jmVh_r-_gQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Tue, 05 Jun 2012 12:18:43 -0000
Content-Type: multipart/alternative; boundary=bcaec51a7bceae3a3a04c1b8a685

--bcaec51a7bceae3a3a04c1b8a685
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Thanks for support. I successfully created SDK with this modification. I
installed the same SDK and tried compiling Qt application, but got error
mentioning

"Failure to read QMAKESPEC conf file
/opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnueabi-oe-g++/qmake.conf/qmake.conf.
Error processing project file: /home/Qt/hello/hello.pro"

I had exported path of QMAKESPEC to
/opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnueabi-oe-g++/qmake.conf


Any idea why I am ending up with this error ? Any reply is appreciable.

Thanks
Navani


On Wed, May 30, 2012 at 12:36 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, May 29, 2012 at 2:03 AM, Navani Srivastava
> <navani.srivastava@gmail.com> wrote:
> >
> > "ln -s
> > /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs
> > mkspecs
> > | ln: creating symbolic link `mkspecs': File exists"
> >
>
> as it says it seems file is there already. So make sure the preexisting
> file
> is correct if so then you can check first if file exists before creating
> symlink
> if the file is incorrect then just use ln -sf to create the symlink
>
> > On commenting out
> >  "(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s
> > ${SDKTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)"
>

--bcaec51a7bceae3a3a04c1b8a685
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>Thanks for support. I successfully created SDK with this modific=
ation. I installed the same SDK and tried compiling Qt application, but got=
 error mentioning <br><br>&quot;Failure to read QMAKESPEC conf file /opt/po=
ky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnuea=
bi-oe-g++/qmake.conf/qmake.conf.<br>

Error processing project file: /home/Qt/hello/<a href=3D"http://hello.pro">=
hello.pro</a>&quot;<br><br>I had exported path of QMAKESPEC to /opt/poky/1.=
0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-gnueabi-oe=
-g++/qmake.conf <br>

<br>Any idea why I am ending up with this error ? Any reply is appreciable.=
<br><br>Thanks <br>Navani <br><br><br><div class=3D"gmail_quote">On Wed, Ma=
y 30, 2012 at 12:36 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote=
:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"im">On Tue,=
 May 29, 2012 at 2:03 AM, Navani Srivastava<br>
&lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.=
com</a>&gt; wrote:<br>
&gt;<br>
&gt; &quot;ln -s<br>
&gt; /opt/poky/1.0/sysroots/arm-poky-linux-gnueabi/usr/share/qtopia/mkspecs=
<br>
&gt; mkspecs<br>
&gt; | ln: creating symbolic link `mkspecs&#39;: File exists&quot;<br>
&gt;<br>
<br>
</div>as it says it seems file is there already. So make sure the preexisti=
ng file<br>
is correct if so then you can check first if file exists before creating sy=
mlink<br>
if the file is incorrect then just use ln -sf to create the symlink<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; On commenting out<br>
&gt; =A0&quot;(cd ${SDK_OUTPUT}/${QT_TOOLS_PREFIX}/..; ln -s<br>
&gt; ${SDKTARGETSYSROOT}/usr/share/qtopia/mkspecs mkspecs;)&quot;<br>
</div></div></blockquote></div><br>

--bcaec51a7bceae3a3a04c1b8a685--
