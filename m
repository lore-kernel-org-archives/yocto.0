Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id D36984C80039
	for <yocto@yoctoproject.org>; Fri, 14 Jan 2011 06:44:40 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0ECkNUK004713; Fri, 14 Jan 2011 12:46:23 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 75C0U1dtMyxi; Fri, 14 Jan 2011 12:46:22 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0ECkFlA004710
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 14 Jan 2011 12:46:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504DC9D07@orsmsx504.amr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9504DC9D07@orsmsx504.amr.corp.intel.com>
Date: Fri, 14 Jan 2011 12:44:18 +0000
Message-ID: <1295009058.14388.5786.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: question about SDKMACHINE, SDK_ARCH and BUILD_ARCH
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
X-List-Received-Date: Fri, 14 Jan 2011 12:44:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 15:36 -0800, Zhang, Jessica wrote:
> Hi Richard,
>  
> As I mentioned in IRC, we've noticed that bitbake behaves differently
> on 64bit and 32bit machines from SDKMACHINE setup perspective.  It
> never enforces SDKMACHINE to be set in local.conf for 64bit users but
> for 32bit user, if you leave SDKMACHINE unset, the bitbake sanity
> test will fail and prompts user to set the SDKMACHINE to i586.
>  
> It seems internally we really use SDK_ARCH which derived from
> BUILD_ARCH that reflects the poky build machines arch.  And for
> bitbake sanity check if it sees SDK_ARCH is i686, it will prompts user
> to set SDKMACHINE to i586 since there's a known issue for this case
> can't use the default build machine arch of i686.
>  
> Questions are:
> 1. what  is the known issue for using i686?

(e)glibc will fail to build with some issues to do with architecture
optimisations. I don't remember the details but the builds do fail and
the warning is valid. The easy way to test is to disable the warning and
try it!

Once, there were also conflicts between the native bits and the cross
bits both being i686 but I think the problem was solved a long time ago.

At some point it would be nice to fix this but as far as I know the
problem remains and the sanity warning is still valid.

> 2. If we can't resolve the issue for i686, then shouldn't we set the
> SDK_ARCH to i586 as default if the BUILD_ARCH is i686, this way,
> bitbake will behave consistent for 32bit and 64bit if user leave the
> SDKMACHINE unset...

The original code was written simply to stop users building something
that was known not to work. 

I agree the user experience could be better and we could put some inline
python into the default definition of SDKMACHINE to handle this I guess.

Cheers,

Richard





