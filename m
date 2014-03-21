Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0477FE00B8C
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 14:33:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0FA94F81218; Fri, 21 Mar 2014 15:33:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7BA7AF8120D;
	Fri, 21 Mar 2014 15:33:41 -0600 (MDT)
Message-ID: <532CB035.2020703@mlbassoc.com>
Date: Fri, 21 Mar 2014 15:33:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAPphmgYBnU6-NtLt+FDgpc97CKsnU6y8OSSGGO9W9isbf0xH7g@mail.gmail.com>
In-Reply-To: <CAPphmgYBnU6-NtLt+FDgpc97CKsnU6y8OSSGGO9W9isbf0xH7g@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: linux-yocto fetch bottleneck
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
X-List-Received-Date: Fri, 21 Mar 2014 21:33:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-21 15:27, Jate S wrote:
> I am running into a bottleneck with the linux-yocto recipe on dora
> 1.5.1. The fetch retrieves git2_git.yoctoproject.org.git.tar.gz, but
> then it hits a bottleneck when it must do a git fetch to update to the
> required references. The git server does not have high bandwdith.
> 
> One workaround that I've found is to archive the git repository and
> replace the tar.gz in the downloads directory. The recipe then finds
> the required references.
> 
> Would BB_GENERATE_MIRROR_TARBALLS actually take care of this? Any
> other recommendations?

Yes, that's exactly what BB_GENERATE_MIRROR_TARBALLS does.  The updated
tarball will end up in your downloads directory.  If you use any sort of
local mirror, you'll want to push the new tarball to it for the next time.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

