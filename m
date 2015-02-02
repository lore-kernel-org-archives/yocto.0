Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8023AE0095F; Mon,  2 Feb 2015 02:55:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA615E00717
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 02:55:09 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id ar1so16618633iec.13
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 02:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=l/xS5tMIfJbZMGyid3dC1cuNl6dg7NCqnFnXLg6YL8A=;
	b=n0sr2LJXubNPt34ssTh0daK7/g2uuTIisUCUBC5JpKXpwdZD6K1xjpfmITz5mJ6grI
	dODXgpC3EIv2hNCBlAZ+tnGZ7VqsHMddHQyV9HIF/+D5RvhjtblWGay5TozcMaWfcuH+
	npyYjsYYyIKymV+Vz8fxLIqx8W22+JdAz7xVamABPHOEWg6b4cM/rrscpKHXTLi02VxA
	5qjOSE1zOjMc7Bj/zhwQwl1E6aqZDUw0OSgtdn7Nk+9ReuudFblCZgldzPbVz3Twa2ut
	bUUE4zGXtzC/R3HBYpbt/40kEoEAxUVkXQtdSqMF9Njjf6OBgUiPV9usEobv6PIUhrcv
	kmeQ==
X-Received: by 10.50.137.99 with SMTP id qh3mr10889108igb.7.1422874504303;
	Mon, 02 Feb 2015 02:55:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Mon, 2 Feb 2015 02:54:34 -0800 (PST)
In-Reply-To: <CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Feb 2015 02:54:34 -0800
Message-ID: <CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 10:55:14 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 2, 2015 at 2:40 AM, Burton, Ross <ross.burton@intel.com> wrote:
> cross-localdef-native:
>
> | In file included from glibc/locale/programs/locarchive.c:696:0:
> | glibc/locale/programs/../../intl/l10nflist.c: In function
> '_nl_normalize_codeset':
> | glibc/locale/programs/../../intl/l10nflist.c:306:12: error: missing binary
> operator before token "("
> | glibc/locale/programs/../../intl/l10nflist.c:313:9: error:
> '_nl_C_locobj_ptr' undeclared (first use in this function)
> | glibc/locale/programs/../../intl/l10nflist.c:313:9: note: each undeclared
> identifier is reported only once for each function it appears in


gcc would work with latest tree but I did not run into this error. So
wait a while until I get to it.

