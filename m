Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FDBAE00815; Tue, 27 Jan 2015 19:30:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95381E007BA
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 19:30:01 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0S3TwTI000048
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 27 Jan 2015 19:29:58 -0800 (PST)
Received: from server.local (128.224.22.63) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 27 Jan 2015 19:29:57 -0800
Message-ID: <54C857B5.1040905@windriver.com>
Date: Tue, 27 Jan 2015 22:29:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yani Dubin <yani.dubin@taitradio.com>
References: <CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com>	<54C7A9EA.7000306@windriver.com>	<CAHSWo-j2kOvKG11=KOCKPkxCY6=43cpedmGtQghyuA5Npg3h=g@mail.gmail.com>
	<CAHSWo-jaoxkR_rtOXt2R8boV_rQQCF2FwddCoB+Ke0GTQaOnKA@mail.gmail.com>
In-Reply-To: <CAHSWo-jaoxkR_rtOXt2R8boV_rQQCF2FwddCoB+Ke0GTQaOnKA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: (IIO) ADC freeze on am335x processor on 3.14.26ltsi kernel
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
X-List-Received-Date: Wed, 28 Jan 2015 03:30:04 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-01-27 9:13 PM, Yani Dubin wrote:
> On 28 January 2015 at 12:19, Yani Dubin <yani.dubin@taitradio.com
> <mailto:yani.dubin@taitradio.com>> wrote:
>
>     Since this is my first time reporting a kernel bug, and I now know
>     exactly what I am looking for can you give me any pointers on
>     where/how to search to see if an upstream fix exists already?
>
>
> I fetched the latest 3.14.y from linux-stable at git.kernel.org
> <http://git.kernel.org> and saw no further changes to this driver, nor
> anything relevant on the 3.18.y branch (git log on affected file). I
> haven't looked outside the stable source tree.
>
> I have assumed that a fix would touch the driver itself. I do not know
> what a proper fix would actually look like - presumably my workaround
> would break whatever the changeset was fixing for those using the TSC
> part of the driver, much the way their fix broke my use of the driver.
>
> bugzilla.kernel.org <http://bugzilla.kernel.org> states that it is for
> submitting issues with mainline rather than distribution kernels. Would
> they consider linux-yocto a distribution kernel, and I should leave this
> with you?

They would consider it a distribution kernel, but if you can show the
issue in the same 3.14.y -stable kernel, you can report it via that
avenue.

Alternatively, it is worth firing an email to the arm-kernel mailing
list, to see if anyone else has seen this, or has a comment on the
problematic commit.

I'm in the same situation as before if it is left with me .. I don't have
the h/w to reproduce the issue, so I can't effectively fix it.

Bruce

>
> Regards,
> Yani.
>
> ------------------------------------------------------------------------
> This email, including any attachments, is only for the intended
> recipient. It is subject to copyright, is confidential and may be the
> subject of legal or other privilege, none of which is waived or lost by
> reason of this transmission.
> If you are not an intended recipient, you may not use, disseminate,
> distribute or reproduce such email, any attachments, or any part
> thereof. If you have received a message in error, please notify the
> sender immediately and erase all copies of the message and any attachments.
> Unfortunately, we cannot warrant that the email has not been altered or
> corrupted during transmission nor can we guarantee that any email or any
> attachments are free from computer viruses or other conditions which may
> damage or interfere with recipient data, hardware or software. The
> recipient relies upon its own procedures and assumes all risk of use and
> of opening any attachments.
> ------------------------------------------------------------------------


