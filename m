Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5836BE00AF3
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:45:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 60916F81201; Fri, 14 Mar 2014 10:45:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6FAD7F811FD;
	Fri, 14 Mar 2014 10:45:09 -0600 (MDT)
Message-ID: <5323321C.8030709@mlbassoc.com>
Date: Fri, 14 Mar 2014 10:45:16 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACP9YJcdsdfdTGO6AmA+nPYzrR6St0-4n8QVFL3ujoGeVp6+cw@mail.gmail.com>
In-Reply-To: <CACP9YJcdsdfdTGO6AmA+nPYzrR6St0-4n8QVFL3ujoGeVp6+cw@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Building a metapackage
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
X-List-Received-Date: Fri, 14 Mar 2014 16:45:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-14 10:34, David Welch wrote:
> Hi,
> 
> Is it possible to build a meta packages whose sole purpose is to bring in dependencies?
> 
> Suppose I have package-1.deb, package-2.deb and package-3.deb.  I would like add a .bb file to build a metapackage for those three packages.  I have tried the following but it
> didn't work:
> 
> SUMMARY = "Package"
> DESCRIPTION = ""
> LICENSE = "CLOSED"
> DEPENDS = " \
> package-1 package-2 package-3 \
> "
> inherit meta
> 
> My use case is a series of voices by different manufactures which need to be installed on a per-manufacturer basis.  So all the voices from manufacture1 would need to be installed
> on one machine and all the voices from manufacturer2 need to go on another machine.  There are about 50-100 voice packages per manufacturer.

I think packagegroups (previously known as tasks) are what you are looking for.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

