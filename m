Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09910E00A5B; Fri, 24 Jul 2015 17:37:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF8CE00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 17:37:33 -0700 (PDT)
Received: by pdbnt7 with SMTP id nt7so20763975pdb.0
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 17:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0HRIEc4etkWZHcWLDwH4XaZc0e0eBox/7RQY2ObnYOg=;
	b=CjeKj9A5xPliefuyzr3DX2EoXQQD6z3T6XxElXxEbvWC28z/Fhytp0kO/3FhfAD+AH
	UjjV/0r8MfOFnbL8jHc5i9H6i5klR5Vhh+KL9WZ/PA5kbAieRq4eEvoijas9Ip+yBAml
	gUxwvRPnT/WNKTRwAN4bAkcinlVNSHE3S+r06dNlTi0sEG2YAJje4cg+3qhG34DR9KVv
	TeGcH1xhmLWWCPr3snLWfrOafjqLLX0tGZ9YkFcIf2tUGfGvW0mLGhyC4DPRoPA8Zd/y
	NqPzT2QgrR9AsgpBsjQw0X9dEuxcpKOS+E1nfApaPu92+S1+a7dtGqeShXx2hphvqALE
	n9HQ==
X-Received: by 10.70.118.5 with SMTP id ki5mr37557289pdb.6.1437784652980; Fri,
	24 Jul 2015 17:37:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.81.133 with HTTP; Fri, 24 Jul 2015 17:37:03 -0700 (PDT)
In-Reply-To: <55AE6705.5040907@mlbassoc.com>
References: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
	<55AE6705.5040907@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Jul 2015 17:37:03 -0700
Message-ID: <CAMKF1sowuLL2i+uWVBC4M0j2YY8aCCw=hhGkA_oMk8G338X6Eg@mail.gmail.com>
To: openembeded-devel <openembedded-devel@lists.openembedded.org>
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
X-List-Received-Date: Sat, 25 Jul 2015 00:37:36 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 21, 2015 at 8:36 AM, Gary Thomas <gary@mlbassoc.com> wrote:
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


its not required to.

>
> I think this should be filed as a bug (and feel free to suggest a patch)
>

No. Its not OE-Core or yocto bug

> BTW, this question should really be on the OpenEmbedded development list.

its valid for meta-xfce only.

>
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

