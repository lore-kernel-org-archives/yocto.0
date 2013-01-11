Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2724BE011C0
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 08:38:00 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1TthcS-0007zN-DZ
	for yocto@yoctoproject.org; Fri, 11 Jan 2013 17:38:12 +0100
Received: from ppp089210059044.access.hol.gr ([89.210.59.44])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 17:38:12 +0100
Received: from gmane by ppp089210059044.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 17:38:12 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 11 Jan 2013 18:37:40 +0200
Message-ID: <50F03FD4.6020900@reliableembeddedsystems.com>
References: <kcop9d$mfv$1@ger.gmane.org> <20130111171908.5162428c@skate>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210059044.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <20130111171908.5162428c@skate>
Cc: Robert Berger
	<public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@plane.gmane.org>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: gcov on target
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
X-List-Received-Date: Fri, 11 Jan 2013 16:38:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Thomas,

On 01/11/2013 06:19 PM, Thomas Petazzoni wrote:
>> Did someone manage to build/run gcov for an armv7a?
>> ... or let's put it otherwise: Why doesn't it exist on the target?
>
> I supposed the idea is to generate to coverage data on the target, and
> then analyze them with gcov on the build machine. See
>
http://gcc.gnu.org/onlinedocs/gcc/Cross_002dprofiling.html#Cross_002dprofiling.

Yes this should work. Thanks!
It's also documented in the kernel source tree [1].

>
> Best regards,
>
> Thomas
>

[1]:
http://git.kernel.org/?p=linux/kernel/git/stable/linux-stable.git;a=blob;f=Documentation/gcov.txt;h=e7ca6478cd93d4e6422d1ae92455b347dbdf7ccb;hb=HEAD

Regards,

Robert
..."About Basic: mentally mutilated potential programmers beyond hope of
regeneration." -- Dijkstra

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



