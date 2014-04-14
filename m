Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08D52E00BB8
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 08:47:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CD029F811E2; Mon, 14 Apr 2014 09:47:30 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 61371F811D7;
	Mon, 14 Apr 2014 09:47:29 -0600 (MDT)
Message-ID: <534C0316.4070409@mlbassoc.com>
Date: Mon, 14 Apr 2014 09:47:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.2
Subject: PR server doesn't always work?
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
X-List-Received-Date: Mon, 14 Apr 2014 15:47:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm using a local PR server and for the most part, it works great!
No more messing about with PR and PRINC and ...

However, I have a situation where it doesn't do what I expect.
Here's my scenario:
  * Build some package X
  * Rebuild package database (bitbake package-index)
  * Update package database on target
  * Install package X on target
  * Update the RRECOMMENDS_${PN} in the recipe and rebuild.
    I can see that the package is updated - everything from
    do_package onwards is updated.
  * Rebuild package database (bitbake package-index)
  * Update package database on target
  * Try to install/update package X.  I'm told that it is up
    to date.

I can see that the package _was_ updated on the build host even
if the PR value was not changed because if I remove package X
and reinstall it, the new RRECOMMENDS_${PN} packages are also
being installed.

Am I missing something?  Shouldn't this work and the PR value
be bumped by the PR server, even if all that happened was the
list of recommendations was changed?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

