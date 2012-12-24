Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ECE7E01493
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:30:48 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:33606 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tn7B9-0004QC-85; Mon, 24 Dec 2012 07:30:47 -0500
Date: Mon, 24 Dec 2012 06:30:44 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4MAAVVGeOyQ9PAXOhibj4BQK4BnsVmyhWxh6294ONGCNw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212240629520.5826@oneiric>
References: <alpine.DEB.2.02.1212231024040.27586@oneiric>
	<CADkTA4MDzpUdovXTfJ0a04XfPcpiuENu3ERWx--Xmo4EbDvDFA@mail.gmail.com>
	<CADkTA4MAAVVGeOyQ9PAXOhibj4BQK4BnsVmyhWxh6294ONGCNw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel manual seems to make no mention of "defconfig"
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
X-List-Received-Date: Mon, 24 Dec 2012 12:30:48 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1831079729-1356352247=:5826"

--8323329-1831079729-1356352247=:5826
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT

On Sun, 23 Dec 2012, Bruce Ashfield wrote:

>
>
>
> On Sun, Dec 23, 2012 at 11:10 PM, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
>
>
>       On Sun, Dec 23, 2012 at 12:26 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>               poking around kern-tools for purpose of documenting some stuff and
>             ran across this in "updateme":
>
>             split_command_line_objects() {
>                     command_line_values=$@
>
>                     for v in $command_line_values; do
>                         v_base=`basename $v`
>                         case $v_base in
>                             *.scc) migrate_feature $v
>                                 ;;
>                             *.cfg) migrate_cfg $v
>                                 ;;
>                             *.patch|*.diff) migrate_patch $v
>                                 ;;
>                             defconfig) migrate_cfg $v;;
>                             *) ;;
>                         esac
>                     done
>             }
>
>               AFAICT, there is no mention of a possible "defconfig" entry anywhere
>             in the current yocto kernel manual.
>
>
> You won't find it there because it isn't specific to the kern-tools,
> what you see there is a small wrapper on top of the kernel.bbclass
> defconfig handling, with the same end result. So standard
> yocto/oe-core docs apply here.
>
> I also forgot to mention that Darren did cover defconfigs in the
> yocto kernel  docs that were put together for the 1.4 release (I
> think they were posted here), so there's better / additional
> coverage upcoming!

  ah, i will go back and check those out, thanks.  just trying to
catch up on several days of not reading the list.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-1831079729-1356352247=:5826--
