Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8B1AE00D7E; Mon, 15 Jan 2018 04:51:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nickaein.i[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C8F0E0085E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 04:51:13 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id d18so16636830qke.7
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 04:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=fCyz1Q60QFOwoUrakCrGiYJgp6glno1UlwAs29W9+2I=;
	b=oUZ1h+QMxf79EnnVzytOzWXRZBiPajqx4FQXRSNBmbXodAxaD7tIl3e2UFgQUaNrx1
	xLNLjjUnCaQPGndlWCWDF6FywmQ4LejZcGPq15J44g9Cv8fo3IE3S6/I6C8Ym3aJ2LCK
	IiYTy/ZrNV7sSx0p0CFjCFI0fpuPcVoyMtIfoRyjxggvjBgN/3jppVhu1Qf6NfIgAfit
	7+ge4ZDbMzzYi99/x1Rhsa9TZkiT000xyEsOCRwJaJlhvLLb5IK6D9HNqmdQvkry5+bn
	KnMzab+wJp56mcoro3YbOjWr14NEUtTWG8omunInxHbfNRW3JpaDdrV4yMoRlRtL7Jxl
	srCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=fCyz1Q60QFOwoUrakCrGiYJgp6glno1UlwAs29W9+2I=;
	b=bHmcPzvkpfdaEjzllBld4pAMaFa7tONJiilX1cLIwtLRVU41bzy8RpCkZmwW/LtFBN
	3hjkVG25LsjQy+Tg6ymxSkpTUDkPc1hQMjq73w3dBVNwEfEBhviSwCdwdSlcfWMyD/pP
	WpJ7cN5gXbDT3HtF32iQ9qF9z1gmqbRqG8Mvraw5/TOGFmqs+GVYD9bMU7uBS1lIOWpQ
	arMjnRB6WCKM0T9y/QS859teDit7m8mArLYjzLryL9CFb5v7wv61sB9mD1IwGQLsnZUl
	Ru1xSsXWs79lmxGIGiGbOAR58kb2SNTc1PS6QdtJeujchtoe5yTVIIUycwoM/rXBEkWj
	ALIg==
X-Gm-Message-State: AKwxytdCxqP46ihfif+m+GujVUPZF4uECOHkkLPzdWxDuAUqOMhAkZ31
	HOz35kOZifpanw0iwGeqqS4LZahjYuxb2mQflVY=
X-Google-Smtp-Source: ACJfBos8ZPYhtmvfr/On4SRazDQzlgMho20xRMpsavV/H8V5pjQZwzfkb7h6xM5issk439McwzAbP0cF+EBRulcZIpM=
X-Received: by 10.55.143.193 with SMTP id r184mr48768842qkd.191.1516020673102; 
	Mon, 15 Jan 2018 04:51:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.214.82 with HTTP; Mon, 15 Jan 2018 04:50:42 -0800 (PST)
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Mon, 15 Jan 2018 16:20:42 +0330
Message-ID: <CA+NJmkdUTFSdEi9F7t+i09VB4QJYjtzeAJbakpcSwRbVipfEpw@mail.gmail.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: conf/machine/<machine.conf> in my custom layer doesn't get parsed
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
X-List-Received-Date: Mon, 15 Jan 2018 12:51:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 15, 2018 at 4:00 PM, Mittal, Anuj <anuj.mittal@intel.com> wrote:
>
> Have you defined BBPATH in your layer.conf correctly?

Hi Anuj,

I guess so. Here is relevant lines in layer.conf for BBPATH:


# We have a conf and classes directory, add to BBPATH
BBPATH .= ":${LAYERDIR}"

# We have recipes-* directories, add to BBFILES
BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
        ${LAYERDIR}/recipes-*/*/*.bbappend \
        ${LAYERDIR}/*.bb"

BBFILE_COLLECTIONS += "samim-saba"
BBFILE_PATTERN_samim-saba = "^${LAYERDIR}/"
BBFILE_PRIORITY_samim-saba = "99"


And there the layout of conf directory of my layer:

yocto@yocto-server:/opt/yocto/rocko-poky/poky/meta-samim-saba/conf$ find
.
./layer.conf
./machine
./machine/colibri-imx6.conf
yocto@yocto-server:/opt/yocto/rocko-poky/poky/meta-samim-saba/conf$

