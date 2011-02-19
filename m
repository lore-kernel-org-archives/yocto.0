Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0A3B4C800B2
	for <yocto@yoctoproject.org>; Sat, 19 Feb 2011 10:17:03 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1FD59166021E; Sat, 19 Feb 2011 09:16:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id BEB441660090;
	Sat, 19 Feb 2011 09:16:26 -0700 (MST)
Message-ID: <4D5FECDA.5020403@mlbassoc.com>
Date: Sat, 19 Feb 2011 09:16:26 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
In-Reply-To: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sat, 19 Feb 2011 16:17:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/19/2011 07:58 AM, Chris Tapp wrote:
> I want to make some changes to /etc/interfaces.
>
> It looks to me as if this this comes from 'netbase', but what do I need to rebuild to get my changes in to the rootfs? i.e. is there something I can
>
> bitbake -c clean ???; bitbake ???
>
> to get my changes in to the rootfs image?
>
> I tried cleaning 'netbase', but that made no difference when I then 'bitbake poky-image-minimal'.

Did you clean the shared state (sstate-cache) info that I told you about yesterday?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

