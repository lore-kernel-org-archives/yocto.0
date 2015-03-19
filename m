Return-Path: <itspreetip89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D08E00777; Thu, 19 Mar 2015 09:07:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (itspreetip89[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f195.google.com (mail-lb0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 516EAE00718
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 09:07:33 -0700 (PDT)
Received: by lbdu10 with SMTP id u10so2057129lbd.2
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 09:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Rgi4a++69E0bX2JbUnxKkHTvCSSfwDtOLyv1i0xLL14=;
	b=c7Qc8xU4LNRQDwylYIhT5IpQ00cRvHFCNgelT0xe9kz6cOtjD4FXnVuHc9toTSxa1R
	ToyJe2r3hQPIdKX9K23ONrSGTkxIG6F3O8uiV6/ryR01U2s03xFYopDB2yd/EmSn9STq
	+43oUuzt6cPGS7tCHcnoS0w95jzPrR5zgvCgX6/WFujoPvix3dvLCsJCMFE3hfzXAOrF
	11S62pzfu6wYuQb3G8mJUUH9B255EOZwXIBmZ0UqCxbpcoQUCUfL8RPOSQUcZz9IlTND
	xeTRgbmOib73qWorsg8WgPTBDto0DejlAWTRveQowf6PMGhFM5yduyW/HudLHQivvl6U
	iFDA==
MIME-Version: 1.0
X-Received: by 10.152.26.201 with SMTP id n9mr68603688lag.29.1426781251499;
	Thu, 19 Mar 2015 09:07:31 -0700 (PDT)
Received: by 10.25.29.8 with HTTP; Thu, 19 Mar 2015 09:07:31 -0700 (PDT)
In-Reply-To: <CA+jjunDcbN-xq8TUB_8y6+HKnhErtckaGYgU7RnhGxV0OC1Qfw@mail.gmail.com>
References: <CA+jjunDcbN-xq8TUB_8y6+HKnhErtckaGYgU7RnhGxV0OC1Qfw@mail.gmail.com>
Date: Thu, 19 Mar 2015 21:37:31 +0530
Message-ID: <CA+jjunCbZfd-b+V_ipMtdWkkLwyN6xJJH3vhHjGmKG8p8b8doA@mail.gmail.com>
From: Preeti P <itspreetip89@gmail.com>
To: yocto <yocto@yoctoproject.org>
X-Mailman-Approved-At: Mon, 23 Mar 2015 08:14:00 -0700
Subject: : About adding documentation in final SDK image
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
X-List-Received-Date: Thu, 19 Mar 2015 16:07:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I am working on adding the documents in to my SDK image.
Basically, I want to have the man and info documentation for the tool-chain
item in my SDK image.

As per my understanding, the install package for every recipe gets split
into different packages and finally shipped in to the SDK image.

To add the documents in my SDK image, I tried to add the '-doc' support in
'PACKAGES' variable but still the documentation related files are not there
in the final image.

I even tried by adding below lines in to the do_install function in my
recipe but my final image does not have those files:

do_install {

                install -d ${D}${includedir}${doc}

                install -m 644 ${S}/doc/*.info ${D}${includedir}${doc}

}

Can anyone provide me inputs on how to add the documentation for packages
in to the final SDK image?

Thanks,
Preeti

