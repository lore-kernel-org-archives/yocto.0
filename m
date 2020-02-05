Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.6505.1580904605092383649
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 04:10:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastree3d-com.20150623.gappssmtp.com header.s=20150623 header.b=aY3603Bf;
 spf=none, err=SPF record not found (domain: fastree3d.com, ip: 209.85.128.45, mailfrom: adrian.fiergolski@fastree3d.com)
Received: by mail-wm1-f45.google.com with SMTP id a5so2234015wmb.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2020 04:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastree3d-com.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=sOdlgUoYIAXe0x5rYOjWdTyaHGRHPr2f5dTII+Hhcwc=;
        b=aY3603BfLSGDtzWj26og0IjaTOqG7vmA8zwQsc2yBfCPsqUQdiF/5juNQw5bodSXZV
         n083p7573yeTvEeuChjtdLMmwYLsaqG5vk1IkfGXVBt+f8zFTayiVcW2e/LEFgtEhywS
         x/qwQZy8qp7TEqQGfOULNcwYR0Hi9O5s4kPdJe9G6vcBYlWT+0tyvnkIJ+V9Az/IAbmZ
         pXRObdT0SjwfU13JChyTIZNQmtXntSkPt4F/0HbKIOotpN5Gk82CZU7lu4lS0dXzMNRk
         YMrvbFfG43McDlRzeH7NImCxqJVmDN9TRX0bFucEKh211DCDREuauYuXoQ95uWbGthBC
         L9HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=sOdlgUoYIAXe0x5rYOjWdTyaHGRHPr2f5dTII+Hhcwc=;
        b=INs4KPFKn9kQQpFFHIUtBs0YEejpYi98uNAur0paPwwAGlxA3HrdeWeD2KbzIpVDBk
         wlyFWrhaaYA6YEvs680hFBEF+i1psz5zdYgIXi0U/YItURmK3HmRUcUiwIncVE1eDfaY
         eM8yyjo3xCD+/rheC7MVjepB5AHseuzRrswqHRVqtCPBFY2t4SdMvrM/kw7sbNICQMvh
         buwsWc0c6UIO9PwkBVGd3BvZ6SX2CfZjQj+J/3VnVM9a3/CeallYKvIaYjxKnuTxlWvF
         0rVSdPZ914PA0OLmBcVGS5tdi+RcsXB3aTf4HtSA4U1ppSkrc9EeyuEJWm+xTGHHceoz
         OY4w==
X-Gm-Message-State: APjAAAVHW48nnimhSsIxVITIsB7PDI9/kMJ2azTKlcdHbJE8wA/aLWb5
	oZUZ4n5tIldBczgQu+5tui+qALfa9g==
X-Google-Smtp-Source: APXvYqwbmGynpzLS0Kz8MC9kbQ+RRe77aYLRePggqHh+QWoPCYvMtdgbF8X9eNGhpyE03qDAZKi3yQ==
X-Received: by 2002:a7b:cf35:: with SMTP id m21mr5743215wmg.144.1580904603084;
        Wed, 05 Feb 2020 04:10:03 -0800 (PST)
Return-Path: <adrian.fiergolski@fastree3d.com>
Received: from [192.168.33.195] (fastree1.epfl.ch. [128.179.67.81])
        by smtp.gmail.com with ESMTPSA id c141sm8201256wme.41.2020.02.05.04.10.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 04:10:02 -0800 (PST)
From: "Adrian" <adrian.fiergolski@fastree3d.com>
X-Google-Original-From: Adrian Fiergolski <Adrian.Fiergolski@fastree3d.com>
Subject: Re: [meta-qt5, zeus-next, python3-pyqt5] QtChart can't be imported
To: yocto@lists.yoctoproject.org
References: <8b4b1645-3f8a-ab7e-5aa6-a4b62dfb98f0@fastree3d.com>
Message-ID: <3fbb6078-883c-66ac-8e6d-39f7571b76c6@fastree3d.com>
Date: Wed, 5 Feb 2020 13:10:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8b4b1645-3f8a-ab7e-5aa6-a4b62dfb98f0@fastree3d.com>
Content-Type: multipart/alternative;
 boundary="------------6E2716A8D2D7407DE39EE2B6"
Content-Language: en-GB

--------------6E2716A8D2D7407DE39EE2B6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

I turn out PyQtChart was simply missing in the meta-qt5 layer.
I have created a recipe which adds it and hopefully will be merged
<https://github.com/meta-qt5/meta-qt5/pull/281> to the upstream.

Regards,

Adrian

On 31.01.2020 17:52, Adrian Fiergolski wrote:
>
> Hi,
>
> I use python3-pyqt5 from meta-qt5 (in zeus-next). I get an error in
> python3 when I try to import QtChart module (from PyQt5 import
> QtChart). Has anybody experience the same issue and knows a fix? The
> deployed image comes with qtchart packages.
>
> I have created an issue on the layer's issue tracker (link
> <https://github.com/meta-qt5/meta-qt5/issues/276>), but so far no reply.
>
> Regards,
>
> Adrian
>

--------------6E2716A8D2D7407DE39EE2B6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>I turn out PyQtChart was simply missing in the meta-qt5 layer.<br>
      I have created a recipe which adds it and hopefully will be <a
        href="https://github.com/meta-qt5/meta-qt5/pull/281"
        data-hovercard-type="pull_request"
        data-hovercard-url="/meta-qt5/meta-qt5/pull/280/hovercard"
        moz-do-not-send="true">merged</a> to the upstream.</p>
    <p>Regards,</p>
    <p>Adrian<br>
    </p>
    <div class="moz-cite-prefix">On 31.01.2020 17:52, Adrian Fiergolski
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:8b4b1645-3f8a-ab7e-5aa6-a4b62dfb98f0@fastree3d.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hi,</p>
      <p>I use python3-pyqt5 from meta-qt5 (in zeus-next). I get an
        error in python3 when I try to import QtChart module (from PyQt5
        import QtChart). Has anybody experience the same issue and knows
        a fix? The deployed image comes with qtchart packages.</p>
      <p>I have created an issue on the layer's issue tracker (<a
          moz-do-not-send="true"
          href="https://github.com/meta-qt5/meta-qt5/issues/276">link</a>),
        but so far no reply.<br>
      </p>
      <p>Regards,</p>
      <p>Adrian<br>
      </p>
    </blockquote>
  </body>
</html>

--------------6E2716A8D2D7407DE39EE2B6--
