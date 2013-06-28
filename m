Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CD38E00348
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 10:03:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5SH3gQx004187
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 10:03:42 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 28 Jun 2013 10:03:42 -0700
Message-ID: <51CDC1EF.5020803@windriver.com>
Date: Fri, 28 Jun 2013 12:03:43 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
	<CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
	<CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 17:03:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/28/13 5:53 AM, Burton, Ross wrote:
> On 28 June 2013 11:16, Paul Barker <paul@paulbarker.me.uk> wrote:
>> Just chiming in to say that sounds excellent. Will this contain a
>> known-working make as well for those with a broken make 3.82?
>
> What systems have a broken 3.82?  I'm aware that Debian Experimental
> has it, but stable/testing/unstable have a working 3.81.  Certain
> older versions of Suse also had a broken 3.82, but they've been fixed
> recently after I filed some bugs.  Is it just Fedora 16?

Fedora 16 and newer
Arch Linux
Debian Experimental

I wouldn't be surprised if there are others.

(I filed a bug for Fedora, so FC 18 and FC 19 will be fixed if they're not already.)

Someone on the OE-Core list said they would file a bug on Arch Linux.

--Mark

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


