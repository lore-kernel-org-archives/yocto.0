Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0A3EE0172B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 09:51:14 -0700 (PDT)
Received: from ip-77-221-165-98.dsl.twang.net ([77.221.165.98]
	helo=[172.16.1.10])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VYfAd-0004yv-QF; Tue, 22 Oct 2013 16:51:10 +0000
Message-ID: <5266ACE9.8040309@twobit.us>
Date: Tue, 22 Oct 2013 12:50:49 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
	<20131021145706.GA7162@deserted.net>
	<20131021200152.GA27412@deserted.net>
	<20131022153754.GE3728@deserted.net>
In-Reply-To: <20131022153754.GE3728@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 77.221.165.98
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/5] Resend: Remove python dependency from refpol.
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
X-List-Received-Date: Tue, 22 Oct 2013 16:51:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On 10/22/2013 11:37 AM, Joe MacDonald wrote:
> [Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python 
> dependency from refpol.] On 13.10.21 (Mon 16:01) Joe MacDonald 
> wrote:
> 
>> [Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python 
>> dependency from refpol.] On 13.10.21 (Mon 10:57) Joe MacDonald 
>> wrote:
>> 
>>> Thought I'd best (finally) follow up to the list on this.
>>> I've been talking to Philip offline.  These are in the queue
>>> for integration but some surprising things have cropped up
>>> along the way and the integration is being delayed a bit.
>>> 
>>> I'll be grabbing the other meta-selinux update at the same 
>>> time.
>> 
>> Further to this, I've finished the merge of this batch and the 
>> two other submissions I've seen for meta-selinux today.  I 
>> haven't yet pushed them to meta-selinux on git.yoctoproject.org. 
>> I'm going to let it cool off until at least tomorrow since this 
>> one proved to be much more problematic than I think it should 
>> have been.  In the meantime, I've pushed the pending changes to 
>> my github project:
>> 
>> https://github.com/joeythesaint/meta-selinux.git
>> 
>> on the contrib/joeythesaint branch.
> 
> Six of the seven commits that were on that branch are now in the 
> official meta-selinux master branch.  The last is the 
> bzip-compressed policy update.
> 
> Thanks Philip.

Sure thing Joe. Thanks for spending the time to get these integrated.

- - Philip

> 
> -J.
> 
>> 
>> -J.
>> 
>>> 
>>> -J.
>>> 
>>> [[yocto] [meta-selinux][PATCH 0/5] Resend: Remove python 
>>> dependency from refpol.] On 13.10.17 (Thu 19:06) Philip Tricca 
>>> wrote:
>>> 
>>>> This is a resend of an earlier patch set that never made it 
>>>> to the list AFAIK.
>>>> 
>>>> The reference policy package currently pulls in a lot of 
>>>> python stuff that isn't strictly necessary to boot an
>>>> SELinux system and load a policy. AFAIK this is caused by the
>>>> mix of python and C utilities in policycoreutils.
>>>> 
>>>> This patch set breaks the policycoreutils recipe up into 
>>>> multiple packages, one for each utility. In this way we can 
>>>> have the refpol etc pull in only the utilities necessary for 
>>>> normal operation. This happens to be only the utilities 
>>>> written in C and thus we can remove python completely in a 
>>>> minimal image.
>>>> 
>>>> I've attempted to localize these changes as much as possible 
>>>> so this patch set should have minimal impact on recipes 
>>>> outside of the policycoreutils. An example image reicpe is 
>>>> added to demonstrate a minimal image with only the utilities 
>>>> required to load a policy and manipulate the policy store 
>>>> (add / remove policy modules) at runtime.
>>>> 
>>>> Regards, - Philip
>>>> 
>>>> Philip Tricca (5): Break policycoreutils out into separate 
>>>> Remove unnecessary RDEPENDS_${BPN}. Remove runtime
>>>> dependency on Add packagegroup and image recipe for Add
>>>> packagegroup for policycoreutils
>>>> 
>>>> .../images/core-image-selinux-minimal.bb           |   15 ++
>>>>  .../packagegroups/packagegroup-core-selinux.bb     |    4 +-
>>>>  .../packagegroups/packagegroup-selinux-minimal.bb  |   26 
>>>> +++ .../packagegroup-selinux-policycoreutils.bb        |
>>>> 36 ++++ recipes-security/refpolicy/refpolicy_common.inc    | 
>>>> 2 +- recipes-security/selinux/policycoreutils.inc       | 179
>>>> +++++++++++++++++-- 6 files changed, 245 insertions(+), 17
>>>> deletions(-)
>>>> 
>>>> _______________________________________________ yocto
>>>> mailing list yocto@yoctoproject.org 
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>> 

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Icedove - http://www.enigmail.net/

iQIcBAEBCgAGBQJSZqzpAAoJEDL3fnXC4dO6Z6UP/0UoTumQK0wIlyk4YviqsTKr
E0F62JvgzCgf9BLadGmbBSEvgS9Zg50fGr+wM4p0wc7TW2egNnQrPQRa70Y2ycjL
jEQhBRuW6HFTSNZYTsrrt20IjE7nTQEDQnvSZW18lDMKbSyWHdrLGL9lgqWKjiRC
mf0g6cyO4CNnhxdYIZvWTNWoDdbDTQRpyzWhO2S4YkM7Vkh7lvg3IPadGwTAd6MM
nGS6iLKaaaUcqw/i5axOwd8xH2C0/MGDPPYkRwcxAjU7nuH4uOS5uaq5k0dGiuLF
IRp374YwCOypcPtmZT0w3C80CmJSC6e2fxHeH8xQNWBnsFSweG3sT/9DGhVYeZky
HuvkFFFKmsbSfZHFuTQsH5AiV3YaHQTOgWCefQ22xCDEB03t52E6IPY0rAzlxXIi
apL8fhtHjlQ0GaY5yoV7n6+KyfqlQm7WpHXAqowfWEYS3P/pVPJe4pTq+PrzadF2
o5DpGVR5Du2QzLBsFZetFIrLg3kKYkq9011RHwBFl9frsVxTYAdBm58GvceBJL1K
wecuveTH30KhYjiDzMZTNL3Tm/vMJLL/CzIWF5NdrMwCUt8+TwFGJvB7a2QEssS0
14SMdPKjtvbGutlAkOT/9T/1HrpIZhoZtkwEnyKgdXEk469+Vp6aBHjf52JPHyFn
5JJhKda01naDs+KA9G6p
=uocy
-----END PGP SIGNATURE-----

