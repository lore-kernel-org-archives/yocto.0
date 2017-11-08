Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F462E00D4D; Wed,  8 Nov 2017 08:31:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE012E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:31:00 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id u132so3968680ita.0
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gv7WHgdhJ0eIDU56e5cWdjXUEmrQwW8IiXNTtA52WDU=;
	b=GP9Z4SAo/u7j9yEE3lT7/4njYMPzGDLIkJbQWMHlyVMLrmhdJZJZmJDDCl+vTYhMCD
	Hj4VUAvM42WhkQhfwTVqhpUZlo/272nlm60SOjNl+4F7vSo1uw9b2vLUDY+Cryv/Aqps
	YVpME1g3KHl8gZbSDaPZwKNp61uN0b/Ek/E0pJ0G0QSxs1cbuLR3Bc+zFVpZf5FSXGyH
	W1RggnpmASg3XkDXSn/tiHYPvGLRG0UBLdU6+54PtEDa/Z63QghAEnaxZIg4uRv24gNF
	RD7ITjtzkHjzrRcMHDaFJ0aTR4S1xf4/0ZCr9XGJiCY9SCvMiudWPYNU8IR/x30aHYAW
	6u5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gv7WHgdhJ0eIDU56e5cWdjXUEmrQwW8IiXNTtA52WDU=;
	b=GyG89j4nuVYyd0b+poWYtjb+JVkX9aLKRpp/2WTZOqrgiL7uEFlWMzLT5XP2+T7pr2
	FXJueFuaGYO72UUlMV1DdnwDJZVtkWS5lcDBdaJ+ZebRGCuunQyS8m8MQWf1bOzG3vk2
	BRHpmf9eJ6Jc2BjTVMdSaYULq8nuKvmX/PFuk19ly9auUhTq4CrHWJpJmvEj/l23ndb5
	i6dGoeojEiTQtHu7yQFJPFzQYmwiofH36KXn44tvyrA9EjAmwavcdDrGtJAD6lwNZx8q
	rfzw5mINXxOlJCKdl2J9KYraLIh1mqEJ5/x8Nq8iNTjVAhq7Xl8b36Hs3/EDM6Gfozzs
	pOHg==
X-Gm-Message-State: AJaThX6I59CSI9IqbRmPA/OTLgD06i0VufxqqHlwkBEznMlin6jbHOuE
	RlYO6AmiZ/fpfjpGJ6cZFd0f0T5KNpe8CQkPrXBeiQ==
X-Google-Smtp-Source: ABhQp+ROxmhsPqiJkldemHEPSnhz279q5OmsPxUo+CBTBt2iSkt5fLGVjRIFMRyUStfmG9+j7dDFLzqw/6/tOsnA4Nk=
X-Received: by 10.36.81.21 with SMTP id s21mr1505913ita.144.1510158660217;
	Wed, 08 Nov 2017 08:31:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:30:39 -0800 (PST)
In-Reply-To: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
References: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:30:39 +0000
Message-ID: <CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto documentation: no content, no PDF?
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
X-List-Received-Date: Wed, 08 Nov 2017 16:31:01 -0000
Content-Type: multipart/alternative; boundary="001a113a71467f38ce055d7b3628"

--001a113a71467f38ce055d7b3628
Content-Type: text/plain; charset="UTF-8"

On 8 November 2017 at 15:41, Jerry Lian <jerry.lian@gmail.com> wrote:

> Just wondering:
> * As an active project, why yocto documentation does not provide a content
> (better be clickable)?
>

The megamanual (Complete Documentation) doesn't have a top-level table of
contents as that basically exists to search globally.  The real docs (such
as Tasks Manual) have a top level table of contents.

* Or PDF format for easy printing.
>

That would be massive.  The source is in git as docbook so it's fairly
simple to generate a PDF.

Ross

--001a113a71467f38ce055d7b3628
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 November 2017 at 15:41, Jerry Lian <span dir=3D"ltr">=
&lt;<a href=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gm=
ail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Just =
wondering: <br>* As an active project, why yocto documentation does not pro=
vide a content (better be clickable)?<br></div></div></div></blockquote><di=
v><br></div><div>The megamanual (Complete Documentation) doesn&#39;t have a=
 top-level table of contents as that basically exists to search globally.=
=C2=A0 The real docs (such as Tasks Manual) have a top level table of conte=
nts.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div></div>* Or PDF format for easy printing.<br></div></div></blockquot=
e></div><br></div><div class=3D"gmail_extra">That would be massive.=C2=A0 T=
he source is in git as docbook so it&#39;s fairly simple to generate a PDF.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--001a113a71467f38ce055d7b3628--
