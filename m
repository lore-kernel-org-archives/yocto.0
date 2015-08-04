Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6754CE00A92; Tue,  4 Aug 2015 04:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FA0DE00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 04:51:51 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B7232F811D7; Tue,  4 Aug 2015 05:51:49 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 16CCAF81199;
	Tue,  4 Aug 2015 05:51:49 -0600 (MDT)
Message-ID: <55C0A75F.1000701@mlbassoc.com>
Date: Tue, 04 Aug 2015 05:51:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
In-Reply-To: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
Subject: Re: ADD GDB in FSL toolchain
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
X-List-Received-Date: Tue, 04 Aug 2015 11:51:54 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
> Hi all ,
>
> I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM board .  I wanted to build gdb along with the toolchain . I got some ideas from google to add the
> gdb-cross in the fsl-toolchain.bb <http://fsl-toolchain.bb> but on doing the same it gave me some errors when trying to build .
>
> Can you please let me know the right method to add gdb in the toolchain ?
>
> Below is the error i got ,
> *ERROR: gdb-cross not found in the base feeds (ls1021atwr cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*

Use gdb-cross-arm

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

