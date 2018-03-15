Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7234FE00A38; Thu, 15 Mar 2018 10:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_BOUND_DIGITS_15, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.8 MIME_BOUND_DIGITS_15 Spam tool pattern in MIME
	boundary
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.54 listed in list.dnswl.org]
Received: from mail-pl0-f54.google.com (mail-pl0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8816BE0079D
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 10:56:54 -0700 (PDT)
Received: by mail-pl0-f54.google.com with SMTP id u11-v6so581622plq.1
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 10:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rd527voPFoYqX4rCY261srd0NTB/hSvsjWqHv3svweQ=;
	b=NAs2xbSeRj1oCnJxqfkiOZ7jPrFw3mUDLIQoKdQgYxyJ+SExQTHjC8OylvaXjtZ1YQ
	JzVqhokc5gYs28j1kYNgA5t7u3vXsuNwhfVMbow+V+ekAzPndMQDtc9Fsh+zCM+s7V9G
	KsxnJlXisE8lW9+QbP8/fOb0BHkVCU6q3mYMPuO1o6WDd0+5M6zLQZCqTZOGczffOWED
	WwqtEmY6uLCoDKpWOvLyvYydzUZUXbntJ0zJId5KepbxTxojAAyVufhNiBDyES12wS+2
	4zAaR24COj1mrBGk68GweR5QqsnxnniqVD8ihhadIkmPzxQ5DzTlXnDNEhOw+1iBAPQN
	0G7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rd527voPFoYqX4rCY261srd0NTB/hSvsjWqHv3svweQ=;
	b=W8kMQxx2Q8EyaqlMZAwpJ5gu9/edHw+bYBwDkkkoHFbz4HaNNghN/qqNNkLDB5MwzF
	M9JOCcOXcm2k1LTlf7NSLwLDcHoiViynbgsHgeWES7RX6fJI/4FAjbD74MmLc7+IMMxC
	iHeBFp7JpwBc5uD+0Cx489jvjMomMthLgafJmGgNMqEyeCoVO2uWeAZ97K3wVQ4Ikqwq
	74/KjerGoXww8aDfs3pXmGnzAcYhJ/74WvTC7yvvMeAMHF2tGJVEs48IHOgMQgaCSG+E
	vKk7mruLbma5HNq1vS2FAEV53QwYQfzhCeMuRu5PYm7yHx8vTbCm1wAL7o/Y3QZWwa+7
	SXYQ==
X-Gm-Message-State: AElRT7FoEr1d4z0aGs6AeHmgcsOU3V5GLxf+FCSqjlT9RQoFZ8yI2unY
	acd5XImgR/aVyd2IiDGgURxDxooTVkxGtVk9x3E=
X-Google-Smtp-Source: AG47ELtpdvxB43hojZ3nCPJiL5Y2js1vXFX56TvI+AK82cjpbwqbMAUmHcHS/vg9IwyK29M6xoOUSzteb0B1IEcZx3U=
X-Received: by 2002:a17:902:9a45:: with SMTP id
	x5-v6mr8933471plv.18.1521136613675; 
	Thu, 15 Mar 2018 10:56:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Thu, 15 Mar 2018 10:56:53 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 15 Mar 2018 18:56:53 +0100
Message-ID: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: scipy recipe
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
X-List-Received-Date: Thu, 15 Mar 2018 17:56:56 -0000
Content-Type: multipart/alternative; boundary="0000000000008356630567773737"

--0000000000008356630567773737
Content-Type: text/plain; charset="UTF-8"

Hello all,

I wonder if there is scipy recipe available?

Thanks.

--0000000000008356630567773737
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><div>Hello all,<br><br></div>I wonder if there is scipy recipe available? <br><br></div>Thanks.<br></div>

--0000000000008356630567773737--
