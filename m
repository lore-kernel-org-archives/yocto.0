Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C2B6E00D08; Thu,  4 Apr 2019 15:16:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 752B0E009A4
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 15:16:20 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id k19so1932196pgh.0
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 15:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SCQTh5os3NnL4NGj+718sjDoGVHOMXxN8T5Pnk9/6bc=;
	b=qcKEeV+E8h2c+Cl/ogT0APDWpfnpqeLv4BJtUMog45ttQmlUzESYwMG+78rLC78mMA
	xhz7yf8naPg8qZNi/cik1Rl73/lToJa3inJpMkJRLFeZYMTPf+YZWjtHBUsiC8RxjGVk
	EVmEQyPQRd55gHjMGEW31kQAZkCTfvbDVHhsWI8f1u1/u7Iyb60z+1kPnkZe83Eyxgvd
	5I7olnbCuTeT+tOux82cIG/HLMhw/U3vIa0ZnUz+1s91iq98C9EJoEj0d+86ZX1gXOVi
	XtSKZofZf7fmqj6HSeijmeAlQx/lSFnBxeAKlc3VQEPuDRWHJjK6cfnklELWDIiIruak
	CoAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=SCQTh5os3NnL4NGj+718sjDoGVHOMXxN8T5Pnk9/6bc=;
	b=pNS4bLOeVPdx/swRTQxaECqmuMT6LrQOQvrZlKIalYmDZrXUnK5kFPDkHxgCh4Uqll
	1JFObt8A+iY7xs6xP51Lb7nqMjhoM+iTrh6RUJoNsQzrCImovGaem6oyXvc5ML6WGUcJ
	2Et35q6dux58bVBOQW6zNz7GsMmcVGo9vin6Bp91AYGa1IugeujXLR8KaBMSz2EMLenl
	XtGO0nA6wqsFHepy0D8kkLBem/MbSdM8Z9sivLAnR8Mcu0yqY9I4TJtq3W6pZrqA7azm
	Sr2SeFsFttS6cCaytdaOUxJ2aK7oLeJDASejj8jy1dGOkwXLuCcKPwSPSie9rxgnsLC8
	2+AA==
X-Gm-Message-State: APjAAAUEycA1ea9ycxONhnTkDGs+P3wdYxKt1Ie4epb3ysSMykDo3py2
	JARaPujNqCmdrcaPCDkZzG8=
X-Google-Smtp-Source: APXvYqzUMmYMAEL120SEJwYloWRY7yPsbNF55O7ORc3D1WGqFw1Z5wesQgNERFeSqq5Pq1sXevdHKw==
X-Received: by 2002:a63:e845:: with SMTP id a5mr8573546pgk.246.1554416179663; 
	Thu, 04 Apr 2019 15:16:19 -0700 (PDT)
Received: from [10.240.241.171] ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id x5sm2267576pfi.91.2019.04.04.15.16.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Apr 2019 15:16:18 -0700 (PDT)
To: richard.purdie@linuxfoundation.org,
	"Jain, Sangeeta" <sangeeta.jain@intel.com>,
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	Yi Zhao <yi.zhao@windriver.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
	<dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
Date: Fri, 5 Apr 2019 03:46:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
Cc: "akuster808@gmail.com" <akuster808@gmail.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Thu, 04 Apr 2019 22:16:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 4/5/19 3:25 AM, richard.purdie@linuxfoundation.org wrote:
> On Thu, 2019-04-04 at 02:19 +0000, Jain, Sangeeta wrote:
>> Also, I don't see any ptest results for 2.6.2.rc3 on public
>> autobuilder. Do you have any plans to run them and share the results
>> on autobuilder?
> These were run separately but will run as part of any new stable
> release builds. The results are here:
>
> https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/
> https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/
>
> (for 2.6.2 and 2.5.4)
>
> I'll merge these into the main release output in due course.
Did I miss something in order to create:
https://autobuilder.yocto.io/pub/non-release/20190326-8/testresults/testresult-report.txt

- Armin
>
> Cheers,
>
> Richard
>


