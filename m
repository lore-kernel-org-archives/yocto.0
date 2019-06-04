Return-Path: <rpurdie@rpsys.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D4CFE006D2; Tue,  4 Jun 2019 09:10:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 461 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Jun 2019 09:10:35 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B56E006D2;
	Tue,  4 Jun 2019 09:10:35 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	x54G2WTK024050
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 4 Jun 2019 17:02:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rpsys.net; s=default;
	t=1559664156; bh=6eSVWV4c3Io6dNXv6ThRB2d0oJUKs3SVYUFWnAB/dg8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=PfQdulKt/p1wZwfePBS6NxoaMYVouO4nKNzqvbmFkj3NcVAui3Ju/GDoXXt8e33v9
	ydEvVnhQgCwuIAfk0bpYwrhiXYrADaXb2+/WSWSCT2r8WTFFP0TONfz6w3+sG9zASZ
	M15JxMh+3Wxfm5HQmC1uP2ijCQ+zxhYh/kI116YrocfT7HtDsFCnKpJvL58VDp9dO6
	rU4RdBgvWD1/nGw3wDvZz4AOvx4jXGHenbkTC4IyVUtMNJuLtVp8L2sHA1uVBqoWIx
	EaOCOjt6KijLKVkkjd4CcjQEdvR4wNLhIHnPB/a89UyWn+21pL9/ssQJ8ufO706ubA
	BOi8X+e8ROP/A==
Message-ID: <0f6e55fc6305b3f5cb477af4f4aff4c2e67e2b00.camel@rpsys.net>
From: Richard Purdie <rpurdie@rpsys.net>
To: Changqing Li <changqing.li@windriver.com>, akuster <akuster@mvista.com>,
	Randy MacLeod <randy.macleod@windriver.com>
Date: Tue, 04 Jun 2019 17:02:32 +0100
In-Reply-To: <dd502bbb-d5a4-35fb-fb64-3af8af8a3ede@windriver.com>
References: <1551779999-231946-1-git-send-email-changqing.li@windriver.com>
	<3427a8c2-543e-f71c-9c10-fca3b5c0667e@windriver.com>
	<a42d5db8-1cae-008e-dd8f-d533662007d6@windriver.com>
	<46d05a5b-c884-0f87-5cee-02d005f04225@mvista.com>
	<dd502bbb-d5a4-35fb-fb64-3af8af8a3ede@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at dan
X-Virus-Status: Clean
X-Mailman-Approved-At: Thu, 06 Jun 2019 08:27:38 -0700
Cc: yocto@yoctoproject.org, "Eggleton, Paul" <paul.eggleton@intel.com>
Subject: Re: [patchtest-oe][PATCH] test_metadata_src_uri: new unittest detecting added patch files without modifying SRC_URI
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
X-List-Received-Date: Tue, 04 Jun 2019 16:10:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-05-29 at 10:28 +0800, Changqing Li wrote:
> On 5/28/19 10:53 PM, akuster wrote:
> > On 5/27/19 6:00 PM, Changqing Li wrote:
> > > ping
> > > 
> > > On 4/29/19 2:10 PM, Changqing Li wrote:
> > > > ping
> > > > 
> > Does this mean you have a working knowledge of patchtest?
> > 
> > The one used by the project appears to be off line.  Can you help?
> > 
> > kind regards,
> > Armin
> 
> I have do some work on this,  and can try to help,  but I don't have
> 
> access right of the server,  and I also don't have the admin account
> of the patchwork.  if  someone can  provide these info,  I am glad to
> help.

Help would be much appreciated, lets take this offlist and work with
Michael and Paul and see if we can figure out how to move forward.

Cheers,

Richard


