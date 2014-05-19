Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20612E00BEF; Mon, 19 May 2014 04:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF746E00BE6
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 04:08:34 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4JB6Rm6010894; Mon, 19 May 2014 12:07:56 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id jZ4bZC05-UVZ; Mon, 19 May 2014 12:07:56 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4JB7oUh010923
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Mon, 19 May 2014 12:07:52 +0100
Message-ID: <1400497663.28353.164.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Morgan <chmorgan@gmail.com>
Date: Mon, 19 May 2014 12:07:43 +0100
In-Reply-To: <CAAPegz0j21Jc19ze3BDcDcNt0iE3hQEGF0Y1eJdv8epZqR3SzA@mail.gmail.com>
References: <CAAPegz3=+kmfS7DAY2MoFg0jxePeOSeay-4oFFVdB6b6x11xsw@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F98FD5@ORSMSX101.amr.corp.intel.com>
	<CAAPegz0j21Jc19ze3BDcDcNt0iE3hQEGF0Y1eJdv8epZqR3SzA@mail.gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Documentation improvements for gitsm:// fetcher
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
X-List-Received-Date: Mon, 19 May 2014 11:08:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-05-19 at 06:42 -0400, Chris Morgan wrote:
> On Mon, May 19, 2014 at 1:34 AM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
> > Hi,
> >
> > This patch is not coming across to me intact.  The process I use for patches is to take the attachment from my Thunderbird account and save it as an .EML file.  Then, I mail that .EML file to my Linux box gmail account.  From there I process the patch using the 'patch' command as normal.  For some reason, the .EML file when it arrives to my gmail account has long lines of random characters (gibberish) that the patch program is unable to deal with.  I am unsure if it is a problem on my end with my process or with the patch generation.
> >
> > Scott
> >
> >>-----Original Message-----
> >>From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>bounces@yoctoproject.org] On Behalf Of Chris Morgan
> >>Sent: Sunday, May 18, 2014 11:29 AM
> >>To: yocto@yoctoproject.org
> >>Subject: [yocto] [PATCH] Documentation improvements for gitsm:// fetcher
> >>
> >>Rough patch for documentation improvements now that I know how gitsm
> >>should work and to help others that might be caught by switching from git://
> >>to gitsm:// URIs.
> >>
> >>Chris
> 
> 
> I'm not sure what might be doing on. I'm adding it to the email
> directly from the gmail web interface from the file created via 'git
> format-patch -1'. I looked but don't see any email settings around
> mime in gmail's settings. Should I not be sending via email? Am I
> missing a setting?

Things were a little confusing for Scott since the patch is against
poky, not the bitbake repository. I've merged in the patch, thanks.

In future please include a Signed-off-by line and with the shortlog in
the commit message, format it as per the contribution guidelines so that
someone can easily see which code it affects (fetch2/gitsm: is
appropriate in this case).

Cheers,

Richard


