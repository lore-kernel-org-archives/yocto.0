Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FFDEE007DC
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 13:30:13 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VvD4i-0005gR-IM
	for yocto@yoctoproject.org; Mon, 23 Dec 2013 22:30:08 +0100
Received: from ppp005054052062.access.hol.gr ([5.54.52.62])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 22:30:08 +0100
Received: from gmane by ppp005054052062.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2013 22:30:08 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 23 Dec 2013 23:29:53 +0200
Message-ID: <52B8AB51.30708@reliableembeddedsystems.com>
References: <l9a7ft$2rm$1@ger.gmane.org> <1775123.hQ8z5s0CFj@helios>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054052062.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
In-Reply-To: <1775123.hQ8z5s0CFj@helios>
Cc: public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: u-boot 2013.10 LIC_FILES_CHKSUM points to an invalid file
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
X-List-Received-Date: Mon, 23 Dec 2013 21:30:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Paul,

On 12/23/2013 10:56 PM, Paul Eggleton wrote:
>  
>> How do I get it to build?
> 
> In the absence of any other license statement, you'd have to point to one or 
> more of the source files and use beginline and endline to select just the part 
> of the header specifying the license.

Thanks!

This might be tricky to know upfront in same cases and would in worst
case require different recipes with different license info since it
depends on what configuration you build for, or which files are being
included.

A mechanism to extract the relevant info from the executable is most
likely more accurate.

But I guess not we have a chicken and egg problem ;)

> 
> Cheers,
> Paul
> 

Regards,

Robert

..."My employer doesn't even agree with me about C indentation style." -
Used as a disclaimer

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



