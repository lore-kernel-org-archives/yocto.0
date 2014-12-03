Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84BF0E0080C; Wed,  3 Dec 2014 15:17:42 -0800 (PST)
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
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434FAE002F9
	for <yocto@yoctoproject.org>; Wed,  3 Dec 2014 15:17:38 -0800 (PST)
Received: by mail-qc0-f172.google.com with SMTP id m20so12034124qcx.31
	for <yocto@yoctoproject.org>; Wed, 03 Dec 2014 15:17:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/OAdaUz3NKe/JS5UxG4AZAV0pN9Sq24yE5X9M4V7V3Q=;
	b=V/gCw1iXaDviMovGEACxm6i8BHMr1d+u8X3wwz5Zqaaosgp2UqxHT5Nj9X6GtQ8PAo
	pUQzuSusoWxAdt+dwCx/KibR2IAPsYVaZlqHt7bU768zY3NNWjd52LdiGLPXJBv+QQiS
	eqUXdgAS1gVs8T/KHf349Ewt5azUxmuGMWcs2ptqi4QolXEaX+41zYRup0GJa8oVfSjN
	hZAJ+qOwKYkOLSVY84R4p2t2/L6+XOKMM+wR6o7IHqk0XIxtoz+j4yWDQZxaJ3HMh0JU
	eoZkvWsOWJ+zCg/wXjXTmQpfC3ubz+3VhHAR5SOFSeAD/uMWcd9oaVVaKtYcRIjoJeT6
	g8yw==
X-Gm-Message-State: ALoCoQlGRyDNa1vSkqd2aiYoOiFdAEroZ8ow6hYGFLpmNHNF4pP+nBNIfGuhLH1mwR3sxIsXLcD0
X-Received: by 10.224.60.74 with SMTP id o10mr5099712qah.22.1417648657994;
	Wed, 03 Dec 2014 15:17:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Wed, 3 Dec 2014 15:17:17 -0800 (PST)
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5@PGSMSX101.gar.corp.intel.com>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A2405A5@PGSMSX101.gar.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Dec 2014 23:17:17 +0000
Message-ID: <CAJTo0LYkDFDAuiomQxvUcKfQVvgWe8YdHtpUsjzM7Aqg5VoSEw@mail.gmail.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yuchankit@gmail.com" <yuchankit@gmail.com>
Subject: Re: Issue with compiling x264 package in Yocto
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
X-List-Received-Date: Wed, 03 Dec 2014 23:17:42 -0000
Content-Type: multipart/alternative; boundary=001a11c3f53ead49f40509580c77

--001a11c3f53ead49f40509580c77
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3 December 2014 at 05:40, Yu, Chan KitX <chan.kitx.yu@intel.com> wrote:

> Weirdly, git cloning that repository worked marvelously. I=E2=80=99m out =
of my
> depth here so I=E2=80=99m posting here so more minds can dig this. I have=
 also
> attached the full log files so those interested can read the whole error
> log. I think I have set the SOCKS proxy correctly since git clone works f=
or
> me but I=E2=80=99m open to suggestions.
>
>
bitbake clears the environment when starting so its possible that your
proxy settings are being lost.  I believe setting eg
ALL_PROXY=3D"socks://my.proxy/" in your local.conf should work.

Ross

--001a11c3f53ead49f40509580c77
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 December 2014 at 05:40, Yu, Chan KitX <span dir=3D"ltr">&lt;<a href=3D=
"mailto:chan.kitx.yu@intel.com" target=3D"_blank">chan.kitx.yu@intel.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
">Weirdly, git cloning that repository worked marvelously. I=E2=80=99m out =
of my depth here so I=E2=80=99m posting here so more minds can dig this. I =
have also attached the full log files so those interested can read the whol=
e error log. I think I have set
 the SOCKS proxy correctly since git clone works for me but I=E2=80=99m ope=
n to suggestions.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>bitbake clears the enviro=
nment when starting so its possible that your proxy settings are being lost=
.=C2=A0 I believe setting eg ALL_PROXY=3D&quot;socks://my.proxy/&quot; in y=
our local.conf should work.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a11c3f53ead49f40509580c77--
