Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89E41E00BAD; Mon,  8 Jul 2019 13:30:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F704E00798
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 13:30:35 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id k8so38366677iot.1
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 13:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=w1JSw44VgT5C7XDZmJMdH2oA1wsAZUIzW1PGm93EsJc=;
	b=GqB8y9v0F2U8mgqLuEUyV2BaAu2OrdsGzqIGnAhhJJd4tyJDgWeRdjSwmXZlqt5bzk
	qLwZZV90CJTvSf58xiK1Dc4riAqRQY261VGckCOeyHusM1DQJ7zXgdKy6Mz05DS4ERKJ
	m7NkL/PB9bDFhfYevx252674ZbYaIpcitn4o5I2zputANngKEX1wb6DAGecY0Kq0440h
	OnILJF5kANZJRPwaTdfKmxQXgvg+QxlW+7WHJ6NkVUwXyBDNIG3IL7A47RWOOcVCdPHX
	5wqIgRswnX0FNbt4K9YqC34gmpm4ZollqBRKV5QDK2JYw69bAq8gdW+C0sRm53J23AZh
	30LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w1JSw44VgT5C7XDZmJMdH2oA1wsAZUIzW1PGm93EsJc=;
	b=KMgE7A6Go9YNAygYVF7Cx8mtoROGvX91O0Np5WQ3Oa7LM9jBsZl/KHtry1YJTKmYAv
	kkZ+8THpCA+gJRgPuBEcMzi/EoyNzBolvFZY0u6SXFO74Jkex50sqYQYvPjmTlRv42uF
	0btZ20SzqXOIQ0wN9054sEsUS1Q+zWAk8aa7exgNhIgGMPKmobzU+NCNFs0h7+hxA572
	Gi2RT32AbIJfh1dRDlcU8oWhwhVh33SIp84k6n0QauAfK3rPCYZkn1tSYyF0ezbtsBwn
	Jtp+EVp0bhDQhMtfqYgloZ9xnL9tHusrUKFhwRih+uOGm5Avk09tphPYp97Am6Hyekq/
	TLyg==
X-Gm-Message-State: APjAAAUTxxQkNGP0G3YtolxrQyMtBVXulDJb4B4fpPs7oS0iIxtJ2u2Z
	GXSp5dvH2Dg1YWk43k81+FCF0imFMXLPPTZht1zMPmwr
X-Google-Smtp-Source: APXvYqx7tY4rMifNdRwdJGyqSSgB9voBHXREXJ2XpmOKB1T4aZxh54Pn9r4KZwi7mUa085/L4Ck1Sov7FI03TekybFg=
X-Received: by 2002:a02:1441:: with SMTP id 62mr24719012jag.21.1562617834573; 
	Mon, 08 Jul 2019 13:30:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Mon, 8 Jul 2019 13:30:34 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 9 Jul 2019 06:30:34 +1000
Message-ID: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Where to add U-Boot argements bootargs and bootcmd?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Jul 2019 20:30:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Which Yocto files and which statement can I add my own U-Boot bootargs
and bootcmd?

Thank you.

- jupiter

