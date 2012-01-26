Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A3FE01308
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:47:53 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 78EC5F8121A; Thu, 26 Jan 2012 09:47:51 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E38E8F8120E;
	Thu, 26 Jan 2012 09:47:50 -0700 (MST)
Message-ID: <4F2183B6.9070603@mlbassoc.com>
Date: Thu, 26 Jan 2012 09:47:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
	<CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
In-Reply-To: <CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 16:47:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-26 09:36, Brian Hutchinson wrote:
> Update,
>
> I'm still not doing something right.  I did a clean rebuild of
> core-image-base and a tar jtvf core-image-base-beagleboard.tar.bz2
> reveals opkg stuff in /var/lib/opkg only.  No opkg bin.
>
> I guess I'm still in shock over this.  I mean why should I have to do
> anything other than:
> PACKAGE_CLASSES ?= "package_ipk"
>
> I mean, if I specify I want package_ipk in the "Package Management
> configuration" section, doesn't logic follow that the image would be
> created with opkg and some sample opkg.conf files?  What use is it to
> generate all those .ipk's for the repository the build does without
> opkg being there?

Because you asked to build an absolutely minimal root file system.
In this case, it's expected that you don't want to have opkg available.
If you still want this very minimal system *and* opkg, just add the
package management as previously instructed.
   EXTRA_IMAGE_FEATURES += "package_management"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

