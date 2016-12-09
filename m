Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 055B9E00C80; Fri,  9 Dec 2016 05:07:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE894E00B96
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 05:07:18 -0800 (PST)
Received: by mail-qt0-f172.google.com with SMTP id w33so15144790qtc.3
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 05:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pJ30XWu87OYWbHahlSfsWZk5mYjtBLCheN52yS42W4c=;
	b=GqQTdptUcS4sk1fEXVzudqx8wC3W4Tgeh/YEiAq0kMdv4WMYtTDoJMjSKlLjQnZJVe
	S6Eezqs3+5UH//0V2nSc0D3k0iIHnLAwSQEt8xgglym4xum8AF+WiRDVkiMKcR49VJ4H
	m3qli7R+zuT0HGJIfsXD87/pp2q6S1FypT98y0S2VHHGczK4/83QtnAFPVOzrLnUA8eK
	SeR0pz0IQLAYkx2wE8qHOo2lFJB4h65DuKtSJUl/PT5K9PXJNc8PviRA0u0H9leFdm+Q
	Nsu7rvzqu+CUxJOUgJenlBqwdrQD9tWZHMamOHODqM+lz6pmoUwXSjq5l6rvh9GWiHXH
	5PUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pJ30XWu87OYWbHahlSfsWZk5mYjtBLCheN52yS42W4c=;
	b=MAywNA9Tx5fJkU3O05VG7ywoaAmrc+nnN98CjRsISSvgfQkkbbNusw3fZttj+4YUNs
	TH7DBzRqmNkao9lk3Mg2KVFDodzwMgasT+eY02w8a9VcFdkIL//A+TT6jTMFMi6NPfKO
	dNzPhBUwoq6iHrkzNDxXEKXPqk1ceNd6fu3r2cT9do1ovy3/BT8aoVLITz6PD/3qRra4
	K0TiJ6qQTgAIa3lY7QzEnb5u2ScxpXcpjH2tzKHxlIqnqlH3S6S8K42mRuVHYeOqSanp
	j0oUQleMA4tkKQcgXrlceST+4AZeyk0mcTA9/96t0jyyN60rCwwdJWEDGEGBymljyaka
	Jf8A==
X-Gm-Message-State: AKaTC02c1xDiY0l4I9PWZGVWiWSisBlEsC+tlgYVpQQbk+u+5Ppqc+0QZDhjVoShctqwH0IVEyB5nfos22M8UEw9
X-Received: by 10.237.61.42 with SMTP id g39mr76402581qtf.65.1481288837633;
	Fri, 09 Dec 2016 05:07:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 9 Dec 2016 05:06:57 -0800 (PST)
In-Reply-To: <02f901d2521c$cb62d6e0$622884a0$@renuelectronics.com>
References: <02e201d25213$77eea330$67cbe990$@renuelectronics.com>
	<CAJTo0LaXozB7S1XJbWv1jzutoLWQPQ-QHMhB2x6mEBqDuTvm-A@mail.gmail.com>
	<02f901d2521c$cb62d6e0$622884a0$@renuelectronics.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Dec 2016 13:06:57 +0000
Message-ID: <CAJTo0LaY75EyK0wmAjgEJa7eTbWp-Z3=SWwga_0PhrXUbP-1pA@mail.gmail.com>
To: Alankar Dhobale <alankar.dhobale@renuelectronics.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt make: g++: Command not found issue with SDK generated for soloX
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
X-List-Received-Date: Fri, 09 Dec 2016 13:07:24 -0000
Content-Type: multipart/alternative; boundary=001a1142a3eafa3f230543396efc

--001a1142a3eafa3f230543396efc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9 December 2016 at 13:04, Alankar Dhobale <
alankar.dhobale@renuelectronics.com> wrote:

> But I think =E2=80=9Cmake=E2=80=9D is somehow calling g++ instead of call=
ing
> arm-poky-linux-gnueabi-g++. I am not sure about the generated sdk is
> correct?
>
>
I'd check the generated makefiles, or your qmake files.  As the
documentation linked says, if you are writing bare makefiles then pass -e.
If you're not, then you need to do whatever is relevant.

Ross

--001a1142a3eafa3f230543396efc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 December 2016 at 13:04, Alankar Dhobale <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alankar.dhobale@renuelectronics.com" target=3D"_blank">alankar.d=
hobale@renuelectronics.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">But I think =E2=
=80=9Cmake=E2=80=9D is somehow calling g++ instead of calling arm-poky-linu=
x-gnueabi-g++. I am not sure about the generated sdk is correct?<u></u><u><=
/u></span></p><p class=3D"MsoNormal"></p></blockquote></div><br>I&#39;d che=
ck the generated makefiles, or your qmake files.=C2=A0 As the documentation=
 linked says, if you are writing bare makefiles then pass -e.=C2=A0 If you&=
#39;re not, then you need to do whatever is relevant.</div><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1142a3eafa3f230543396efc--
