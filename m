Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18C8CE00D00; Fri, 10 Jun 2016 03:06:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5295E00CC0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:06:19 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 0315468A01D; Fri, 10 Jun 2016 11:06:17 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1736168A019;
	Fri, 10 Jun 2016 11:06:17 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id ACEC467400B0;
	Fri, 10 Jun 2016 12:06:16 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <575A7B40.9050509@mlbassoc.com> <575A7CAF.2050207@mlbassoc.com>
	<CAJTo0LZenM_UO1QRzWCVDGyurcyzKNrYnHVYjmCSpyJNfjK85w@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <575A9117.2080203@mlbassoc.com>
Date: Fri, 10 Jun 2016 12:06:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZenM_UO1QRzWCVDGyurcyzKNrYnHVYjmCSpyJNfjK85w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 10:06:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-10 10:42, Burton, Ross wrote:
>
> On 10 June 2016 at 09:39, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Any hints on which (and why it's not being recommended by the sanity checker)?
>
>
> It's not recommended by the sanity checker because its only needed by depexp and on a X11-less build server will pull in
> vast numbers of packages.
>
> It's the python2 GTK+2 bindings, so something like python-gtk is a good start.

I do have that package installed, but I think only for python2.

bitbake -u depexp used to work on this same system before the change over to
python3 in bitbake.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

