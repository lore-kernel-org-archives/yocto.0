Return-Path: <chgans@gna.org>
Received: from mailx.techworks.ie (mailx.techworks.ie [88.198.36.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29322E012F3
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 09:03:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailx.techworks.ie (Postfix) with ESMTP id 452325C43D6
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 16:03:16 +0000 (GMT)
X-Virus-Scanned: amavisd-new at techworks.ie
Received: from mailx.techworks.ie ([127.0.0.1])
	by localhost (mailx.techworks.ie [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id seRwI5O4Grj4 for <yocto@yoctoproject.org>;
	Sun, 30 Oct 2011 16:03:15 +0000 (GMT)
Received: from archeopterix.techworks.local (unknown [89.100.127.27])
	by mailx.techworks.ie (Postfix) with ESMTPSA id 36E3C5C062E
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 16:03:15 +0000 (GMT)
Message-ID: <4EAD7542.4070204@gna.org>
Date: Sun, 30 Oct 2011 16:03:14 +0000
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
Subject: Re: what's the proper value for BB_NUMBER_THREADS?
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
X-List-Received-Date: Sun, 30 Oct 2011 16:03:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 30/10/11 15:32, Robert P. J. Day wrote:
>
>    all the docs recommend twice the number of cores (AFAICT), yet the
> template local.conf file suggests that, for a quad core, the value of
> 4 would be appropriate.  shouldn't that say 8?  same with
> PARALLEL_MAKE?

Hi Robert,

The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS, and 
x1.5 for PARALLEL_MAKE.

Chris


>
> rday
>


-- 
Chris

