Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34A9FE0159E
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 12:32:45 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 87F93B6A02F
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 21:32:40 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.9 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.site (ppp-188-174-91-171.dynamic.mnet-online.de
	[188.174.91.171])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 63FADB6A016
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 21:32:39 +0200 (CEST)
Message-ID: <52375CD6.3010604@philipp-wagner.com>
Date: Mon, 16 Sep 2013 21:32:38 +0200
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <loom.20130916T112434-834@post.gmane.org>
	<CAAA4K6KgpiL+Y1U2Ui3YGm8nV_Y+2bvCjAocw3j=CHQTRhTyvA@mail.gmail.com>
	<loom.20130916T125631-411@post.gmane.org>
	<F333D337-0522-4164-9704-6B56C20F7AC9@gmail.com>
In-Reply-To: <F333D337-0522-4164-9704-6B56C20F7AC9@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: Add nfs package to image minimal for atom-pc
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
X-List-Received-Date: Mon, 16 Sep 2013 19:32:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 16.09.2013 19:06, Khem Raj wrote:
> 
> On Sep 16, 2013, at 4:04 AM, Jack <jackrubby2010@gmail.com> wrote:
> 
>> I have already tested it. But I got error again. Error is :
>>
>> Computing transaction...error: Can't install nfs-utils-1.2.7-r0@core2: no
>> package provides /bin/bash
>>
>> What can I do? 
> 
> well, you can add bash to your image using IMAGE_INSTALL or something however that might
> hide potential problem where may be there is one script in nfs-utils wanting bash which
> can be split into a package of its own. If you can file a bug in yocto bugzilla to track it as well

nfs-utils contains a couple bash scripts, e.g. osd_login or start-statd.
Both use in its current state at least some bash specifics, so they need
to either be modified to work with any shell, split out or bash needs
to be added as dependency. I already reported this on the mailing list
some months ago, but since then I simply added bash to the image, as I
was told that adding bash as dependency is a no-go.

Philipp

