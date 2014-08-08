Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A0EDE0076B; Fri,  8 Aug 2014 01:04:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A564E00744
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 01:04:41 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id o6so3849493oag.24
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 01:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=tS2VXopwFg59zUInHFHfW3tSqN4efIahxm3F6PnkIzM=;
	b=UhD1nhpeEr/BamkDVCuGNLNAztU7va0PCFQ77RfCUrw5XPGwNrOA4loHuyduGhvWNw
	6relmfbFYlMj+oYatva4fSumSturH+V4iwWW5XEKSj2CwbDHDzn0F+DoimfivX59hGLC
	pdFG53YnOUBqpGcBA7afaofMYwQSLDiYFu4FZpfJ4iLjJIhAq0Ui+br34RXqG7k0JD38
	qYdTI4k19NqnlbaI7dzuMOI8oBnj8hiNcGgoatwL1kJJCMIdRD+ycRMt0MYVr3rGd3N5
	y433x6NPksGsfp4RloLXxuCMwam4WkidiNDs4PdyMSHDrbgnb8hQB/WBQ0Oqmwwg9Hxv
	z3Ug==
X-Gm-Message-State: ALoCoQkhJ45501YJpMFkPydCbmIxK1lO7cLPZ3qOmkLuoeAnXcCArZPk4Y+lC97n0Xpdl1yDgFu3
X-Received: by 10.182.106.137 with SMTP id gu9mr28049485obb.7.1407485079251;
	Fri, 08 Aug 2014 01:04:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Fri, 8 Aug 2014 01:04:19 -0700 (PDT)
In-Reply-To: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
References: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 8 Aug 2014 10:04:19 +0200
Message-ID: <CAP71WjyYFPJAu-39FB8i3F5G0XjvkLXRh3xQbz4drwvyiU9kLQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] RFC: Improving the developer workflow
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
X-List-Received-Date: Fri, 08 Aug 2014 08:04:48 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 7, 2014 at 11:10 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Example workflow
> ================
>
> I won't give a workflow for every possible usage, but just to give a basic
> example - let's assume you want to build a "new" piece of software for which
> you have your own source tree on your machine. The rough set of steps required
> would be something like this (rough, e.g. the command names given shouldn't be
> read as final):
>
> 1. Install the SDK
>
> 2. Run a setup script to make the SDK tools available
>
> 3. Add a new recipe with "sdktool add <recipename>" - interactive process. The
> tool records that <recipename> is being worked on, creates a recipe that can
> be used to build the software using your external source tree, and places the
> recipe where it will be used automatically by other steps.
>
> 4. Build the recipe with "sdktool build <recipename>". This probably only goes
> as far as do_install or possibly do_package_qa; in any case the QA process
> would be less stringent than with the standard build system however in order
> to avoid putting too many barriers in the way of testing on the target.
>
> 5. Fix any failures and repeat from the previous step as necessary.
>
> 6. Deploy changes to target with "sdktool deploy-target <ip address>" assuming
> SSH is available on the target. Alternatively "sdktool build-image
> <imagename>" can be used to regenerate an image with the changes in it;
> "sdktool runqemu" could do that (if necessary) and then run the result within
> QEMU with the appropriate options set.

coincidentally, i was giving an OE workshop this week, and when I
explained about the OE SDK, someone immediately brought up that it was
quite limited because:

 1- SDK cannot be used to generate deployable packages, e.g.  using
the SDK to create ipk/deb/rpm that can be delivered to
targets/clients, not just for debugging, but also for production when
production system has package management support.
 2- SDK cannot be used to regenerate updated images. e.g. Company A
delivers a SDK + board, Company B is making a product using the SDK
(adding content) and wants to be able to make new images with the new
content in order to sell/deploy it.
 3- SDK itself cannot be upgraded when the 'base image' and SDK are updated
 4- SDK users cannot add content to the SDK. e.g. I am a SDK user I
create a library and I want that library to be in the SDK now.

