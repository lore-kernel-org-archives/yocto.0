Return-Path: <pierre.ficheux@openwide.fr>
Received: from zimbra3.corp.accelance.fr (zimbra3.corp.accelance.fr
	[213.162.49.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E8BE006DE
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 02:09:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id 290DD28050
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 11:09:08 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra3.corp.accelance.fr
Received: from zimbra3.corp.accelance.fr ([127.0.0.1])
	by localhost (zimbra3.corp.accelance.fr [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 0MRyv3wiCmB5 for <yocto@yoctoproject.org>;
	Wed, 13 Feb 2013 11:09:07 +0100 (CET)
Received: from [10.5.20.63] (unknown [193.56.60.161])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTPSA id 20D1E28049
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 11:09:06 +0100 (CET)
Message-ID: <511B663E.7010403@openwide.fr>
Date: Wed, 13 Feb 2013 11:09:02 +0100
From: Pierre Ficheux <pierre.ficheux@openwide.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAHUNapSm1V6thRmYzNX-Z7PwohFUs=R6ruqiWYFCdhHtdMJ3cA@mail.gmail.com>
In-Reply-To: <CAHUNapSm1V6thRmYzNX-Z7PwohFUs=R6ruqiWYFCdhHtdMJ3cA@mail.gmail.com>
Subject: Re: package list for image build
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
X-List-Received-Date: Wed, 13 Feb 2013 10:09:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Le 13/02/2013 02:01, Trevor Woerner a écrit :
> Hi everyone,
>
> I've looked at Tim's cheat sheet and Robert's FAQ but I can't seem to
> figure out if there is a simple way to get bitbake to list the
> packages that will be included in the build of a given image.
>
> $ bitbake <magic> core-image-minimal
> <list of packages included in core-image-minimal image including
> anything added in local.conf>
>
> Am I overlooking something obvious?
>
> Best regards,
>      Trevor
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

$ bitbake -g core-image-minimal

result in pn-buildlist.

-- 
Pierre FICHEUX  -/- CTO OWI, France -\- pierre.ficheux@openwide.fr
                                          http://ingenierie.openwide.fr
                                          http://www.linuxembedded.fr
I would love to change the world, but they won't give me the source code



