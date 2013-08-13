Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BA1E01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:28:52 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V99yF-0003jv-4Q
	for yocto@yoctoproject.org; Tue, 13 Aug 2013 10:28:51 +0200
Received: from 93-58-90-146.ip157.fastwebnet.it ([93.58.90.146])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:28:51 +0200
Received: from f.deldegan by 93-58-90-146.ip157.fastwebnet.it with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:28:51 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Francesco Del Degan <f.deldegan@endian.com>
Date: Tue, 13 Aug 2013 10:28:39 +0200
Message-ID: <87r4dy2dvs.fsf@endian.com>
References: <87iozjfe3p.fsf@endian.com> <1711663.0D350BQnql@helios>
	<5200F116.2010108@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 93-58-90-146.ip157.fastwebnet.it
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
Cancel-Lock: sha1:U6lbMOnPZ5/L3TzRGdZw9CGV81o=
Subject: Re: Package specific version dependencies
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
X-List-Received-Date: Tue, 13 Aug 2013 08:28:53 -0000
Content-Type: text/plain

Mark Hatle <mark.hatle@windriver.com> writes:

> On 8/6/13 4:07 AM, Paul Eggleton wrote:
>> Hi Francesco,
>>
>> On Tuesday 06 August 2013 09:55:06 Francesco Del Degan wrote:
>>> Playing with RDEPENDS variable i'm facing the needs to
>>> specify a dependency based on specific version of a package
>>> (greather than, in my specific case).
>>>
>>> The underlying package managers supports declaring dependencies
>>> including version relationships, for example:
>>>
>>> Rpm:  Requires: package_xxx >= 1.0.27
>>> Deb:  Depends: libc6 (>= 2.2.1)
>>> Okpg: Depends: xfree (>= 6.0), glib2
>>>
>>> Is this feature just missing in yocto or it's explicitly denied
>>> for some reason?
>>
>> This should work, in fact we use it (with =) in conjunction with EXTENDPKGV
>> when we want to force packages from the same recipe to upgrade in lock-step.
>
> The format for RDEPENDS is slightly different from all three.
>
> dep (= ver)
> dep (< ver)
> dep (> ver)
> dep (<= ver)
> dep (>= ver)
>
> (For those familiar with deb style, >> and << is not supported by the
> oe-core dependency set.  This is to avoid confusion as > and < are a
> lot more obvious.)
>
> The items above are then mapped into their respective format depending
> on the package manager you have selected.
>
> Note:  The version dependency items are not evaluated by bitbake, it
> only pays attention to the package name when determining build
> dependencies.  You would also need to specify (in your distribution or
> local .conf file) a PREFERRED_VERSION_dep = "ver" to ensure the right
> version is built.

Got it! Thank you for explanation.

Francesco


