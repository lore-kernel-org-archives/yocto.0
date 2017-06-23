Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4374E00BAF; Fri, 23 Jun 2017 02:25:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF57AE00B53
	for <yocto@lists.yoctoproject.org>;
	Fri, 23 Jun 2017 02:25:17 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id t76so966594ywc.1
	for <yocto@lists.yoctoproject.org>;
	Fri, 23 Jun 2017 02:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AxeNjaRYvB7igSNizdjP2s/OSXSjiXxFXgMk9Vzk86k=;
	b=i/VkJ/imVyhaIW4QS+2hfRcQEsNNHXAlDGtTjmzHHTJWyV8M507RdMq2SY8F4qJuDE
	QX347OlxYB+FPP3Q9MQs6RbUFNXyd2SN6qSqZEX20itR8vHxj9kOnfc4ZNJ3GEAAH6cK
	svG72onLBLbvDSAQDrBzlJsdLzOjLwgDT5B217WC2JvZ0OaXfZrEdAAs51rhAomYWkda
	eH0CThgs+zh3bzh2qRLdPHXQkWqDWk1Sf4XRdW9kr+gj3/yixQKY0YacwOf478t2jaXX
	ZbtccoESt8+2K4gEioUmc0fofO5obh6gY2dx45nAVQneQ0cntAM5+2Prv7L42wEFpIUd
	1ZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AxeNjaRYvB7igSNizdjP2s/OSXSjiXxFXgMk9Vzk86k=;
	b=E+bCNChM8Y4oa8za7E5XPHyR+SVuh0rSx9o5Tv1xljLrNrh+JzELtXkDuXen3yfknp
	Z/J0X13sV5W6mUPp3M8C55Rc0dT3jvXJzE4CrvORlUlLUtGuj1KujtP6Lz8SFDPfVXBT
	UYZfTOobxmFpMzqkyJp6Wnr3IBp3O9q6r6Czbe8N/RhY0lUx1IqisTKrympJPUUfLMA7
	r5tv/fiFr2Tqhz/IDUsWGUJPHcOocgVOOggz2Bbk0JLFx8OwrnItycJuR/ZDH/7h0ylG
	UipTEvhz/ZdaS7V1ZLZf9rV/VPu84ydnPfbgQ7dNMh/JHWdkWnbe5MSiCZzq/AL9KDld
	ZDbw==
X-Gm-Message-State: AKS2vOzpl3xBBzxw/QnBKibCbGD4q9bNWtW3+p3+rHeRMXmrR/v1Sb2t
	8gnJsBddFGGsUyFYOZ/3mkMA2zdCig==
X-Received: by 10.129.114.137 with SMTP id n131mr930791ywc.193.1498209917020; 
	Fri, 23 Jun 2017 02:25:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.181.204 with HTTP; Fri, 23 Jun 2017 02:25:16 -0700 (PDT)
In-Reply-To: <CAJTo0LbD0BZ=kEKfGTqY+Ae=HsmDdVZj_4NJKhe8eW+NHrrVag@mail.gmail.com>
References: <20170612162218.11449-1-Martin.Jansa@gmail.com>
	<CAJ86T=ULdJSPwcCzRGpLPAR0rzEPsFcx8YxFmBHqGO-XB4130g@mail.gmail.com>
	<CAJTo0LbD0BZ=kEKfGTqY+Ae=HsmDdVZj_4NJKhe8eW+NHrrVag@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 23 Jun 2017 11:25:16 +0200
Message-ID: <CA+chaQcV+xdNvGxpuB+p9adLiRBH+84DsBLf4G3jC4aRE_RaSw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add use-pkg-config-to-locate-zlib.patch
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
X-List-Received-Date: Fri, 23 Jun 2017 09:25:19 -0000
Content-Type: multipart/alternative; boundary="001a11492ba4e7325705529d2d4c"

--001a11492ba4e7325705529d2d4c
Content-Type: text/plain; charset="UTF-8"

Probably yes as it got broken again yesterday:


On Mon, Jun 12, 2017 at 9:13 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 12 June 2017 at 20:04, Andre McCurdy <armccurdy@gmail.com> wrote:
>
>> Would it be better to just make the meta-gplv2 gnutls recipe self
>> contained and stop trying to share a .inc file and patches with
>> oe-core?
>>
>
> Yes.
>
> Ross
>
>

--001a11492ba4e7325705529d2d4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Probably yes as it got broken again yesterday:<div><br></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, =
Jun 12, 2017 at 9:13 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"">On 12 June=
 2017 at 20:04, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armcc=
urdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div id=3D"m_-3601567112722856484:209" c=
lass=3D"m_-3601567112722856484a3s m_-3601567112722856484aXjCH m_-3601567112=
722856484m15c9db3ee673e7ac">Would it be better to just make the meta-gplv2 =
gnutls recipe self<br>
contained and stop trying to share a .inc file and patches with<br>
oe-core?<br></div></blockquote><div><br></div></span><div>Yes.</div><span c=
lass=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross=C2=A0<br><=
/div></font></span></div><br></div></div>
</blockquote></div><br></div>

--001a11492ba4e7325705529d2d4c--
