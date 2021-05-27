Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web11.7454.1622125844434354885
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 07:30:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=No+37s48;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id z3so937667oib.5
        for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 07:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=HpFdBWdBPTurtDNGAsepUYub0b+AymPQEl+h1g+zzmQ=;
        b=No+37s48ruxbguJe1qD7XGWdr4xoXRh3wd2fWUOtEkabSw/Mxdex4KfJdbmjWXLDBp
         9+TxNbsKWXMT+BbLjy44qv+AhLW1e7sUPGXhVd8ypmoe8hPPvbZrKq0CoxoqmtPh5RiI
         o+NxkBfGNRXPYifMkBMchs+O0oqD3i5J9d9ISR797DPV4A2k3hhPK1BShQqqXa3HlN3h
         H4aMlSIEi+fTWwh/MFBwqsNdDfBFMdTVnb2XnIb/vyfc84+CsbCAkmRnMauoeaCTvs/p
         bTh/PmvS8d4yqhUydAYPgnf+e0d9e9O/PmJy1bRTbOWf2NoshqKRuWgXmsM+2NcSJxY0
         WkQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=HpFdBWdBPTurtDNGAsepUYub0b+AymPQEl+h1g+zzmQ=;
        b=skV0fwMiWY/oUDLgAKzgFUzIUAeVWb2npJ89PYb0J42fS3X/B1Gdj85cArz8cscuw0
         1CMDSqA39XS7UlYikFMM77RQ56kJ5JZEbSTTnsjPCKxN9Z2JDY93qMoks+0Z2XA8Xq2P
         Fg2Qd2nXIDRTGDLxxyZ/mLaybkICtCjizdmwFLiTkjoFfqsA/o8/0u88uLAsgKz/22b8
         sJE2Kc19XvWS6lWBtfvstITxXMrvmKAGdM+ImGoefHCAbnJe2qr+qbFf0BGw6fxMzpe+
         YVLq9aRG1XAGG9x2FB/TT9AQrTfc9ZMupbNO6OHj5LO8/ieAsk+D4Gu1UPS/mZDrWdGS
         l03Q==
X-Gm-Message-State: AOAM533yqsVxpj8RhYHDvMlZETVdhGPqMBaD1+Ahhwir5g14qAXEvz5A
	T1d2tv/t5RfwLnW45l5QrsHSwsp7U+s=
X-Google-Smtp-Source: ABdhPJx0LM2n4n+HDXdUBydilwxNaTBkUH4L/WJaryn3rWUKwUN7hYMsE0nL/jsQr41YzZz4MO1g2A==
X-Received: by 2002:a05:6808:1308:: with SMTP id y8mr2578942oiv.45.1622125843479;
        Thu, 27 May 2021 07:30:43 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id o14sm502256oik.29.2021.05.27.07.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 07:30:43 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] Making a recipe that enables a systemd service it doesn't provide
To: =?UTF-8?Q?Fran=c3=a7ois_GOUDAL?= <francois.goudal@airmont.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <4DC83B72-2CFE-4F0B-B5A8-9100C502535E@airmont.com>
Message-ID: <3029a0c6-2a35-4ce3-8643-335baa21ba90@gmail.com>
Date: Thu, 27 May 2021 09:30:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4DC83B72-2CFE-4F0B-B5A8-9100C502535E@airmont.com>
Content-Type: multipart/alternative;
 boundary="------------CE3F9E3E3422D06E3C88DA59"
Content-Language: en-US

--------------CE3F9E3E3422D06E3C88DA59
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

It might be easier to manually enable the service with a symbolic link 
instead of using systemd.bbclass with something like:

do_install() {

   install -Dm 755 ${D}${systemd_unitdir}/system/multi-user.target.wants/

   ln -s ${systemd_unitdir}/system/openvpn@.service 
${D}${systemd_unitdir}/system/multi-user.target.wants/openvpn@test.service

}

