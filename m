Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9764DE009D7; Thu, 23 Jul 2015 09:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFC01E009B2
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:31:24 -0700 (PDT)
Received: by iggf3 with SMTP id f3so511926igg.1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 09:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zb49R5YUJmvGkUV4q1v3vr16EppIC3g34i0WVoLDVEs=;
	b=oIXU8+PpD/h+aDCueM+4fI0Mq3bSos5GrMpa77RTNdIoQdlIwsBKL1iANlEjABpos0
	lgUYVImqcpGzkN+TaYlND3ElPMJqy/2bHCHPtMcXoJvQpo0HWzzMO4x9XioKVdztnGw7
	s5lzShAZsesWSdnyCYOuNm0tlD0fMab6TZ6CqpcMn5VoPZ4KOFie3vY1N+/mpv9xTW1R
	GSlE1JH9EnUYAljf5ZgDrseLes0Mom5Fr5Eu47qvr+slnohuxSbhkKv9XgU+UHvcd13u
	IEx96sbHyekHMMLXzeVlsKRONFIprlhF4RYmlpfb+gU2lGzCdGWNs7T9KP4T9gXqHG2U
	bEyw==
MIME-Version: 1.0
X-Received: by 10.107.166.72 with SMTP id p69mr15767931ioe.65.1437663930938;
	Thu, 23 Jul 2015 08:05:30 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Thu, 23 Jul 2015 08:05:30 -0700 (PDT)
In-Reply-To: <CAP9ODKq6U0udqPvjgs1WmHNFy693O6h5Qt+hHFwnYo5nbpH1kQ@mail.gmail.com>
References: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
	<CAP9ODKq6U0udqPvjgs1WmHNFy693O6h5Qt+hHFwnYo5nbpH1kQ@mail.gmail.com>
Date: Thu, 23 Jul 2015 10:05:30 -0500
Message-ID: <CAK5mtezxAk8pdCohRV8R4VCTcc4OypTd29Gf6mzK1g7F+_0OMg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
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
X-List-Received-Date: Thu, 23 Jul 2015 16:31:26 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 22, 2015 at 7:35 AM, Otavio Salvador
<otavio.salvador@ossystems.com.br> wrote:
> On Tue, Jul 21, 2015 at 11:57 AM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>> Few weeks ago I was having some problems with open CV receipt. In the
>> begining I toght I was adding opencv tro my core-image-minimal-xfce
>> just with this:
>>
>> IMAGE_INSTALL_append = " gcc gcc-dev openssh php mariadb opencv"
>>
>> Now after booting the image I realize that none of the libraries for
>> open stack were added to my image
>>
>> What I had to do was the following:
>>
>>
>> IMAGE_INSTALL_append = " libopencv-core-dev libopencv-highgui-dev
>> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
>> opencv-staticdev python-opencv"
>>
>> Even last night when one of the opencv developers ask me for python
>> opencv I had to add the last part python-opencv. That is not cool at
>> all . If I add opencv in the beginning I assume we are more than cool
>> with that and yocto will add all the packages . Unless I am doing
>> something wrong, in taht case I am more than happy to get the
>> feedback.
>>
>> Thanks a lot for all the help . If someone else can reproduce this bug
>> I am more than happy to report it in bugzila (not sure the URL)
>
> You should add the dev-pkgs and tools-sdk image features for the
> image, not mangle it manually.
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


I think the best solution is create a package group that will keep
backward compatibility and aloud packages exist as expected

