Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E9CDE003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 07:53:09 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 36167F811EE; Thu,  8 Aug 2013 08:53:09 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 564AEF811E3;
	Thu,  8 Aug 2013 08:53:06 -0600 (MDT)
Message-ID: <5203B0D7.809@mlbassoc.com>
Date: Thu, 08 Aug 2013 08:53:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
In-Reply-To: <CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Thu, 08 Aug 2013 14:53:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-08 08:03, Chris Larson wrote:
> On Thu, Aug 8, 2013 at 6:57 AM, Robert Berger <gmane@reliableembeddedsystems.com <mailto:gmane@reliableembeddedsystems.com>> wrote:
>
>     Is it like this by design, or should I file a bug in bugzilla?
>
>     Previous experiments (only SSTATE and DL from NFS/NAS) seem to work and
>     I guess that's also your autobuilder cluster setup.
>
>
> TMPDIR on NFS has never been supported with oe/yocto, and I doubt it will be at any time in the near future, but if that's changed, I'm sure someone will jump into the thread and
> mention it.
>
> As you say, SSTATE_DIR and DL_DIR work fine there.

Interesting.  I'm building now - OEROOT on a local ext3 file system,
build/tmp on NFS - and it's working just fine.  My host is Fedora (15).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

