Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A70E2E0086F; Mon,  2 Feb 2015 07:34:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8DB9E00809
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 07:34:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t12FY1uk021674; Mon, 2 Feb 2015 15:34:01 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id b-M7CJCWmY1r; Mon,  2 Feb 2015 15:34:01 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t12FXk7R021664
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 2 Feb 2015 15:34:00 GMT
Message-ID: <1422891226.22544.4.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 02 Feb 2015 15:33:46 +0000
In-Reply-To: <54CF9877.8070607@mlbassoc.com>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E74429D@UT40SVCWEM001.atk.com>
	<54CF9646.8030103@mlbassoc.com>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E7442CE@UT40SVCWEM001.atk.com>
	<54CF9877.8070607@mlbassoc.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: COMPATIBLE_HOST
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
X-List-Received-Date: Mon, 02 Feb 2015 15:34:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-02-02 at 08:32 -0700, Gary Thomas wrote:
> On 2015-02-02 08:28, Moore, Thomas (FtWorth) wrote:
> > Gary,
> >
> > It seems like COMPATIBLE_MACHINE would have values such as
> genericx86, qemux86-64, or beaglebone. If that's true, I don't think I
> want to use COMPATIBLE_MACHINE as my recipes are only dependent on the
> architecture.
> 
> You can also use architecture here - basically anything that is an override can be used.
> Similar to Ross' answer, I think this should work:
>    COMPATIBLE_MACHINE = '(i.86|x86_64)'

No, that syntax is for COMPATIBLE_HOST...

Cheers,

Richard


