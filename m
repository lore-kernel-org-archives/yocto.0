Return-Path: <lenka@koskova.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CB9F54AB2
	for <webhook@archiver.kernel.org>; Tue, 24 Mar 2026 13:26:07 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19634.1774358761155983774
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2026 06:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=rvljTd2R;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: lenka.koskova.triskova@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so34772665e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2026 06:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774358759; x=1774963559; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=AyqellXppqQcZJpeJR1+L0Gam4q/MyTFsd6CuBR078M=;
        b=rvljTd2R3S7WiOPJcGA+Sr7nkl5sLO1akQeHPla/k/gXp2dhWCznAyTxTMsmR2VvUh
         21CB/BZ4lORiIqla3Z83So3ZgctNaRtT9w6KC+WKnRuCK5x9cUHiXctog0mw5+ZeeKfm
         Tx1dIK6gy4PZDpMSYTiNReYT5fINecOX70axe08Ph7dzN9pFkaVHLmvjVfeHw4tf01Zh
         sIukh704i8pUVfr7cy/JtFqAZ+Ikx7JB7k9mkWyh2pzIeBoVE1hDEtjq3rx/XEei7TBh
         yFwp4RmqVmFJ2Gj+47QOpmGBsf2FRFfKSwxOcKtTIJgWRnefQbfhFixOIe6yLQ2QmsJ6
         crvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774358759; x=1774963559;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AyqellXppqQcZJpeJR1+L0Gam4q/MyTFsd6CuBR078M=;
        b=aHenAJUphxX6fwennw4lC7ZIf3WAQ5IwG2qYyTFBSRm9ePYD20T1R0Z/XcouvagULb
         9E+8TBuAUHfZRYGlbABd3CZYipcRwPm2STpGY9u03PEy3Q2N6q82YOVv+cx4v8HfRvVr
         nLB8IjLiaYe5sqsHiL9Z1O9xM+v6i51/mXc7MXKHLwPzXDYczZ5LDgxSNHdM2LiZ8AZu
         hQ2Wqh2BPlDvMJ2057ZyFomGXHUy+aOft+cg0FaUCD+5THwsM+ov7bJyhqgKTvAkRYYz
         OgOMDFeZHB/WYc70t+Jw4ZAEDkylkUMel2ag3FtiM9zLUuAp7AqKvg3YvZTCN3CyyhA3
         HXkw==
X-Gm-Message-State: AOJu0Yx0GwdI0JzrFVBOviRLMZTOIaS06hn9Ogs/XuFH5VdXMTbGVWqZ
	1/dSuFKENdmDMfNzbU11lZn8x8qHpq6dCYZjA+WmUSHwHO6whU/JYBfRwpacrciY
X-Gm-Gg: ATEYQzxlNhyMfLQ/MFG9ChR53wOFi02F+OT49/jSjATv9hHf0F1H5d6a/hF9s3S9Ct2
	VxKlcXbf2T6aAuu/M7vpD0UUR+Ou+sGZpmm2fnAxyLuUR7Neeuj8cB0suWgu0KjsjOFOQfKDt/o
	50SL4jyTVoX1K7mHEJU/4wEjnj/YXF5gbrm/ZoskcK4g028AIEs3unKWSD+mRTxZQ5pTot0O/H1
	upuDmCa8ElAcJyhWJgqGpmpAfBHhBnb6v/GxVv2QKRgvgo8mfgLObC+2S8/AFcL8TPJDXXhCapx
	3Xdz7kgKJMRczreauqSKEh8CU6NzGwy/x/NyuaUPlRLmBPhtof8szwtweXvUOTi15STNu68vNbE
	X79oD1C0YRsaAzRDoytx+/qO1Bdh+zXVhFi+ylt+dkQZI2a2W9JQUl5k3u9+Kh16BWg36JUf7J4
	Sgo8n1mhQHWb+YwgnCoalt+nCBjLYo9NmbGoqfuG0=
X-Received: by 2002:a05:600c:1c0a:b0:483:7783:537b with SMTP id 5b1f17b1804b1-486fee29560mr235723725e9.24.1774358759156;
        Tue, 24 Mar 2026 06:25:59 -0700 (PDT)
Received: from [10.230.121.39] ([91.103.43.230])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-487116ac0a8sm94187325e9.6.2026.03.24.06.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2026 06:25:58 -0700 (PDT)
Sender: =?UTF-8?B?TGVua2EgS29za292w6EtVMWZw61za292w6E=?= <lenka.koskova.triskova@gmail.com>
From: Lenka Koskova Triskova <lenka@koskova.cz>
X-Google-Original-From: Lenka Koskova Triskova <lenka.koskova.triskova@tul.cz>
Message-ID: <147cccfe-39fa-4170-9d4d-581dbb8b5f11@tul.cz>
Date: Tue, 24 Mar 2026 14:25:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: lenka.koskova.triskova@tul.cz
Subject: Re: [yocto] Call for nice developers!
To: yocto@lists.yoctoproject.org, jester@theyoctojester.info
References: <CAEt6NwpDeHnwTY1X-m6SPTeDQp2xJMsepaq2X_LcRp3HDcc0bA@mail.gmail.com>
Content-Language: en-US
Organization: Technical University of Liberec
In-Reply-To: <CAEt6NwpDeHnwTY1X-m6SPTeDQp2xJMsepaq2X_LcRp3HDcc0bA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2026 13:26:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66347

Hi,

  I have a question: at university, we have a very tallented student, 
who is working on its own dtc compiler - he analyzed all the standards 
and he tries to really support all features etc. As a bright young mind, 
he is ready to redo everything better :D It is a part of some bigger 
work supported by my colleague and I think it would be good to dicsuss 
this somehow with the community. And I see the Embedded Recipes as a 
nice option.

Yes, it does not relates directly to Yocto; but as I have seen the 
general CFP is already closed now.

  So I am thinking if it makes sense to bring it there anyway.

Best regards,

Lenka

On 3/19/26 16:15, Josef Holzmayr via lists.yoctoproject.org wrote:
> Are you a nice Yocto user? Even a Yocto user in Nice on May 29th? Its
> pure coincidence for sure that we're meeting there the Friday after
> Embedded Recipes 😁
>
> So the CFP awaits your idea, pitch, submission, proposal, rant at 👉
> https://pretalx.com/yocto-embedded-recipes-2026/cfp 👈
>
> Feel free to reach out if you have any question!
>
> Josef
> on behalf of the usual suspects
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66344): https://lists.yoctoproject.org/g/yocto/message/66344
> Mute This Topic: https://lists.yoctoproject.org/mt/118401949/9824819
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [lenka@koskova.cz]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Lenka Kosková Třísková
lenka.koskova.triskova@tul.cz
+420 604 510 877
----------------------
Deputy Head
The Institute of New Technologies and Applied Informatics
The Faculty of Mechatronics, Informatics and Applied Science
Technical university of Liberec


