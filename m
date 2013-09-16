Return-Path: <jc@vtkloud.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB94E014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 09:05:19 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id fz6so5554821pac.31
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 09:05:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:reply-to:sender:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=BJJS8nfCr3RvH7DWFpPdtGEEuo8Jkx9hptRYyjf3tQY=;
	b=Mmkv+KVIDCowpl6y4MGeEVySDXeEU05nc6x+hs43++Ceq2TcjICd9SSpSoKcuAGXxB
	Q5VJNFOtrz7xP/8buD2E4vSf4JEt3dtEFIkDxESEXobcY/Mbv99qboqEQc1fE0B+1bhL
	pn1Ctze/IxlqinEC0FdfpuenCRBg+l0p9hrSUD0B7vKujT11b8qmRpiFqestUWIIgFyW
	Dw17JIZva+8BRFKnQy9eRbVj/u/qD1Nlp1DFYXc+J/2yGAWzYEiDC/Dl5E0KvFX2z4O5
	6lk2/xhmabKktEVmPKP+S79VIiUriPIZQ7d9nRQGwfwGM/2ekjHdWRl8uGokfVNdxmeA
	fWWw==
X-Gm-Message-State: ALoCoQnnxeiWwXXHNSANmsi9Nm71AD+hRrnhLhox8QrJFdLxBCDLWDIdbctMTngQlV2e++4WHfgb
MIME-Version: 1.0
X-Received: by 10.66.136.131 with SMTP id qa3mr31664313pab.77.1379347519545;
	Mon, 16 Sep 2013 09:05:19 -0700 (PDT)
Sender: jc@vtkloud.com
Received: by 10.66.181.169 with HTTP; Mon, 16 Sep 2013 09:05:19 -0700 (PDT)
X-Originating-IP: [90.84.146.200]
In-Reply-To: <2840798.edp5joD2BU@helios>
References: <523392F3.4000907@vtkloud.com>
	<2840798.edp5joD2BU@helios>
Date: Mon, 16 Sep 2013 18:05:19 +0200
X-Google-Sender-Auth: Sv_qSOzGqmSB3rLuEAUH34b0V8o
Message-ID: <CAGzCC=-k61B6hjoVdVLUHMKWUc3WXV4iof4brvY1cVMLBo28xA@mail.gmail.com>
From: JC <jcv@voxtok.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: broken meta-baryon?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jcv@voxtok.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Sep 2013 16:05:20 -0000
Content-Type: multipart/alternative; boundary=001a11337690ecb64b04e6825ed6

--001a11337690ecb64b04e6825ed6
Content-Type: text/plain; charset=ISO-8859-1

On Monday, September 16, 2013, Paul Eggleton wrote:

> Hi Jay,
>
>
> >
> > Is the Baryon maintainer aware of this or is this just me ?
>
> Looks like the upstream website for orc has completely broken,
> unfortunately,
> and unlike the core recipes the source is not on our source mirror. I've
> sent
> an email to get it mirrored on sources.openembedded.org until upstream
> wakes
> up (assuming it does).
>
>
Thanks Paul, let's see what happens :)

Jay



> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11337690ecb64b04e6825ed6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>On Monday, September 16, 2013, Paul Eggleton  wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Hi Jay,<br>
<br><br>
&gt;<br>
&gt; Is the Baryon maintainer aware of this or is this just me ?<br>
<br>
Looks like the upstream website for orc has completely broken, unfortunatel=
y,<br>
and unlike the core recipes the source is not on our source mirror. I&#39;v=
e sent<br>
an email to get it mirrored on <a href=3D"http://sources.openembedded.org" =
target=3D"_blank">sources.openembedded.org</a> until upstream wakes<br>
up (assuming it does).<br>
<br></blockquote><div><br></div><div>Thanks Paul, let&#39;s see what happen=
s :)</div><div><br></div><div>Jay</div><div><br></div><div><span></span>=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">

Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote>

--001a11337690ecb64b04e6825ed6--
