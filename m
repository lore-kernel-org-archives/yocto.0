Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.146.1580489532831526321
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2020 08:52:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastree3d-com.20150623.gappssmtp.com header.s=20150623 header.b=QN8P5zm+;
 spf=none, err=SPF record not found (domain: fastree3d.com, ip: 209.85.128.52, mailfrom: adrian.fiergolski@fastree3d.com)
Received: by mail-wm1-f52.google.com with SMTP id a9so9472650wmj.3
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2020 08:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastree3d-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=SNneHdKL6dyvLohNz4EbFOzHg/isrwpGkZZEEmkI6V8=;
        b=QN8P5zm+mJnQyUlZlMfec5IpDCIYzF0j9WGIivy22bqd0jJq92ErYPBRdhH80zeVH2
         5/Z8iqLnIMb3bDK6tm2wxgzeq8C1/AIeBGAcovlNqEYHBvRs9EqJXL5ujuacUY/xO+u1
         NFXlzw1rArJys+zVaUs/4HPdkpRb6SFwaSUx5TvNhI9a0UDCxUbZTcVy0RRfW0rFgO+K
         j3f/fcSb/7po/fr1anItj8YyWOgBLzDFysLeTaVPheX2dS7iGqp0BwUyofpyTE+0c1PL
         RQaDrZvl+5GmtxqQy/bEBoXXvspWHODS7D5PIuzB9A+GItWfwoS5QaSuSokj/4EClt1J
         mCRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=SNneHdKL6dyvLohNz4EbFOzHg/isrwpGkZZEEmkI6V8=;
        b=Xp7MCDSV9mkGIedNsiUP/09nClU5LBrKKfc0rnopW496WS7xIwWMcWOrLxzOLtPPZ3
         fHPn+IdTx0yr7Rw6d8Wdow8B/hxuscHE+IGVvd4JtAkjhHPO/79TcSRomepvEMOvNC5r
         ZnzJ+3iaSU0BmvytioJo1/G8r+mKLwRO1qaFY+KEzEePOaTSy8HLazPjAjXOs3CGL0f2
         2UiNYbJf+V3ZfdiSLQjOREOhrnC29tR8jTQLVY7fCihit5AnYBlSynWv3JJ/qBhgdh+W
         8QcQ4lH4wm3DfGwZPCSKrysYmDqUcESrzeMa8pIWJrRxpsNWxsKVqZ4Uxg6WsxMsWCIS
         W6fg==
X-Gm-Message-State: APjAAAV/L1bQX0OJgqByiCCz2M2KCWDTsvfk9lBQQP8yPjIE4jp3I/DK
	K6T0S/UfmoZVzT1DsTXru1zym99f0Q==
X-Google-Smtp-Source: APXvYqzkrWVnPH18SLUxyDGgkOlittvxXRXY5EfCevcooeqOsMrTXpFppWzTIn1sbcVdgfwZpZswpA==
X-Received: by 2002:a1c:a796:: with SMTP id q144mr13465362wme.6.1580489530878;
        Fri, 31 Jan 2020 08:52:10 -0800 (PST)
Return-Path: <adrian.fiergolski@fastree3d.com>
Received: from [192.168.33.195] (fastree1.epfl.ch. [128.179.67.81])
        by smtp.gmail.com with ESMTPSA id w13sm12405710wru.38.2020.01.31.08.52.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 08:52:10 -0800 (PST)
From: "Adrian" <adrian.fiergolski@fastree3d.com>
X-Google-Original-From: Adrian Fiergolski <Adrian.Fiergolski@fastree3d.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-qt5, zeus-next, python3-pyqt5] QtChart can't be imported
Message-ID: <8b4b1645-3f8a-ab7e-5aa6-a4b62dfb98f0@fastree3d.com>
Date: Fri, 31 Jan 2020 17:52:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------F01ECEBCBE2D227340B9A7B7"
Content-Language: en-GB

--------------F01ECEBCBE2D227340B9A7B7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I use python3-pyqt5 from meta-qt5 (in zeus-next). I get an error in
python3 when I try to import QtChart module (from PyQt5 import QtChart).
Has anybody experience the same issue and knows a fix? The deployed
image comes with qtchart packages.

I have created an issue on the layer's issue tracker (link
<https://github.com/meta-qt5/meta-qt5/issues/276>), but so far no reply.

Regards,

Adrian


--------------F01ECEBCBE2D227340B9A7B7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>I use python3-pyqt5 from meta-qt5 (in zeus-next). I get an error
      in python3 when I try to import QtChart module (from PyQt5 import
      QtChart). Has anybody experience the same issue and knows a fix?
      The deployed image comes with qtchart packages.</p>
    <p>I have created an issue on the layer's issue tracker (<a
        moz-do-not-send="true"
        href="https://github.com/meta-qt5/meta-qt5/issues/276">link</a>),
      but so far no reply.<br>
    </p>
    <p>Regards,</p>
    <p>Adrian<br>
    </p>
  </body>
</html>

--------------F01ECEBCBE2D227340B9A7B7--
