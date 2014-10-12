Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 600A5E00877; Sat, 11 Oct 2014 18:20:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A651E0080C
	for <yocto@yoctoproject.org>; Sat, 11 Oct 2014 18:20:36 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s9C1KQgA025442
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 11 Oct 2014 18:20:26 -0700 (PDT)
Received: from server.local (128.224.21.190) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Sat, 11 Oct 2014 18:20:26 -0700
Message-ID: <5439D6FC.9060704@windriver.com>
Date: Sat, 11 Oct 2014 21:18:52 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1410110701570.14485@localhost>
In-Reply-To: <alpine.LFD.2.11.1410110701570.14485@localhost>
Subject: Re: is anything happening with "meta-kernel-dev" layer?
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
X-List-Received-Date: Sun, 12 Oct 2014 01:20:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-10-11, 7:03 AM, Robert P. J. Day wrote:
>
>    just noticed the entry at:
>
> http://layers.openembedded.org/layerindex/branch/master/layers
>
> for "meta-kernel-dev":
>
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-kernel-dev/
>
> which doesn't seem to be doing a whole lot these days. is this still
> relevant? should it be tossed from the active layers page?

I still use it every day, but it is being re-worked for 1.8. That being
said, the functionality that it added is largely present in core now,
and will be addressed by other developer workflow improvements.

Bruce

>
> rday
>


