Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 134DEE00871; Thu, 12 Mar 2015 21:43:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9042E0085D
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 21:43:11 -0700 (PDT)
Received: by qcvx3 with SMTP id x3so24082733qcv.0
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 21:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=ZIsme6fvG6kUfjHUb4flzymJUT8rqQusvAcr4acdNpI=;
	b=0Mkyb6Sx8JINgoYGofxPcVLQ+jhuJsYmqD9WQZKGJnc9VHzMqvOXbyTCyXWwzW5Zos
	KrzmiBzQuAZTA+UOYc3YhS9eq7rG7XdDZFFLVtPtwdL16LFY4gvmdcqpOUy1qv42p3iX
	qGnhAE76EETdLFUanS8z6KmO+3UvYWfcdGUWvKDawP6DW9RqNL/WYJzuJ1w6Q2UWj4oQ
	lkjbdpll9W8I/1BZSnsfPNNyAv2OEMMZ6XRh3I2hHsqvT8lGmfGpaROdUPnGUvVwV6E+
	l90ZLKpiHe0YrN9iJNoh5oXT9P2vQU50vj9FHBfoesYCG17sIUWu0dbsy7VOW9koBGO1
	DzZg==
X-Received: by 10.229.213.73 with SMTP id gv9mr21139814qcb.18.1426221790579;
	Thu, 12 Mar 2015 21:43:10 -0700 (PDT)
Received: from 10.25.240.109-ra01.westchester.pa.bo.comcast.net
	([68.87.42.115])
	by mx.google.com with ESMTPSA id k47sm711962qgd.2.2015.03.12.21.43.08
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Mar 2015 21:43:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACjDgAMTi_5Jk-p4n8F80XaZzaZ637q+5pvErr=ZfsSb2n5D2w@mail.gmail.com>
Date: Thu, 12 Mar 2015 21:43:06 -0700
Message-Id: <A01D920D-DAC8-44A6-9FD4-82B54C4B8E55@gmail.com>
References: <CACjDgAMTi_5Jk-p4n8F80XaZzaZ637q+5pvErr=ZfsSb2n5D2w@mail.gmail.com>
To: Albert K <alberk@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Dizzy branch with Linux Kernel 3.19
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
X-List-Received-Date: Fri, 13 Mar 2015 04:43:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


> On Mar 12, 2015, at 9:21 PM, Albert K <alberk@gmail.com> wrote:
> 
> Dear all,
> 
> I would like to know if it is possible to do a compile with Linux
> Kernel 3.19.  I have tried the  PREFERRED_VERSION_linux-yocto_qemux86
> = "3.19%"  in the local.conf and it does not work.
> 
> If possible, what need to be done to the this going.  Thanks.
> 


you need to back port or write recipes for 3.19 kernel first

> Regards,
> Albert.
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


