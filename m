Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E48FE00AE2
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 10:16:43 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id db12so1499853veb.24
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 10:16:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=xvOq82h4CTfQi5x4ZLt4yzLxpcz4i1oL36AsX2xt3Yw=;
	b=QD90NN/N/V3tzYVc/31a3gO2ymJxXYVwdT7SZ0OQUgsyd2O2P7yZBl/afnP59q/N+h
	fQ12SkSkX1T7LK0LQR65FnZ31zOdwHarrPvdd+VjUr0G0xubgshLOw1JtrscFWRSdf7c
	cWXFPDuwAMC9JqTwSrXGrc5AZOTzH9TJf/GGEAmo/BqL3/TZcemlL9DXB4kc2QIZXWwY
	Iz3buUtyTLB+TGdn8Euy8qFliwoAFl36e9+pg+W8aRbpBHP3TZ0PWW7NqO9xtabs9w+B
	9WU3Yk3Bf8vxIEeOOpx3uz9x0ZBDsqxN85s91wc9nEpYmuCMIObKQNA4s2vIh+6YwMQj
	jlnQ==
X-Gm-Message-State: ALoCoQm72Diqq2KZ9d/J2L+FD2SzzkyDI2DY/iIim/KmVgVS7Ine9+/dY+O2gkqALK4OT3wy1J8f
MIME-Version: 1.0
X-Received: by 10.220.7.131 with SMTP id d3mr752845vcd.45.1398273402904; Wed,
	23 Apr 2014 10:16:42 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Wed, 23 Apr 2014 10:16:42 -0700 (PDT)
In-Reply-To: <CAPphmgb=b=Wuz05tKRt6NGQ6AWHioRw=gwOhWDAGai7G++JPCw@mail.gmail.com>
References: <CAPphmgbuaWBpsSszJ=5e+g=pjeE97_9XU5a7JQbzOfM-VQTQrQ@mail.gmail.com>
	<CAPhnLPAOc2mN3-QhG0BM5jN5ENCHXfP52hi6ETbrj=OLOU8jWQ@mail.gmail.com>
	<CAPphmgb=b=Wuz05tKRt6NGQ6AWHioRw=gwOhWDAGai7G++JPCw@mail.gmail.com>
Date: Wed, 23 Apr 2014 10:16:42 -0700
Message-ID: <CAPhnLPCH8ysKMg5+d-_W9A5+j+DKpusJCCEXTs6zegSRCRkWmA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: autobuilder repourl by commit
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
X-List-Received-Date: Wed, 23 Apr 2014 17:16:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Jate,

So, I'm going off current master. I would probably check out the
current master branch as we made a lot of changes in how we dealt with
source stamps between now and dora.

On Wed, Apr 23, 2014 at 9:20 AM, Jate S <jatedev@gmail.com> wrote:
> I am on yocto-autobuilder dora branch. I would like my Nightly
> scheduler check out some layers using the 'hash' repo setting. The
> default behavior seems to be that a nightly build does not receive
> 'commit_layername' information, and thus the CheckOutLayers object
> just uses the HEAD.

So, in master on my dev cluster at
http://dev-ab-master.yoctodev.org:8010/builders/nightly/builds/9

I'm using a buildset-config/nightly.conf that contains:

[nightly]
....
repos: [{'poky':
            {'repourl':'git://git.yoctoproject.org/poky',
             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
             'hash': '4b5e855670bddb0ffc4cc7b24005e53e3eefcd69'}},

That *seems* to be working ok. If you can update to master, that
should fix things, although this should also work in the dora branch.

Be warned, if you do update, there are some additional
autobuilder.conf options you'll need to add:

[GitSettings]
OPTIMIZED_GIT_CLONE = True
OGIT_TRASH_DIR = /tmp/yocto-autobuilder/git/trash
OGIT_MIRROR_DIR = /tmp/yocto-autobuilder/git/mirror

>
> Where might I go about passing these properties in so that
> CheckOutLayers will use my 'hash' setting?
>
> - Jate S.
>
> On Thu, Apr 17, 2014 at 2:09 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> Jate,
>>
>> You can use the 'hash' property. Just make sure you have no other
>> branch/tag properties in the repo description.
>>
>> So, something like this should work:
>>
>> repos: [{'poky':
>>             {'repourl':'git://git.yoctoproject.org/poky',
>>              'hash':'7831ae829103ab283645'}},
>>
>>
>> On Thu, Apr 17, 2014 at 10:23 AM, Jate S <jatedev@gmail.com> wrote:
>>> I am customizing the Yocto autobuilder for my own project. I would like to
>>> specify a checksum for the repourl for poky. What property do I need to add?
>>> I have tried adding the property commit, but it does not appear to work.
>>>
>>> Thanks,
>>>
>>> - Jate S.
>>>
>>
>>
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

