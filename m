Return-Path: <olof.johansson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A1DBE0086F; Tue,  9 Dec 2014 07:37:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 497 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Dec 2014 07:37:31 PST
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37CF5E0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 07:37:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 3EEC82E26B;
	Tue,  9 Dec 2014 16:29:10 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id mXGPN+iRQGjG; Tue,  9 Dec 2014 16:29:08 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 3FE6A2E25A;
	Tue,  9 Dec 2014 16:29:08 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 21459BAF;
	Tue,  9 Dec 2014 16:29:08 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 15FDA9B2;
	Tue,  9 Dec 2014 16:29:08 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 140613E27D;
	Tue,  9 Dec 2014 16:29:08 +0100 (CET)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.3.342.0;
	Tue, 9 Dec 2014 16:29:07 +0100
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id C68D09C9F2; 
	Tue,  9 Dec 2014 16:29:07 +0100 (CET)
Date: Tue, 9 Dec 2014 16:29:07 +0100
From: Olof Johansson <olof.johansson@axis.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Message-ID: <20141209152907.GB18757@axis.com>
References: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
MIME-Version: 1.0
In-Reply-To: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH v2] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 15:37:40 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On 14-12-09 15:32 +0100, Otavio Salvador wrote:
> The Debian 8 (codename Jessie) is frozen and has been in use in our
> machines for some time. It has been working fine and as it is about to
> be released it is better to whitelist it and remove the ugly warning
> from build logs.
> 
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
> ---
>  meta-yocto/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 0e66e84..6aff7b9 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -81,6 +81,7 @@ SANITY_TESTED_DISTROS ?= " \
>              Fedora-20 \n \
>              CentOS-6.5 \n \
>              Debian-7.* \n \
> +            Debian-GNU-Linux-8 \n \

Where did you get that name from? Bitbake calls it Debian-8.0 for
me:

| WARNING: Host distribution "Debian-8.0" has not been validated
| with this version of the build system; you may possibly
| experience unexpected failures. It is recommended that you use a
| tested distribution.

I would propose

   Debian-8.* \n

instead. But yeah, I've been running Jessie for some weeks, and I
support its inclusion at this point (it's in its pre-release
feature freeze).

-- 
olofjn

