Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03754E0096A; Tue, 21 Jul 2015 08:45:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86E9E00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:45:38 -0700 (PDT)
Received: by iehx8 with SMTP id x8so65609543ieh.3
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jj1ftDqQopeR+T0eV5GcfVYqIbuDvf82zoo2XsRVoe4=;
	b=gfUSUWA7yaDZpwk17uzyhQpg6IMHpOQdBn4mKhO/OI5wiNjm8vLSeENn1XHTumXj89
	oF9RXU8RDFbZyw2UrxLMN/5uXbfMJ+qDYhg2rDLR3SjJT18aK3ukW6FaUb9risemZIS6
	AmZ0S+vhmy/TLUcP0yoWVWNPjt30GWevFF0bde4sFiV/Awu5JfWOcFDTY9ulsN5YVJBO
	U3vreWF9TM8oq7coDNDDWGtyzhV2PgnXUeSnXEDy/ScCphNLMNtH85lnla3dq2A5xYZk
	Jfv/N3UOVERhbSEutpa3LSj5hOnsORcXBMpovj+JHhC4WgYGgfdkt6TPtDjl3q8L3OOr
	nDCQ==
MIME-Version: 1.0
X-Received: by 10.50.30.196 with SMTP id u4mr25148714igh.11.1437493537767;
	Tue, 21 Jul 2015 08:45:37 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 21 Jul 2015 08:45:37 -0700 (PDT)
In-Reply-To: <55AE6705.5040907@mlbassoc.com>
References: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
	<55AE6705.5040907@mlbassoc.com>
Date: Tue, 21 Jul 2015 10:45:37 -0500
Message-ID: <CAK5mtex-n4XrVXG18zG=ha_+R1-Z5Yh6TKLWudt1CVpXpUHokQ@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: openembedded-devel@lists.openembedded.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] Question about IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL
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
X-List-Received-Date: Tue, 21 Jul 2015 15:45:43 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 21, 2015 at 10:36 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2015-07-21 09:26, Victor Rodriguez wrote:
>>
>> Hi team
>>
>> I have a question , according to documentation there is a difference
>> between
>>
>> IMAGE_INSTALL_append
>>
>> and
>>
>> CORE_IMAGE_EXTRA_INSTALL
>>
>> Specifies the list of packages to be added to the image. You should
>> only set this variable in the local.conf configuration file found in
>> the Build Directory.
>>
>> When I use the second one and try to build a core-image-minimal-xfce
>> bitbake does not install what I wanted in my image . I had a really
>> hard time few weekends ago because of this.
>>
>> I wonder If I am missing something or if this is a bug
>
>
> The core-image-minimal-xfce recipe does not "play nice" with
> the core-image class and is not respecting CORE_IMAGE_EXTRA_INSTALL.
>
> I think this should be filed as a bug (and feel free to suggest a patch)
>
> BTW, this question should really be on the OpenEmbedded development list.


Thanks Gary

I will submit the BUG , do you know the Bugzila where I should submit it ?

> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel

