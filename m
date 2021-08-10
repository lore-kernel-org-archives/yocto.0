Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.374.1628614791543079076
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 09:59:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8F7EA20002;
	Tue, 10 Aug 2021 16:59:49 +0000 (UTC)
Subject: Re: [yocto] yocto 3.1.3 cant seem to remove run-postinsts
To: jared_terry@dell.com, yocto@lists.yoctoproject.org
References: <EFKw.1628606767547401561.tix8@lists.yoctoproject.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <f2cc3e16-7f79-1dcc-eaef-a408dc0b23de@bootlin.com>
Date: Tue, 10 Aug 2021 18:59:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <EFKw.1628606767547401561.tix8@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Jared,

On 8/10/21 4:46 PM, jared_terry@dell.com wrote:
> https://www.yoctoproject.org/docs/3.1.3/ref-manual/ref-manual.html#migration-2.1-miscellaneous-changes
> <https://www.yoctoproject.org/docs/3.1.3/ref-manual/ref-manual.html#migration-2.1-miscellaneous-changes>
>
> IMAGE_FEATURES="debug-tweaks read-only-rootfs"
>
> according to the manual having read-only-rootfs should remove
> run-postinsts and I still have it.  How can I get rid of this?


That's not what I understand from the manual. From
https://docs.yoctoproject.org/dev-manual/common-tasks.html#post-installation-scripts-and-read-only-root-filesystem,
I understand that the build system makes sure that the post install
scripts all succeed, so there is no need to run them again on the target.

Why would you want to skip the post install scripts?

Cheers,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

