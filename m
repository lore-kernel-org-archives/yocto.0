Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.112.1576271517898030492
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 13:11:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HS/1sx8q;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87781E01166; Fri, 13 Dec 2019 13:11:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4FAE01149;
	Fri, 13 Dec 2019 13:11:56 -0800 (PST)
Received: by mail-pf1-f174.google.com with SMTP id x185so2116308pfc.5;
        Fri, 13 Dec 2019 13:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Ua3falVnWCxVR3VOtzmY9BJZY+ghLGdx+Kqp7JsL4X0=;
        b=HS/1sx8qnQvBkcBbcJeOGr06ljFT26wIaL9xLP1WyNXxasJO+aqQlyzqYV0xU2jxUG
         h5/a+TyCXvKfjSBTfBlfyDwa4LnMS8vHgKNHUI7F35pffAZ4W/ONVwnAZiG3gGXR7QSC
         8XPx04bAy5LG4mbU7FjmHweGWuBvESane7CDKj+CwjmGRRNdr1r/kYhEb1YdIJF9NMGk
         +u/ZydjeMFXiGGlwFpOsVuDTayJDExpc+/++nJpCVVQT/s5YiOIK6t0vj7OiAHvgWtnP
         SuFinu9PtslVoWghFJ6QvpnfGxjeePctuElOO0whS12EF6Nxqv1KgmW+PdDXh89KiIsq
         ENzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=Ua3falVnWCxVR3VOtzmY9BJZY+ghLGdx+Kqp7JsL4X0=;
        b=RkU4I9Hpc78hy5xfPLnbq3jwc4Ko0B8cjKQFILpa8k0B7w0lfsPFR1gKVfc9JdrD2E
         OdmypxDIM2PXMbOpmtvHGAdd5sKjGGQvrVJZaVnMSfN4jaup/L6IDOY1bSXQqUr75t78
         /sdm5nKL5cvs2Q9Av0dRmsNLNoAYv7sl1xKIISiinbK8avh5BWvxAYbLm+WXincq0BsK
         +jJFY/KJxCvwEyp+11x3/rM4JXlzGqK5T6k6vuMJATPCswVG97AbhpdTUGKdCPp3sx04
         USerq/DQa4qpFPKVHuWWeqOpg/YSG1VwDGhZuTv2fGiGJgalXGVmG93C/Y9RV7K2shSL
         cFyA==
X-Gm-Message-State: APjAAAVLrL+/iWNXBnmecfhbiuHB042AMqk4ZMEMRVnxbNdC3zH67U10
	JZbUatskfoAnz3G3HykBldk7CJNeTh0=
X-Google-Smtp-Source: APXvYqw/+6oRKR9HEKz+KUlSQse9eGuf/Sg5s6rSnkwIm367XoG5tb9W9TaRW5Y6qfkbjpV6F5lAoQ==
X-Received: by 2002:a63:f64a:: with SMTP id u10mr1690901pgj.16.1576271515838;
        Fri, 13 Dec 2019 13:11:55 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:dd29:b8d2:59d6:df97? ([2601:202:4180:a5c0:dd29:b8d2:59d6:df97])
        by smtp.gmail.com with ESMTPSA id m9sm13027730pff.38.2019.12.13.13.11.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Dec 2019 13:11:55 -0800 (PST)
Subject: Re: [yocto-infrastructure] Data center routing issue affecting downloads.yoctoproject.org and Autobuilder
To: Michael Halstead <mhalstead@linuxfoundation.org>,
 yocto-infrastructure@yoctoproject.org,
 Yocto Project Discussion <yocto@yoctoproject.org>
References: <CADfgfoaRizwCAC6GadRLfFcaGQ-uGzyEqwTB_mdD2SeHCC07Tw@mail.gmail.com>
 <5f35c463-1c98-f2b1-38c9-5b4b5401a7fc@gmail.com>
 <CADfgfoYTRYZ+P94WAEA8d3phPDUyE3p8Cg4fyVijMg=vixHdTQ@mail.gmail.com>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <9d78e8a1-cf72-7549-e19d-3c3120807119@gmail.com>
Date: Fri, 13 Dec 2019 13:11:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADfgfoYTRYZ+P94WAEA8d3phPDUyE3p8Cg4fyVijMg=vixHdTQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Friday the 13th baby : )

- armin

On 12/13/19 12:52 PM, Michael Halstead wrote:
> Networking is restored in the Portland Oregon data center.
>
> Down 2019-12-13  03:07 PST
> Up at  2019-12-13  12:37 PST
>
> We are currently online using a spare router. We will remove this
> single point of failure when we transition off of this spare
> equipment. We will announce the planned downtime for the move in the
> coming weeks.
>
> --
>
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer

