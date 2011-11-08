Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F015E0138C
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 16:12:10 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 8F4F45BA811; Mon,  7 Nov 2011 17:12:08 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 882CF5BA80F;
	Mon,  7 Nov 2011 17:12:06 -0700 (MST)
Message-ID: <4EB873D6.4000708@mlbassoc.com>
Date: Mon, 07 Nov 2011 17:12:06 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <CANFv2Ene=ZfVOzs76fsW7XNRm7K_0DNDB=q90AHV5Zs3KxcjNw@mail.gmail.com>
	<4EB85604.50109@mlbassoc.com>
	<CANFv2EmUKNvvYppCoU71du5mU0dG7hXwAc-jbzSDQrBGF2oq1g@mail.gmail.com>
In-Reply-To: <CANFv2EmUKNvvYppCoU71du5mU0dG7hXwAc-jbzSDQrBGF2oq1g@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: use case howto?
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
X-List-Received-Date: Tue, 08 Nov 2011 00:12:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-11-07 15:15, James Abernathy wrote:
> I thought the idea was to build a recipe for your device that could create the software complete with all the pieces. Certainly, having a list of packages that you need to install
> via zypper is fine, but I thought that not the concept behind Yocto???
> Sorry for the dumb questions.

It's actually a combination of both worlds - you can use existing recipes
to add functionality by just including those packages in your system, either
at initial build time or by using the packaging tools.  You can also easily
write your own recipes to build specialized packages.  The combination is
up to you.

A point of terminology - recipes are used to construct packages which can
then be installed, etc.  They are functional units, not necessarily tied
to any particular device or system.

n.b. top posting on mailing lists makes your replies harder to follow :-(

> On Mon, Nov 7, 2011 at 5:04 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2011-11-07 14:59, James Abernathy wrote:
>
>         I approach embedded Linux from a path of taking a Distro like Ubuntu or Fedora and chopping it down to a working set of code that forms the final solution.  Obviously, not
>         the same
>         methology as Yocto.  With some success with the current methods, it's difficult to see the advantages of Yocto.  I'm reading what I can find to get smarting on Yocto, but
>         like most
>         new concepts, you try to compare what you used to do with how to do it with the new concept.
>         For example, if I use a distro, I can install packages really simply with yum or apt-get; update them the same way. If I start with a Yocto meta-??? that's closest to my
>         hardware
>         solution, and get it working at a base level, how do I add things, like browsers, or other application?
>
>
>     Using very similar tools - zypper is just like yum, or if
>     you choose to use ipk packages, opkg

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

