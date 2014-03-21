Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC5AE00B8C
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 15:04:33 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3B3E9F8121B; Fri, 21 Mar 2014 16:04:33 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 235BCF81218;
	Fri, 21 Mar 2014 16:04:32 -0600 (MDT)
Message-ID: <532CB770.90004@mlbassoc.com>
Date: Fri, 21 Mar 2014 16:04:32 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Jate S <jatedev@gmail.com>
References: <CAPphmgYBnU6-NtLt+FDgpc97CKsnU6y8OSSGGO9W9isbf0xH7g@mail.gmail.com>	<532CB035.2020703@mlbassoc.com>
	<CAPphmgbHhHMRTAGtXMsHfbHR6FuQa7MODGW_UQY22xCO2Z38MQ@mail.gmail.com>
In-Reply-To: <CAPphmgbHhHMRTAGtXMsHfbHR6FuQa7MODGW_UQY22xCO2Z38MQ@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 21 Mar 2014 22:04:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-21 15:54, Jate S wrote:
> The documentation has warnings of space usage. Will it start using
> lots of space? If so, can I use it on a per mirror basis?

Yes, the tarballs can be quite large, but they are incredibly useful
with a local mirror.  Especially when you consider that updating a GIT
checkout, e.g. the Linux kernel. can take a *really* long time.

> I am using a local mirror, so maybe the space usage will not be a problem.

The space needed will not be terribly different than what you've already
encountered without generating the tarballs.

n.b. it's polite to keep replies on the mailing list so that everyone benefits.

> On Fri, Mar 21, 2014 at 5:33 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2014-03-21 15:27, Jate S wrote:
>>> I am running into a bottleneck with the linux-yocto recipe on dora
>>> 1.5.1. The fetch retrieves git2_git.yoctoproject.org.git.tar.gz, but
>>> then it hits a bottleneck when it must do a git fetch to update to the
>>> required references. The git server does not have high bandwdith.
>>>
>>> One workaround that I've found is to archive the git repository and
>>> replace the tar.gz in the downloads directory. The recipe then finds
>>> the required references.
>>>
>>> Would BB_GENERATE_MIRROR_TARBALLS actually take care of this? Any
>>> other recommendations?
>>
>> Yes, that's exactly what BB_GENERATE_MIRROR_TARBALLS does.  The updated
>> tarball will end up in your downloads directory.  If you use any sort of
>> local mirror, you'll want to push the new tarball to it for the next time.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

