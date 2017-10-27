Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26EFE00D4D; Fri, 27 Oct 2017 11:59:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.53 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3DCE00D47
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 11:59:42 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id j3so5963682pga.1
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 11:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BfbJ/GOjOMnQ/Z+/I7iJNUdi9czqDls52Y+fDLBejWM=;
	b=RHCZ/y4FUajvkBmKsCBQXiFO1V5bRVPXyZo7o5xARkhJCqIXptPoAEixww0lJNH7ty
	7UG9mHow8fPts3QC04rWZlcBWGRYpzkCT65szTC+GeJVNT7OKAkiZ97+jpj1iiKIW5SX
	8U4ImTjRdZACkrUGY62UlnN3f43pF0IIDqHQnKjGCTt+j7LbaOt8rLgFdRyA48v1ZbR5
	hTxo+OW3yI2hPmCUKyptqqrfUhr4R8+WLliInA/qQE8JE+ikEiy5Plj3zzb1c25IVKAx
	ejAkUEbOyIhveaY0UrlnYLdIGk/WLdqTMa0oi9fPqk+6JyuK77OBf6RUkF/Kx2VZJhb1
	UoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BfbJ/GOjOMnQ/Z+/I7iJNUdi9czqDls52Y+fDLBejWM=;
	b=Z9g4TJs0G1Pq+MRjxGBu4MY5gzttudQrBuvycECUWJnItTmrcsCyPcLq5z+beqQ8kW
	1B5fhLlZvE14sT1vyqE73TJSiaYj/qJI0HmaJgzxnBL/WGUPAI7Xd+0J/Vieq6Rc481R
	EzuI7VYgF6Yrs80kW6mGWSdV/VG86FM4vkoW0lQG0geEKd65Q9L41TixrxpQWROKAWZx
	XCWOHDDRh7qlLANb+Hk0Dk5gTlKxm2wm8I7O30fUjLEpdpjBKOte5cznDSf1yQE1+iGO
	xU9x3iX8tfx73hXzgqdo8AEB4LagvWIBCGMSU4cbVzsj0cT230CJYjEo1PPzHvjCwQn1
	DQ9w==
X-Gm-Message-State: AMCzsaUelbBptos8aWUg/QBQYqFErUrwXsNbRDdwogTGhtWABNsaUn7L
	eMjqtuBU+1HuICpFhmEUiSyDEM8J2uaHnxF7duBhIg==
X-Google-Smtp-Source: ABhQp+Rm5pfIDthCVSkf1VDsqCNSle8qo59lToe/pF5T5KnCIuAKuTDiKrFvAGQ6qNqf2SwIt2lBxhMBj9W5vRiCRYY=
X-Received: by 10.84.247.129 with SMTP id o1mr1045756pll.6.1509130782294; Fri,
	27 Oct 2017 11:59:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.141.9 with HTTP; Fri, 27 Oct 2017 11:59:41 -0700 (PDT)
From: Michael Habibi <mikehabibi@gmail.com>
Date: Fri, 27 Oct 2017 13:59:41 -0500
Message-ID: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
X-Mailman-Approved-At: Mon, 30 Oct 2017 10:21:08 -0700
Subject: Using site.conf
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
X-List-Received-Date: Fri, 27 Oct 2017 18:59:45 -0000
Content-Type: multipart/alternative; boundary="089e0823206832c653055c8be439"

--089e0823206832c653055c8be439
Content-Type: text/plain; charset="UTF-8"

I'm a bit confused about the usage of site.conf. I see a sample in the poky
distro area, but I'm not sure how this actually gets copied into a
site.conf and actually used by deployed versions of our distribution.

Is there some extra step I need to take to ensure site.conf.sample from my
own distributions conf directory gets copied and actually used by our
engineers' environments?

--089e0823206832c653055c8be439
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m a bit confused about the usage of site.conf. I see=
 a sample in the poky distro area, but I&#39;m not sure how this actually g=
ets copied into a site.conf and actually used by deployed versions of our d=
istribution.<div><br></div><div>Is there some extra step I need to take to =
ensure site.conf.sample from my own distributions conf directory gets copie=
d and actually used by our engineers&#39; environments?</div></div>

--089e0823206832c653055c8be439--
