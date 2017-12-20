Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C092E00D7F; Wed, 20 Dec 2017 04:25:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FBD3E00CEF
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:25:11 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id o130so11341774itg.0
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=B4Jg1gvwfapI0IzcIRC/e1GKlLfITEN7Z3qEm34sxf8=;
	b=hfTqoluPB2cHQdoJpn7DATIiT/vxWOpJbm6fDIx8e4xlZX3S9g0EnmC2gJWculLyI5
	9d6cOrDw867BihBhzWS01esHdtqP7vcXwErk86YFMBRn1JEcHdOeqtgGq0FBSgwOVfXg
	D8q5fliAiOjo7t7J/7rKqFxRWHr7HDX9awMaVJbEfJNWlFGUb+7KIGaheAQC9Y1h/UO7
	T95uldRuqdO06cKLEdlEFNee2XVfLKwQ/rMniPTTIM5qXCIyUJHKuP1bzHUs1catNG5j
	4sM+Y/qRcRBMBVI4rZd0HZfm81WSEZyRYwLapfL8gW03EjTr1Glkzf09MNQjh0E4G/BT
	tUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=B4Jg1gvwfapI0IzcIRC/e1GKlLfITEN7Z3qEm34sxf8=;
	b=E8A3umaeAHoabZPFA+uuxroSvgdZvDh8TVb7o6A6sNY6BaDgdNMBH82bi434P83Lkp
	QxJV3119Cku3DufaeuBdpnMDMu/UFSyLPzi7LlIlw0Hg82MX4En4PxLQu7ftyLAdZu7m
	kgKyy/i10UVx1H0ZQsXXNumL4EuKu84tV80Yso41PZ+bzhJ8yV600Phkk+N8rapXht4T
	bvC78wjepG9g0y1z1exJimmUa6mcRzeboVn213YjcACcc10xsPlfL/KANOwQXgB1y2E5
	0GVj8t+dtKAV+1B8hiybSUCNAT3k8UdvFgY+B8wB6UDoH32es8pCw7qzygT1fcUeeoUz
	yAuw==
X-Gm-Message-State: AKGB3mLwqfSaVCmZeYmYHcDO50W81jiLznYnlkA3cMHRuGrsIACSeKHN
	KtPMzc/s31ogBowW3hIZHkmD3XpOT40mSRv3Cw08ikrh
X-Google-Smtp-Source: ACJfBovj0t1aYlyedPDAuorFIvx9wF2D7XfxelELDtOvTfLggYeKuD4MPTsmoYy7K/NoJTIsHlWquS6pOe9CGhTf8RQ=
X-Received: by 10.36.120.11 with SMTP id p11mr7684046itc.10.1513772710716;
	Wed, 20 Dec 2017 04:25:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Wed, 20 Dec 2017 04:24:50 -0800 (PST)
In-Reply-To: <18319bfd-bb0f-07ca-5a95-5a03cbffd2d8@vitheia.com>
References: <753da0b1-9a45-6ce7-3016-502689f2330a@vitheia.com>
	<CAJTo0LZk7TGDC4_Dc8ofO2_HCs3nGfK7htV9TjWv72xVSXFsmw@mail.gmail.com>
	<fa866786-a078-1c28-7686-143a86df0046@vitheia.com>
	<18319bfd-bb0f-07ca-5a95-5a03cbffd2d8@vitheia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Dec 2017 12:24:50 +0000
Message-ID: <CAJTo0LYvPf0uGaXY+tMzDCzGQmQC1TffeJUwMhaQmuizikOnjw@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: call custom sh script in do_compile
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
X-List-Received-Date: Wed, 20 Dec 2017 12:25:13 -0000
Content-Type: multipart/alternative; boundary="001a114a9b5eb173e30560c4ac2e"

--001a114a9b5eb173e30560c4ac2e
Content-Type: text/plain; charset="UTF-8"

On 20 December 2017 at 12:19, Mircea Gliga <mircea.gliga@vitheia.com> wrote:

>
> Let's put it the other way around. Does anyone know a recipe that uses an
> shell script to build something (which must set the environment correctly
> and call make itself) ?
>

I can't see the difficulty.  Tasks are shell scripts by default, and you've
an external script that needs to be passed arguments to build correctly.
Pass those arguments in your do_compile when running the script.

Almost every recipe contains this pattern at some point. Concrete example:
in autotools.bbclass, do_configure sets a number of environment variables
(eg CC_FOR_BUILD and CACHED_CONFIGUREVARS) and then calls an external shell
script (configure) with arguments set in bitbake variables (such as
EXTRA_OECONF).

Ross

--001a114a9b5eb173e30560c4ac2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 20 December 2017 at 12:19, Mircea Gliga <span dir=3D"lt=
r">&lt;<a href=3D"mailto:mircea.gliga@vitheia.com" target=3D"_blank">mircea=
.gliga@vitheia.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-c=
olor:rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <br>
    Let&#39;s put it the other way around. Does anyone know a recipe that
    uses an shell script to build something (which must set the
    environment correctly and call make itself) ?<br></div></blockquote><di=
v><br></div><div>I can&#39;t see the difficulty.=C2=A0 Tasks are shell scri=
pts by default, and you&#39;ve an external script that needs to be passed a=
rguments to build correctly.=C2=A0 Pass those arguments in your do_compile =
when running the script.</div><div><br></div><div>Almost every recipe conta=
ins this pattern at some point. Concrete example: in autotools.bbclass, do_=
configure sets a number of environment variables (eg CC_FOR_BUILD and CACHE=
D_CONFIGUREVARS) and then calls an external shell script (configure) with a=
rguments set in bitbake variables (such as EXTRA_OECONF).</div><div><br></d=
iv><div>Ross</div></div></div></div>

--001a114a9b5eb173e30560c4ac2e--
