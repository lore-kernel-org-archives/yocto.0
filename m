Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DBB1E00712; Sat, 28 Feb 2015 06:06:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 720BBE00321
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 06:06:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C045EF81199; Sat, 28 Feb 2015 07:06:11 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 54296F81199;
	Sat, 28 Feb 2015 07:06:11 -0700 (MST)
Message-ID: <54F1CB64.8090804@mlbassoc.com>
Date: Sat, 28 Feb 2015 07:06:28 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CALTPfpFg1PjpHq3m3U308yFxaxJfnhM=RHD+3vCVMLe79L5DOA@mail.gmail.com>
In-Reply-To: <CALTPfpFg1PjpHq3m3U308yFxaxJfnhM=RHD+3vCVMLe79L5DOA@mail.gmail.com>
Subject: Re: Error while building my own package
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
X-List-Received-Date: Sat, 28 Feb 2015 14:06:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-28 06:08, Priya Agarwal wrote:
> Hi,
>
> I want to add a very simple autotools based package to the kernel image (for freescale's t4240qds board) I built with yocto for testing purposes.
>
> Background: I wrote a simple c++ code, autoconf and automake'd it and compressed it as tar.bz2 file. Wrote a simple recipe for it. I have attached both the files.
>
> Problem: When I do bitbake <mypackage>, I get 2 errors. Basically do_populate_lic and do_configure fail. Main errors is as follows. I have attached the logfile as well.
>
> ERROR: Error executing a python function in /media/NewVolume/yocto/meta-mylayer/recipes-examples/area/area_1.0.bb <http://area_1.0.bb>:
> ValueError: need more than 1 value to unpack
>
>
> I have less experience with yocto, so please pardon me for silly errors.

Check the logs carefully.  The configure error is
ERROR:      0051:        bb.fatal("Licensing Error: LIC_FILES_CHKSUM does not match, please fix")

This one should be obvious - the checksum in your recipe does not
match the checksum of the real file in your source package.

The do_populate_lic error is a result of the first.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

