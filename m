Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20A9AE00D5F; Tue,  6 Mar 2018 14:24:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AFABE00833
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 14:24:53 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id d13so866913itf.0
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 14:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9b1tBKs6exDlXv67cgekQ7twA194BqwqsoPOQD16bSE=;
	b=T74uQg3q0ixkTb962ysdE9Lrou7RVNr7Wue5gCSLmd+kH+u3nSA5V+216tjh0zlSFy
	+1X522KwAevEVDFBHOkpRVos3XMrFfLNXccEEf1bp7sgr2g25RcRUoidIrPUKI5Zn0cA
	mxOXqR+PheQlJ7nThYmh/HAPR0hHJEEI0oKssp3nIAiAA/L3FejIZnp1pzT21n8IO8AM
	Fl2UQux3J+mvAND4n60iFsU5b36HoCGsILdjSlj2l/C3P+lHsxZJFjqehxwWt/swSJGN
	HbeVlb0+ka4EsHV0sChUNYDysSuWwFnkDhCT3GETSUKDg45AC2HYf1t5cNcn/dwId1Ny
	xe/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9b1tBKs6exDlXv67cgekQ7twA194BqwqsoPOQD16bSE=;
	b=oqLn/a7ie60vFi8pvypntVs3T2ULqTipll+kMwck9kv7LJKzrCewZfy2TtNxoLGXj/
	soBbWvIqIsno1RBhSFcZPoul93W0BZGYqHraWFcNfDEO3x1YTUhIS2c9Zjfy0RrPY6rD
	UFGIJSOcQ1P8lOh9acx9aVgqD1c3GuyuOsJuQF5Dqud7v0M5XTyt0QuOI0mMz0GJYAk6
	Ad2HqLH2xdrzFrwsSRK6dDeiwNFUXSXKwEpqCe1c5l2KsGRyllrUcnsi9Fb6Kl0Y7BzR
	Zi7l0RayOJ0nwxH9SfI/HuP5ashhbizbXJCb6FI5Mof1yFkWV5FyXPNocrj3ZMKNO1tJ
	v//w==
X-Gm-Message-State: AElRT7Fezbu7c8eLjGcJWmNonsbZeUNBj7D14urI3Ei68HFbAMQ5nZT5
	SHU9TEAgTyb9s9nCY9SMoYJk0lIjoY8FQODE0dE=
X-Google-Smtp-Source: AG47ELt3vf6L6EeX1S3lADzlAtjd4FhY9iUdhBbtYemgsqmoN4y3b0z+9ou9Eki50oN6a0NEM9/nCwO51a95a03uHM8=
X-Received: by 10.36.31.18 with SMTP id d18mr11287386itd.55.1520375092882;
	Tue, 06 Mar 2018 14:24:52 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
	<CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
	<CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
	<CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
	<CAJ86T=UbFg+d0v0hr11+_LZJbomzLTPAVUc-rV4KhN7m9BRXHg@mail.gmail.com>
In-Reply-To: <CAJ86T=UbFg+d0v0hr11+_LZJbomzLTPAVUc-rV4KhN7m9BRXHg@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 22:24:42 +0000
Message-ID: <CAFzUWG=arXyu=DOa2tzDYd+3wvyKmHUXY3NSm6hefNQo7yfkFA@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 22:24:54 -0000
Content-Type: multipart/alternative; boundary="001a1145f7ce5633960566c5e9d7"

--001a1145f7ce5633960566c5e9d7
Content-Type: text/plain; charset="UTF-8"

Is there a good recipe to follow where the normal rules apply for packaging
and such? I had a hard time finding one that wasn't a rabbit-hole of *.inc
files.

Giordon

On Tue, Mar 6, 2018 at 4:23 PM Andre McCurdy <armccurdy@gmail.com> wrote:

> On Tue, Mar 6, 2018 at 2:12 PM, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi Andre,
> >
> > I tried without
> >
> > FILES_${PN}_append = "${includedir}/open62541.h"
> >
> > and got a QA error about a file installed that was not added to a
> > package.... I don't understand the ${PN}-dev here, and I'm not sure how
> > packaging works in this context - since it's not clear to me which files
> get
> > installed and which don't... except for when a recipe that depends on
> this
> > breaks because it can't find the header file.
>
> So you seem to have got yourself into a situation where the normal
> rules don't apply. Good luck!
>
-- 
Giordon Stark

--001a1145f7ce5633960566c5e9d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a good recipe to follow where the normal rules ap=
ply for packaging and such? I had a hard time finding one that wasn&#39;t a=
 rabbit-hole of *.inc files.<div><br></div><div>Giordon</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at 4:23 PM Andr=
e McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, Mar 6, 2018 at=
 2:12 PM, Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_=
blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi Andre,<br>
&gt;<br>
&gt; I tried without<br>
&gt;<br>
&gt; FILES_${PN}_append =3D &quot;${includedir}/open62541.h&quot;<br>
&gt;<br>
&gt; and got a QA error about a file installed that was not added to a<br>
&gt; package.... I don&#39;t understand the ${PN}-dev here, and I&#39;m not=
 sure how<br>
&gt; packaging works in this context - since it&#39;s not clear to me which=
 files get<br>
&gt; installed and which don&#39;t... except for when a recipe that depends=
 on this<br>
&gt; breaks because it can&#39;t find the header file.<br>
<br>
So you seem to have got yourself into a situation where the normal<br>
rules don&#39;t apply. Good luck!<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a1145f7ce5633960566c5e9d7--
