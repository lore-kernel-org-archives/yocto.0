Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3219DE00CED; Thu,  2 Jun 2016 06:29:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 027E5E00CE1
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 06:29:41 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id k6so1149513qta.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 06:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=wvhY8ibPlR5SIYeGU9jq+VFZk8osuHhkd30Ojf382KY=;
	b=hZYZMDmkvn2CSnSV0nUmGYDaiBKTfPZXlSvlng5VYHI4yvDtl8lQitlUQDFh9s146t
	AprndnBYU2tF7NiAOdw1zsk/x7ZXdeRVYg5BrESzRt9cxQsYUgBmvgXRcscSeVO3Bmnc
	B4qCVcZHzCnayzL7zIZEXVYhMzZKzaOdWk7e8UIhgcX9in2m4+xAMu+1cH/NTYFUH3aW
	JSuECfWTvz/BG6t0IN8ql7VcyNpix6pqXt0AataIVRCR34ScsQpKnfSOKt2XeBRTdL3k
	28cG9oZ7gB9KHIfhY2wwRbYKktOyUuw4giIXno1AxkZ0lXtEBOqB4KlCiyt4NaUoQ389
	uRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=wvhY8ibPlR5SIYeGU9jq+VFZk8osuHhkd30Ojf382KY=;
	b=Y8ASwVGK0EhXSF0wVSc5f8Gc8DBLvxM0Y12YFLN8wIb1+RSKJ56AnZKIKmjhZGHJVu
	vzOWTH6HGPgMUeQN/Pc4deK1zyWfg0K9dkUfTvn4PslvIYlHyl8v4aObBcwYbQwJzfoe
	L09nDrrtN6lHNEulBw9QgcY11LRNoQYDCu+Ce+Gaz8a6OqFhe69kqwiYluNtdiaX1dkO
	yOzQLGCfnV8OMdkK86iEAToX5Va7cd6XWHO7krb03wrMoMuO09KCOLRvtR3n+tR5Y+xX
	NPy4HZZ9Ep8ZJ12hFgrmF9zVVtM9DCzMhSQ1BlQHiW81edLQ51SVf733QUzMl//4I0x0
	FVCQ==
X-Gm-Message-State: ALyK8tKTmvKqfg/eUv6H9ONUG9hbc8RSdo1VzSvgXOMiBsXthMKtpc/5YeyL668yQDNKb9nKBYCh7f8X/Y3E0g==
MIME-Version: 1.0
X-Received: by 10.237.37.67 with SMTP id w3mr9040937qtc.75.1464874180844; Thu,
	02 Jun 2016 06:29:40 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Thu, 2 Jun 2016 06:29:40 -0700 (PDT)
In-Reply-To: <CAJTo0LZp-Dwy29Jgn7ubLbsmqp=_wsk9nf9O6Eu+OXKyuj71aQ@mail.gmail.com>
References: <OF6F7FAC46.19065A9E-ONC1257FC3.004116D5-C1257FC3.0041E704@esa-grimma.de>
	<CAJTo0LZp-Dwy29Jgn7ubLbsmqp=_wsk9nf9O6Eu+OXKyuj71aQ@mail.gmail.com>
Date: Thu, 2 Jun 2016 16:29:40 +0300
Message-ID: <CAEeWubJg3DeqQf0qxywyr7B-y1_zejZ3ziJqcS9nwpkkchZO=A@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set a cmake cache variable to a spezific value?
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
X-List-Received-Date: Thu, 02 Jun 2016 13:29:45 -0000
Content-Type: multipart/alternative; boundary=001a113f3bd230a79005344b99b5

--001a113f3bd230a79005344b99b5
Content-Type: text/plain; charset=UTF-8

Hi,
Just add to recipe:

inherit cmake

EXTRA_OECMAKE += " -DVARIABLE_NAME=value"

On Thu, Jun 2, 2016 at 4:24 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> 2016-05-30 12:59 GMT+01:00 <S.Jaritz@esa-grimma.de>:
>
>> I want to build a recipe for a cmake based application. To make it run I
>> need to set a cached cmake variable.
>>
>
> EXTRA_OECMAKE += "-DVARIABLE_NAME=value"
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113f3bd230a79005344b99b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br></div>Just add to recipe:<br><br></div>in=
herit cmake<br><div><br>EXTRA_OECMAKE +=3D &quot; -DVARIABLE_NAME=3Dvalue&q=
uot;<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Thu, Jun 2, 2016 at 4:24 PM, Burton, Ross <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-05-30 12:59 G=
MT+01:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@esa-grimma.de" t=
arget=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span>:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><font face=3D"sans-serif" size=3D"2">I want to build a recip=
e for a cmake
based application. To make it run I need to set a cached cmake variable.</f=
ont>
<br></blockquote></div><br>EXTRA_OECMAKE +=3D &quot;-DVARIABLE_NAME=3Dvalue=
&quot;</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></d=
iv>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a113f3bd230a79005344b99b5--
