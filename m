Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71AD6E0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:45:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9SEjTLN014077
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:45:29 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 28 Oct 2011 07:45:28 -0700
Message-ID: <4EAAC008.4050406@windriver.com>
Date: Fri, 28 Oct 2011 09:45:28 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
In-Reply-To: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 14:45:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

What machine are you using (amount of ram, disk space, and cpu cores)?

What configuration did you set for parallel builds?

I can build 1.1 on an 8 core i7 system w/ 8 GB of ram, set with parallel
settings of 8 thread and 8 parallel make jobs, in about 100 minutes (or less).

--Mark

On 10/28/11 9:20 AM, Xianghua Xiao wrote:
> when I built 1.0 out of the box, it took 7 hours.
> on the same machine/network, yocto 1.1 took a full 12 hours, not sure
> what happened to cause this nearly doubled build time.
> 
> after the default build(bitbake core-image-sato), I run 'runqemu
> qemux86', click on 'tasks', try to add a new task, however my input is
> shown non-english, or garbage on screen, which I have seen the same
> issue on yocto1.0 release as well. this is a 10.04 ubuntu 64bit
> machine.
> 
> don't know what to say about it, just my OOB(out-of-box) experience
> 
> xianghua
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


