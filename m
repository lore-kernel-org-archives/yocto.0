Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC553E00571; Wed,  7 Jan 2015 13:31:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5785BE002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 13:31:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t07LURQK029917; Wed, 7 Jan 2015 21:30:27 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6kcgB_nhEafU; Wed,  7 Jan 2015 21:30:27 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t07LUEXq029907
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 7 Jan 2015 21:30:25 GMT
Message-ID: <1420666251.25779.76.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 07 Jan 2015 21:30:51 +0000
In-Reply-To: <54ADA374.8050006@gmail.com>
References: <1420622709.25779.60.camel@linuxfoundation.org>
	<54ADA374.8050006@gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: Bug reporting and good bug reports
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
X-List-Received-Date: Wed, 07 Jan 2015 21:31:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-01-07 at 16:21 -0500, Trevor Woerner wrote:
> On 01/07/15 04:25, Richard Purdie wrote:
> > I also have a patch. Where should I share them? How do I ensure everyone
> > with an interest in this defect actually gets the patch? Sure I can
> > create email and send to the people who I think need to know.
> 
> When I went through that whole "let's add a MAINTAINERS file" thing last
> year this is exactly what I had in mind at that time.

But that isn't what I'm talking about.

I'm talking about people being able to say "I have some interest in a
particular defect and I'd like updates about it". That is completely
different to a MAINTAINERS file. The user and easily opt in to specific
things using the web UI and its self maintaining to a large degree.

Cheers,

Richard


