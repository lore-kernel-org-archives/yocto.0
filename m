Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E65E0030B; Thu, 12 Jan 2017 23:56:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8EB3E0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 23:56:49 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id 96so31622914uaq.3
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 23:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZQ2X97adSGojwcAg2q10w9VT7NNL4denzjq+lAUgSPE=;
	b=TN60E5IVdKo6cRPUIVUjKGpQjgPEnpJcVUxj69JfFbiYZD098+9/qNL+vkI5gNq9XR
	RRiGEm941Dz9+1hDMyGT/tFKo9+SZlQq1iE3bpebaa/oiX8n42C9/0EUSBkUm7n9977b
	F+Qxu/jxYg/BFRffmLcnRrhCNoXUZVgxKdw3NyMCUWPk4fmtaHnPOTnaNJy3M+NdNok8
	WYK5MKzrnhFKReY5KOKodYNxVEJWq+CppZd7u331s6DKvEnlOaUejPxaZEKitK5svO29
	B2LmrGOqpARR9zi/KVykQO/cRVF89Mmvq0+JV6Y7+s36zgopfyRTd6lHw4sICX0XsRfq
	F/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZQ2X97adSGojwcAg2q10w9VT7NNL4denzjq+lAUgSPE=;
	b=N98W9axQWZa+hb4r6UQtah/68qV45kFX09eie6dyMjLCCQH3EmXfsHL4a+T7duv2mf
	U5BpT+0S6zFS20VTp0ZV7Dr2B7xJs7ZmkK6JaxKZmWuR9f1PqIsdKGRq1js03BmDI/gv
	ryNIu1VOf9VvYcKTIcmv4D5w6NYFwCpCuM38aBNagVuUjZWWWJnTAZvlgnJimwCfcb2m
	dD5PgRT6mFaCNLQ+aOqm4cm4EeAdhiXH59xbBYR55XBMdYPwFr3SawopyuB7P/mm79mQ
	mSNmPpNXkxz8uhF0J/QFtV39HTQIjuXDprd24wg0E2FR7ifxz3EPPAi1lzrBZwjiaIcb
	KFmg==
X-Gm-Message-State: AIkVDXJLN60X0+Ofj1wLYW1N2RhMvEjifzFZYX02QWrryCUvwlfrp83D38rTxnnNy32uenk/957aYR930JT4pg==
X-Received: by 10.176.82.16 with SMTP id i16mr5394671uaa.77.1484294208407;
	Thu, 12 Jan 2017 23:56:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.69.246 with HTTP; Thu, 12 Jan 2017 23:56:47 -0800 (PST)
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Fri, 13 Jan 2017 08:56:47 +0100
Message-ID: <CALbNGRTer2zeMMwEfjUVsBtw7X2Xxc4STGvA3YmO1CniWsvEqA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Openembedded layer index stopped updating
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
X-List-Received-Date: Fri, 13 Jan 2017 07:56:57 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

again me... sorry but I use index regularly to check if somebody else
already created a recipe I am interested in.

I think it was caused by maintenance changes.

Andreas

