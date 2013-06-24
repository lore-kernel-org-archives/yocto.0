Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4332E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:19:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5OGJrSZ004943
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 24 Jun 2013 09:19:53 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 24 Jun 2013 09:19:52 -0700
Message-ID: <51C871A2.4030709@windriver.com>
Date: Mon, 24 Jun 2013 12:19:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
References: <CAFyqS9q5Z283rVhuDkdM4AUGeyEdfvUqJjj4qG3diVf83JY6Tg@mail.gmail.com>
In-Reply-To: <CAFyqS9q5Z283rVhuDkdM4AUGeyEdfvUqJjj4qG3diVf83JY6Tg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-libc-header version mismatch?
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
X-List-Received-Date: Mon, 24 Jun 2013 16:19:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-06-24 11:59 AM, Hans Beckérus wrote:
> Hi. We are using a 3.6 based kernel in our builds using a custom
> kernel recipe. However, I can see that the linux-libc-headers built
> but based on a 3.8 kernel?
> Is this really how it should be? Are we supposed to also make a custom
> recipe for the linux-libc-headers? The image seems to be executing
> fine but I am a bit worried about the version mismatch :(

You shouldn't need to do this. We use a single libc-headers version
for all of a given linux-yocto kernels in a release. The userspace /
libc ABI is stable, and backwards compatible (generally speaking of
course). New interfaces typically have a fallback if the kernel
interface is missing, and we don't currently have any issues either.

Of course older headers with newer kernels is even safer, since
typically at most you are missing out on being able to use new APIs
versus potential for missing APIs.

Summary: you can match them if you want, but we are testing across
several kernel versions and haven't found any issues (yet).

Cheers,

Bruce

>
> Hans
>
> PS. I believe I posted this question before but I am no longer 100%
> convinced it actually left my outbox. At least I never got a response,
> which usually happens very quickly :)
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


