Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDFF94C80050
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2011 01:58:32 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q8obP-0005LN-Da
	for yocto@yoctoproject.org; Sun, 10 Apr 2011 08:58:31 +0200
Received: from ppp079166096079.dsl.hol.gr ([79.166.96.79])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2011 08:58:31 +0200
Received: from gmane by ppp079166096079.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2011 08:58:31 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 10 Apr 2011 09:58:18 +0300
Organization: Reliable Embedded Systems
Message-ID: <inrkea$vn7$1@dough.gmane.org>
References: <inpi0q$617$1@dough.gmane.org> <4DA127F6.3010006@intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166096079.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DA127F6.3010006@intel.com>
Subject: Re: Poky release is 5.0 "Bernard" confusion
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 10 Apr 2011 06:58:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Scott,

> 
> This suggests to me that your local git repository isn't up to date. The
> tag has been moved at least once since it was created, and it sounds
> like your repository is behind the most recent move of the tag.
> 
> Note: if you use git fetch --all, that will fetch new tags but doesn't
> update old ones that have moved - you need to explicitly run git fetch
> --tags.

Thanks, you are absolutely right:

git pull

is not enough;)

git fetch --tags
From git://git.pokylinux.org/poky
 - [tag update]      bernard-5.0 -> bernard-5.0

> 
> HTH,
> 
> Scott
> 

Regards,

Robert
..."The scientific name for an animal that doesn't either run from or
fight its enemies is lunch." - Michael Friedman

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



