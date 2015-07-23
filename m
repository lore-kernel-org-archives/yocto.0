Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7755EE009B3; Thu, 23 Jul 2015 13:28:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 504DBE0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 13:28:43 -0700 (PDT)
Received: by iggf3 with SMTP id f3so326597igg.1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 13:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EPKV/LtYh9mTHlcFCfilbkxD3Ys9yVDBDpReppQJq2o=;
	b=nR78e/DfY2v7pz3XSt66vPMBq7sM3XVZQYXBP73en6vqtveMziv847Mv72ucTlhW8E
	uZJ86Whgm6AxV5D4v1XWsKHgw/4O5z7GEb+jE2s+rLm7niw56DlrRXpsFkim77cQst2L
	SuhfnYEhU9CYHStrzhZffoO7ZLQhgE2oXkC5qQ0lmCzypyd934yjkxFvp8yqiMAzfsFl
	BdebxzMdVdhlC2/I/vWVt0okMODhmfdDbAEgyEGnc6LZNzSc9+aJgfn71WguCGh5dCcX
	n4Xd3jS7KFCp85FuYSwHOYx4e+e16TzrIRahOFsAZ5XIsVQNtQzn6EBqAwh/ltyGjRpc
	GHpQ==
MIME-Version: 1.0
X-Received: by 10.107.166.72 with SMTP id p69mr16823885ioe.65.1437683323325;
	Thu, 23 Jul 2015 13:28:43 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Thu, 23 Jul 2015 13:28:43 -0700 (PDT)
In-Reply-To: <3048124.JhGOlONExd@peggleto-mobl.ger.corp.intel.com>
References: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
	<55AE8445.60302@linux.intel.com>
	<CAK5mtexxVJ2uZeahegoJ=+8pOztcPufUHYmXWrhwy9hMzc3tLw@mail.gmail.com>
	<3048124.JhGOlONExd@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 23 Jul 2015 15:28:43 -0500
Message-ID: <CAK5mtezCMOyUvN9y8ds4heV-p2AN5Ndv5F-gic3BY0TKDP3sKg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Thu, 23 Jul 2015 20:28:48 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 22, 2015 at 8:50 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 21 July 2015 14:51:55 Victor Rodriguez wrote:
>> On Tue, Jul 21, 2015 at 12:41 PM, Leonardo Sandoval
>>
>> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>> > On 07/21/2015 10:45 AM, Victor Rodriguez wrote:
>> >> On Tue, Jul 21, 2015 at 10:36 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> >>> On 2015-07-21 09:26, Victor Rodriguez wrote:
>> >>>> Hi team
>> >>>>
>> >>>> I have a question , according to documentation there is a difference
>> >>>> between
>> >>>>
>> >>>> IMAGE_INSTALL_append
>> >>>>
>> >>>> and
>> >>>>
>> >>>> CORE_IMAGE_EXTRA_INSTALL
>> >>>>
>> >>>> Specifies the list of packages to be added to the image. You should
>> >>>> only set this variable in the local.conf configuration file found in
>> >>>> the Build Directory.
>> >>>>
>> >>>> When I use the second one and try to build a core-image-minimal-xfce
>> >>>> bitbake does not install what I wanted in my image . I had a really
>> >>>> hard time few weekends ago because of this.
>> >>>>
>> >>>> I wonder If I am missing something or if this is a bug
>> >>>
>> >>> The core-image-minimal-xfce recipe does not "play nice" with
>> >>> the core-image class and is not respecting CORE_IMAGE_EXTRA_INSTALL.
>> >>>
>> >>> I think this should be filed as a bug (and feel free to suggest a patch)
>> >>>
>> >>> BTW, this question should really be on the OpenEmbedded development
>> >>> list.
>> >>
>> >> Thanks Gary
>> >>
>> >> I will submit the BUG , do you know the Bugzila where I should submit it
>> >> ?
>> >
>> > Victor, you can file a bug at https://bugzilla.yoctoproject.org
>>
>> I think we have one already
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7616
>
> That's not the right bug.
>
> If the suggestion is that core-image-minimal-xfce needs to be fixed, that's not
> a bug we would track in the Yocto Project bugzilla (since the Yocto Project is
> not actively involved in maintaining meta-xfce).
>
> Cheers,
> Paul

Hi Paul

Where can I track this ?


> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

