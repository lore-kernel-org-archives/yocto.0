Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34582E00CF5; Wed, 15 Nov 2017 09:23:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91CB1E00C11
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 09:23:06 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id 189so2316596iow.10
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 09:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i5eaGGGo5l3bzbL5d+7vAQvUN0edfBbpEN6vTnIPjNA=;
	b=QdaFnaYRYN+v6DMeH+Ml1Abx+Gy550c3B7Ui2G3y/mAWvL8EhSXJt6LscmrDjp4TLZ
	FYd1nxwejGbQsalD1gThECXcGwawJ1CodHITaTUNnmnyI/VRm9plrFpB/gM3ioVRV1fS
	vV9UCEm1o0psNJzNOpxQ2BKnzPp6CA8c2cKveeh1tTYiEhA3l6ZuFtf9QsK5rCkASG46
	Voem5X9wwcsE0heFnrc311ShKqZFvHl0rSGHzCj/RBWz3FttuDtIsDSmMynHZqaNUDJW
	9r8Ri9WrSYv62ue1xOcH/14fh7XJgEU2lf3nOvlm9fPmeUH26p2xJt2Wv+aEC3gPgvjB
	XAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i5eaGGGo5l3bzbL5d+7vAQvUN0edfBbpEN6vTnIPjNA=;
	b=c+JrKi+UKUh/a9hIdwvSuKcj3T92kEXMarltBaq4+1h4J5kRyV12XZCDM8NbZqhLhM
	366u9Sxe4IFZin4ZwmWWFESpYV4Cc6DKy0SRiJibBliEq654amBv2r/FDu5+XuypRDGg
	m8tRlEw8jd6GzsYPGqAD7iFgFBXKGWr8Arx6XvoYrWN4AyuRRYDhpILaqrftJMJHm69p
	uk6jSji1wnSRFm6ZQfnE+Iz89XSw+yZoTEy+Z7EwhHxWFly9/7T5jynrvUeBu/LpsgnN
	0ZjoCsqtp7NxZSIAKVahMjeaAqyuEF97f166OyEDN3xv7w24i7EmldHjLWH0DF6Opa+2
	Hpkw==
X-Gm-Message-State: AJaThX6q8qHZAzh6FogBCPlVXQtqEYJSMnKNRBKxCCMo16G4c+fXIJ2b
	5zr7bJR4wrIPJhzC6zzDSzbnFlRTFDGxQrajtBFcRg==
X-Google-Smtp-Source: AGs4zMaSTvkZ+6axPcabG26mU3CTlHKK4GNv8l27kASACNoFKZLT2xiRtntvu6y2Iybzq9hwHzObVTOs0DE70kf1RLg=
X-Received: by 10.107.146.86 with SMTP id u83mr19840721iod.37.1510766584302;
	Wed, 15 Nov 2017 09:23:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.196 with HTTP; Wed, 15 Nov 2017 09:22:43 -0800 (PST)
In-Reply-To: <HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB1155A5A0E0B31CC7DBC5F446FE290@HK2PR02MB1155.apcprd02.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 Nov 2017 17:22:43 +0000
Message-ID: <CAJTo0LZCGUzPp5iBjqM7hhDQ4q2v5ib3uFh6J0Nejan0i5PTUw@mail.gmail.com>
To: Amit Gondaliya <amit.gondaliya@einfochips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libnetconf 0.9.0 configuring error in yocto pyro 2.3
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
X-List-Received-Date: Wed, 15 Nov 2017 17:23:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c054fa698b4d4055e08c1bc"

--94eb2c054fa698b4d4055e08c1bc
Content-Type: text/plain; charset="UTF-8"

On 15 November 2017 at 12:03, Amit Gondaliya <amit.gondaliya@einfochips.com>
wrote:

> *ERROR: /usr/bin/xml2-config should not be used, use an alternative such
> as pkg-config*
>
>
>
> *ERROR: /usr/bin/xslt-config should not be used, use an alternative such as pkg-config*does anybody know how to patch configuration.ac file to resolve this issue.
>
> Patch configure.ac so that instead of using xml2-config, it uses
pkg-config.  If the upstream used the m4 macros provided by libxml2 then
this wouldn't have been a problem as at the same time as disabling
xml2-config we patch the macros to use pkg-config.

Ross

--94eb2c054fa698b4d4055e08c1bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 15 November 2017 at 12:03, Amit Gondaliya <span dir=3D"=
ltr">&lt;<a href=3D"mailto:amit.gondaliya@einfochips.com" target=3D"_blank"=
>amit.gondaliya@einfochips.com</a>&gt;</span> wrote:<br><div class=3D"gmail=
_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_2269494815071580537divtagdefaultwrapper" dir=3D"ltr" style=3D"=
font-size:11pt;color:rgb(0,111,201);font-family:Verdana,Geneva,sans-serif,&=
quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emo=
jiSymbols">
<p><b style=3D"font-size:11pt">ERROR: /usr/bin/xml2-config should not be us=
ed, use an alternative such as pkg-config</b><br></p><pre><b>ERROR: /usr/bi=
n/xslt-config should not be used, use an alternative such as pkg-config<br>=
<br></b>does anybody know how to patch configuration<b></b>.ac file to reso=
lve this issue.</pre></div></div></blockquote><div>Patch <a href=3D"http://=
configure.ac">configure.ac</a> so that instead of using xml2-config, it use=
s pkg-config.=C2=A0 If the upstream used the m4 macros provided by libxml2 =
then this wouldn&#39;t have been a problem as at the same time as disabling=
 xml2-config we patch the macros to use pkg-config.</div><div><br></div><di=
v>Ross</div><div>=C2=A0</div></div></div></div>

--94eb2c054fa698b4d4055e08c1bc--
