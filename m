Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 233B0E00D4D; Thu,  2 May 2019 18:55:10 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA59DE00D3A
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 18:55:09 -0700 (PDT)
Received: by mail-it1-f181.google.com with SMTP id l10so6799592iti.3
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 18:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rghV7ypsGPq6nNacw3gMHpMqINGL/C3qY17wfgQlt5c=;
	b=G/km5Wj4zTSbIgmZGtUi1ktdoCYZfxePvVINcgEzKWq9Uc1NNpVQnjCjl6i4XTqTFr
	YIEBB51TRgR1y6W6up+4dugzwJ3ES1oRVBRb89gKE5xuRPEOpREm9IQvfoKbeWsZohxn
	xwzNf1YBo5Vc9A1JicSA9xy3h9UA4LbANC8gtUcZVPherOL7h38T4Mk2Rtp1ZgJ08OaG
	aJcoSbyL+gV3z9nhyRbSC/0rO7IGKopiV/mtNo3Hzrq5jZlevTzEXibho/RohOXxkUFr
	Zx2ye2xoKGlFmzI8l6pt+6bCn5z30m4D13eBLFCZnmJsqoem4trPZLIXGvVsenmufCKP
	ChnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rghV7ypsGPq6nNacw3gMHpMqINGL/C3qY17wfgQlt5c=;
	b=DnoaP7dIoshOYxIzF5P0fFJLKolCXyAO8eS+nLf/DREFFec2ZNf9Bysl5ZKCbOJihq
	h8TKhug3wWBnji+lrJiBBSym39OdgJomfA2BT8KHTbE7aPm9TVI1rfhW+Enh/JpgIasO
	2h6UrMiPS9ztcsJr/NkXVp20mOHdk2A2QCPKJNHxXZt8VYIItqBezB+8UQSiUb4+NY1K
	gxv+8S0Y15/Ly5bVz9tZ3bbCcBxqm16aYC1tsrixQRtrkjzuB+cfJaUkyAwxoR7ax/e8
	7kU2a4GosxQiVUgo4kAJGk/nxBL576XMbq3ys/kYSZGh8pPli9nd0ECLNRqTP0GsVMpb
	b0CQ==
X-Gm-Message-State: APjAAAXJNFBRBSvy3VOqEYK1zRBR98p/6g1IjumdJOT2QIId4nR6BMBx
	89H3qHulr5K0Aj2vKMpoAfhQTFNiiNtwBLrHRYr6cG83
X-Google-Smtp-Source: APXvYqw97X2vYSnUbohrQzyaYminjHLJywhs8v/rPNYPP0P8KFWaMZER7/g1wwBcucpWcC1dL0e7IRiGNrK7DQtx2FA=
X-Received: by 2002:a24:9906:: with SMTP id a6mr4893375ite.111.1556848508957; 
	Thu, 02 May 2019 18:55:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Thu, 2 May 2019 18:55:08 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 3 May 2019 11:55:08 +1000
Message-ID: <CAA=hcWQwNRM6M=vd82w=EbX2NGGyKcQ9tT-VC00A2a3KoQ_anw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto concept and support for dual version firmware upgrad and boot
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
X-List-Received-Date: Fri, 03 May 2019 01:55:10 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Are there any Yocto recipes to support dual version control for
firmware image upgrade and boot?

The scenario is to make 2 partitions, one partition to install a work
version of image, say v1.0, another partition to install a development
version of image, say v1.1, the boot process should pick up the
highest the version v1.1 first, if it fails to boot, it retreats back
to boot old version v1.0.

Appreciate any tips or reference for that implementation in Yocto.

Thank you.

Kind regards,

- jupiter

