Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.379.1632416792379125967
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 10:06:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VjNwJyyK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id i23so19260875wrb.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 10:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version;
        bh=nQZEfPPQ+FPTQVOMizjg3Bzt0Sb1KUrDyKwHO+t2KH0=;
        b=VjNwJyyK4TgwW7ANeN2nSmEmtkTymsAOroVRVECl+TBJGvyTWFrw+Dv2iG0NexsGSq
         aLD5xSbGtbQFc5INZr+ef09MqZky8L0VnUHL4YLXZoqwCIAr3QOaOxmlGCTW6ZGATWws
         wN9aFuMc8kY6TXYdlPAciB9xgHLUHW6J0ATpk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version;
        bh=nQZEfPPQ+FPTQVOMizjg3Bzt0Sb1KUrDyKwHO+t2KH0=;
        b=wTvUS3E06STzv5cY/lA3kTPFGIDYQAd1vwbMm1m8hI5xeFePLnSXaXDyGpPRMlj/6J
         EZrk/z+ScdJvpe4tYczbfy0UWMjVoGYOyRJ+mCQtX3S4XKrZz6oHcfEt7RFrhPwer448
         EfG1GtsqC2j1CdzQ5bQbNH8T2l8sawEa5zLTepehTorDYW5sDcDVrIR0KDcdxv2mKv7p
         QfYgEcIP4lJdSnXQbjDr131WBORpTsWhdeGu13+gYFroockLfX9emIq9uZowgHSmx12b
         E6JZbYWHqZSoql/E2ynHbyDbXxuSrp4SfIMTtB6e+8Uxb+4B6BxSaDwqWixiyRIbI2HV
         DYFA==
X-Gm-Message-State: AOAM533rE56TlVI5imlC2rRqS1j8i8U8OV/kemHdJkyPUX3Vf9OkYdqq
	KQZv/dBt3T4AntNpD/5vkxsuuA==
X-Google-Smtp-Source: ABdhPJwK+9QUJMhSrJEIIJ9hl22uNAPZiujZIUP+K07RvUxk2ek6S3aeZj0RFlIixcealbgXB2+4uw==
X-Received: by 2002:adf:f247:: with SMTP id b7mr6339902wrp.283.1632416790887;
        Thu, 23 Sep 2021 10:06:30 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:3a36:9e9a:ccb5:f067? ([2001:8b0:aba:5f3c:3a36:9e9a:ccb5:f067])
        by smtp.gmail.com with ESMTPSA id 4sm5347894wmv.42.2021.09.23.10.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 10:06:30 -0700 (PDT)
Message-ID: <8f626dca9d71d3b2f20e19fd3f6be9f0101c8e60.camel@linuxfoundation.org>
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 9/23/2021
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <trevor.gamblin@windriver.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: steve@sakoman.com, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>, 
 alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>, "Wold,
 Saul" <saul.wold@windriver.com>, "Surendran, Kiran"
 <kiran.surendran@windriver.com>,  Bruce Ashfield
 <bruce.ashfield@gmail.com>, "MacLeod, Randy" <Randy.MacLeod@windriver.com>
Date: Thu, 23 Sep 2021 18:06:29 +0100
In-Reply-To: <85d19597-9cd6-cef1-83cd-e2926b851e61@windriver.com>
References: <85d19597-9cd6-cef1-83cd-e2926b851e61@windriver.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-PN88vfbVujyVJ3dhNlWv"

--=-PN88vfbVujyVJ3dhNlWv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2021-09-23 at 11:40 -0400, Trevor Gamblin wrote:
> Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage
> Attendees: Alex, Bruce, Kiran, Randy, Richard, Ross, Saul, Stephen, Steve,
> Trevor
> ARs:
> - Steve to review failure logs for 14557 and post any that might be useful
> - Richard to have a look at bug 11801
I did look at it. It was using a modified oe-selftest with threading instead of
multiprocess. We're not using that so I closed it.

Cheers,

Richard



--=-PN88vfbVujyVJ3dhNlWv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>

  </head>
  <body><div>On Thu, 2021-09-23 at 11:40 -0400, Trevor Gamblin wrote:</div>=
<blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729f=
cf solid;padding-left:1ex"><div class=3D"moz-text-html" lang=3D"x-unicode">=
<p><b>Wiki: </b><a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yoc=
toproject.org/wiki/Bug_Triage" moz-do-not-send=3D"true">https://wiki.yoctop=
roject.org/wiki/Bug_Triage</a></p><p><b>Attendees:</b> Alex, Bruce, Kiran, =
Randy, Richard, Ross, Saul, Stephen, Steve, Trevor<br></p><p><b>ARs:</b></p=
></div><p>- Steve to review failure logs for 14557 and post any that might =
be useful</p><p>- Richard to have a look at bug 11801<br></p></blockquote><=
div>I did look at it. It was using a modified oe-selftest with threading in=
stead of multiprocess. We're not using that so I closed it.</div><div><br><=
/div><div>Cheers,</div><div><br></div><div>Richard</div><blockquote type=3D=
"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-le=
ft:1ex"></blockquote><div><br></div><div><span></span></div></body></html>

--=-PN88vfbVujyVJ3dhNlWv--
