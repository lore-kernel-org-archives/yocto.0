Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F09E00473
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 06:57:29 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AD0B5F811F4; Sat,  9 Nov 2013 07:57:28 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6525EF811F3;
	Sat,  9 Nov 2013 07:57:27 -0700 (MST)
Message-ID: <527E4D67.20507@mlbassoc.com>
Date: Sat, 09 Nov 2013 07:57:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+JN8xM_BVwtfu2RkZ324DWvSkxr3uAm+RU6tX6smSoV3ppqRg@mail.gmail.com>
In-Reply-To: <CA+JN8xM_BVwtfu2RkZ324DWvSkxr3uAm+RU6tX6smSoV3ppqRg@mail.gmail.com>
Subject: Re: ldd
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
X-List-Received-Date: Sat, 09 Nov 2013 14:57:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-11-09 06:42, Seth Bollinger wrote:
> Hello All,
>
> I don't see that ldd is part of the cross toolchain build anywhere.  Am I missing something?

It's built with the eglibc recipe and is packaged separately.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

