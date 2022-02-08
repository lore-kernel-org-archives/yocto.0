Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A84DC433EF
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 23:07:21 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.19225.1644361640024904473
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 15:07:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MvEmX7bH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id e3so1061281wra.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 15:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:references:user-agent
         :mime-version;
        bh=etFYDJ9skLwTJaAJQ7ezOtejuFsAMQfoLeOy7NeZqQ8=;
        b=MvEmX7bHYgO2M+xJpLuLvNMjs9xesigd2paBAoqbAj6fimeaSZ0tsT4hN3CZAxwqet
         qHWuj3shNbHLDkS2THzAADAnV9EPPEWj2dTwetYeC+CAerhN9gwPrF+BIWTk/TWlP0lY
         LR4UC0bczHMpZqog2ZPYnrXqWManu0Q4VU5Hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:references
         :user-agent:mime-version;
        bh=etFYDJ9skLwTJaAJQ7ezOtejuFsAMQfoLeOy7NeZqQ8=;
        b=TwBGNmd32rS78afZibxmpJfbihnm/9uF75BL6qztL2lFe42h5jtYnyZ9hzg7jyVpdC
         1DN5SJlrMUGd7z6nB9JIbW0R5xGlDR5baTb1+qwsCdhE4Vtq0SJ/6ntXNhWvAxcs1GqJ
         6gjV9Vo6V2eIrMTPQ7skyhLR0vmYZPnqRpEMNl4MrTnecWfrjYGkJx5G7AZhv5+gMK9L
         ftwpPzshJ7m5OiTzM5dkdnH9w0D1JKdfdvESiw6TtiA+YWsnxxW8vKsjkdocZDSU3yY0
         DudZ+CYfP1lymKoo5rJQNeRb211LSawBQi8ZLNj05p9+dmDlH/JKY8hFplKUGutICLP/
         CZlg==
X-Gm-Message-State: AOAM531dhee18XTRzFY3AXdzmESiV8NTXkoooqfmspfTJFfWBfEKUYw4
	wBhNmbEAxXu5Lslig+R9ynXmlvLW14091g==
X-Google-Smtp-Source: 
 ABdhPJz+GHuCmUGiMzQ6Jb0GkUM07yEaw0tnYQIcDei7km7rG7vaaBSSsHZZ3OCp3LvnicV/r2ciXQ==
X-Received: by 2002:a5d:6486:: with SMTP id o6mr5121091wri.636.1644361638231;
        Tue, 08 Feb 2022 15:07:18 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2250:1cae:83bc:d91f?
 ([2001:8b0:aba:5f3c:2250:1cae:83bc:d91f])
        by smtp.gmail.com with ESMTPSA id 1sm3097364wmk.16.2022.02.08.15.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 15:07:17 -0800 (PST)
Message-ID: 
 <f0fe3b45abdc3f073d3efc53d4f12fd6dd9b8951.camel@linuxfoundation.org>
Subject: Fwd: Maintaining ABI Compatibility for LTS branch
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: Sinan Kaya <okaya@kernel.org>, Paul Eggleton
	 <bluelightning@bluelightning.org>, Steve Sakoman <steve@sakoman.com>
Date: Tue, 08 Feb 2022 23:07:15 +0000
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
Content-Type: multipart/mixed; boundary="=-8tX207n4fsrdHLnQVy58"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 23:07:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56113


--=-8tX207n4fsrdHLnQVy58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Forwarding to the correct list address and cc the LTS maintainer.

Cheers,

Richard

--=-8tX207n4fsrdHLnQVy58
Content-Disposition: inline
Content-Description: Forwarded message =?UTF-8?Q?=E2=80=94?= Maintaining ABI
 Compatibility for LTS branch
Content-Type: message/rfc822

Return-Path: <richard.purdie+caf_=rpurdie=rpsys.net@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on dan.rpsys.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.4
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173]) by dan.rpsys.net (8.15.2/8.15.2/Debian-18) with ESMTPS id
 2171Elej178706 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128
 verify=NOT) for <rpurdie@rpsys.net>; Mon, 7 Feb 2022 01:14:49 GMT
