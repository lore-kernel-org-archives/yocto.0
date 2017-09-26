Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC46E00D11; Tue, 26 Sep 2017 03:23:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB5FE00C8F
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 03:23:14 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8QANBpq019543
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 26 Sep 2017 11:23:12 +0100
Message-ID: <1506421391.31732.72.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>,
	yocto-infrastructure@yoctoproject.org, yocto@yoctoproject.org
Date: Tue, 26 Sep 2017 11:23:11 +0100
In-Reply-To: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
References: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: [yocto-infrastructure] [infra] git domain name updates
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
X-List-Received-Date: Tue, 26 Sep 2017 10:23:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-09-25 at 17:17 -0700, Michael Halstead wrote:
> This is all ready to go right now. Please update your remotes.
> 
> We will have to make these changes required before we can start to
> get performance benefits from them. I suggest November 1st 2017 but I
> need more feedback before we can set a cut off date.

I'd be tempted just to go ahead and do this sooner than later if you we
stand people asking questions about why it stopped working for them...

My .git/config files were full of rather elderly data but I think I
have all my main usages updated now...

Cheers,

Richard




