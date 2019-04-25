Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46F74E00CD5; Thu, 25 Apr 2019 02:55:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89311E00CB9
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 02:55:35 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id c6so23722578wrm.1
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 02:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=GhAZN2/bueStWm0QnqkZ72eeNoja2FoMh1eR+oyJGzc=;
	b=WAKqDMnFZXEOFeJ8PbWjR83oIZFBF+BNODSrG3dn/ZVKZhqo+CkA/2fNKWyBa3cBYs
	+RvuwPNo8/4n+F006LZqYpP5Z7Rl1qzZ4vCTzbNZyvY3swBvBV9OsUxPsJacKrI4bUYO
	whMh98h+2FaefwsGOEQ186ni1rH4FWWQiV1oI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=GhAZN2/bueStWm0QnqkZ72eeNoja2FoMh1eR+oyJGzc=;
	b=FECra/n2+01QZ8wXfaxcXLtAlZ810lsaG7kDBtWlTW6aaX6IrDphVc4HiJsSO1x9zO
	qCLNpV7r3pcSPaUw0wq9fc64lS9LwPtsz0JDg1DCPEc+pi/aTyDtLc0t/VdmPWChNk0y
	FHJTPNw2bz0hEOp25JnEohCK1I+c5KZOtCxM/mWz1QgdLthnt60PwNFhufWbPAKrFHoa
	QoajhbPR19dXoYFJ4hGspnLIOd2zODRJGBqwE9isrELM66e0z6G8sRaeMTTynCrLkH8b
	F7x5BESU3e7fKTm0ipxQauIJLHyYteOKBtu5hJF6Xo3j2Ozphwza6XqEKDoOcidSq5NO
	f4GQ==
X-Gm-Message-State: APjAAAU2aGbKRLmTbzyZerT5WhJ7ywI2qakEV9f4SR8wwrIfSQuJwAAX
	nEvmRo8ShjRyKmVADVuxaJPBew==
X-Google-Smtp-Source: APXvYqzKkfpfDYCRLEETAgJrNFjquxav3e0NRtixVSDdIhzDxAMyCtHq06WSi5BxnmDvZCvwkXvQJw==
X-Received: by 2002:adf:b696:: with SMTP id j22mr5541107wre.85.1556186134732; 
	Thu, 25 Apr 2019 02:55:34 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	z19sm17008584wml.44.2019.04.25.02.55.33
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 25 Apr 2019 02:55:33 -0700 (PDT)
Message-ID: <bcc6fe9fbe54e3896d02932dbd7dac46f658c536.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>, 
	"'openembedded-core-request@lists.openembedded.org'"
	<openembedded-core-request@lists.openembedded.org>
Date: Thu, 25 Apr 2019 10:55:32 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DDCE9B@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DD6D05@PGSMSX110.gar.corp.intel.com>
	<191c2490a17a1e5b18b6a0d98659c30d766adde4.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DDCE9B@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: QA cycle report for 2.5.3 RC3
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
X-List-Received-Date: Thu, 25 Apr 2019 09:55:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-04-24 at 06:28 +0000, Jain, Sangeeta wrote:
> That looks great to me. 
> As a further improvement for sharing of test results, I am working to
> create a wiki page for consolidated 
> test results. For 2.5.3, it can be viewed at:
> https://wiki.yoctoproject.org/wiki/WW16_-_2019-04-18_-_Full_Test_Cycle_2.5.3_RC3

The reasons for a wiki page are historical, mainly from the testopia
plugin to the wiki. I think going forward we should focus on having a
test report included in the release artefacts and that we shouldn't
need the wiki page.

> After you have added more results on AB, I will change some existing
> links on this web page with the new ones.
> 
> Another thought I have is that since for any release, all data will
> be removed from public AB after few days of release,
> Should I include here a  link to "yocto-testresults" git repo? It
> will make this wiki page more useful for reference in future as well.

Release data is moved from the autobuilder to the main public release
location, e.g.:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.2/testresults/

So if we put a test report as a release artefact, it moves with the
rest of the release artefacts and we're all good!

This avoids the need for any links as all the data is in one place.

Cheers,

Richard


