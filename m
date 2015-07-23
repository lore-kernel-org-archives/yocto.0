Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24373E009D7; Thu, 23 Jul 2015 09:30:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1D32E009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:30:33 -0700 (PDT)
Received: by pdrg1 with SMTP id g1so159625787pdr.2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:30:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc:content-type;
	bh=lxfIlLhjo5sB2lxSp9khboD1Ynk9ddd5iH+GbVYQs0I=;
	b=lMHHlYBff3kDBxCPEuRrYUGI1QSkQyTi2PYzKIE70EGddhE1L5I5Sjok67w4We4H5I
	QruC9V2ZrnNTxtcP2Nw+aXXjHgvbqdyXJ3g4ctqliwDGEe2G/K7N+3W/wzhXlZl9hMPp
	YbjMByKu74MJi9X54VD6FoRvnsW4jSBY25ntG5AydTT8E9Xpx7KHj8KsuQHNtBNtNe3N
	rUWRgmQ82rKIt+ByP6TX3iO9UEC0+C7jeO2nIM+dZYnnP8YK3lZ8xa5SRnNbryEakiCN
	Q3/BD/jREmlPpX0I4zdO3HDs7failkFuAuuEFC3RztEnvf+qGd0SwQxZVdU6eFG3BKp4
	7jLA==
X-Gm-Message-State: ALoCoQlmX7o3eG72OFEUTYr47hKTaZyeic5zYaIOfHY6uce8Mfo0bvsQY/NidC+E4NHHm7C3eHob
X-Received: by 10.70.109.199 with SMTP id hu7mr20339412pdb.71.1437669032561;
	Thu, 23 Jul 2015 09:30:32 -0700 (PDT)
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com.
	[209.85.192.170])
	by smtp.gmail.com with ESMTPSA id z4sm9826601pdo.88.2015.07.23.09.30.30
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jul 2015 09:30:31 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by pdbbh15 with SMTP id bh15so113996659pdb.1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:30:30 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.66.230.201 with SMTP id ta9mr20241522pac.95.1437669030106;
	Thu, 23 Jul 2015 09:30:30 -0700 (PDT)
Received: by 10.70.59.105 with HTTP; Thu, 23 Jul 2015 09:30:30 -0700 (PDT)
In-Reply-To: <CAK5mtezxAk8pdCohRV8R4VCTcc4OypTd29Gf6mzK1g7F+_0OMg@mail.gmail.com>
References: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
	<CAP9ODKq6U0udqPvjgs1WmHNFy693O6h5Qt+hHFwnYo5nbpH1kQ@mail.gmail.com>
	<CAK5mtezxAk8pdCohRV8R4VCTcc4OypTd29Gf6mzK1g7F+_0OMg@mail.gmail.com>
Date: Thu, 23 Jul 2015 13:30:30 -0300
Message-ID: <CAP9ODKp3d0tGGiVHDZmvmCiduh6xrC-bU14NteEKYpPRVOTkcw@mail.gmail.com>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] Bug in Open CV receipt
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
X-List-Received-Date: Thu, 23 Jul 2015 16:30:36 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 23, 2015 at 12:05 PM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
> On Wed, Jul 22, 2015 at 7:35 AM, Otavio Salvador
> <otavio.salvador@ossystems.com.br> wrote:
>> On Tue, Jul 21, 2015 at 11:57 AM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>>> Few weeks ago I was having some problems with open CV receipt. In the
>>> begining I toght I was adding opencv tro my core-image-minimal-xfce
>>> just with this:
>>>
>>> IMAGE_INSTALL_append = " gcc gcc-dev openssh php mariadb opencv"
>>>
>>> Now after booting the image I realize that none of the libraries for
>>> open stack were added to my image
>>>
>>> What I had to do was the following:
>>>
>>>
>>> IMAGE_INSTALL_append = " libopencv-core-dev libopencv-highgui-dev
>>> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
>>> opencv-staticdev python-opencv"
>>>
>>> Even last night when one of the opencv developers ask me for python
>>> opencv I had to add the last part python-opencv. That is not cool at
>>> all . If I add opencv in the beginning I assume we are more than cool
>>> with that and yocto will add all the packages . Unless I am doing
>>> something wrong, in taht case I am more than happy to get the
>>> feedback.
>>>
>>> Thanks a lot for all the help . If someone else can reproduce this bug
>>> I am more than happy to report it in bugzila (not sure the URL)
>>
>> You should add the dev-pkgs and tools-sdk image features for the
>> image, not mangle it manually.
>
> I think the best solution is create a package group that will keep
> backward compatibility and aloud packages exist as expected

Sorry but this does not make sense. The image recipe you described is
not using the framework structure for this and this is the problem you
should address not bloat the oe-core itself.

Check core-image class for it.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

