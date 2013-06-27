Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BBEBE014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:40:35 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id l10so193199eei.30
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3HcwMdXYOoXFKaMt1E/mBZCn8o0dYRJkbRRrtQwohyo=;
	b=WEA+BpNu8Dy5wB9E+bTFlVhVl/ClUJS19Hbgv/5gfENiAUyQ4WbvWK6cTk9rrCpAtN
	OfHmDCb0Xq3Mpx14PH30UK2xYYgA3KDcoA78AExijht6i+ydvPI2jGpxahohhHlNfZW/
	HI0vODL9t2fwDnur18SwM9sueb6pOIlO20VDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=3HcwMdXYOoXFKaMt1E/mBZCn8o0dYRJkbRRrtQwohyo=;
	b=H6hYvP1/AkS9toQ2b4ALFiWdIjk/3i3bSt8q2Cf+iruk1cKF7Dg321zEj+rxJy+9As
	g7YwLXBhrQiA4R1NwYgYdwJvzhX/xDZFQytDtgeqGku8v6awzfv8wdOlmk/WCFJOxPC3
	zueMkbAi4shnBL7Bt44eCrhQhTJqusqfOpNgxctjGwQ9rGQ8xQOPxZiYidSiEvsnM1Hd
	FHHg3QJaZXYn5bIpMu0XStdly3dFIqGfWqCeTRG62Muzd3swkr4ez7l+byVSt+u6QLVc
	tLvjG2INagFih5SILtAh8mLNsoLX8P384ThbvJYZhZyt+GctC5pBbQn5KX+THATGQ3Wv
	jrsA==
MIME-Version: 1.0
X-Received: by 10.15.32.67 with SMTP id z43mr7766783eeu.24.1372318833913; Thu,
	27 Jun 2013 00:40:33 -0700 (PDT)
Received: by 10.223.160.197 with HTTP; Thu, 27 Jun 2013 00:40:33 -0700 (PDT)
In-Reply-To: <CAP71Wjwk=_B=p1WxT+svbDouZp2bX+aYW=at+Q_AOM7wGo+pFA@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
	<CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
	<CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
	<CAP71Wjwk=_B=p1WxT+svbDouZp2bX+aYW=at+Q_AOM7wGo+pFA@mail.gmail.com>
Date: Thu, 27 Jun 2013 00:40:33 -0700
Message-ID: <CA+gsK-qNiUyUB_+crccLb62qWyHD5z5emdjpHBOP7YsbyWVbNA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
X-Gm-Message-State: ALoCoQmBRVYeqS3eGASGxc7EySHAoXnz0yTDKhzgMkmh7qxi3nc84bEhLTplVzZ31MDbRQa/crb5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Thu, 27 Jun 2013 07:40:37 -0000
Content-Type: multipart/alternative; boundary=089e016350469d631a04e01de08d

--089e016350469d631a04e01de08d
Content-Type: text/plain; charset=ISO-8859-1

> not integrate with yocto directly. but use it to 'manage' the set of trees
> that are required when using OE/Yocto. The gumstix guys are using it, see
> [1], and we are moving toward it at linaro too, to manage our builds [2]
>
> [1] https://github.com/gumstix/Gumstix-YoctoProject-Repo
> [2] http://lists.linaro.org/pipermail/linaro-dev/2013-May/015998.html
>
> then for organization that might need it, repo can be integrated with
> gerrit too, but repo 'standalone' can still be used to manage set of trees.
>
>
Thanks for the input. That's a good idea.

Rudi

--089e016350469d631a04e01de08d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
not integrate with yocto directly. but use it to &#39;manage&#39; the set o=
f trees that are required when using OE/Yocto. The gumstix guys are using i=
t, see [1], and we are moving toward it at linaro too, to manage our builds=
 [2]</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">[1]=A0<a hr=
ef=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo" target=3D"_blan=
k">https://github.com/gumstix/Gumstix-YoctoProject-Repo</a></div><div class=
=3D"gmail_extra">
[2]=A0<a href=3D"http://lists.linaro.org/pipermail/linaro-dev/2013-May/0159=
98.html" target=3D"_blank">http://lists.linaro.org/pipermail/linaro-dev/201=
3-May/015998.html</a></div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">then for or=
ganization that might need it, repo can be integrated with gerrit too, but =
repo &#39;standalone&#39; can still be used to manage set of trees.</div>

<div class=3D"gmail_extra"><br></div></div>
</blockquote></div><br>Thanks for the input. That&#39;s a good idea.
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Rudi<=
/div></div>

--089e016350469d631a04e01de08d--
