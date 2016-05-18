Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 232CFE00CA5; Wed, 18 May 2016 00:55:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E669AE00C39
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 00:55:19 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id x201so64224328oif.3
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 00:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dBPARp3GksyATWJX2OC1qcH17wfpCCNTXUxUExmK8bg=;
	b=P06QQ64LFK5OxS/gspAn1KIFCJBbQp5Bavm5ZHqR6p7aLnXqB3P4NCDgRtl7+1gkeZ
	oBHTKVMslmIPzJUv60ked2AfgIcezaVqNidYwZlxBmkWTw5JkoBYvu/1dyeX2um+M0HY
	CY7ygFSZLwcai/gqUH0+yrzGxVjE1mJsqqbd7eAk3XOFJW7pNTUc74ayPDWixWre5UJ7
	tdS9KV6TTxxq/wI1f1l1qh22U2vmUjS0ROuZcY4JtdLfTytRkqg66j/BfoBHBVc2YDUw
	vfHqqcz/sWtUrv3dco+TGnCe8rpdTx0b9OA2yOMHxZnXkwKFR9I6Jd0xgqjnxdgqZdri
	Genw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dBPARp3GksyATWJX2OC1qcH17wfpCCNTXUxUExmK8bg=;
	b=OsinMRr8LsVU5pWsL3mitB9AxF4vCUTREnNmri4gw8H+YRjFJwug1JqH1qYeQUQtfl
	MRXPbWLeIlIcbC7L+KiGv+as3URsERfD4jw+N55vZNgFxEMXQw6/aPqlnUGwLE16icYC
	DeksXpGmERhOFChb7fDQO2gHlU/97kLpiGRSGOL+ka89Xodm3OSqhUxXthGBlvUVI4aU
	kOCKTK6YY2OQy+2OYiZoi4GBCQtqKPX8ZvRL2rv/Om7g0Jsuu8nNDIS0ksZGT+UtZjfv
	rqT3OmjHZrv1x2/VmxUhvrKHehSQbGCZfjejirHsMgvAb46S9iS/RM2HATrEDZTYqjGD
	SZXw==
X-Gm-Message-State: AOPr4FVp6eXGVd0bc5ojj6xxRMy9Vwki/gCdGAxZw4nBV+yqESfss/qOQ5kGPO0/10NHk7tZygq97kDHBn+cu09q
X-Received: by 10.157.5.199 with SMTP id 65mr3203036otd.161.1463558118777;
	Wed, 18 May 2016 00:55:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Wed, 18 May 2016 00:54:49 -0700 (PDT)
In-Reply-To: <1463550682-59043-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463550682-59043-1-git-send-email-herve.jourdain@neuf.fr>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 18 May 2016 10:54:49 +0300
Message-ID: <CAHiDW_HEC=bsV3NzNos25Rj9SB7vRjJzEDuJiggFdgfr1T37dg@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [matchbox-keyboard][PATCH ] Support of "caps" tag
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
X-List-Received-Date: Wed, 18 May 2016 07:55:23 -0000
Content-Type: text/plain; charset=UTF-8

On 18 May 2016 at 08:51, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> This patch allows the support of a "caps" tag, that defines the value of the key when the CAPS action modifier is in effect.
> This feature is needed for the french keyboard - at least - in order to handle the uppercase accented letters, that are the ones accessible when caps is on, for some keys.
> There is no impact when the tag is not used in the xml description of the layout, therefore there should be no impact on keyboards not using this tag.
> Tests have been done using sato.

Please write this message as the actual patch commit message: when
it's in a cover letter it will not end up in the git log where it's
most needed.

Otherwise patch looks good to me.

Jussi

> Herve Jourdain (1):
>   Support of "caps" tag
>
>  src/config-parser.c                      |  5 +++++
>  src/matchbox-keyboard-key.c              | 11 ++++++++---
>  src/matchbox-keyboard-ui-cairo-backend.c | 10 +++++++---
>  src/matchbox-keyboard-ui-xft-backend.c   | 10 +++++++---
>  src/matchbox-keyboard.c                  |  3 +++
>  src/matchbox-keyboard.h                  |  1 +
>  6 files changed, 31 insertions(+), 9 deletions(-)
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

