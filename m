Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA786E0085D; Tue, 31 Mar 2015 04:38:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57064E00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 04:38:52 -0700 (PDT)
Received: by yhjf44 with SMTP id f44so2609941yhj.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 04:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=J14xLwlH9Rhe4Aaz49zuUKkRWvHkrMvDYLcI+miKH2U=;
	b=HNTqp8L1UsF+sZOaEcoS9MBGUYL1lGoMNrse5bTa851S9E9HXNUW7YtphuzQAz5r4O
	OSt8QFNBWXf4axpQVHdqY6Qhzx5AYEYDR7p8+tWcXKZYN0laQl6fRfRz5ureSkF+7DMw
	2M5FO0xgiPiAGlfMaT6A1I3cntWT3ybYRIuda89LSDdKhGk0k844z/yXcm8rW4FQzM5h
	xEK7XLWZSvG5GX7mJD0fmuRL3mUbd5DZmiwv4c6/71dkpHUgjYcNXs4jwXM2KfiwtUrs
	Ey+RolnqZZx14emmkYinTP6z/aEjVnkeLT4bBEyAB1/3pQJcRlDXTtZQ9MfmOQCOv6mJ
	vkSg==
X-Gm-Message-State: ALoCoQm4WnaB1ckNiYNwJgGDNvGcrI8AyrTdKPRedTFvW/fzbf+pST4FCXevrlk8PssHpBPEh/N9
MIME-Version: 1.0
X-Received: by 10.52.165.65 with SMTP id yw1mr38428228vdb.51.1427801932211;
	Tue, 31 Mar 2015 04:38:52 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Tue, 31 Mar 2015 04:38:52 -0700 (PDT)
In-Reply-To: <1779560.QYRt8DUNQe@peggleto-mobl.ger.corp.intel.com>
References: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
	<1779560.QYRt8DUNQe@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 31 Mar 2015 12:38:52 +0100
Message-ID: <CAPhnLPADsigrXe6HZ0sLakyELujxid+19m18awYQetoUBUD9KA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-docs] poky.ent: Ubuntu based systems need xlstproc
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
X-List-Received-Date: Tue, 31 Mar 2015 11:38:55 -0000
Content-Type: text/plain; charset=UTF-8

On 28 March 2015 at 04:23, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> Hi Beth,
>
> On Friday 27 March 2015 15:03:10 Beth Flanagan wrote:
>> xlstproc is needed for doc building. I'm sure others are
>> effected as well.
>>
>> Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
>> ---
>>  documentation/poky.ent | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/documentation/poky.ent b/documentation/poky.ent
>> index 5d12fc1..a8fe99f 100644
>> --- a/documentation/poky.ent
>> +++ b/documentation/poky.ent
>> @@ -59,7 +59,7 @@
>>  <!ENTITY OE_INIT_PATH "&YOCTO_POKY;/oe-init-build-env">
>>  <!ENTITY OE_INIT_FILE "oe-init-build-env">
>>  <!ENTITY UBUNTU_HOST_PACKAGES_ESSENTIAL "gawk wget git-core diffstat unzip
>> texinfo gcc-multilib \ -     build-essential chrpath socat">
>> +     build-essential chrpath socat xsltproc">
>>  <!ENTITY FEDORA_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip
>> python unzip perl patch \ diffutils diffstat git cpp gcc gcc-c++
>> glibc-devel texinfo chrpath \ ccache perl-Data-Dumper perl-Text-ParseWords
>> perl-Thread-Queue socat">
>
> Which doc building? Our manuals or docs as part of recipes? Can you give an
> example of a failure?
>

yocto-docs. On an Ubuntu based system I was having issues building
them because xsltproc wasn't installed during the normal system
install. I'm not sure if other can verify that, but I tried it on two
of my systems with the same results (Mint 17.1 Rebecca).

> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

