Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AEA2E00C4B; Tue, 27 Mar 2018 04:13:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
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
	*      [209.85.160.53 listed in list.dnswl.org]
Received: from mail-pl0-f53.google.com (mail-pl0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B921E00BF7
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 04:13:27 -0700 (PDT)
Received: by mail-pl0-f53.google.com with SMTP id g20-v6so2594401plo.9
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 04:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=klVoSP5Eg8hqq9cD/+cThGbsLtWMzXVn4yJQyDobyNo=;
	b=PSWGrdKYk21l2BsrL1V6BsvIZJLn+OhjLQV1phrbfmtOSqmkdvGxzOWNolOTFtEV/f
	frQf7Szinz7eomN1HVTRPlTW0IstDmrtIO0tOBY67hZsHTHOEw8lzoCeYcCH57t7inO7
	XljkIxySMil6wDQ0EUk+TbeEKXuUcUiGrFfky6z4yXlGZla6KMRd3pgvbwuAeoBhdSpH
	gyJXcerqyB5A+9So6bZUjsX+/+mmzW3fnYpXAs4ahHiQEMFAyQQUo/42D+Ett7eRh5FU
	YZNaTol+cHqGWzT/k2Yzf8wo2dwPEAHOPwHAS6uyAgmu+iM6Ot+FDxNJmccS6zdHz7ID
	3hyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=klVoSP5Eg8hqq9cD/+cThGbsLtWMzXVn4yJQyDobyNo=;
	b=e4X6HGPmN9ubnCRL7aD3JcKtg1Wuh6++ICa9ANia6rUBOSznry95eBancOfMgs/OGM
	3rsqyBlaTilSfJAwrFHyhobUJB4p0Xf7qx7fXiyiTQrJA5xORXBhZG6Va2oMO3bX/plc
	0KILLdAqVXjVzZytuw1rVa8dUOCkI/dlXSKJOIeM++qPDqczl80H/M+W3o/M1U8+P+ro
	UKpl1JLVFDW0KyPjBn5nBgeKtXAycho+xHZqm/pkNyVOC8d/2LPPa/y0yPwrfoKA9Kbe
	y+ptfXpbwgdn9jdCZ7lelA4AL+KKHXdl5qG7i6XiUM2HjNXv/l+/bynlf9oXy7Iv/SGK
	nKgw==
X-Gm-Message-State: AElRT7FZby/MeeREWdbWWJfeo7+wOLCMXC+ISnyQjshcJmOaFNgnmFHK
	DrYLuMLp+bJVKW3akjkDuFe2mgGAWRxwgkK0g6Q=
X-Google-Smtp-Source: AG47ELv2/uhz2QEgnXRYF0AibKjvVT+a9uv9LpjF0plzU49c5kwdg9/0u0YRNVSeD1jvAlXUnhhN9Uz+On8tvM7gw2E=
X-Received: by 2002:a17:902:594c:: with SMTP id
	e12-v6mr15066104plj.53.1522149207470; 
	Tue, 27 Mar 2018 04:13:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.66 with HTTP; Tue, 27 Mar 2018 04:13:27 -0700 (PDT)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 27 Mar 2018 13:13:27 +0200
Message-ID: <CAPb0b+OGpghGXLPb=gKQjAoCcvws11KDzxeU8q4x680dFzb6xQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to install pulseaudio
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
X-List-Received-Date: Tue, 27 Mar 2018 11:13:29 -0000
Content-Type: multipart/alternative; boundary="000000000000ce75d8056862fabc"

--000000000000ce75d8056862fabc
Content-Type: text/plain; charset="UTF-8"

hello guys
i want to install pulseaudio but i don't get it installed.
any body knows how to do it?

thanks in advance

--000000000000ce75d8056862fabc
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><div><div>hello guys<br></div>i want to install pulseaudio but i don&#39;t get it installed.<br></div>any body knows how to do it?<br><br></div>thanks in advance<br></div>

--000000000000ce75d8056862fabc--
