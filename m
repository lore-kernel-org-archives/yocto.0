Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00396E00998; Mon,  4 May 2015 20:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F0AE00965
	for <yocto@yoctoproject.org>; Mon,  4 May 2015 20:56:06 -0700 (PDT)
Received: by pabsx10 with SMTP id sx10so179200094pab.3
	for <yocto@yoctoproject.org>; Mon, 04 May 2015 20:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=c6b5FwwJbONwoA5xb0wlWTyoq18kwEcG33XqykMyHW0=;
	b=0qCnRu19vVQHPQlM6Sp/XA5mpq9rY8fW/pB4YkK+YheHvBxiSs+O1mV3mOkO9VIU7r
	8iX96OSyrsHu5vrNj0S/2IDzwUYlfKK/u6Mvaq152gmTh22nW5nbclf4fOZ5hYKf3K5E
	FDJnWonb29ccGAtVi5L9iYd0hjcqXlRHMVxaKgHlyl/MWv/t7YEDKYs+3PM1RdY03Tid
	J+jTj7a7V+uBFxYdzv1k2rmTjngBeVNdPt0fK25NiAB3LXo0CYUABsN1yPI6J4x80fce
	K/fKdK1v2Zt0D641sHHnM+eBpwDcIk5wZfPcu/ol6HL2DGpNP1OZUu3ZIqlI6PcCV97i
	nzOA==
X-Received: by 10.66.179.81 with SMTP id de17mr47861205pac.59.1430798166675;
	Mon, 04 May 2015 20:56:06 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:84a:4937:3a73:d745?
	([2601:c:a700:3ba7:84a:4937:3a73:d745])
	by mx.google.com with ESMTPSA id
	xo3sm14197998pbb.74.2015.05.04.20.56.04
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 May 2015 20:56:05 -0700 (PDT)
Message-ID: <55483F50.5020803@gmail.com>
Date: Mon, 04 May 2015 20:56:00 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Odroid-xu3 support
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
X-List-Received-Date: Tue, 05 May 2015 03:56:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have added support for the Odroid XU3 board. This layer can be found 
at  https://github.com/akuster/meta-odroid. It supports XFCE graphics 
and has sdcard image support.

enjoy,
Armin

