Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5EEAE00DAF; Thu, 24 Sep 2015 16:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4A4E00AC5
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:47:32 -0700 (PDT)
Received: by oiev17 with SMTP id v17so50232282oie.1
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aMItdbU6aeqlxPxvexdi+sd/f3wfE0vuAnqicY++yBU=;
	b=SYkcfyc3jKIIECTh1jggttfSaRHm1QJU0JRhk2Kq/Dz5S5tvRZYzyjEGjolNl1AH9q
	THDW9SrGtt1Btwt8DhMA1BenO6eJJkDGfu4QLszKIq1HnIdoBjO1D35U4adhCcwfnAQe
	e9nBoVL6QyMVLHaTQXfF04LMQbwAUmxel3pBJvEXAFhNtofLumbf6uQ4+LPm6xpQFQ+L
	ZF2QfwITNLcQuVxMJs1dN8/ZG0rGfhc3YX4vQ0KE2NtF3aHSI2NoWW27Yujf1WtU79lb
	THbDscZ7fpr0xPDTBnYjx1zRbvo0wsHk/7Iy8S0U27zyld/7FXYlI9pBINeMadwe/ALf
	P/zA==
MIME-Version: 1.0
X-Received: by 10.202.183.3 with SMTP id h3mr1266869oif.58.1443138451588; Thu,
	24 Sep 2015 16:47:31 -0700 (PDT)
Received: by 10.76.147.104 with HTTP; Thu, 24 Sep 2015 16:47:30 -0700 (PDT)
Received: by 10.76.147.104 with HTTP; Thu, 24 Sep 2015 16:47:30 -0700 (PDT)
In-Reply-To: <C1A04CEA-EE1B-49E0-B675-4C319BA62244@curtisembedded.com>
References: <C1A04CEA-EE1B-49E0-B675-4C319BA62244@curtisembedded.com>
Date: Thu, 24 Sep 2015 16:47:30 -0700
Message-ID: <CAEKp-aYpV_d8Xx_82uxp=Z-AodLZ+RfPEYFUevu-ka_-Ny2wzw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Allen Curtis <allen.curtis@curtisembedded.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Thu, 24 Sep 2015 23:47:33 -0000
Content-Type: multipart/alternative; boundary=001a113ce59cc4ca4d052086da95

--001a113ce59cc4ca4d052086da95
Content-Type: text/plain; charset=UTF-8

>
> What are the rules with appending included recipes?
>
File inclusions with include or require are literal: the content of the
referenced file is inserted at the very position of the statement. The file
extension is irrelevant, meaning any appends to a recipe do not get
included.

:rjs

--001a113ce59cc4ca4d052086da95
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
&gt;<br>
&gt; What are the rules with appending included recipes?<br>
&gt;<br>
File inclusions with include or require are literal: the content of the referenced file is inserted at the very position of the statement. The file extension is irrelevant, meaning any appends to a recipe do not get included. </p>
<p dir="ltr">:rjs<br>
</p>

--001a113ce59cc4ca4d052086da95--
