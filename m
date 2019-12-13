Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1876.1576269655776211236
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 12:40:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=R2nmhzsB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34AE7E01100; Fri, 13 Dec 2019 12:40:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E01FE00D00;
	Fri, 13 Dec 2019 12:40:54 -0800 (PST)
Received: by mail-pj1-f50.google.com with SMTP id w5so198298pjh.11;
        Fri, 13 Dec 2019 12:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=a+JR916gcACUVU9CKkEpwp1j/hOEgbPW47MNhtr0bh4=;
        b=R2nmhzsB0W3lIXmkDpq9ZMB4RdPFhb8CRRJbBKwe14v3Guq7WfRTqADnsrVv/WKsO5
         c0kLo+Mx/v5z2Litu5GL/ZTgCJpcDoekGRUj44c9ze9ew5JI04Ito2GBdeh6dbOnOFGU
         P8IGSdFqOsuynguPuLatXl2Fl9nvRqIJNH3le4yTzFj7DiV2GA+BPRncEyNiGHRyMlBD
         Tcz1LbumGvNx6ZN5SYV60webwdJhQBZDx33KvXeqPZUevtqi+gsTEN8AN4CiDd2xunFu
         QkEY2wexFth78R36Q04xVTDPJiUSoB8jsHDcp8iYQZ9cXUg4PBfwf8zEZquq8n+NQM4H
         s4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=a+JR916gcACUVU9CKkEpwp1j/hOEgbPW47MNhtr0bh4=;
        b=PtB6vykugjw5AyqFOtEgyY9mQP5ZsQkwzrIGk6XRBrVJTztNNcv+NAUAILIn6Ab6AV
         VRYRPWR2QWYbuQBgURog8SrhSKPjB/uX3xxrfV0NWvx5QAvC6hhwhJc0h6NVCEnQiQFG
         0w8YgOYoKkg7ni6sYye2983HgJCCWJ8e/OhH6M2Jah/jDCpgxsMPEwjd80YWl0XNvDE2
         poz7Wqe6ln2oVRaW3nl5jRYai8z8Jl2V3vJmzRMtommZmnhMMszG5Y3Xe+itaaeqpnNt
         WtHJcaZLDPigcoP0y8TNyKNS27E4t3ggccGiVOcrhbcCdxESlO9YWc2D+fLEnf4kRvOx
         Ws1w==
X-Gm-Message-State: APjAAAV2v3zT6gtUYA4J5ianym+T9m8LhkhxsCL82la8N0EVnxNKqjyV
	tdpNP9nSqFbRwODtN9GW79HT3YmifLA=
X-Google-Smtp-Source: APXvYqwOYIm8f5sV9vUIf/WppGIb3YM/V5qiWh3aj55DAtYFm+M4Y5bopj7YonyTDoi0sPlyla0TnA==
X-Received: by 2002:a17:902:9a04:: with SMTP id v4mr1445327plp.192.1576269653524;
        Fri, 13 Dec 2019 12:40:53 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:61a6:377d:99d6:41b5? ([2601:202:4180:a5c0:61a6:377d:99d6:41b5])
        by smtp.gmail.com with ESMTPSA id c18sm12043077pgj.24.2019.12.13.12.40.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Dec 2019 12:40:52 -0800 (PST)
Subject: Re: [yocto-infrastructure] Data center routing issue affecting downloads.yoctoproject.org and Autobuilder
To: Michael Halstead <mhalstead@linuxfoundation.org>,
 yocto-infrastructure@yoctoproject.org,
 Yocto Project Discussion <yocto@yoctoproject.org>
References: <CADfgfoaRizwCAC6GadRLfFcaGQ-uGzyEqwTB_mdD2SeHCC07Tw@mail.gmail.com>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <5f35c463-1c98-f2b1-38c9-5b4b5401a7fc@gmail.com>
Date: Fri, 13 Dec 2019 12:40:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADfgfoaRizwCAC6GadRLfFcaGQ-uGzyEqwTB_mdD2SeHCC07Tw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------162FAA6DAB33F2E292FED4E2"
Content-Language: en-US

--------------162FAA6DAB33F2E292FED4E2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

thanks for the update.

- armin

On 12/13/19 11:54 AM, Michael Halstead wrote:
> Our colo provider has identified the routing equipment that was the
> source of the problem and is working on configuring the replacement. We
> expect that full service will be restored within the next hour or so.
>
> I will follow up once this happens, plus you can follow this issue at
> the following page:
>
> https://status.linuxfoundation.org/incidents/w4ncns4hyxgg
>
> Until the repair is complete=C2=A0downloads.yoctoproject.org
> <http://downloads.yoctoproject.org/>,=C2=A0state.yoctoproject.org
> <http://state.yoctoproject.org/>,=C2=A0autobuilder.yocto.io
> <http://autobuilder.yocto.io/>, and the typhoon autobulder workers are
> not available.
>
> --=20
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#156): https://lists.yoctoproject.org/g/yocto-infras=
tructure/message/156
> Mute This Topic: https://lists.yoctoproject.org/mt/68538761/3616698
> Group Owner: yocto-infrastructure+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto-infrastructure/unsu=
b  [akuster808@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--------------162FAA6DAB33F2E292FED4E2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    thanks for the update.<br>
    <br>
    - armin<br>
    <br>
    <div class=3D"moz-cite-prefix">On 12/13/19 11:54 AM, Michael Halstead
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADfgfoaRizwCAC6GadRLfFcaGQ-uGzyEqwTB_mdD2SeHCC07Tw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Our colo provider has identified the routing equipment that
          was the<br>
        </div>
        <div>source of the problem and is working on configuring the
          replacement. We<br>
          expect that full service will be restored within the next hour
          or so.<br>
          <br>
          I will follow up once this happens, plus you can follow this
          issue at<br>
          the following page:<br>
        </div>
        <br>
        <div><a
            href=3D"https://status.linuxfoundation.org/incidents/w4ncns4h=
yxgg"
            moz-do-not-send=3D"true">https://status.linuxfoundation.org/i=
ncidents/w4ncns4hyxgg</a><br>
        </div>
        <div><br>
        </div>
        <div>
          <div>Until the repair is complete=C2=A0<a
              href=3D"http://downloads.yoctoproject.org/" target=3D"_blan=
k"
              moz-do-not-send=3D"true">downloads.yoctoproject.org</a>,=C2=
=A0<a
              href=3D"http://state.yoctoproject.org/" target=3D"_blank"
              moz-do-not-send=3D"true">state.yoctoproject.org</a>,=C2=A0<=
a
              href=3D"http://autobuilder.yocto.io/" target=3D"_blank"
              moz-do-not-send=3D"true">autobuilder.yocto.io</a>, and the
            typhoon autobulder workers are not available.</div>
          <font color=3D"#888888">
            <div><br>
            </div>
            <div>-<span style=3D"white-space:pre-wrap">- </span></div>
          </font>
          <pre cols=3D"72" style=3D"white-space:pre-wrap;color:rgb(136,13=
6,136)">Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer</pre>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#156): <a class=3D"moz-txt-link-freetext" href=3D"http=
s://lists.yoctoproject.org/g/yocto-infrastructure/message/156">https://li=
sts.yoctoproject.org/g/yocto-infrastructure/message/156</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/68538761/3616698">https://lists.yoctoproject.org/mt/=
68538761/3616698</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto-i=
nfrastructure+owner@lists.yoctoproject.org">yocto-infrastructure+owner@li=
sts.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto-infrastructure/unsub">https://lists.yoctoproject.or=
g/g/yocto-infrastructure/unsub</a>  [<a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------162FAA6DAB33F2E292FED4E2--
