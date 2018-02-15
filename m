Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 165E2E00DB1; Thu, 15 Feb 2018 03:13:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E487AE007E1
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 03:13:57 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id d13so50174iog.5
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 03:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JgeKnJWJSycC49N+oqjs19fJKeq65p+71agw6vR+rcM=;
	b=ZU26q9UBVqDFadbR3F7KtVQx5hjlFI+o7gQiKFbGivzNtMUkmtFkmX/87tfAZo1f3o
	Y3M4EveE0JnpUhVUwT1vUZONEP/OwkMN8xCT9n/XYbuIWb/apc0eXR+hjGC01BEDbYt/
	0GayV2+TnfuSLrjS83bSAFDzZsqJgbhjSJ2/+fipdtaI7ALsyEI8qOuZvBw3Ch4Rqk8Q
	fYqraPwgkJlMuFvT88B66NxPgOmasvbhEXQJi/udJrUE1s5TIWFFPq5Ge9vmfFfMdKkP
	n6KGGNU+nc0GGubVdtbW3E6weXLWn2aRQ8UDDnK8mDETQAoYBqbqYiMaRjAydR/xBaO8
	avWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JgeKnJWJSycC49N+oqjs19fJKeq65p+71agw6vR+rcM=;
	b=e+OfI0Wq2I5RshBwVh5iuOGke9F48ZWCXkd7vjjjR9QC9NP7dm9xkJiV1aLGm91mgo
	iOy4wnuoAFXOBCBddQv+5kwXNH7QsPFlehTAzSVpn0s6B9AulHHCwO3MBKTfOVQM76Sh
	UoA7RMug/8EoyqWQ+oXwT0onyoCRRDQk707UD1bZ1oCH1IZQvEgOy7DrPRmI027AOB+e
	v3tQ+Uw8tZRJZ437l+61eGAxa25ra5V5RAjenfXxVO9sNOwbh9tJfnfWcAlReDCNGwRR
	8v4Ox5aWg2RwSa1Jun9p2kiXV/L/2PCZK7RxZseQtc4ZTIHvvpz73K9S0PADXypVIXQB
	sq3g==
X-Gm-Message-State: APf1xPCt9BgVBBzuxH/gIp4uNlVwCG4e3QvrPEyRR+t9Sn5K1nxQo843
	2JWUUTYEGdFdfTRro7wVInPNJt56u4/Tq28NMT0PBw==
X-Google-Smtp-Source: AH8x225OnRkMNiM8ERva/4/q2u5LHvNDQUUL9ZM+Ewb7zVcni9YE6cv1AJoZdAbvxLCzZBJtKagONIr8I+jktb0Kcqk=
X-Received: by 10.107.4.65 with SMTP id 62mr2883788ioe.52.1518693237098; Thu,
	15 Feb 2018 03:13:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Thu, 15 Feb 2018 03:13:36 -0800 (PST)
In-Reply-To: <CACfi_Z1=eAT2QUF1Ws+iCdU=wb_gP_MhuKfSdoVyDnVQp+PWPw@mail.gmail.com>
References: <CACfi_Z3y+gdLH04Ta3j+oGy4TU9J7YfFWoz=qavQfo6ntBmmSg@mail.gmail.com>
	<CAHUNapSPmr7N5ZGbX5-hDewtjwLuU5tQEdOofz29wwBMSkuKaw@mail.gmail.com>
	<CACfi_Z1=eAT2QUF1Ws+iCdU=wb_gP_MhuKfSdoVyDnVQp+PWPw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Feb 2018 11:13:36 +0000
Message-ID: <CAJTo0LZiKseLuN-G23oYReX4QA989j-fi5-t=xOvwP7xX723yw@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto uses UTC time for DATETIME instead of localtime
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
X-List-Received-Date: Thu, 15 Feb 2018 11:13:59 -0000
Content-Type: multipart/alternative; boundary="001a113efc88eba28e05653e5240"

--001a113efc88eba28e05653e5240
Content-Type: text/plain; charset="UTF-8"

On 12 February 2018 at 04:24, Davis Roman <davis.roman84@gmail.com> wrote:

> DATE := "${@time.strftime('%Y%m%d',time.localtime())}"
> TIME := "${@time.strftime('%H%M%S',time.localtime())}"
>
>
> Can you suggest a different way of making this change?
>

Use bitbake -e to see if there's a good reason why that didn't work.
Possibly inherit order means the local.conf value is being overriden.

Ross

--001a113efc88eba28e05653e5240
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 February 2018 at 04:24, Davis Roman <span dir=3D"ltr=
">&lt;<a href=3D"mailto:davis.roman84@gmail.com" target=3D"_blank">davis.ro=
man84@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><d=
iv><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
"><span style=3D"font-size:12.8px">DATE :=3D &quot;${@time.strftime(&#39;%Y=
%m%d&#39;,<wbr>time.localtime())}&quot;</span></div><div style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"font-size=
:12.8px">TIME :=3D &quot;${@time.strftime(&#39;%H%M%S&#39;,<wbr>time.localt=
ime())}&quot;</span></div><br></div><div><br></div><div>Can you suggest a d=
ifferent way of making this change?</div></div></div></blockquote><div><br>=
</div><div>Use bitbake -e to see if there&#39;s a good reason why that didn=
&#39;t work.=C2=A0 Possibly inherit order means the local.conf value is bei=
ng overriden.</div><div><br></div><div>Ross</div></div></div></div>

--001a113efc88eba28e05653e5240--
