Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DD1E0148E
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 05:29:58 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7A8B0F811FE; Mon,  8 Apr 2013 06:29:58 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 14038F811EC;
	Mon,  8 Apr 2013 06:29:57 -0600 (MDT)
Message-ID: <5162B84A.2020707@mlbassoc.com>
Date: Mon, 08 Apr 2013 06:30:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5162A418.4070204@mlbassoc.com>
In-Reply-To: <5162A418.4070204@mlbassoc.com>
Subject: Re: GDB problems
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
X-List-Received-Date: Mon, 08 Apr 2013 12:29:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-08 05:03, Gary Thomas wrote:
> I'm trying to run GDB to debug code on my target.  Whenever I start
> it up, I get this warning:
>    warning: Unable to find libthread_db matching inferior's thread library, thread debugging will not be available.
> and indeed, no thread debug commands will work.
>
> I've found that the library /usr/lib/libthread_db.so is not being
> installed in the rootfs.  However, just adding this library isn't
> enough.  The file /lib/libpthread-2.60.so has been stripped on the
> target and this also breaks GDB.  Installing a non-stripped version
> of this library lets GDB do thread debugging.
>
> Both of these libraries come from the eglibc package.  How can I
> adjust that recipe to:
>    * Install libthread_db.so
>    * Avoid stripping libpthread-2.16.so
>
> It looks like the libthread_db.so file(s) should be installed via
> the 'eglibc-thread-db' package, but I can't find this package anywhere
> on my system.

It's not clear to me why, but the files labelled as 'eglibc-thread-db' in
the eglibc recipe end up in the 'libthread-db1' package, so that mystery
is solved.

I still don't know how to get the libpthread library to be not stripped
(which it seems is what it takes to make GDB happy in this case).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

