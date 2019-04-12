Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDEF3E00BAB; Fri, 12 Apr 2019 06:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
	[209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA796E00994
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:51:53 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id j184so5553701vsd.11
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=SoWTqrYAPv/x7g24wPpudBDtU029hZIcHWVALyoKUEU=;
	b=DY+mSJ2laoA2vDADhP1pG4+yRpBKEOB1qXsmQKiBgRGXcmWRvsq3uLPUHfuEPClYQL
	Hgdbeb6Xo6t5WpEGUTSm/2qTIRh/MHnfSMNC6/jI1leImr90zTWfcVRmtkeQLhb7kWfQ
	lH9gWczfPUa7wYy+/jy7+4Dj0BbukVH7RiLhVc0KCDoe4WNDls10uPohm2tZjBp7RwLH
	Z4xDpK/FVo0fC7iHcO+9076RXrV+DJKbNpw121Ut9HSsy6+OYqYW93BeFFv5DuZAZpeS
	DwhManhakhjNiNPyXZI1iP36QP23J+PNMR1op2Gw0J0bRQ8RITrtGTO/JoTUrst8pDDg
	ZEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=SoWTqrYAPv/x7g24wPpudBDtU029hZIcHWVALyoKUEU=;
	b=DNUyjLxOZXZAMWVd7+ulg4oGpR0zysSDb8o4BLru6VtkrLs6pFYVlNY+eG/1Ar/NaA
	7DCbAjyzUiIst3oxOaBQKEbYKIkUmh2xF16UWNYSnxklw7tt1JK/gvfx/SaK5edhMAtH
	kerKMxTeqbGgDCJQ2YdxqOwiT7uPonWSldlHBlFl4/vt2Kve7xFswblHWvuup2ZcgwEo
	QRmXb4iSsOSTsXqfwAuQRtD+jDsyqREQTIogkouAnukCwcXekhyr+MnpypMqjNe3ZgJK
	udmG+TMPwUr+J5pjKqwDUygg8a5PppGpjJFZGuNMYbts9+iGrFQw8VlGmQMK13etIikt
	YaxA==
X-Gm-Message-State: APjAAAWPpsfahZheGwvBJYUWIWlj4lu8MTH7l0xkCS1cFaTzzhIRxEJs
	ZuaRKWQNjo+SXA0cgWmzbW9GxIaNUNI6JtIQjyh51lC22Ow=
X-Google-Smtp-Source: APXvYqxAUAD7T0QeyRuPrevCAJZVSvo6D4RA1aVDP8iDjHGOnI4tUZjHvnJ8m908OLxuGp77nROaojzQ8uSrLuq2oos=
X-Received: by 2002:a67:ed0b:: with SMTP id l11mr2202696vsp.55.1555077113070; 
	Fri, 12 Apr 2019 06:51:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Fri, 12 Apr 2019 06:51:52
	-0700 (PDT)
In-Reply-To: <CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
	<CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
From: Eric Grunt <gruntblue@gmail.com>
Date: Fri, 12 Apr 2019 20:51:52 +0700
Message-ID: <CADB9fJG-QvmZ2hM20W8vNrUQ5phRd7ZvSrMo-Q_eQB6Jr+Mawg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Fri, 12 Apr 2019 13:51:54 -0000
Content-Type: text/plain; charset="UTF-8"

> The dependency code is only triggered if the image type is in
> IMAGE_FSTYPES. Did you add it there?

Yes, in the distro conf file.
Guess, otherwise it wouldn't be built at all (since it isn't
dependency of another fs)

