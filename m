Return-Path: <andreas2025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D659CE00A38; Thu, 25 Jun 2015 10:52:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreas2025[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7552E00A03
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 10:52:49 -0700 (PDT)
Received: by ieqy10 with SMTP id y10so59865425ieq.0
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 10:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sr7NYnSvgXf4MPdeCYw9nwhdlBHOnga/s+ljcP7G4Ng=;
	b=rZ/S2Sv+tcKYicAdeGr6LxJ/Vx77RikdW/gw69xb1CT3lp4x4SqSdE4btFgPRzITGB
	bUxDn1xhooNodlUSH0pNDNZgb/uiLd6wf+j6UyWLPprDq2IGZ3NyfnSKG07V89Smtrqw
	O5EXIX7SwPewWqfDV5ThxCiz5rgr736PtYZ0uABT0GenpiX+w8SKXz92gfdVFyRioKfp
	+DQYTHYqaLvJlW7ecDgToyJZ695MOeAXRMfm04v9hZwsIFa4bIdTyjWfO4Y2ozLu9G9i
	ru3XjnWX/lV/qcrd863m7cm1maLMwrIGq7Aj+qBzb02u0krghwb8mBSyEmoOX5qaZ9DD
	ma8Q==
MIME-Version: 1.0
X-Received: by 10.42.167.129 with SMTP id s1mr46214562icy.54.1435254769417;
	Thu, 25 Jun 2015 10:52:49 -0700 (PDT)
Received: by 10.36.6.130 with HTTP; Thu, 25 Jun 2015 10:52:49 -0700 (PDT)
Date: Thu, 25 Jun 2015 18:52:49 +0100
Message-ID: <CAAVaN8y3kCLAiVS3RiE=Effd59y5shk=YX-0sFiKMPLE06VOWQ@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Pickup the latest changes
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
X-List-Received-Date: Thu, 25 Jun 2015 17:52:54 -0000
Content-Type: text/plain; charset=UTF-8

Hi

I would like to make a Yocto recipe that picks up a package from the
server that has the latest timestamp. It has the same filename but,
differnt timestamp, how do instruct my recipe to check the timestmp of
the tar.bz2 file and try to get the latest?

thanks
Andy

