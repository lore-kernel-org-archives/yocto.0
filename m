Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24CBE014E2
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 09:45:04 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id e15so1252262vbg.16
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 09:45:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=fRtZaXpazVXuVJtFh36xU77NVwMSMzz86uIy4rziUXQ=;
	b=DHb3ahuXe5v6NP9LQLdIrZpfwtAj0p/6oocGitiC0XVAMRUuelc4mlk8iYHDcVCu4m
	lkkkd2xNO8NzMrJLLDkzypxIDoiFvIvhB+MgYfCVL9ZzIn6uLn2mOuBcPkZNrekiRMxW
	Z6huaNrUztomLQiJ4mGGkXQOqZyDNX3AJtXd1iwOMlbD9kk9mp0JXzmTGtJ23MzlGI/w
	3NHgVvEiryDWErTsY8V0zqevB+8hOCibVD46NiwDbgSD9YFetY+hNcYq2kkYk38HfY99
	Kd8qs7r7oFBPPnadtehScM18oHiNsswK79My0XVqgt3ujnmsrd4yy+TsdzWGHgj9/urH
	w/3w==
MIME-Version: 1.0
X-Received: by 10.52.18.137 with SMTP id w9mr14551212vdd.50.1370277903889;
	Mon, 03 Jun 2013 09:45:03 -0700 (PDT)
Received: by 10.52.99.129 with HTTP; Mon, 3 Jun 2013 09:45:03 -0700 (PDT)
In-Reply-To: <CAPhnLPAs0YCXd7HEOSPx5Ehc1e_-WDOT_Lzx-qAirXOxFuYLdQ@mail.gmail.com>
References: <1370271136-28206-1-git-send-email-stefanx.stanacar@intel.com>
	<CAPhnLPAs0YCXd7HEOSPx5Ehc1e_-WDOT_Lzx-qAirXOxFuYLdQ@mail.gmail.com>
Date: Mon, 3 Jun 2013 09:45:03 -0700
Message-ID: <CAPhnLPBa63B9eZ4d_ToFXzemqK81DvmNqJ6EbQdUJZoxOxK=Dg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQn2ulF3o+cIdipBUUcfmfkly+AMk1rdAoQD7ez9/WaUBqTsDAUwGKm/m8zhDh2nF8hI4TKo
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] nightly-qa-extras: fix timeout arg
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
X-List-Received-Date: Mon, 03 Jun 2013 16:45:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Although this actually doesn't fix the issue because of how we iterate
through the values passed in and assign them. I'll get this patched
today, in the meantime I'm going to bump the default in Sanity to
2400.

-b

On Mon, Jun 3, 2013 at 9:36 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> Hi Stefan,
>
> I just pushed the exact same patch. Thank you!
>
> -b
>
> On Mon, Jun 3, 2013 at 7:52 AM, Stefan Stanacar
> <stefanx.stanacar@intel.com> wrote:
>> This needs to be an integer, not a string.
>> Fixes:
>> http://autobuilder.yoctoproject.org:8011/builders/nightly-qa-extras/builds/32/steps/Running%20Sanity%20Tests/logs/stdio
>>
>> Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
>> ---
>>  buildset-config/nightly-qa-extras.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/buildset-config/nightly-qa-extras.conf b/buildset-config/nightly-qa-extras.conf
>> index 1bdb0f0..23c955c 100644
>> --- a/buildset-config/nightly-qa-extras.conf
>> +++ b/buildset-config/nightly-qa-extras.conf
>> @@ -11,7 +11,7 @@ steps: [{'SetDest':{}},
>>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nROOT_HOME = "/root"\nIMAGE_FSTYPES = "btrfs"\nKERNEL_FEATURES_append = " cfg/fs/btrfs"\n'}},
>>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>>          {'BuildImages': {'images': 'core-image-sato'}},
>> -        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : '2400'}},
>> +        {'RunSanityTests': {'images': 'core-image-sato', 'timeout' : 2400}},
>>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_FEATURES_append = " read-only-rootfs"\n'}},
>>          {'BuildImages': {'images': 'core-image-sato'}},
>>          {'RunSanityTests': {'images': 'core-image-sato', 'scene' : 'sanity:boot sanity:ssh'}}]
>> --
>> 1.8.1.4
>>
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

