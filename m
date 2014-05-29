Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4F7CE00B74; Thu, 29 May 2014 06:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.chez-thomas.org (unknown [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C906E00B6A
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 06:09:25 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4AD5DF811F9; Thu, 29 May 2014 07:09:25 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 43140F811F8;
	Thu, 29 May 2014 07:09:24 -0600 (MDT)
Message-ID: <538731AA.6090906@mlbassoc.com>
Date: Thu, 29 May 2014 07:10:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAPegz2wnPiugMeJ=ARa6AqLD6J59JUhPbTY7SZ9_yfL2JbDdw@mail.gmail.com>
In-Reply-To: <CAAPegz2wnPiugMeJ=ARa6AqLD6J59JUhPbTY7SZ9_yfL2JbDdw@mail.gmail.com>
Subject: Re: [meta-oe][PATCH 1/2] dfu-util 0.7 recipe
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
X-List-Received-Date: Thu, 29 May 2014 13:09:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-29 06:46, Chris Morgan wrote:
> dfu-util 0.7 is the latest release of dfu-util

These patches should be sent to the OpenEmbedded mailing list
   openembedded-devel@lists.openembedded.org

Also, check the README in your repository for details, in particular
the use of git send-mail for patches is preferred.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

