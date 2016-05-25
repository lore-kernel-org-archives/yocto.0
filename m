Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7859E00D52; Wed, 25 May 2016 12:20:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 072F2E00D23
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 12:20:50 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id gp3so6173463pac.2
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 12:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=yi1zsGwZk+HaWntcFePbqh8gJLW6aMTiXo7kQYQ5JWQ=;
	b=ZK+y4F3y4D5L5kA5rqUfnFq+okWbtL/eLqeWPbnKbulSDOZXTYgtmb8O5bi7kTFRzW
	4tPZEcjxhzpXHg5BWcqLBfsfVdTAW71Gs6zbVaMuiXK+zBZ0y8oABoK23YwEUXX76lzU
	DdbumyrFxVjZlR/coDlfm8FPTj7tPSjfRoFbC1wzUTtq2N8ebC1sy1cYpw6q+HxY5PKo
	Pfc2M21uI79PYEsf9sc16zlYIJf5+8fLY6ijh0JJzHLPAIgOu5Gx+S3Mia39ubL/QOaW
	tySatquMO4XMTpCN8EY6dHXkXVc3A7bCTTFpxMXof5fn7xzPDf2418vUif11szJfnf7E
	7Kcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=yi1zsGwZk+HaWntcFePbqh8gJLW6aMTiXo7kQYQ5JWQ=;
	b=NtRAwakOy2ih1Szjv4QLxwhZjDa+k62/tePM/4/SQvHCkeJWI+p3SyWYS3kupirIPH
	jEDV5HFvwe9U2zi9v85ag+9911/GZNrTBV7dbqudDCZfWeKkH1XX/nz3V4azp3V3x/nq
	asWFswZqfFymPi1q96EDLWCwa9ocoNiuTg3mIB6T3PvU4nuZLQYz8wYyZqpTAL0LBd/Y
	L6PO/DEnzVTTFB8EiejnP06GLHl6rs7ccbnFF8mj3Bq3sjKW5/6B4YZFUNAl8jepke8y
	l961hfFIkWnCSOKijcPaIgrXKlAP0DbNKqZ0yCK/fD5+NrM+xEuJnOUGnHoGjRWRlmYY
	c3XQ==
X-Gm-Message-State: ALyK8tL88GPP34bIbN1TCuq8sEGxDg3N4V7A69lJx9jBjgzwIL3rqGdX/R4Yita3xdglDg==
X-Received: by 10.66.237.35 with SMTP id uz3mr8156127pac.145.1464204049863;
	Wed, 25 May 2016 12:20:49 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	q129sm328443pfb.16.2016.05.25.12.20.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2016 12:20:49 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 25 May 2016 12:20:48 -0700
Message-ID: <3484456.TvIEnS8iSZ@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.8-200.fc22.x86_64+debug; KDE/4.14.17;
	x86_64; ; )
In-Reply-To: <alpine.LFD.2.20.1605251248060.31779@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
	<3784292.xdaYVqVUc2@rjs-zotac.streifs.net>
	<alpine.LFD.2.20.1605251248060.31779@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 19:20:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

> 
>   hmmmmmm ... the client requirements are only that it use u-boot,
> with the mender software integrated into u-boot. so if one can
> configure and build that for powerpc, then install and boot u-boot on
> the target board, why should it then be restricted to ARM?
>
>   sure, their reference board is a BBB, but a quick glance at the docs
> doesn't seem to say that it works *only* on ARM. must look closer ...
>
Correct. However, it currently assumes the specific BeagleB* partition layout for the SSD card. But that I would think could be adjusted for other other devices. They apparently also made some modifications to u-boot itself. I don't know what exactly those are though.
 
:rjs

