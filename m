Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40B36E00955; Sat, 10 May 2014 09:22:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 439 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 May 2014 09:21:57 PDT
Received: from mail-ie0-f180.google.com (unknown [209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21CBDE0053B
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 09:21:57 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id as1so5319302iec.39
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 09:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=j7KAs5Sn8GFDbq4s9n/ywDPclbIzZ9qY5Uxu8YviyzU=;
	b=HOzS9pnj6B2XzUoZPos1GBZXHFfWH3maRgyEKE+v3SLhQ7PmXA53gGv2WyYOWuwpkC
	s1vCMLngu6cDtBH4ll5HJsM+Co8w7bp4hlqj+CBF0cGXmHq2KcD71VD9S/FMW9VfYHrV
	Pan5cr7hcpsIiaBjKKc9URtX25qOTaKEfVzpVaWCTnaVeEHGvWBjdA68vyAqBcoKHiCF
	2aLIdrCNEG2OC6YHIFZLCIyyezH82HgXA/rrkKpJf8RAVLk7NoxfVhIdsySDvRDOX7j+
	H/wwkmf/LsIUgQrG7qZFNtIq8IbENGnTwbHcAwyPDqIr3aYgeoqnaESC2mK6wVevGVz6
	bVqQ==
X-Received: by 10.50.109.130 with SMTP id hs2mr22554399igb.29.1399738477515;
	Sat, 10 May 2014 09:14:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Sat, 10 May 2014 09:14:07 -0700 (PDT)
In-Reply-To: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 May 2014 09:14:07 -0700
Message-ID: <CAMKF1sqETNuu4EVasrJfdumQvvOYmhC3g6ez9px5EDhsMTTLUg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] GStreamer 0.10's future
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
X-List-Received-Date: Sat, 10 May 2014 16:22:01 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 8, 2014 at 7:48 AM, Burton, Ross <ross.burton@intel.com> wrote:
> For the 1.7 release I want to move GStreamer 0.10 from oe-core into
> meta-multimedia, and ensure everything in oe-core has ported to
> GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
> unmaintained so we don't need to be shipping both versions anymore.
>
> Everyone in agreement?  Should I expect any hate mail over this?

I think we still have QT versions which has not yet removed the
support. but as long as its in
some layer I am good with it.

