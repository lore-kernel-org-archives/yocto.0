Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E89ECE003D3
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 10:46:46 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pb11so1019393veb.11
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2013 10:46:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=OwKD8pMpLaus3Vd/w6amnLAEL5S0UZ7afYqmfKY5vDQ=;
	b=d0uKl/zqC9VFXyFiw26AezJdsofRRHJVSShsmpbEL19iqYgandPALX9t7LD1cDOvsG
	18mLiSYaXXKjfg8vG3e3qkSUz4CIBmpC7hRb7QYNpfWdcli6ejd01TvSMLw8FJRs0skr
	lYqJLS4SlwkgEhBN01EeJDFIxs/m+ARNcUK8WwQbkavnIgst/hJ/nqtAdwsTN+jY744c
	lSQwgGB8uxptgP8cQ36Z6rVShanNzmZiUzMmrNuUdfaXTl89TusAoaM8CQfSUs6wdtL7
	g0JGM8AoPCa6tr22xe99UFIodof/jCbdVVSLZx+zfQQG5d62a85dj4stdD8SgFQqm8On
	Mwqg==
MIME-Version: 1.0
X-Received: by 10.52.27.137 with SMTP id t9mr1985135vdg.36.1375465605335; Fri,
	02 Aug 2013 10:46:45 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Fri, 2 Aug 2013 10:46:45 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1307310509410.13616@oneiric>
References: <alpine.DEB.2.02.1307300512280.7428@oneiric>
	<1523931.rJmFDsbDNv@helios>
	<alpine.DEB.2.02.1307310509410.13616@oneiric>
Date: Fri, 2 Aug 2013 10:46:45 -0700
Message-ID: <CAPhnLPBxL5RqcSQ1HRjp9OSuq42eKbs6TV6-ozx64-vyZwpxxg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQmKJci9kQrrn0NlEwHWpcy4jR90ofmFg0SUZm8PZzsGsvMTFfUtqTDdJMlY4VGxN82XHsNF
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: any ETA for when the downloadable toolchains will be updated?
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
X-List-Received-Date: Fri, 02 Aug 2013 17:46:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 31, 2013 at 2:11 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Tue, 30 Jul 2013, Paul Eggleton wrote:
>
>> On Tuesday 30 July 2013 05:14:37 Robert P. J. Day wrote:
>> >   based simply on the timestamps, it would appear that the toolchains
>> > here:
>> >
>> > http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/toolchain/
>> >
>> > still contain the script bug involving the now-dead "find" option in
>> > fedora 19 where -perm no longer accepts a value starting with "+". is
>> > there any plan to replace those packages with updated versions that
>> > work properly on fedora 19?
>>
>> The fix in question has only just been backported to the dylan
>> branch. We're currently figuring out when the next 1.4 point release
>> (1.4.2) should be scheduled, the current thinking is mid-August.
>
>   just started downloading the nightly build and the arm .sh script is
> *noticeably* larger than the older 1.4.1 versions -- 270M versus 160M.
> what else is packed in there? (i can't check yet as the download is in
> progress, and rogers is determined to screw up every download i try.)

They're actually quite different because one is a buildout of
meta-toolchain-gmae and the other is created with core-image-sato -c
populate_sdk. When LAYERVERSION_core is > 1 we build out
core-image-sato sdk. Prior to that we build out meta-toolchain-gmae.

-b

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

