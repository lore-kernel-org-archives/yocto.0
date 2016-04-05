Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59C38E00C02; Tue,  5 Apr 2016 09:50:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B55DE00B9E
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 09:50:18 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id fe3so13921016pab.1
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 09:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=4mu+B4PT1XiOic65JjFpQtpTzDGVdQrMHY1HoBRglD8=;
	b=UgfPTYrjOLKlPsSy3g+vBQLRDQ8EmDHXW4BPo85vyv+hYQqozvg8f+vfU+FnIIFtUi
	pAGf4FTyObkEgS8D3eIuLOWfjZOwy3j+izmc8NtdUgVhXR/dD0R18/jMhvhzN+sZS+KE
	EnINSt8RntNjdeo8vVXww1tqrypZjFRmpZopCYSEAnxEVUFfBbacdQ9sU9dDBeZqFgEL
	SjrV4hznLSOtIPWEXTm+d53F2qswr7gLyWuiuA+MSQMyLAB87RC/PL+0FnjbWjbS2FuF
	rIVwqYVTFyyct9WNwHAW7dzRyE6HC1dLUqYmiKe1eJQBQau6q8mt4bui8OXM7JZok0yO
	07hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=4mu+B4PT1XiOic65JjFpQtpTzDGVdQrMHY1HoBRglD8=;
	b=OglD/4Y2NG2V1+ikN0rUdq0PWQF1EvGDjbQDSqpfY9oEt47S7oevX78u3DsjNIt7Qt
	eE+0Hs0Dn9iVu0SsBaFAIza4788V/QNxtwy+ORiGzFGV839PzcNhvackPL5JY6Dz3oD5
	GMv9pva7YLl1+8x8TBwEKiZbLcxNXULKRZY4dZck5sdEjxVRBo+qVlDdLKrw2tCkQZYk
	Vevmq8i/+pAbqAlPwtyDf2T1BpRZcX/cFpx36bR6lUrNmVtQof1HrMeXJtkL6fBhjH1l
	ZLd6HkTICnVYdd4qN5ItRbzG5lwjMh+avmloSyITCwZsvA74NWq/pylQByuxUr6TIgso
	2ogQ==
X-Gm-Message-State: AD7BkJL19vII0zOO5QeDcLqAfQ3GNVFFo2aurtVugeGmnyzXpSn5accSlVn8JmJ9jpV6LQ==
X-Received: by 10.66.148.232 with SMTP id tv8mr63346461pab.21.1459875018073;
	Tue, 05 Apr 2016 09:50:18 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	d12sm48064459pfj.85.2016.04.05.09.50.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2016 09:50:17 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 05 Apr 2016 09:50:15 -0700
Message-ID: <25644105.gyxDGl902X@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.5-200.fc22.x86_64+debug; KDE/4.14.17;
	x86_64; ; )
In-Reply-To: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Tue, 05 Apr 2016 16:50:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ron,

On Tuesday, April 05, 2016 10:37:07 AM Ronald Oakes wrote:
> When I try to build either emulated or real 64 bit distributions on an
> isolated system running Debian 8.0.3 (using BB_NO_NETWORK = "1"),
> utilizing a downloads directory copied from a system running Centos
> 7.2.1511, I get a failure in the do_install step for Python.
> 

Could you please post the error message from the log file of the install task for Python?

> I plan on recopying Python.tar.xz onto my isolated station and trying
> again.  But, if this doesn't resolve the problem are there any
> suggestions?
> 

Considering that according to your info above the failure occurs during the install task, the source package is most likely not the culprit. However, the source tarball should be named something like Python-2.7.11.tar.xz which includes the version number.

> For what it is worth, we're probably going to be moving to newer, but
> still isolated, build stations shortly.  These new stations will be
> running RedHat instead of Debian if that might make a difference.
> 

> Thank You
>   Ron Oakes
> 


Best regards,
Rudi

