Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03563E0079D; Sun,  3 Aug 2014 09:45:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 219 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Aug 2014 09:45:22 PDT
Received: from serv01.siteground282.com (ns1.siteground282.com [184.154.233.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A12E0030B
	for <yocto@yoctoproject.org>; Sun,  3 Aug 2014 09:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=NJW20z307SkYAOtV1YWEHRcpScqb2W4edfoDN27FS5Q=; 
	b=1js+Shh5lZoxix/+xGbdkUfRro0bEX1eqnphqpHNGZKmWrn+CykF/wq+no92CBFkCx4fW46vtkAJzcZ45bonjeZM22dU4e721pYNHXIZsjWsNGtGXwNRAam3QoQGm8/Sfd+QWixm+JArT4ydXYuPvdSYkliw59zZ7gwTfmFxf18=;
Received: from [127.0.0.1] (port=34095 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1XDyua-00077x-42; Sun, 03 Aug 2014 11:45:32 -0500
MIME-Version: 1.0
Date: Sun, 03 Aug 2014 11:45:32 -0500
From: gmane@reliableembeddedsystems.com
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B23BF9E53@IRSMSX103.ger.corp.intel.com>
References: <53BD0C5B.3090506@reliableembeddedsystems.com>
	<33115ABC4887814E8A92A08FBC93416B23BF9E53@IRSMSX103.ger.corp.intel.com>
Message-ID: <8d4a5aefcb05ad73464d215ee0d40cc6@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/0.9.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Mailman-Approved-At: Mon, 04 Aug 2014 08:11:18 -0700
Cc: yocto@yoctoproject.org
Subject: Re: automated hardware testing
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
X-List-Received-Date: Sun, 03 Aug 2014 16:45:25 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2014-07-21 08:35, Stoicescu, CorneliuX wrote:
> Hello Robert,
> 
> Sorry for the late reply, I missed this mail.
> 
> We do have an almost fully automated way of doing what you need. First
> of all, how do you want to run the automated tests? From the
> autobuilder as a build step OR from another machine (this will imply
> publishing the images on a http server).

It's fine from the autobuilder as a build step.

> 
> To give you more info to chew on, what you have to do is
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#performing-automated-runtime-testing
> . The TEST_TARGET would have to be set to BeagleBoneTarget and other
> fields like TEST_SERIALCONTROL_CMD will also have to be set.

OK, Thanks!

I will be out of the office for the next couple of weeks which will give 
me time to read the "mega manual". What else would someone do on the 
beach;)

I'll certainly keep you updated about how things will go with 
autobuilder/auto hardware testing.

> 
> Regards,
> Corneliu
> 


