Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2AB4E00A27; Tue, 19 Jan 2016 03:59:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0379]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE12E008F5
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 03:58:58 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id u188so140156398wmu.1
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 03:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=W2Laht/va8TQzi0wRShhc/akjOfU5L3TTPterkV9qdI=;
	b=NP4j4X77e3ftAIN3hoQCgZzT8dsED2UfHw/+JM4Mx/7h6qWwdhPn45kNaNn1h4mjtt
	7vERhctxk1Z+jCM4YoqZU2jLUeGQe+SyAbUtkETrdEVC4SLXp4pXCOmMPBg+am3BWNLC
	YEJZkwMLYrTUl1d4u5HwVvHpezovZ2mzDXLN+RE84MkOBzmT/X0RXji3nYBEJMEMT4e0
	ma0lYhJIEOMvzyeydN22ilvro0TUNY0JD8o8hmV5IKUqvux4YRu1W0Y/i040bF+fsGYS
	qq7MyZkPKyccRQHCHArzpJVcbsrUpkFjzGldOIVll8ASvKTZ2iYG19WG10UnJU3gQEyZ
	953Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=W2Laht/va8TQzi0wRShhc/akjOfU5L3TTPterkV9qdI=;
	b=cYknMZi246dmTPoRYguKprCN4N28rzJrU3WtFqna264dGGNVokaj1Um9AA6v0kuGAx
	eRVJgERr7Su1JSyDqBt06nWCwJXFaPJmrJSasxYIguPfVBH6yruIP03tSpqlqM+7Z3YO
	9TKcABg12Q8OS9GNffcPbSkrVtuGStPUojURZ+n7M0GE3iAf6lhmQwLubcfSSVNWmBoP
	sm49tJiMZfWHiqKPFi6EVvPLpmiazZVHz16fNEok9VOEfsJeyOwoJYc0ag8dZwh5y0aL
	0UkgpboNy4fGmfj6uPhWpJFD++3YnboU8Sw6OtmIq8p9G9wrJltseCxPNB3ECs4pf9Nc
	NyQQ==
X-Gm-Message-State: ALoCoQmeNfi77YMVHwyGBGZMF/PHRDp7ZtL630YNKNrBZZ4GE2P2/EonaQTwKJwULMlrjqqUWnln3DIm6sxzhLNpC0/dcmH1CQ==
MIME-Version: 1.0
X-Received: by 10.195.11.100 with SMTP id eh4mr32467795wjd.83.1453204738017;
	Tue, 19 Jan 2016 03:58:58 -0800 (PST)
Received: by 10.28.182.66 with HTTP; Tue, 19 Jan 2016 03:58:57 -0800 (PST)
Date: Tue, 19 Jan 2016 12:58:57 +0100
Message-ID: <CA+-BmJa4BXBP-r+KsT7WkqHt+Bgu8u2MZx7m0VR3U8gjkXcS9g@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: Ubuntu-Core vs Yocto
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
X-List-Received-Date: Tue, 19 Jan 2016 11:59:02 -0000
Content-Type: multipart/alternative; boundary=047d7bae47be3211380529ae98d3

--047d7bae47be3211380529ae98d3
Content-Type: text/plain; charset=UTF-8

Hello all,

what are the pros and cons using a Yocto Linux based Distro Vs Ubuntu Core ?


Best regards

--047d7bae47be3211380529ae98d3
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div>Hello all,<br><br></div>what are the pros and cons using a Yocto Linux based Distro Vs Ubuntu Core ?<br><br><br></div>Best regards<br></div>

--047d7bae47be3211380529ae98d3--