NOTE: I didn't explicitly test this

On 5/27/21 9:17 AM, François GOUDAL wrote:
> Hello,
>
> I am struggling with something I couldn’t find any solution for so far.
>
> I am trying to make a very simple recipe that does this:
> - Drop an openvpn configuration file in /etc/openvpn/test.conf
> - Make the systemd service openvpn@test.service enabled by default
>
> The recipe itself depends on openvpn, and so, it doesn’t, by itself, provide the openvpn@.service , which comes with openvpn.
>
> Dropping the openvpn configuration file in the rootfs is easy, but I can’t manage to make the recipe to enable the service.
> I’ve tried adding this to my recipe:
>
> inherit systemd
> SYSTEMD_AUTO_ENABLE = "enable"
> SYSTEMD_SERVICE_${PN} = "openvpn@test.service"
>
> But bitbake fails on this recipe with the message below:
>
> ERROR: test-openvpn-config-1.0-r0 do_package: SYSTEMD_SERVICE_test-openvpn-config value openvpn@test.service does not exist
>
> I believe this is caused by the fact that the service file is not part of the files installed by the recipe itself, but it is not meant to be anyway.
>
> Is there a (clean) way to achieve this ?
>
> Thanks in advance
>
>
>
>
> 
>

--------------CE3F9E3E3422D06E3C88DA59
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><tt>It might be easier to manually enable the service with a
        symbolic link instead of using systemd.bbclass with something
        like:<br>
      </tt></p>
    <p><tt>do_install() {</tt></p>
    <p><tt>  install -Dm 755
        ${D}${systemd_unitdir}/system/multi-user.target.wants/<br>
      </tt></p>
    <p><tt>  ln -s ${<a class="moz-txt-link-abbreviated" href="mailto:systemd_unitdir}/system/openvpn@.service">systemd_unitdir}/system/openvpn@.service</a>
${D}${<a class="moz-txt-link-abbreviated" href="mailto:systemd_unitdir}/system/multi-user.target.wants/openvpn@test.service">systemd_unitdir}/system/multi-user.target.wants/openvpn@test.service</a><br>
      </tt></p>
    <p><tt>}</tt></p>
    <p><tt>NOTE: I didn't explicitly test this<br>
      </tt></p>
    <div class="moz-cite-prefix">On 5/27/21 9:17 AM, François GOUDAL
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:4DC83B72-2CFE-4F0B-B5A8-9100C502535E@airmont.com">
      <pre class="moz-quote-pre" wrap="">Hello,

I am struggling with something I couldn’t find any solution for so far.

I am trying to make a very simple recipe that does this:
- Drop an openvpn configuration file in /etc/openvpn/test.conf
- Make the systemd service <a class="moz-txt-link-abbreviated" href="mailto:openvpn@test.service">openvpn@test.service</a> enabled by default

The recipe itself depends on openvpn, and so, it doesn’t, by itself, provide the <a class="moz-txt-link-abbreviated" href="mailto:openvpn@.service">openvpn@.service</a> , which comes with openvpn.

Dropping the openvpn configuration file in the rootfs is easy, but I can’t manage to make the recipe to enable the service.
I’ve tried adding this to my recipe:

inherit systemd
SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE_${PN} = <a class="moz-txt-link-rfc2396E" href="mailto:openvpn@test.service">"openvpn@test.service"</a>

But bitbake fails on this recipe with the message below:

ERROR: test-openvpn-config-1.0-r0 do_package: SYSTEMD_SERVICE_test-openvpn-config value <a class="moz-txt-link-abbreviated" href="mailto:openvpn@test.service">openvpn@test.service</a> does not exist

I believe this is caused by the fact that the service file is not part of the files installed by the recipe itself, but it is not meant to be anyway.

Is there a (clean) way to achieve this ?

Thanks in advance



</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------CE3F9E3E3422D06E3C88DA59--
