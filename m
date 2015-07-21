Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7EE8E0096A; Tue, 21 Jul 2015 08:36:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A5DE00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:36:18 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AC5E7F811DA; Tue, 21 Jul 2015 09:36:17 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2C6F2F811DA;
	Tue, 21 Jul 2015 09:36:17 -0600 (MDT)
Message-ID: <55AE6705.5040907@mlbassoc.com>
Date: Tue, 21 Jul 2015 09:36:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
In-Reply-To: <CAK5mtexdmYF7ivs+nwa7WZSqVb8sZCq5Euvt8oK2HimiXy7PMA@mail.gmail.com>
Cc: openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: Question about IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL
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
X-List-Received-Date: Tue, 21 Jul 2015 15:36:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-21 09:26, Victor Rodriguez wrote:
> Hi team
>
> I have a question , according to documentation there is a difference between
>
> IMAGE_INSTALL_append
>
> and
>
> CORE_IMAGE_EXTRA_INSTALL
>
> Specifies the list of packages to be added to the image. You should
> only set this variable in the local.conf configuration file found in
> the Build Directory.
>
> When I use the second one and try to build a core-image-minimal-xfce
> bitbake does not install what I wanted in my image . I had a really
> hard time few weekends ago because of this.
>
> I wonder If I am missing something or if this is a bug

The core-image-minimal-xfce recipe does not "play nice" with
the core-image class and is not respecting CORE_IMAGE_EXTRA_INSTALL.

I think this should be filed as a bug (and feel free to suggest a patch)

BTW, this question should really be on the OpenEmbedded development list.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

