Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FE37E00901; Fri,  7 Nov 2014 03:56:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7470BE00863
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 03:56:16 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id s7so2202695qap.14
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 03:56:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AoUs99sNzHU4BCgbgQQ+vI87l536/hj1aXir705ARlk=;
	b=bS/KqgB+QX46SNk9m3Fe+OA6HcoEbRT6X6mJAjDh8ZvVxmjCdRft82KISGGn7J9P30
	WoP/GrMQfV0fg5c7R/eEWbJ5Rq1dwgbaLmgh3dHXvpXcZTd7yNBnVkoPF4WMGGhOxr3G
	ohIU4VP2xAf8inzzlfXn4NjeUkq1ETSyGPaxZZyhDnZgjlLObd8mdFLuZGa8UwY6wlJl
	snYo8lThyhU0W6LEUTcdkss1u1l1w5CtggheT8zrAc/OGhT9hcGPfTuMrgB4l808JjpN
	fR5+jjIljVDknUgTCpXMf3QNLBht68awyI2b2RvhrSMD/dXmcqFzdiHBj0pBu3KA32Q8
	JhbA==
X-Gm-Message-State: ALoCoQmiQimEg7Ly94n7ufm0amXzyXv9SuSxxpFW8oskLm/LKneV0aBEhVblmvO+GofpgpMEeYht
X-Received: by 10.229.224.201 with SMTP id ip9mr16579034qcb.5.1415361375839;
	Fri, 07 Nov 2014 03:56:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Fri, 7 Nov 2014 03:55:55 -0800 (PST)
In-Reply-To: <1415215791-27197-1-git-send-email-wd@denx.de>
References: <20141027080733.D8D1F380909@gemini.denx.de>
	<1415215791-27197-1-git-send-email-wd@denx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Nov 2014 11:55:55 +0000
Message-ID: <CAJTo0Lbd4JcvuipFTGDu_3c1kyQDO49gxfp59QwjzFW=618jhQ@mail.gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Perl: fix PERL5LIB settings
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
X-List-Received-Date: Fri, 07 Nov 2014 11:56:29 -0000
Content-Type: multipart/alternative; boundary=001a1135ef1e097e5905074380e6

--001a1135ef1e097e5905074380e6
Content-Type: text/plain; charset=UTF-8

Hi Wolfgang,

On 5 November 2014 19:29, Wolfgang Denk <wd@denx.de> wrote:

>  meta/recipes-devtools/perl/perl-native_5.14.3.bb | 4 ++--
>  meta/recipes-devtools/perl/perl_5.14.3.bb        | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>

Perl was upgraded to 5.20.0 in July, can you rebase and verify that this is
still required?

Ross

--001a1135ef1e097e5905074380e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Wolfgang,</div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On 5 November 2014 19:29, Wolf=
gang Denk <span dir=3D"ltr">&lt;<a href=3D"mailto:wd@denx.de" target=3D"_bl=
ank">wd@denx.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v id=3D":2y" class=3D"a3s" style=3D"overflow:hidden">=C2=A0meta/recipes-dev=
tools/perl/<a href=3D"http://perl-native_5.14.3.bb" target=3D"_blank">perl-=
native_5.14.3.bb</a> | 4 ++--<br>
=C2=A0meta/recipes-devtools/perl/<a href=3D"http://perl_5.14.3.bb" target=
=3D"_blank">perl_5.14.3.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A02 files changed, 3 insertions(+), 3 deletions(-)</div></blockquote></=
div><br>Perl was upgraded to 5.20.0 in July, can you rebase and verify that=
 this is still required?</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">Ross</div></div>

--001a1135ef1e097e5905074380e6--
