Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1DC1E0086E; Mon, 30 Mar 2015 07:02:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5928CE0085D
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 07:02:20 -0700 (PDT)
Received: by ykcn8 with SMTP id n8so59544534ykc.3
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 07:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=R81iKqLOTKcfg0pkXr1hNKyqbj5FISk13WPrq1yRqng=;
	b=Tuouy1O0ZuTkeAjRaAPZKR06URGq7/JD5yaGzHdQMT26VV4xEYpjNrh9Hlh8mGjz9Q
	7jX/MJzIKObR7tDj734qDLTio3XYx+A2OUKkzuYe6dAO8418+C54/dfBxO+3XGNoxpsT
	W8g4rMNUElulVo7sCY/o7LbSpwwe748wQIjl6WWK7lX9URzbFbRcaqeN0ta7ld7C+Cbu
	3tF1D1T3jbOIokvACgvAVKsrtUyR++0/8SeIWtuD/37ZLiIHlVsrU4+FJSVp2eeFVQ/t
	JzNvny1lBCUExSDNje39psg3+0pAMXFM0xKuTR+0EsYFDzUeFPRLdYndgnbJxTRa6aw/
	19VA==
X-Gm-Message-State: ALoCoQmTNb6aIJ4E8PByTvSIM2Qx6voxjPdc2r9I4uYqH/nNlrRngx0d/E/YZAQNkLb7PooiKJ0Y
MIME-Version: 1.0
X-Received: by 10.52.160.232 with SMTP id xn8mr10786380vdb.78.1427724140225;
	Mon, 30 Mar 2015 07:02:20 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Mon, 30 Mar 2015 07:02:20 -0700 (PDT)
In-Reply-To: <2229665.NuhmzlEpj1@peggleto-mobl.ger.corp.intel.com>
References: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
	<2229665.NuhmzlEpj1@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 30 Mar 2015 15:02:20 +0100
Message-ID: <CAPhnLPCJo4oAyDw-F1qvL4SZPB4fBwQWePnQOvfsrnhjgwC3cQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] nightly-weston.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Mon, 30 Mar 2015 14:02:24 -0000
Content-Type: text/plain; charset=UTF-8

On 28 March 2015 at 15:33, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> Hi Tracy,
>
> On Friday 27 March 2015 18:33:08 Graydon, Tracy wrote:
>> [YOCTO #6854]
>>
>> A common configuration selection is to remove x11 from
>> DISTRO_FEATURES. Add a nightly-weston.conf builset to allow us to test this
>> via the autobuilder. Also added to nightly.conf and yoctoAB.conf.
>>
>> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
>> ---
>>  buildset-config.controller/nightly-weston.conf | 24
>> ++++++++++++++++++++++++ buildset-config.controller/nightly.conf        |
>> 2 +-
>>  buildset-config.controller/yoctoAB.conf        |  5 +++--
>>  3 files changed, 28 insertions(+), 3 deletions(-)
>>  create mode 100644 buildset-config.controller/nightly-weston.conf
>>
>> diff --git a/buildset-config.controller/nightly-weston.conf
>> b/buildset-config.controller/nightly-weston.conf new file mode 100644
>> index 0000000..d9875c6
>> --- /dev/null
>> +++ b/buildset-config.controller/nightly-weston.conf
>> @@ -0,0 +1,24 @@
>> +[nightly-weston]
>> +builders: 'example-worker'
>> +repos: [{'poky':
>> +            {'repourl':'git://git.yoctoproject.org/poky',
>> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
>> +             'branch':'master'}},
>> +        {'meta-qt3':
>> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
>> +             'branch':'master'}}]
>> +steps: [{'SetDest':{}},
>> +        {'CheckOutLayers': {}},
>> +        {'RunPreamble': {}},
>> +        {'GetDistroVersion' : {'distro': 'poky'}},
>> +        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
>> +                            'distro': 'poky', 'buildhistory' : False}}, +
>>                           'atextappend' : '\nDISTRO_FEATURES_remove = "
>> x11"\n'}}, +        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>> +        {'SyncPersistDB' : {'distro' : 'poky'}},
>> +        {'GetBitbakeVersion': {}},
>> +        {'BuildImages': {'images': 'core-image-weston'}},
>> +        {'PublishLayerTarballs':{}},
>> +        {'SendErrorReport': {}},
>> +        {'UploadToasterEventlog': {}},
>> +        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'md5sums']}}]
>> diff --git a/buildset-config.controller/nightly.conf
>> b/buildset-config.controller/nightly.conf index cf7c77c..13235bf 100644
>> --- a/buildset-config.controller/nightly.conf
>> +++ b/buildset-config.controller/nightly.conf
>> @@ -88,7 +88,7 @@ steps: [{'SetDest':{}},
>>                             'eclipse-plugin-kepler': {},
>> 'eclipse-plugin-juno': {}, 'nightly-non-gpl3': {}, 'nightly-oecore': {},
>> 'nightly-world':{}, 'nightly-world-lsb':{}, 'nightly-intel-gpl': {}, -
>>                      'poky-tiny': {}, 'buildtools': {},
>> +                           'nightly-weston':{}, 'poky-tiny': {},
>> 'buildtools': {}, 'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
>> 'nightly-qa-logrotate': {}, 'nightly-qa-pam': {}, 'nightly-qa-skeleton':
>> {}}}},
>> diff --git a/buildset-config.controller/yoctoAB.conf
>> b/buildset-config.controller/yoctoAB.conf index 5bc369d..ab771c0 100644
>> --- a/buildset-config.controller/yoctoAB.conf
>> +++ b/buildset-config.controller/yoctoAB.conf
>> @@ -6,5 +6,6 @@ order: ['nightly', 'eclipse-plugin-juno',
>>          'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
>>          'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
>>          'nightly-world', 'nightly-world-lsb', 'nightly-non-gpl3',
>> -        'nightly-oecore', 'nightly-intel-gpl', 'poky-tiny',
>> -        'build-appliance', 'nightly-qa-extras', 'nightly-qa-systemd']
>> +        'nightly-oecore', 'nightly-intel-gpl', 'nightly-weston',
>> +        'poky-tiny', 'build-appliance',
>> +        'nightly-qa-extras', 'nightly-qa-systemd']
>
> When I wrote the bug I was thinking more of systems with no graphics
> at all rather than with Weston replacing X11 - not that we shouldn't be
> testing Weston though I guess.
>

Suggestion on which image to replace it with? I agree, there is value
in both. nightly-noX11, I'd imagine.

-b

> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

