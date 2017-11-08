Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22997E00D4C; Wed,  8 Nov 2017 09:17:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42C53E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 09:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=rbOqkOKx6useUmTNkTZq1oMN4UFIZXrrD7zv7wnp4no=;
	b=PXc7aRyl6SftnPzwjNor8Z+I5aaRuqqrkskb6Z8tGq2zvybY0VLeQ9Qo+QLFz0cWUphrsMxZuAV3M
	tovFLd/b92ArUpcj5Pcg6oq1sRbFQAi7Ytp75OqJF5YGxwE/Qea78g8sSe0g7WWWshHIjzymC/5JY5
	xTmyxwZ8OBIp0ZAY=
X-HalOne-Cookie: 6fca1712bd0842388177acee202365c818f1decb
X-HalOne-ID: bf25425c-c4a8-11e7-b91f-d0431ea8a283
Received: from [192.168.178.34] (unknown [93.184.187.27])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id bf25425c-c4a8-11e7-b91f-d0431ea8a283;
	Wed, 08 Nov 2017 17:17:50 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAE0QtjOyjit90GBrK4i1nCNP_et=GHH=xdnurw72MS+JLfOyDg@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <3d0110a8-21f6-9929-47a1-2ac87a354f33@embexus.com>
Date: Wed, 8 Nov 2017 18:17:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAE0QtjOyjit90GBrK4i1nCNP_et=GHH=xdnurw72MS+JLfOyDg@mail.gmail.com>
Subject: Re: Yocto problem for Ryzen-7 cpu
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
X-List-Received-Date: Wed, 08 Nov 2017 17:17:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 08.11.2017 18:06, Jerry Lian wrote:
> (my Gmail does not accept new message for same subject? so I open a 
> new thread)
>
> So bad: I do use Ryzen-7.
> will Ubuntu-17 or latest Debian fix the problem?

try it out and give us feedback ;-)
>
>
>
>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634


