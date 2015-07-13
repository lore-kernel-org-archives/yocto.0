Return-Path: <elvis.dowson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5E23E0086E; Mon, 13 Jul 2015 11:10:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (elvis.dowson[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B219E00476
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 11:10:15 -0700 (PDT)
Received: by wgjx7 with SMTP id x7so302334451wgj.2
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 11:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=w8cElMngAtUxUYNY5FkoO2FL6FfZLyPf2hJB2mYYbPY=;
	b=sZAb6y6x5DG2GTKjHSYb371TyIxTfsNbj/VhiX34O7wa0g6KmlzsChV3pTl2I/HyuN
	Q6vMqp4iHrp483HprMeKI58jbHC2z91RfbTlDZZkhtH/G8XsSC9oWa1RxVaHDuvStX5l
	/1KU64WifzKphdyD1inQcKEg4ZjqwxymaTO/JT6GyJd/PYoleu/k1CCsy9oQ3wsOwz9s
	/YIFmquTCeO5vLUb/ROsTZ8638664wit3kgPgRx8kCGuMpDRK2GCRSPOafeod+3RA4UJ
	g0pnXFqQpLOaHVrcfvrmK+qwK5crvOYfN0KmVp6VXZ0RlFxsVcG9rfRjDp+/1YcVKvFJ
	9DSw==
X-Received: by 10.180.37.229 with SMTP id b5mr25343141wik.16.1436811014765;
	Mon, 13 Jul 2015 11:10:14 -0700 (PDT)
Received: from [192.168.1.108] ([5.30.65.217])
	by smtp.gmail.com with ESMTPSA id
	h9sm30545917wjq.10.2015.07.13.11.10.13
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 13 Jul 2015 11:10:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <20150713180442.GB2407@jama>
Date: Mon, 13 Jul 2015 22:10:11 +0400
Message-Id: <638E7270-70FA-46A7-B2AE-201B7614C237@gmail.com>
References: <1436797408174.67011@selex-es.com>
	<22658_1436803637_55A3E234_22658_12077_1_10339148.fJj1pddUcL@peggleto-mobl.ger.corp.intel.com>
	<1436804334217.6373@selex-es.com>
	<10339162.sO6SsRz4fR@peggleto-mobl.ger.corp.intel.com>
	<20150713180442.GB2407@jama>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.2102)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Which is the best strategy to customize Qt configuration?
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
X-List-Received-Date: Mon, 13 Jul 2015 18:10:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


> On Jul 13, 2015, at 22:04, Martin Jansa <martin.jansa@gmail.com> wrote:
> 
> Will this work if gstreamer gst-plugins-base aren't next to each other
> in DEPENDS?
> 
> I think good convention is to use:
> DEPENDS_remove = "gstreamer"
> DEPENDS_remove = "gst-plugins-base"
> for it to work even after original DEPENDS in the recipe is re-ordered
> or changed.

Shouldn't you be using += instead of =, so that you append to the list:

DEPENDS_remove += "gstreamer"
DEPENDS_remove += "gst-plugins-base"

The earlier line had it in one line, so it was okay:

DEPENDS_remove = "gstreamer gst-plugins-base"

Regards,

Elvis Dowson

