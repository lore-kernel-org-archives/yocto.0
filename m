Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEAF4E00769; Wed, 12 Nov 2014 13:18:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 088B5E00769
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 13:18:21 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id va2so9970849obc.0
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 13:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Kb8EEogAPPBCH5w/kgDI4oyTdrcAWyc2x/SfrlS89u4=;
	b=T3o2dJb2OdaN+dQ/PTjZLyEXWhddsDE4l0BsLIQj8jKIfW9xL+ksubeb1sVJVuso7r
	ksH58WhJtNIb22f8H84NXXKIPbdS6upktzE8IfoHA3q3/BpoBLVTFwjtEStGfjRsWusb
	vBI7WfN8hYm2RsPbuxKplAmfSEhqFDj0smJtPELBNRjxQNAH94mPn7C05XnLkor5DxhK
	yfRARVjG7uJk13aTLqaupZ17YI7XjguvAqiKjMExlDIXQZtSpxTaTvfmNhZ2ei3FRr0j
	+Fm1pzSFJNX8Y/JRttCeqHrXrntRYFxiLOLK5/NbiWPDdMGLCvx0fBIUVaFS6exfgClx
	rdyQ==
MIME-Version: 1.0
X-Received: by 10.182.4.10 with SMTP id g10mr40970435obg.35.1415827100659;
	Wed, 12 Nov 2014 13:18:20 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Wed, 12 Nov 2014 13:18:20 -0800 (PST)
Date: Wed, 12 Nov 2014 15:18:20 -0600
Message-ID: <CAByxTR_FokGs5SHExf1o55j3UeeVWA_mugg+qdxAnYcR_=+-4A@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Hob and Toaster Languages.
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
X-List-Received-Date: Wed, 12 Nov 2014 21:18:23 -0000
Content-Type: text/plain; charset=UTF-8

What is Hob and Toaster written in? Figured I would like to contribute
maybe a deployment tool when you have created a image (I know there is
the deployment tool for Hob but it only works for .iso and .hddimg FS)

Thanks,
John

