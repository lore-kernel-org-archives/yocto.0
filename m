Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9554E00C76; Tue,  8 May 2018 23:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FB9E009AC
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 23:29:24 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id y189-v6so13099605itb.2
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 23:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZiuJAsZ5TmV5VCh+CbamkG9EUJfWzjtNd/38/ISzkWU=;
	b=YH2xImvilmjBrSlGvNOhxiA9rNgYl5uAEXhE8SFKDnJ2Es90ZE9FyQfQcPNAiNvAbZ
	HDmqDCFWmEst4T7R8eTVrZKU6Vp+hDOX7BrFHJe6zIU9133BOm6UTlqQJPQA6ATeK8oC
	iZju1BjUrCAVijCc52OnfzjT/B6CJouhlxGhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZiuJAsZ5TmV5VCh+CbamkG9EUJfWzjtNd/38/ISzkWU=;
	b=iImgjOGcdQ9f5tPtqKBlLX3MNP9uQHeXF0fe+/3jYnBlVh2uXBb8aLGYTS5nZHnY7/
	rRw/wLvN9K95N2H1Atn12DJOcIWKutscjqOL/T/c2rNCeTLmO6A7AWO6cZ2Iuq4KrUq7
	jRZDTLm8a7ZgsK+fYWMKr7g9w3gwUXpBxpVgpdKbG9PG0nJxi1EARCLhNsFJVy160MYk
	+SLHXnHgC0hRxthByGETxQcOA2eJKiMSNXrOPXbB/g/b0HVw0cDRmmfQ+1yuSxp4MeWN
	bLMV3R54DUdQi6bKjNKHSwdyp8G6mKA9Lte5F0H9B0x21vdmJ6zfn2UAcu9KF2vgUrsj
	wstA==
X-Gm-Message-State: ALKqPwfuWsMj+OuVt1R30Fj01WqaUfgPDLO1ZLw3OQQCTJRuBpoRKoPI
	mXIOwnIXr/TA6+JHBHMcfg8QX4h9KJxm2hsJHSPhoA==
X-Google-Smtp-Source: AB8JxZpRT2DUF71D045qvyNYTvPq26kOxEfOPfg7sHZvKMn+r9HGDlvxfxBzfUgOZxsQ3oPH7+2zKP1V/K8B7NNQ2oo=
X-Received: by 2002:a24:25d0:: with SMTP id
	g199-v6mr1617882itg.26.1525847364460; 
	Tue, 08 May 2018 23:29:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP;
	Tue, 8 May 2018 23:29:24 -0700 (PDT)
In-Reply-To: <da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
References: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
	<da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 9 May 2018 08:29:24 +0200
Message-ID: <CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Native curl and SSL CA certificates
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
X-List-Received-Date: Wed, 09 May 2018 06:29:25 -0000
Content-Type: multipart/alternative; boundary="00000000000023f89f056bc00696"

--00000000000023f89f056bc00696
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But I am not fetching nor installing packages over the network during image
creation. I just build an image using local recipes (standard procedure).
One of those local recipes sets up a remote repository for rpm packages
(adding /etc/yum.repos.d/yocto-adv-rpm.repo to the final image). The
purpose of that remote repository is using it to update rpm packages on
target devices when they are running in production.

In fact, I don't understand why yocto needs to synchronize that cache for
'yocto-adv-rpm' repo during build time. It doesn't have any sense for me.
But the fact is that when the ca-certificates.crt is properly installed,
the build process ends fine. If that file is not properly installed, the
build process fails with the error reported in my previous message.


2018-05-08 21:15 GMT+02:00 Alexander Kanavin <
alexander.kanavin@linux.intel.com>:

> On 05/08/2018 05:55 PM, Iv=C3=A1n Castell wrote:
>
>> Is this a bug related with curl or ca-certificates recipe? What should b=
e
>> the right way to fix it?
>>
>
> Fetching and installing packages over the network during image creation i=
s
> not supported or tested in YP. You need to build them locally, with recip=
es.
>
>
> Alex
>

--00000000000023f89f056bc00696
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>But I am not fetching nor installing packages over th=
e network during image creation. I just build an image using local recipes =
(standard procedure). One of those local recipes sets up a remote repositor=
y for rpm packages (adding /etc/yum.repos.d/yocto-adv-rpm.repo to the final=
 image). The purpose of that remote repository is using it to update rpm pa=
ckages on target devices when they are running in production.</div><div><br=
></div><div>In fact, I don&#39;t understand why yocto needs to synchronize =
that cache for &#39;yocto-adv-rpm&#39; repo during build time. It doesn&#39=
;t have any sense for me. But the fact is that when the ca-certificates.crt=
 is properly installed, the build process ends fine. If that file is not pr=
operly installed, the build process fails with the error reported in my pre=
vious message.=C2=A0=C2=A0<br></div><div><br></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2018-05-08 21:15 GMT+02:00 Alexander Kana=
vin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.c=
om" target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">On 05/08/2018 05:55 PM, Iv=
=C3=A1n Castell wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Is this a bug related with curl or ca-certificates recipe? What should be t=
he right way to fix it?<br>
</blockquote>
<br></span>
Fetching and installing packages over the network during image creation is =
not supported or tested in YP. You need to build them locally, with recipes=
.<br>
<br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div>

--00000000000023f89f056bc00696--
