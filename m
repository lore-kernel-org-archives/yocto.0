Return-Path: <josh@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A78E4C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 17:09:52 -0500 (CDT)
Received: from [192.168.0.7] (5ad6a226.bb.sky.com [90.214.162.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 6EA7B12EC1CA
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 17:45:20 -0500 (CDT)
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <1287595139.2635.16.camel@scimitar>
References: <1287595139.2635.16.camel@scimitar>
Date: Wed, 20 Oct 2010 23:09:49 +0100
Message-ID: <1287612589.2231.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: Re: UPnP demo - call for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 22:09:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 18:18 +0100, Joshua Lock wrote:
> Hi all,
> 
> I've successfully tested the UPnP demo in my office but would appreciate
> someone else taking a bash.
> 
> Unfortunately you currently need my branch from poky-contrib (josh/demo)
> and the corresponding branch from meta-demo (josh/demo).

I've just pushed one change to poky/master and merged a tidied up
changeset into the master branch of meta-demo. So you should now be able
to test with latest poky and meta-demo master.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


