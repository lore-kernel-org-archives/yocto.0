Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4EACFD31C
	for <webhook@archiver.kernel.org>; Mon, 24 Nov 2025 17:24:19 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.22210.1764005050935434647
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 09:24:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iS9mA8xQ;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso19509495e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 09:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764005049; x=1764609849; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z1w4Edq4dQOsXAUQy6Awzvx150CoxD4fFYbvbZfQETw=;
        b=iS9mA8xQ9ginCvodtj3nc0yiYXQEXtZl4AAH3ilMRemeyija6ePuV3ftwUIM1BPytn
         3uV56YNNacOvpDlnFoSB+BlUMThXOKoAtPmrL+PsTvGKVPO4BAvhhGLHIkUZE0t8SeNv
         sNBcuNEryPZ2ewBPO37C7117tCIrv7pzG4YhHrxmmOQ8c9YsvamFTpw7IM07dBNPwknV
         9amQwaPGNG/9qkz0YkLq8+Lg5NdvM1JJIVYIvT6rQv0E6Km+LF79xUTqutJjubMnexJ6
         GvX/ntIqKPwc5KvCaD4OBjqy9w0/wieDnCTl5Mme69xKt4pv3j5HHudfngJ+n62P1TJ7
         EDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764005049; x=1764609849;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z1w4Edq4dQOsXAUQy6Awzvx150CoxD4fFYbvbZfQETw=;
        b=FM063e/Dz+Q3JmXe2/5KxMo2i6o3IBjm/Wrp/K6FuH5jqWgHYzBvkkpsY7ZtKQ1Dre
         SpJ0yRws1anqWRNNVHJhRVbFZsPLfwiNxLKnJjaFofLQvRJy8xRKkr0FZ3U1z6sYKpRa
         AQMnQue+M+MFgYULrf8LTQuI0C8AnVs93lwKRQKE7XMj6Zs52yDfRpxJsQJ+jVJ3FIng
         7UDpAxwnz0RVVwre6ijWDQByDz+VJ2EPjx2hRmya5cj1SOrVOevgzkUCDmAi8SO0vi/O
         ya9Dae1sTwVZ/5ZGcz3EumIrqxY44wowCJJeYH+wc4SHJZdXnm6HUVD3tifRQDdFiaC2
         F8TA==
X-Gm-Message-State: AOJu0YxVK7ngyAqvZotMiMjsIDm8WvacGNBA97VB2ziDnP2cbcy8aaIN
	slCFeeu94dRkf7UV8h7ZPajZzWaZ5oL4YXl+v4eaXsJk4UBBU1yZHYiRavGZlLkG
X-Gm-Gg: ASbGncuaqm9uNgSNaApWJyMoHikBsc6jyFs7DpstZBGRwX9R8xZq5LebqRdhXgn3t42
	EYelehEh2xABwfujgspoo36RqZWPWEr3HUNdNRvDciDEJzyOUwmXYjYVb9w0kSpbLTyHElwrUJf
	XCiktfPlpBgr57/qXAv6DEpP0plXOTSkiM1mvzslLnPsHRVmrYCqvkvy/jKShQAm07B1JnFKR/A
	ryRK/4Z+d2vNa2+JnOJLqWB8tiM7fh5WKC2C/PNdBK2fhDnmSgh/1dMe9bKX1EaEWSQGwEaCYMW
	sEa/JLB4ySqw+eRBeusBChvvKzMPSiDsJJabMsBUwStzpmLkEwzIlXS939ScFcxVuC1BdLd8ybq
	/YuJ0HrcVt8D4RObSapqpfPij1US+ss0pLZex/DiPLqcb3o4b1qapHSVeeChwLqgC393dquIww0
	r3UTROxUVZb2Uu
X-Google-Smtp-Source: AGHT+IGUs/f3tHVysB1ZlKntMi7sxySBVZQRtXWjJhMqnNWGPV/qgKkNy1XRXLpitVWnH7qtYFQzVQ==
X-Received: by 2002:a05:600c:1994:b0:477:7af8:c88b with SMTP id 5b1f17b1804b1-477c01740e1mr121978775e9.11.1764005048828;
        Mon, 24 Nov 2025 09:24:08 -0800 (PST)
Received: from osama ([156.223.112.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3af0ecsm208610655e9.9.2025.11.24.09.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 09:24:08 -0800 (PST)
Date: Mon, 24 Nov 2025 19:24:04 +0200
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: bitbake-devel@lists.openembedded.org
Subject: [RFC] Proposal: New tool to display recipe dependency trees
Message-ID: <aSSUtHYFQlychNQk@osama>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 17:24:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66045

Hi All,

I would like to propose adding a new command-line tool (or BitBake subcommand) that generates
dependency trees, including:

DEPENDS (build-time)
RDEPENDS (runtime)
Optional graph output (text, JSON)

Motivation

Currently, BitBake provides:

bitbake -g produces task-depends.dot (task-level, not recipe-level, must use graphviz)
oe-pkgdata-util runtime dependency only
bitbake -e <recipe> view variables, but manually
Errors from the dependency resolver (if a recipe is missing)

But there is no built-in CLI tool to display a recipe dependency tree, e.g.:

bitbake-deptree dnf

dnf
 ├── libdnf
 │    ├── libsolv
 │    └── json-c
 └── sqlite3


Such a tool would help:

layer developers understanding complex deps
learning how Yocto resolves recipe names, PROVIDES, virtual/ mappings
documenting or visualizing architecture

I started experimenting with a prototype using Tinfoil to walk DEPENDS and collect data through BitBake’s recipecache, and it seems feasible.

Questions for the community

Before developing this further, I would like guidance on the following:

Is this functionality valuable upstream? Would BitBake benefit from such a tool?

Where should it live?
Options I see:

new BitBake subcommand (e.g. bitbake-deptree)
extension to oe-pkgdata-util
standalone Python tool under scripts/
part of devtool?

Preferred output format(s)?
Plain ASCII tree (default)
JSON


Should the tool:

cover only DEPENDS (build-time)?
include RDEPENDS with pkgdata?
resolve virtual/ providers?

Any prior work I may have missed?

If the idea is acceptable, I will prepare a proper implementation and send a patchset to the appropriate mailing list.
Thank you for your feedback!

Best regards,
Osama

