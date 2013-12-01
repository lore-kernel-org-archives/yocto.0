Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 965F8E006CA
	for <yocto@yoctoproject.org>; Sun,  1 Dec 2013 06:38:16 -0800 (PST)
Received: by mail-ob0-f173.google.com with SMTP id gq1so11698104obb.18
	for <yocto@yoctoproject.org>; Sun, 01 Dec 2013 06:38:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=B5XddEIahto5j5pcNuJwSVea9WZK4yPo3veDRIIhp4A=;
	b=dTznke5MPMaG8onk+VKcRQr2QX8UnN6NiAkoPOqD+Wpir/OsXgm3AsTIMS7OMpuEIA
	MsztSn6bOOn6XpduKmZKmkIoP+PEsaCM9rzu51+UpOcRsugLUoBddS9c8oCxu8YVsri3
	+0dr/Yd6G/zKMCqd7QccenRvolEfN1+UjIfiOdTVIgirCwKsBuBasjDgj4kJ740piVuo
	jZ4MPoqD6IwSS/nzS8/oUaEX/8sOdXmR2fIsE9FwNM/qsFpWxl229vyaLGZlocGdHtbf
	xM6cHA/WYLcqGFLGvtNw8B9aXY5c3VYf+Cupyu5wPAa1wIqZAjN2pUQPC1NJAP++s515
	amPw==
X-Gm-Message-State: ALoCoQngY0EktQM30GhJG9uSeJBrt3Tt2A65qv06hLG7Xy9DVDGWiPGbkotHQjQScFVw7mAGxaZQ
X-Received: by 10.182.135.194 with SMTP id pu2mr1429854obb.38.1385908695661;
	Sun, 01 Dec 2013 06:38:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.0.50 with HTTP; Sun, 1 Dec 2013 06:37:54 -0800 (PST)
In-Reply-To: <529B4140.2040801@mlbassoc.com>
References: <529B4140.2040801@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Sun, 1 Dec 2013 15:37:54 +0100
Message-ID: <CAP71Wjw=Zaf9n_yiXG1-=Fp5rNSPYV9xEsEN6HEwO841xwWneA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Very strange append issue
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
X-List-Received-Date: Sun, 01 Dec 2013 14:38:17 -0000
Content-Type: multipart/alternative; boundary=089e0122a6c07f1bdb04ec7a03af

--089e0122a6c07f1bdb04ec7a03af
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 1, 2013 at 3:01 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> I can see by the copied comment (#) lines that this fragment
> is coming exactly from 'installer_0.0.bbappend'
>
> This looks totally wrong to me.  Am I missing something (and
> it should work this way)??
>

are you on master? a 'somehow' similar issue (e.g. problems with
.bbappends) was reported on the list earlier this week:

http://www.mail-archive.com/yocto@yoctoproject.org/msg16836.html

--089e0122a6c07f1bdb04ec7a03af
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Dec 1, 2013 at 3:01 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":z6" style=3D"overflow:hidden">I can see by the=
 copied comment (#) lines that this fragment<br>


is coming exactly from &#39;installer_0.0.bbappend&#39;<br>
<br>
This looks totally wrong to me. =A0Am I missing something (and<br>
it should work this way)??<br></div></blockquote></div><br>are you on maste=
r? a &#39;somehow&#39; similar issue (e.g. problems with .bbappends) was re=
ported on the list earlier this week:</div><div class=3D"gmail_extra"><br>

</div><div class=3D"gmail_extra"><a href=3D"http://www.mail-archive.com/yoc=
to@yoctoproject.org/msg16836.html">http://www.mail-archive.com/yocto@yoctop=
roject.org/msg16836.html</a><br></div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">

<br></div></div>

--089e0122a6c07f1bdb04ec7a03af--
