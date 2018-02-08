Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A064EE00DFD; Thu,  8 Feb 2018 13:02:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB623E00D5F
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 13:02:58 -0800 (PST)
Received: by mail-lf0-f52.google.com with SMTP id k19so8336886lfj.1
	for <yocto@yoctoproject.org>; Thu, 08 Feb 2018 13:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OxOiz9ESaqsC60GmVcX1sAByzclNhoV/lvy0uFUlT3M=;
	b=1E3Spula4CX8YfwdrOGZj/pWZXd3En66cl9WjKt8r7ePwPWR0IZCcy1ELdkcgB5B/X
	6Wz3kFKPCoG/grz4vfn2rqbZJ5hlVjrT/movnIOmgDgheI+JSwCu7+lTsFGJob403MSI
	7G9gRxxrEo51OS5RCR+spNegM9CL5WFm92bFov+Zvz2tdl3aWhqzcD/QxEwvHOLJBZkN
	Yur77YXgm7lrQfhAE8sRD7Q3XckYZ45QyM9+RkSXq5dj9f84ThWPRlsuoc2dEuGzJxq2
	ZogyDYr8T7TdzXVg2ooDuW+i5SoUKk0EHJrYORji63BVMRtVIk4w6Tr595Md6ByA4zYQ
	7tww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OxOiz9ESaqsC60GmVcX1sAByzclNhoV/lvy0uFUlT3M=;
	b=OKAsgfv3gzjtPI0R7Fjdifo/gzuveulFoIO5KfA7WalUTJS4pcfhOFqbEKNH3f6qV5
	PlvcFMjXth2IaVYlc7YBWbOdw6LCogJ/oUABDGRClIsIa3hrH1frdy7J373RePDvU9nQ
	r5Gt3psTTebApslvya2Olt5uPr4QE8BAcRZtQNrbJBus3oXKRPKt+9mr+71Crap+9V6b
	iP/pGlz39aDNVu0MULQ/xdh2x4nB6LVS3laJHnxadE4+TaOxNc3a+FID+BGfMy4TvcYq
	Pxb+bOcfhLF1fQVZ8Zj4VaKsO3onYm6ZxkkudU+I4ekDX/GpaDi3xsEtkTaE6PMhwLeE
	5+9A==
X-Gm-Message-State: APf1xPA9j04U0iGiZ8KwKF24zBSCKuI3yBCMR4JML/51RlShxXocblX3
	vVUKrTZd1h0DFrSTqIy0KRdsTqcSd4sRy4TDcjNvJA==
X-Google-Smtp-Source: AH8x225jl7ajjWVTaPiRGWajNblUexzqJz4HaOUU2wkCaA/r9fFtCgCZJdnio96ET0LDvFHeL2mMwEeHs8UcUaGudAc=
X-Received: by 10.46.70.18 with SMTP id t18mr18669lja.41.1518123777692; Thu,
	08 Feb 2018 13:02:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.28.4 with HTTP; Thu, 8 Feb 2018 13:02:57 -0800 (PST)
In-Reply-To: <CAFzUWGnqxFak4naXMWMJMpqucZuBdiYbvs3uFzt64usN82OA4Q@mail.gmail.com>
References: <CAOT_U5a_cTCpAHHqPfozcH0Lxu=O1BFYgVa-FkdZcR0-+X8QQQ@mail.gmail.com>
	<9fd5ab57-6634-c619-e0ba-a16fab765de0@linux.intel.com>
	<CAOT_U5ZCxWFQGAWgt9rfv=FLxDr8=c3xaa0TNqnDNbHWLY4=LA@mail.gmail.com>
	<CAFzUWGnqxFak4naXMWMJMpqucZuBdiYbvs3uFzt64usN82OA4Q@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 8 Feb 2018 22:02:57 +0100
Message-ID: <CAOT_U5bp9H6bLgOYOJ20_Jg6HEQOg3D3kNeNX+m5hPhicNN6og@mail.gmail.com>
To: Giordon Stark <gstark@cern.ch>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a python recipe with devtool
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
X-List-Received-Date: Thu, 08 Feb 2018 21:02:59 -0000
Content-Type: text/plain; charset="UTF-8"

This particular one didn't provide a tarball.
Can't really say if it's an exception or tendency with the whl
starting to take over.

On Thu, Feb 8, 2018 at 3:04 PM, Giordon Stark <gstark@cern.ch> wrote:
> This also works with the tarball URLs from pypi which is a bit easier to
> manage (version-wise).
>
> Giordon
>
> On Wed, Feb 7, 2018 at 7:10 AM Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>>
>> Thanks, that worked!
>>
>> Steps:
>>
>> # On the build server
>> devtool create-workspace
>> devtool add  https://github.com/jruere/multiprocessing-logging
>> devtool
>> devtool edit-recipe multiprocessing-logging
>>     # Change for building for python3
>>        inherit setuptools -> inherit setuptools3
>>     # delete the RDEPENDS that were wrongly detected
>> devtool build multiprocessing-logging
>> #Prerequisit: ssh root@10.10.10.100
>> devtool deploy-target multiprocessing-logging root@10.10.10.100
>>
>> #On the 10.10.10.100 device
>> python3
>> import python3-multiprocessing_logging
>>
>> #On the build server. Finishing
>> devtool finish multiprocessing-logging
>> /home/alan/meta-myproject/recipes-devtools/python
>>
>> On Wed, Feb 7, 2018 at 1:25 PM, Alexander Kanavin
>> <alexander.kanavin@linux.intel.com> wrote:
>> > On 02/07/2018 02:17 PM, Alan Martinovic wrote:
>> >>
>> >>      devtool add
>> >>
>> >>
>> >> https://pypi.python.org/packages/65/eb/1c3db9596eddb2bd1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2.6-py2.py3-none-any.whl#md5=b7783a8c449135e5bb344b3f0caa3522
>> >
>> >
>> > I don't think we support .whl format at the moment. You need to fetch
>> > sources directly from github.
>> >
>> >
>> > Alex
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Giordon Stark

