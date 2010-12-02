Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 975AB4C80FAC
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 12:56:57 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 50271166084E; Thu,  2 Dec 2010 11:56:57 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3107216607FD;
	Thu,  2 Dec 2010 11:56:56 -0700 (MST)
Message-ID: <4CF7EBF8.90609@mlbassoc.com>
Date: Thu, 02 Dec 2010 11:56:56 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Tim Bird <tim.bird@am.sony.com>
References: <4CF7EB4A.3010109@am.sony.com>
In-Reply-To: <4CF7EB4A.3010109@am.sony.com>
Cc: yocto@yoctoproject.org
Subject: Re: Still having build problems - what version of python is	required?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Dec 2010 18:56:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2010 11:54 AM, Tim Bird wrote:
> So I gave up, for the time being, trying to build behind
> my firewall.
>
> I tried to set up a machine outside my firewall to do a build.
> Unfortunately, this machine is a bit dated.  It is running
> Fedora 8, with python version 2.5.1.

You need at least 2.6

> Here's what I get when I run bitbake:
>
> [tbird@tree poky-4.0-build]$ bitbake poky-image-minimal
>    File "/a/home/tbird/work/yocto/poky-laverne-4.0/scripts/..//bitbake//bin/bitbake", line 207
>      except Exception as e:
>                        ^
> SyntaxError: invalid syntax
> [tbird@tree poky-4.0-build]$ python --version
> Python 2.5.1
> [tbird@tree poky-4.0-build]$ cat /etc/issue
> Fedora release 8 (Werewolf)1
>
> What version of python is required?
>
> Note also that I couldn't find a prce package for this distro, despite
> there being an prce-devel page available.  I don't know how important
> that will be for building stuff.
>
> Is it a dead end trying to get a host distro this old to build
> poky?

Probably yes.  Can't you upgrade?  Fedora 8 is really old now...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

