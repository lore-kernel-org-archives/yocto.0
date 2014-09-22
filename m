Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C56A9E0086E; Mon, 22 Sep 2014 04:41:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.96 listed in list.dnswl.org]
Received: from exprod8og108.obsmtp.com (exprod8og108.obsmtp.com [64.18.3.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D40E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:41:35 -0700 (PDT)
Received: from mail-wg0-f43.google.com ([74.125.82.43]) (using TLSv1) by
	exprod8ob108.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCAK7n5FtzN+FVsl7NUYTZEEa7Zxhw72@postini.com;
	Mon, 22 Sep 2014 04:41:43 PDT
Received: by mail-wg0-f43.google.com with SMTP id y10so2760685wgg.26
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:41:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=KJyXdpq5zoYr5q+fyVtvDp03FmC17Lbbdf8J+yC3C24=;
	b=l/1ditK6ojtv1xuBOEiVHd1OIpU31uqOkvtgjWd7fxSR37Mtq6amt2t63MKSFe+tC7
	sqhOUaE4oJ3FGgjVXBANie+l1n7l52gl+ATkRUUOfhl3Dl1HYXfvx5fl7KRyG6phSqKV
	9padLIrkQHmfuC8WFMHenVZs9Q8AxtcG/A32Tp1raCAFebh+RP6qw2hKASNWsZyt1ZcZ
	dYLXVT3PSYaJDHDEnb55f1DRRcE7hSOOc589emf+2CAGbkuHPqshvJC5wV8ULRSYkY/z
	mXD5kJQD+Om7Bu97MkaeaDTDkcL8vGX9NrKF7LlSiTSy4GCNSG5TVZ8AfJmCsN1rBY2e
	tN5A==
X-Gm-Message-State: ALoCoQnIKewnk5Qmmys4Fc5deTBWkNM4uO1HYafW333J4Sg8ezYbdJsIMy9mbN5Uo0CZoC9oVZhe44TyrboJn36glmO4UjXJGCWyrxQ+qCsSrKWkD5LpmV2SGr5F6as+AENeIIgEDtMm4giDN1XFgELYezMaI2XRJQ==
X-Received: by 10.180.89.230 with SMTP id br6mr15114674wib.16.1411386093556;
	Mon, 22 Sep 2014 04:41:33 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.180.89.230 with SMTP id br6mr15114667wib.16.1411386093491;
	Mon, 22 Sep 2014 04:41:33 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 22 Sep 2014 04:41:33 -0700 (PDT)
In-Reply-To: <CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
Date: Mon, 22 Sep 2014 19:41:33 +0800
Message-ID: <CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 11:41:46 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba13bbe749f0503a5eebb

--e89a8f3ba13bbe749f0503a5eebb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Ross,

What poky version are you referring to? I'm using dora poky HEAD. Haven't
seen any krb5 recipe.
Please enlighten me.

Thanks,
Joseph

On Sat, Sep 20, 2014 at 8:25 AM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 19 September 2014 05:45, Joseph Andrew de la Pe=C3=B1a
> <jdelapena@lexmark.com> wrote:
> > ERROR: Nothing PROVIDES 'nativesdk-krb5' (but
> > virtual:nativesdk:poky/meta/recipes-support/curl/curl_7.32.0.bb DEPENDS
> or
> > otherwise requires it).
> >
> > Haven't seen a DEPENDS for krb5 in curl and openssl recipe.
> > Is there any update on curl recipe to fix this?
>
> Well, something is adding a dependency on krb5 to your curl recipe...
> if you have a recent poky (although that version of curl suggests that
> you don't) then using bitbake -e nativesdk-curl should tell you what
> is.
>
> (the dependency on nativesdk-krb5 is failing because krb5 doesn't have
> a manual -nativesdk recipe, or use BBCLASSEXTEND=3D"nativesdk" to
> magically generate one).
>
> Ross
>

--e89a8f3ba13bbe749f0503a5eebb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Ross,<div><br></div><div>What poky version are yo=
u referring to? I&#39;m using dora poky HEAD. Haven&#39;t seen any krb5 rec=
ipe.</div><div>Please enlighten me.</div><div><br></div><div>Thanks,</div><=
div>Joseph</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Sat, Sep 20, 2014 at 8:25 AM, Burton, Ross <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 19 September=
 2014 05:45, Joseph Andrew de la Pe=C3=B1a<br>
<span class=3D"">&lt;<a href=3D"mailto:jdelapena@lexmark.com">jdelapena@lex=
mark.com</a>&gt; wrote:<br>
&gt; ERROR: Nothing PROVIDES &#39;nativesdk-krb5&#39; (but<br>
&gt; virtual:nativesdk:poky/meta/recipes-support/curl/<a href=3D"http://cur=
l_7.32.0.bb" target=3D"_blank">curl_7.32.0.bb</a> DEPENDS or<br>
&gt; otherwise requires it).<br>
&gt;<br>
&gt; Haven&#39;t seen a DEPENDS for krb5 in curl and openssl recipe.<br>
&gt; Is there any update on curl recipe to fix this?<br>
<br>
</span>Well, something is adding a dependency on krb5 to your curl recipe..=
.<br>
if you have a recent poky (although that version of curl suggests that<br>
you don&#39;t) then using bitbake -e nativesdk-curl should tell you what<br=
>
is.<br>
<br>
(the dependency on nativesdk-krb5 is failing because krb5 doesn&#39;t have<=
br>
a manual -nativesdk recipe, or use BBCLASSEXTEND=3D&quot;nativesdk&quot; to=
<br>
magically generate one).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--e89a8f3ba13bbe749f0503a5eebb--
