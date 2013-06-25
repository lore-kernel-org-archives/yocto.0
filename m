Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7FAFE0155D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 13:13:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5PKDdOK000456
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 25 Jun 2013 13:13:39 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 25 Jun 2013 13:13:38 -0700
Message-ID: <51C9F9EC.6070305@windriver.com>
Date: Tue, 25 Jun 2013 16:13:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Marc Ferland <ferlandm@sonatest.com>
References: <87fvw6arm3.fsf@sonatest.com>
In-Reply-To: <87fvw6arm3.fsf@sonatest.com>
Cc: yocto@yoctoproject.org
Subject: Re: variable override question
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
X-List-Received-Date: Tue, 25 Jun 2013 20:13:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-25 03:59 PM, Marc Ferland wrote:
> Hi,
>
> I have a linux-yocto_3.4.bbappend file in which I try to override the
> KERNEL_FEATURES variable. I want it to be empty (I don't want the
> netfilter stuff that's there by default).
>
> So I've tried (in my bbappend):
>
> KERNEL_FEATURES = ""
>
> but somehow the netfilter.scc file still gets merged in.
>
> What am I doing wrong?

Nothing. It's an artifact of the _appends that are present
in the linux-yocto recipe bbappends. You can clear it, but they'll
still append.

Those config fragments weren't optional when the recipes were
created, we've since evolved to the point where they are.

I squeezed in a change to linux-yocto_3.8 before the yocto 1.4
cutoff, and have changed linux-yocto_3.4 to match, and strangely,
was about to send a consolidated pull request that contains the
change.

You can either locally make the same change, and clear:

  KERNEL_EXTRA_FEATURES

or wait for my latest update.

Cheers,

Bruce

>
> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


