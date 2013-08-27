Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B06E0155B
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 21:22:52 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id xn12so4226265obc.34
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 21:22:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Eqtd9kVikaIVdp0x6tYE6tKX+KZu/gUXk1lYRfRFbHw=;
	b=bP0lD6TOBmtNozHRI9w059F+AnqhSunMejiiU2vAo/I6SpWjb8RRiIx5s8Dng1Vvox
	siEiEwt0Orp4xQHYUkVTXwYfKHU6aqA7TvkpaRWbBKnIpfNM7ES+SgR92ZKZazMiaayK
	uB7RKx8t4pjvVNfs+mDxtsoAo+Z/4cXt1bm7/ZwVIgqh3wFYfftfmeMNCmA54mxN732x
	LDJOm0ZO5yjkXA3kgarNuZPASR/k3LhQSyNTIn7NO0UlynjQE3yUenLEC02/ngq5lMiR
	2mXAY9aqOUlHydn9wczjLuVvjLRcaEIc4UBsQlK7ccOv4tIvLgYIViii106ZX2Z55ut+
	KTlg==
X-Gm-Message-State: ALoCoQmtGHDXiNROrZix8ZTr7HjpIZ4SSaXYibiR7/NsE8LKCHSYx5GcVrozLPDajCz4yuLEUUOt
X-Received: by 10.60.52.101 with SMTP id s5mr44931oeo.56.1377577372359; Mon,
	26 Aug 2013 21:22:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.172.4 with HTTP; Mon, 26 Aug 2013 21:22:32 -0700 (PDT)
In-Reply-To: <521C1C4E.7020107@gmail.com>
References: <521C1C4E.7020107@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 27 Aug 2013 06:22:32 +0200
Message-ID: <CAP71WjzLKwsqCFitmRtHs3znJC2JVsmt+bcJ0A337bt-vYLazQ@mail.gmail.com>
To: Arun M Kumar <arunkr.linux@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: First build stuck at a Single Task..
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
X-List-Received-Date: Tue, 27 Aug 2013 04:22:55 -0000
Content-Type: multipart/alternative; boundary=001a11330d54ee2fa504e4e639cb

--001a11330d54ee2fa504e4e639cb
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Aug 27, 2013 at 5:26 AM, Arun M Kumar <arunkr.linux@gmail.com>wrote:

> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for runtime libasound-module-bluez
> (bluez4, bluez5)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match
> libasound-module-bluez
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 1 running tasks (1587 of 5917):
> *0: linux-yocto-3.8.13+gitAUTOINC+e7f42a416a_aa76cc2840-r4.2 do_fetch
> (pid 2006)*
>
> -----------------------------------------------------------------------------------------------------------------------
>
>
> It has been like this for the past 4 Hours. Internet download Traffic is
> around 124KB/s on system monitor (no other process using Internet).
>
> I have set the number of jobs in the local conf file as '9' and
>
> I have re-initialted the command from the same directory once the previous
> build failed.
>
>
this 'task' is actually doing a 'git clone' of the entire linux-yocto
kernel repository. The SRC_URI is

SRC_URI = "git://
git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta"

so, it might very well just go well , but it's slow. it should be 'cloning'
in this folder:

<build>/downloads/git2/git.yoctoproject.org.linux-yocto-3.8.git

you should be able to see that folder size growing, if not, then there can
be a problem.

--001a11330d54ee2fa504e4e639cb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Aug 27, 2013 at 5:26 AM, Arun M Kumar <span dir=3D"ltr">&lt;<a href=
=3D"mailto:arunkr.linux@gmail.com" target=3D"_blank">arunkr.linux@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#000000">NOTE: Resolving =
any missing task queue dependencies<br>


    NOTE: multiple providers are available for runtime
    libasound-module-bluez (bluez4, bluez5)<br>
    NOTE: consider defining a PREFERRED_PROVIDER entry to match
    libasound-module-bluez<br>
    NOTE: Preparing runqueue<br>
    NOTE: Executing SetScene Tasks<br>
    NOTE: Executing RunQueue Tasks<br>
    Currently 1 running tasks (1587 of 5917):<br>
    <b>0: linux-yocto-<a href=3D"tel:3.8.13" value=3D"+333813" target=3D"_b=
lank">3.8.13</a>+gitAUTOINC+e7f42a416a_aa76cc2840-r4.2
      do_fetch (pid 2006)</b><br>
---------------------------------------------------------------------------=
--------------------------------------------<br>
    <br>
    <br>
    It has been like this for the past 4 Hours. Internet download
    Traffic is around 124KB/s on system monitor (no other process using
    Internet).<br>
    <br>
    I have set the number of jobs in the local conf file as &#39;9&#39; and=
<br>
    <br>
    I have re-initialted the command from the same directory once the
    previous build failed.<br>
  </div>

<br></blockquote></div><br>this &#39;task&#39; is actually doing a &#39;git=
 clone&#39; of the entire linux-yocto kernel repository. The SRC_URI is=A0<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div c=
lass=3D"gmail_extra">

SRC_URI =3D &quot;git://<a href=3D"http://git.yoctoproject.org/linux-yocto-=
3.8.git;protocol=3Dgit;bareclone=3D1;branch=3D${KBRANCH},${KMETA};name=3Dma=
chine,meta">git.yoctoproject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclo=
ne=3D1;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta</a>&quot; =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0</div>

<div>so, it might very well just go well , but it&#39;s slow. it should be =
&#39;cloning&#39; in this folder:</div><div><br></div><div>&lt;build&gt;/do=
wnloads/git2/git.yoctoproject.org.linux-yocto-3.8.git<br></div><div><br>

</div><div>you should be able to see that folder size growing, if not, then=
 there can be a problem.</div><div><br></div></div></div>

--001a11330d54ee2fa504e4e639cb--
