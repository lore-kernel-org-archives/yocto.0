Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EEDBE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:36:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0ULaafO032695;
	Mon, 30 Jan 2012 21:36:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31376-02; Mon, 30 Jan 2012 21:36:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q0ULaRPh032669
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 30 Jan 2012 21:36:28 GMT
Message-ID: <1327959391.7807.95.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: paul_nathan@selinc.com
Date: Mon, 30 Jan 2012 21:36:31 +0000
In-Reply-To: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
References: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Yocto & long-term reproducibility of rebuilds
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
X-List-Received-Date: Mon, 30 Jan 2012 21:36:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-01-30 at 08:34 -0800, paul_nathan@selinc.com wrote:
> I am investigating Yocto for a build system here. Part of my
> requirements for a build system is auditable/traceable builds that can
> be replicated long into the future (our company has a 10 year warranty
> on our products, and we build products for the multidecade term).
> Initial examination of Yocto shows that it builds packages from a
> number of different domains online, which will not meet our
> requirements - we'll have to store these packages to ensure these
> packages exist in the correct version long into the future.  I know we
> can manually edit the SRC_URI setting in .bb files, but the more
> general problem of package archiving exists. 
>
> I am interested in any information or recommendations other users of
> the Yocto system have on how they have solved this sort of design
> constraint. 

This is something we've worked to ensure works since we understand the
importance of long term reproducibility. 

Others have mentioned how a local source cache can be created and how
MIRRORS and PREMIRRORS can be used to override or supplement to the
SRC_URI. In addition I'd mention we have a variable BB_NO_NETWORK which
disables all network access so you can ensure only local files are used
in a given build.

Cheers,

Richard




