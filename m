Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3380AE00939
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 21:52:26 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id il7so2361779vcb.32
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 21:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=GPcRY+gFWma4CbflTAEWU+1znFG+eFPfu1IArYaeNt4=;
	b=iwH9vJX7S3VnOKeDVJR3u6EeE+O/rVL+xQRtY/PNbzs328ASf9tKE4eBmzLGmieAUg
	2VIY+Vyl3HIVKNaR4gNcqFUUThPM9o0jT72U39cSy2ocJv1XlQlGCyVJgDaIt9Bm/V91
	MrOjJcM+qstXHLeqaxh/2KhaP49Y3m0LFw+uUGrQuHC6BoqQyaLJwMDb1xfGs/s/MWtL
	3htClEm6xrek8PG5dzBTZN9FCl9vac8lUOFcLShJuKViFHULf6O6DWyw2Nvdfm5HT2m9
	gKOITZhOaqtzIkNlxaczf/bnMjax4PbegPyrA4LJVRTOUD/LvtJ1UnHK/yt0w5pw45nL
	wDrw==
X-Gm-Message-State: ALoCoQmpY6RAASsLJDeV3DIsCt/Tuq5MsAPn2JWX4AvRCTDiDj1F8br8okp+53ZkuN3KvAPOLx5F
MIME-Version: 1.0
X-Received: by 10.58.111.163 with SMTP id ij3mr15693762veb.26.1398315145865;
	Wed, 23 Apr 2014 21:52:25 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Wed, 23 Apr 2014 21:52:25 -0700 (PDT)
In-Reply-To: <CAPphmgbE-9uTURv6A_w5P7YyVimP4j4N_Uk9S8H=3ev=Uzy_sw@mail.gmail.com>
References: <CAPphmgbuaWBpsSszJ=5e+g=pjeE97_9XU5a7JQbzOfM-VQTQrQ@mail.gmail.com>
	<CAPhnLPAOc2mN3-QhG0BM5jN5ENCHXfP52hi6ETbrj=OLOU8jWQ@mail.gmail.com>
	<CAPphmgb=b=Wuz05tKRt6NGQ6AWHioRw=gwOhWDAGai7G++JPCw@mail.gmail.com>
	<CAPhnLPCH8ysKMg5+d-_W9A5+j+DKpusJCCEXTs6zegSRCRkWmA@mail.gmail.com>
	<CAPphmgbE-9uTURv6A_w5P7YyVimP4j4N_Uk9S8H=3ev=Uzy_sw@mail.gmail.com>
Date: Wed, 23 Apr 2014 21:52:25 -0700
Message-ID: <CAPhnLPAmPW6T9dB9cTeG=7ZNX=Cu5THgFG7+VQV2NhrgTUOfaA@mail.gmail.com>
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
X-List-Received-Date: Thu, 24 Apr 2014 04:52:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Jate,

Ah, looks like you're correct.

If you pull the most recent master, I should have a fix for this.
ResolveLayerHead was misbehaving. It's testing a full build out on dev
right now, but this should fix it.

-b

On Wed, Apr 23, 2014 at 9:17 PM, Jate S <jatedev@gmail.com> wrote:
> I checked out branch master, and I went with your suggestions on the
> updated GIT environment variables.
>
> On the dora branch of the autobuilder, a forced build from the web
> interface would use the 'hash' properties of the repos successfully.
>
> In the master branch, this no longer seems to be the case. Now the
> forced build does checkout the current head of poky known from  the
> result of ResolveLayerHead.
>
> I just noticed that the hash from your example happened to match the
> HEAD of poky/master at the time. Perhaps you could try it again now.
> The current master is now at 68ef727cdcef439e9bfc57996f3cebfc0e07789e.
>
>
> - Jate S.
>
> On Wed, Apr 23, 2014 at 1:16 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> Hi Jate,
>>
>> So, I'm going off current master. I would probably check out the
>> current master branch as we made a lot of changes in how we dealt with
>> source stamps between now and dora.
>>
>> On Wed, Apr 23, 2014 at 9:20 AM, Jate S <jatedev@gmail.com> wrote:
>>> I am on yocto-autobuilder dora branch. I would like my Nightly
>>> scheduler check out some layers using the 'hash' repo setting. The
>>> default behavior seems to be that a nightly build does not receive
>>> 'commit_layername' information, and thus the CheckOutLayers object
>>> just uses the HEAD.
>>
>> So, in master on my dev cluster at
>> http://dev-ab-master.yoctodev.org:8010/builders/nightly/builds/9
>>
>> I'm using a buildset-config/nightly.conf that contains:
>>
>> [nightly]
>> ....
>> repos: [{'poky':
>>             {'repourl':'git://git.yoctoproject.org/poky',
>>              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
>>              'hash': '4b5e855670bddb0ffc4cc7b24005e53e3eefcd69'}},
>>
>> That *seems* to be working ok. If you can update to master, that
>> should fix things, although this should also work in the dora branch.
>>
>> Be warned, if you do update, there are some additional
>> autobuilder.conf options you'll need to add:
>>
>> [GitSettings]
>> OPTIMIZED_GIT_CLONE = True
>> OGIT_TRASH_DIR = /tmp/yocto-autobuilder/git/trash
>> OGIT_MIRROR_DIR = /tmp/yocto-autobuilder/git/mirror
>>
>>>
>>> Where might I go about passing these properties in so that
>>> CheckOutLayers will use my 'hash' setting?
>>>
>>> - Jate S.
>>>
>>> On Thu, Apr 17, 2014 at 2:09 PM, Flanagan, Elizabeth
>>> <elizabeth.flanagan@intel.com> wrote:
>>>> Jate,
>>>>
>>>> You can use the 'hash' property. Just make sure you have no other
>>>> branch/tag properties in the repo description.
>>>>
>>>> So, something like this should work:
>>>>
>>>> repos: [{'poky':
>>>>             {'repourl':'git://git.yoctoproject.org/poky',
>>>>              'hash':'7831ae829103ab283645'}},
>>>>
>>>>
>>>> On Thu, Apr 17, 2014 at 10:23 AM, Jate S <jatedev@gmail.com> wrote:
>>>>> I am customizing the Yocto autobuilder for my own project. I would like to
>>>>> specify a checksum for the repourl for poky. What property do I need to add?
>>>>> I have tried adding the property commit, but it does not appear to work.
>>>>>
>>>>> Thanks,
>>>>>
>>>>> - Jate S.
>>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> Elizabeth Flanagan
>>>> Yocto Project
>>>> Build and Release
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

