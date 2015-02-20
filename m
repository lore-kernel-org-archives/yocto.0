Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB207E00853; Fri, 20 Feb 2015 05:19:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8527E00837
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 05:19:54 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AC43FF811ED; Fri, 20 Feb 2015 06:19:53 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E274FF811E9;
	Fri, 20 Feb 2015 06:19:52 -0700 (MST)
Message-ID: <54E7347B.8070801@mlbassoc.com>
Date: Fri, 20 Feb 2015 06:19:55 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <54E72D96.9040504@mlbassoc.com>
	<CAJTo0La_Ky_1voaDaCt=m_XZMFnTCD__JpvMmDBF+dC+ynpcaA@mail.gmail.com>
In-Reply-To: <CAJTo0La_Ky_1voaDaCt=m_XZMFnTCD__JpvMmDBF+dC+ynpcaA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: glibc fetching problems
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
X-List-Received-Date: Fri, 20 Feb 2015 13:19:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-20 06:16, Burton, Ross wrote:
>
> On 20 February 2015 at 12:50, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     This is because any attempt to clone that repo breaks:
>        $ git clone git://sourceware.org/git/__glibc.git <http://sourceware.org/git/glibc.git>
>        Cloning into 'glibc'...
>        fatal: read error: Connection reset by peer
>
>
> Works for me:
>
> $ git clone git://sourceware.org/git/glibc.git <http://sourceware.org/git/glibc.git>
> Cloning into 'glibc'...
> remote: Counting objects: 408341, done
> ...
>
> Transient error?

Must have been, it's working for me now as well.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

