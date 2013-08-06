Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99E2EE0156E
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 02:28:40 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V6dZE-0003T1-D8
	for yocto@yoctoproject.org; Tue, 06 Aug 2013 11:28:36 +0200
Received: from 2-227-90-218.ip185.fastwebnet.it ([2.227.90.218])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2013 11:28:36 +0200
Received: from f.deldegan by 2-227-90-218.ip185.fastwebnet.it with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2013 11:28:36 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Francesco Del Degan <f.deldegan@endian.com>
Date: Tue, 06 Aug 2013 11:28:40 +0200
Message-ID: <87eha7f9rr.fsf@endian.com>
References: <87iozjfe3p.fsf@endian.com> <1711663.0D350BQnql@helios>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 2-227-90-218.ip185.fastwebnet.it
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
Cancel-Lock: sha1:CFF5ZB4Hq8naRkK9nkYMcoRAP/U=
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
X-List-Received-Date: Tue, 06 Aug 2013 09:28:41 -0000
Content-Type: text/plain

Paul Eggleton <paul.eggleton@linux.intel.com>
writes:

> Hi Francesco,
>
> On Tuesday 06 August 2013 09:55:06 Francesco Del Degan wrote:
>> Playing with RDEPENDS variable i'm facing the needs to
>> specify a dependency based on specific version of a package
>> (greather than, in my specific case).
>> 
>> The underlying package managers supports declaring dependencies
>> including version relationships, for example:
>> 
>> Rpm:  Requires: package_xxx >= 1.0.27
>> Deb:  Depends: libc6 (>= 2.2.1)
>> Okpg: Depends: xfree (>= 6.0), glib2
>> 
>> Is this feature just missing in yocto or it's explicitly denied
>> for some reason?
>
> This should work, in fact we use it (with =) in conjunction with EXTENDPKGV 
> when we want to force packages from the same recipe to upgrade in lock-step.
>
> Have you tried adding these specifications to an RDEPENDS value?

Great, works so good! I just looked at RDEPENDS variable documentation
and missed the examples and/or other recipes.

Thank you!
  Francesco

>
> Cheers,
> Paul


