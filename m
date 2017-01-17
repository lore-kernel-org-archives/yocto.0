Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 517B1E008D3; Tue, 17 Jan 2017 03:08:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFA9BE0083D
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 03:07:59 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 95A4568A01C; Tue, 17 Jan 2017 11:07:57 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4D16868A019;
	Tue, 17 Jan 2017 11:07:57 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B612767402C1;
	Tue, 17 Jan 2017 12:07:56 +0100 (CET)
To: yocto@yoctoproject.org
References: <CY4PR12MB18808159F83D6E2C201099F7A57C0@CY4PR12MB1880.namprd12.prod.outlook.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <b2a74112-7741-7659-4142-a6cf287b0e9e@mlbassoc.com>
Date: Tue, 17 Jan 2017 12:07:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CY4PR12MB18808159F83D6E2C201099F7A57C0@CY4PR12MB1880.namprd12.prod.outlook.com>
Subject: Re: How to change toochains to gcc 4.9.3
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
X-List-Received-Date: Tue, 17 Jan 2017 11:08:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-17 11:41, Richard Zhang wrote:
> Hi
>
>
> when I want to change gcc version to 4.9.3.
>
> I just change gcc & libgcc,but gcc-truntime still 5.3.
>
>
> Is there a rapid method to change everything I need?
>

Of course you'll need the correct recipes, but just add these
lines to local.conf:

   GCCVERSION ?= "4.9.%"
   SDKGCCVERSION ?= "4.9.%"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

