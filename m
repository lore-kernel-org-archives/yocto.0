Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B4A6E01403
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 20:25:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5O3PtLd009881
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 23 Jun 2013 20:25:56 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Sun, 23 Jun 2013 20:25:55 -0700
Message-ID: <51C7BC42.7010304@windriver.com>
Date: Sun, 23 Jun 2013 23:25:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130509 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <05209F2D24AD48348599D707CB5F659F@PAULD>
In-Reply-To: <05209F2D24AD48348599D707CB5F659F@PAULD>
Cc: yocto@yoctoproject.org
Subject: Re: linux-yocto-rt and cgroups
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
X-List-Received-Date: Mon, 24 Jun 2013 03:25:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-23 3:48 PM, Paul D. DeRocco wrote:
> I built core-image-base with Tom Zanussi's Cedartrail BSP for Dylan, which
> worked fine. (Thanks, Tom.) Then, I switched over to linux-yocto-rt, and it
> still worked fine. Then, I tried to switch to systemd, and it complains
> bitterly on startup that there is no cgroup support in the kernel.
>
> I'd like to use an RT kernel, so that I can squeeze out as many notes as
> possible (it's a musical instrument) before getting sound driver underruns.
> And I'd like to use systemd, so that it boots fast. Do I have to choose one
> or the other? Is there some reason cgroups are left out of linux-yocto-rt?
> If not, is there an easy way to put it back in, without becoming an expert
> in kernel configuration?

There's no technical reason at all. In fact, pre 3.8 the -rt kernel used
to inherit more of the standard kernel's configuration and hence enabled
cgroups. In 3.8, we defined a new policy for the -rt kernel, that used
parts of the standard kernel's configuration, but not all.

We can definitely add functionality to this baseline, and I'll be adding
more in the upcoming dev cycle for yocto 1.5.

In the meantime you can enable it, and let me know how it goes. I can then
update the -rt baseline config, knowing that someone else is testing it
too.

To enable it, create a linux-yocto_3.8.bbappend, and add:

  KERNEL_FEATURES_append = " features/cgroups/cgroups.scc"

And you'll get the same cgroups config that you have with the standard
linux-yocto kernel.

Cheers,

Bruce

>


