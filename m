Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCDF5E0076C; Thu, 25 Sep 2014 08:13:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2A49E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:13:19 -0700 (PDT)
Received: by mail-qc0-f172.google.com with SMTP id c9so5425949qcz.31
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Mf4P1kqn8tZMQ55tyCKsaIxxvxqGFQ4BANUrL/RaB2c=;
	b=oLPO2qBeBOVBdl+9JUF6JpAB3CCYJVmdsdk8m0U3z8TNaWjNKUjZTT8IeBh2x6ZLbs
	IP2rma6Z49UmPcZiMxWTKxL5akqtuj8qhpW34uJeXqQqg1w1RSojPR2jeJ0ccjSP+N9X
	8/JcJ8nDHD2eNv0UA7dX0UMsBgXKZvpzLM5Rang/cv9ZSWdGYNWBpCTKdoKxiEKW8RtQ
	oqSiHi+VttyrmGanWUOSGyIZhE0EXEzQCf9IsvgEcfELcviJ1g7andWeE3uIeOPDdAOE
	9YsvHS1VBsrO9a3NbfeLM3Bj24ddcEhuJxfidXI0mJu6uSzWE+rHigVzlwOKHS/twVwy
	sIzQ==
MIME-Version: 1.0
X-Received: by 10.224.38.68 with SMTP id a4mr19283638qae.85.1411657998563;
	Thu, 25 Sep 2014 08:13:18 -0700 (PDT)
Received: by 10.140.44.68 with HTTP; Thu, 25 Sep 2014 08:13:18 -0700 (PDT)
Date: Thu, 25 Sep 2014 23:13:18 +0800
Message-ID: <CACjDgAPJAqtkL6pP-_ncoE18KsDfM2k0pGpbN8VYkV9QM5X1uA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: yocto@yoctoproject.org
Subject: Recipe for HHVM?
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
X-List-Received-Date: Thu, 25 Sep 2014 15:13:24 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Does anyone know if there exist an recipe for HHVM?    Thanks.

https://github.com/facebook/hhvm

