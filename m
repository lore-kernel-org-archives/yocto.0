Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EB42E00D84; Mon, 11 Dec 2017 07:19:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7E08E00CFF
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 07:19:34 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id g10so39206915qtj.12
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 07:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JowVpCe/0sjvZkpv3QOn1vdMoOooTv+/oPbSvAWR7mw=;
	b=JcaYx6FQzZNugur9Te7HtDhz1EjMlBPX1Vq//6BWoKdieSe0+ICaEm/pPHJWYwckGx
	IAb3jBTdyN88dS9VCz4Y7m9Va/r7HJ6jByezUAIeal4vcsLPF3LvF7MIz1QtLvwNaFS2
	t4Hvr0uttzCxiRBg4v2mWUGfZHhEhfYl2g8qyHplZLDkyXjcZXKk7IPcxPn5XUsfTh10
	1fhArKbV/QcSK7c9c0nAbfsboNxXgFEX3DRz5BdIdNuxOoQiVQg6Mkp1U5Gs/iG5zgfW
	/ClaFBxvrg2kFoUINXpQoRJfXknlSP+Q88Bet1deSfY7b+cF6JfByREWfIqPaWeGwitb
	cwUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JowVpCe/0sjvZkpv3QOn1vdMoOooTv+/oPbSvAWR7mw=;
	b=uil47eRcuxqydTS3LAMYau2Tys7B6DHB8RSE69ifaN/MR+kHvkEbe3KQLKCjnvHknA
	OebUL3ImOwT8zknD0YM5FqOi1Lf7N9vyLCTawOPjRzzZBetiAIzCOhhm/eydVUcMDaJf
	vupKNERDG+EzEyryrhYSA3ZwhpgSTztj45qT87MDLyzxyatNo7R2AWupoXFwu6afn7vw
	QP9Qo4P8MDID+8XxGEqz8Uwio0aB+YDOk99zB5HYP2Y8+Wpa73nbytRHboWuwDHgHK+T
	a3tu5HmDtNU0/aY98kSqKqveaVTsn103RV2SpAqnOWU1txQmH4VIgMVwN3i4wyWlh4PJ
	gHHw==
X-Gm-Message-State: AKGB3mJAryE9wxbTWybil+TqLBZbBw0aaaBnrEiUP1ewqu1HIf3pAipx
	0DQvK2E4WD77yYxWoC1p7AZRfUSkFi33BHJBqkrJ
X-Google-Smtp-Source: ACJfBovg34gdyJJ+Z8i6M7Lxcg3i7TpMkciPMtO+NYxoy2xp4N2orVpnHWtNfd57dzeJf3RKFAQ2r8sfhlswe59uS4c=
X-Received: by 10.200.58.229 with SMTP id x92mr1021809qte.187.1513005573800;
	Mon, 11 Dec 2017 07:19:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.137.17 with HTTP; Mon, 11 Dec 2017 07:19:33 -0800 (PST)
From: Paulo Neves <ptsneves@gmail.com>
Date: Mon, 11 Dec 2017 16:19:33 +0100
Message-ID: <CAJO0J4hrHhV=uSTYP7RDh9o9F7Q2OVjVjw0EnbFesmFdF2GAqg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: user space package recommends kernel fragment with builting CONFIG
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
X-List-Received-Date: Mon, 11 Dec 2017 15:19:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have the idea I am doing someting in a strange way but correct me if
I am wrong.
I want to make hostapd RRECOMEND .config fragments which have wireless
drivers. How do I achieve this?

Paulo Neves

