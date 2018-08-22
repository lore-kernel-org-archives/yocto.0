Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21A40E00848; Wed, 22 Aug 2018 01:09:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA554E006AF
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 01:09:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7M89tlE029901
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Aug 2018 01:09:55 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 22 Aug 2018 01:09:55 -0700
To: Paul Sheer <paulsheer@gmail.com>, <yocto@yoctoproject.org>
References: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <dd057e86-090f-3070-630f-5afaca94475a@windriver.com>
Date: Wed, 22 Aug 2018 16:14:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Cleaning out build without re-downloading sources
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
X-List-Received-Date: Wed, 22 Aug 2018 08:09:58 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/22/2018 06:52 AM, Paul Sheer wrote:
> Hi,
>
> I am trying to do a clean out all packages within my build due to a
> change in my GCC environment.
>
> I updated my GCC so, for assurance reasons, I want a rebuild of everything.
>
> However I want to avoid re-downloading gigs of source packages.
>
> I am hoping there is a way, say, to restart all packages build from
> the "unpack" step without doing the download step?
>
> This seems like a common use case.  Is it supported?
>
> The only help I could find is to run commands like,
>
> bitback -C xyz abc
> bitback -c xyz abc
>
> Nothing I have tried forces a complete clean out of all builds (nor
> the other options -- a restart from the unpack step).
>
> rm -rf ./tmp   works, but it also forces a download of every package :-(
>
> Thanks
>
> Paul

There is a separate directory, which is usually downloads/ under the 
build directory, to keep downloaded git repos and tarballs.

[network]  ---> [downloads] ---> [tmp/work/xxxx]

So you don't have to worry about the downloading when you clean up tmp/.

Best Regards,
Chen Qi