Authentication-Results: dan.rpsys.net; dkim=pass (2048-bit key;
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uxo6F25p; dkim-atps=neutral
Received: by mail-pf1-f173.google.com with SMTP id y5so9360785pfe.4
        for <rpurdie@rpsys.net>; Sun, 06 Feb 2022 17:14:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20210112;
 h=x-gm-message-state:delivered-to:dkim-signature:message-id:date
 :mime-version:user-agent:content-language:to:from:subject
 :content-transfer-encoding;
 bh=KzKZbWrKNN9Wnl2GOrFuC6M0WwzZpxzvw7vxjqd2oL4=;
 b=7vR3dQaBBPXvnOPS1f/Ug05utoD6IOgtdNWNPqXfb1/y9fiT80q2fpIy2KtP4qW1Bz
 WLqXA9lVvp7YhSe1KpBAyjwKb+ZQBltSgex+KlltfHMoyNqqmCVs7oqRzrBQOic3hZuM
 JJOplXHU6t4UAAvai4f1kBJOW0ipsK5RNzmrAzoZJAlf21AnMfyssHRc1dddL0S/cU6V
 XBpx43zEq7Z35B+x3BrChz4PScJAmGBCz5j7piXJjmWkQGsusmR4ikz4p7NrFJQsf+uq
 3QIdto0EeTofOxgiD8TNIVm7C1AA2ce4kaiQwTACyqL48fMskZU3FgAtLFLp201vbSxG 7asA==
X-Gm-Message-State: 
 AOAM530AdnqLxhoFXe8O+WEekM+Xj6UKHLQ07xgO0VGy6CDt0wwhlAwy
 QE4YAXXxfhRPiy7o4CbPkK/Adj++fWmGECk6AM2QPTWV+8MagKgrBsKM
X-Received: by 2002:a63:f50f:: with SMTP id
 w15mr7543441pgh.113.1644196481805; Sun, 06 Feb 2022 17:14:41 -0800 (PST)
X-Forwarded-To: rpurdie@rpsys.net
X-Forwarded-For: richard.purdie@linuxfoundation.org rpurdie@rpsys.net
Delivered-To: richard.purdie@linuxfoundation.org
Received: by 2002:a05:6a10:40da:0:0:0:0 with SMTP id s26csp5211027pxb;
        Sun, 6 Feb 2022 17:14:40 -0800 (PST)
X-Google-Smtp-Source: 
 ABdhPJwi2bCdTcAmwlKX0QZj5usj2zyZ6FecvAvS6PDJMBL4/EQHWeZ6sg5ZRM+AWNSdSxNPGug2
X-Received: by 2002:a05:6830:13cf:: with SMTP id
 e15mr3261124otq.330.1644196480736; Sun, 06 Feb 2022 17:14:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1644196480; cv=none; d=google.com;
 s=arc-20160816;
 b=zx5Pyqe1IJWJ859V9StAlO/qWRZ8PncEaK8vTploX4EiUV/pj/nE7g7FUzKDj+kDiq
 Eglti/sUDrqmkN+6rjDNdD7gKW5Q1u/0Wcedcx3Xx1hrRR4egI3JtcOvAXJOT2L6tGiV
 8AuzP0DZY+rgFSw31WkolzNWQUwHwBPgkPPRj4gmO5HfXutYdyQnQZFBBzt/44yAiR7B
 t3Evm+hTJ+Nrqz/mtSvJXnv54eE/R7cADT9EqCsZQaWatC+bp5/Mq2EyUYcH0CRmmVpn
 lY3f5rS5Yd08RF9ovOXUQ3nLrxDzl3PeZ/8D3Dfoj/VuNye0EmeUjLY4+Cw5aibanM3q p6mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:dkim-signature;
 bh=KzKZbWrKNN9Wnl2GOrFuC6M0WwzZpxzvw7vxjqd2oL4=;
 b=IvpFDHY4zoVsB1N7aGbkM8bO0MyHbRTaMhN0xrBxb8fsnbZ6aKbAGo1DvR2W6Kr50R
 c0HBEJioVl2ldHdlFLcnD9kN/ZKu12chU5IDJaPBWTniwB5KadpZ6A5sM3KJV26D/xy5
 N1bbMhhjK1uAtUMJrw6EXKvvz9bnt+YIXedFQMQDG2NRXpYMgVvHVPVqdBJIePf8G9Z4
 feFu3J7Myd2ntX4Re7SIPwyAW7OXQjw+kN8XiU9prBxaxdpVxEnSiguUmrhEi+HIqQzW
 vRx6++Cwwzi3VaRFhX+1Gj5UgUTquxue06uthg+u95mXUrPZKxk03ihaBTMPFkaOAgyD cOOA==
ARC-Authentication-Results: i=1; mx.google.com; dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uxo6F25p; spf=pass
 (google.com: domain of okaya@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=okaya@kernel.org; dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org.
 [2604:1380:4641:c500::1]) by mx.google.com with ESMTPS id
 y18si3316094oal.34.2022.02.06.17.14.40 for
 <richard.purdie@linuxfoundation.org> (version=TLS1_2
 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128); Sun, 06 Feb 2022
 17:14:40 -0800 (PST)
Received-SPF: pass (google.com: domain of okaya@kernel.org designates
 2604:1380:4641:c500::1 as permitted sender)
 client-ip=2604:1380:4641:c500::1;
Authentication-Results: mx.google.com; dkim=pass header.i=@kernel.org
 header.s=k20201202 header.b=uxo6F25p; spf=pass (google.com: domain of
 okaya@kernel.org designates 2604:1380:4641:c500::1 as permitted sender)
 smtp.mailfrom=okaya@kernel.org; dmarc=pass (p=NONE sp=NONE dis=NONE)
 header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4B2DA6132C;
	Mon,  7 Feb 2022 01:14:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B831C340E9;
	Mon,  7 Feb 2022 01:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1644196479;
	bh=sZaD29/8OJ5ecATbdjMKNcLwrAU5Xq8TvqtwXlPW3l8=;
	h=Date:To:From:Subject:From;
	b=uxo6F25p19IyYk564i9Y9Dulknn0uMzFBlPqGaPxWGjYg7UeTtF33ltIxudU4ZhwG
	 Epq4BTJ/7uBrkdew+5EN9z0pv2YfJa1Xe3M08s/ut8ZgCMWtbR9jh2icaEwZwQd6xF
	 8XgmYfyJh8ZbVyswNTtO6qt0jgyThq1zbwFQK53Txj7atkNkG8VVrvilBrFX6DKwjY
	 PkorhpHu9rGJ0dnHcpTWiqYr9X/1gGv2/2C/UCxjisAxzPlH68tmHdLf3b9Z4BTFFq
	 VB77uxZbob/3+O9rOioi42NCp9ZjeNmE1jjpOe28OMJ3V4gdnvChtBH/6hd2jHmQks
	 IsJNgxe69DhGQ==
Message-ID: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
Date: Sun, 6 Feb 2022 20:14:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.1
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Paul Eggleton <bluelightning@bluelightning.org>,
        Yocto list discussion <yocto@yoctoproject.org>
From: Sinan Kaya <okaya@kernel.org>
Subject: Maintaining ABI Compatibility for LTS branch
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.2 at dan
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

Hi Everyone,

One of the limitations of Yocto LTS branch is that there is no=20
guaranteed backwards compatibility. Therefore, any time we move a branch=
=20
forward to move to latest dunfell release, we are taking a risk of=20
breaking our customers.

Yocto reserves the right to move a package version forward if a
security fix cannot be applied properly as an example.

This promise is being held true on the kernel by running kernel API
tests etc. and running test benches across different CI environments.

I was curious about how everyone is approaching this problem.
There was some attempt to bring ABI checking functionality in the past=20
but this has never been merged.

Is everyone rolling their own solution? or never moving forward?

Sinan


--=-8tX207n4fsrdHLnQVy58--


