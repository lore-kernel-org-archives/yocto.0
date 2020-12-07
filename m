Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.358.1607372951857979007
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 12:29:12 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@fridu.net header.s=google header.b=Tz+/SUWo;
 spf=softfail (domain: fridu.net, ip: 198.145.29.25, mailfrom: dominig.arfoll@fridu.net)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A98A338C1175
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2020 20:29:11 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id z7so14077842wrn.3
        for <yocto@yoctoproject.org>; Mon, 07 Dec 2020 12:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fridu.net; s=google;
        h=from:subject:message-id:date:user-agent:mime-version:to
         :content-language:content-transfer-encoding;
        bh=un2xjWh8G1abgYjh+rHybh4Ftcwn5GB0Yq64iSJw6tY=;
        b=Tz+/SUWoI4PuAl43U6Jvcxg+iGBQupA+yoEW8r3LO170JKEaDzqevkGFlTqky6iyss
         Uicmiz1q2K5AB8yjeW0HoHihUytp2qhwMawV9iiUgQobgxUCcuiyNxoVJIlRtKBe5frc
         N35ZaQ0ev1wp0zR+xXUTJ4cSpDgQMPQg4h7Eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:message-id:date:user-agent
         :mime-version:to:content-language:content-transfer-encoding;
        bh=un2xjWh8G1abgYjh+rHybh4Ftcwn5GB0Yq64iSJw6tY=;
        b=FgWhWU+Q6SI6WZR5vadUS3vFjf26u3i9sMirLyzIEHqnFXF9pBO3kdXgr066gQxEX9
         VgHgeBAgtdbp4VeS8dj/hwQ3oYRiBrRNUy/nnl8tdfdRM4ctcaaV5lzgc6zGrEdMCure
         cKZOHuReJfHOIckphOYTiMdzovEK2Iz9GQrHVnl3ieR0WHCYBeArYEiuqihF94kTz2pd
         Mf0gqhSVHMmhvlkge1AQi/fUfBJ2y1OGtsyCfW4EUq3SimxnDuMFNFEaU+YjfO95VG9K
         JVOlyVt23213jzDT7Y96lVZ3O2P9rmEZEkeWQyT6kaynXZiH5vaOb/NAuxvY9FCOLaRa
         oBdQ==
X-Gm-Message-State: AOAM5315PGazhrVSQmoy1TMwRA4Y7WXqxSXofEKGXzJ7Z8VvjFZnTYOp
	SXEtG5tx4UGu2cQrwMfQhLTjpg==
X-Google-Smtp-Source: ABdhPJxve8pxVMu0HkYf4IQjHjFrDo1XjW5xUin2TxCazP2i6j16cvP45jxr0G0onOm0Shag7sSpoQ==
X-Received: by 2002:adf:ed46:: with SMTP id u6mr21308555wro.287.1607372950330;
        Mon, 07 Dec 2020 12:29:10 -0800 (PST)
Received: from [10.0.0.103] (136.163.162.46.arpa.wibox.fr. [46.162.163.136])
        by smtp.gmail.com with ESMTPSA id v64sm454877wme.25.2020.12.07.12.29.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 12:29:09 -0800 (PST)
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Subject: IoT Long Term support Linux - Opening to the community of Redpesk@SEA the open source "Marine Grade Linux" by IoT.bzh.
Message-ID: <83685f06-558c-5307-6087-306ce0f01baf@fridu.net>
Date: Mon, 7 Dec 2020 21:29:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
To: undisclosed-recipients: ;
Content-Type: text/html; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <i><font color=3D"#5f5555">Hello,<br>
        As Marine requirement is very very close of any IoT (very) long
        term Linux requirement with high level of security and
        application isolation, I thought that this webinar from the
        Linux Fundation might be of interest to some of you...</font></i>
    <ul>
      <li><i><font color=3D"#5f5555"></font></i>The 16th december 17:00
        (CET)<br>
      </li>
      <li>Free Registration <a class=3D"moz-txt-link-freetext"
href=3D"https://www.automotivelinux.org/event/agl-member-webinar-aglsea-a=
-marine-grade-linux/">https://www.automotivelinux.org/event/agl-member-we=
binar-aglsea-a-marine-grade-linux/</a></li>
    </ul>
    <p><i><font color=3D"#5f5555">The Marine Grade Linux project by
          IoT.bzh addresses smart ship provides a customized flavor of
          AGL that addresses marine specific requirements. For
          signaling, NMEA2000, CanOpen, Ethercat and Modbus were added.
          Cloud connectivity is designed to handle random connectivity
          with a balance of 4/5G and satellite data link. Some core
          marine services as nautical charts, safe routing, or radar are
          still under development and should be added in the near
          future. Last but not least, a 30 years old ship is pretty
          common and maintenance/update on 15 years is required. <br>
        </font></i></p>
    <p><i><font color=3D"#5f5555">This presentation exposes the outcome o=
f
          the three marine projects IoT.bzh is currently developing for
          this industry. It starts exposing gaps in business models,
          then exposes some of the technical specificities (signaling,
          SOTA, LTS, =E2=80=A6). Finally it introduces redpesk@sea the
          ready-to-use =E2=80=9CMarine Grade Linux=E2=80=9D version that =
IoT.bzh will
          propose as Christmas gift to the maritime open-source
          community. </font></i> </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Dominig ar Foll
Senior Software Architect</pre>
  </body>
</html>
