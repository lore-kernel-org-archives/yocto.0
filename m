Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 390B8E00945; Mon,  9 Feb 2015 17:21:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A53E00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 17:21:29 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id h15so20483308igd.3
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 17:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=FLxmrgLEk22YbNac0i+tJnlEA9E8RZfi02fa7mUpiuo=;
	b=oZKvyEb3gQXGsStXNkgTa6nYWaxWezBlYGOb4htmGU9wxZqsevkjds/YMhgH2mOCnx
	XhHXpE3VCWPjTJy0ET7Ayilub3RjSkEVLotcf14rMOvDW87PNj96bbaHRe3QvR7NmQC4
	VdAqadH826SYuSjT9IMt6mvnos1SLDjbdssn7UZJjaq0I2E//w5X1rGlxk0EJIT69r3o
	iOANOQk43muUKfIGFJO4Cl1ve7p2/nM0BsGzy6cnAUQ4QGYz7fQFRkuFCSSvXWdriOoy
	IMyEJ4G4Nwbiu+TVISFXQCNzQbxgSqPKL9TdENnAhuESOk9u1/Wr2L06v5xF/LkZhrlQ
	auqA==
X-Received: by 10.50.13.97 with SMTP id g1mr20266123igc.42.1423531288973;
	Mon, 09 Feb 2015 17:21:28 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id d9sm7545383ioe.43.2015.02.09.17.21.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Feb 2015 17:21:27 -0800 (PST)
Message-ID: <54D95D16.40208@gmail.com>
Date: Mon, 09 Feb 2015 20:21:26 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E553BF734@fmsmsx111.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E553BF734@fmsmsx111.amr.corp.intel.com>
Subject: Re: Agenda: Yocto Project Technical Team Meeting - Tuesday, Feb. 10, 2015 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 10 Feb 2015 01:21:31 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2015-02-09 08:15 PM, Jolley, Stephen K wrote:
> Tuesday, February 10, 2015 8:00 AM US Pacific Time
> 
> 
> 
> Agenda:
> 
> 
> 
> * Opens collection - 5 min (Stephen)
> 
> * Yocto Project status - 5 min (Stephen/team)
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.8_Status
> 
> https://wiki.yoctoproject.org/wiki/Yocto_1.8_Schedule
> 
> https://wiki.yoctoproject.org/wiki/Yocto_1.8_Features
> 
> * SWAT team rotation: Ross -> Cristian
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
> 
> * Opens - 10 min
> 
> * Team Sharing - 10 min
> 
> 
> 
> 
> 
> We encourage people attending the meeting to logon the Yocto Project IRC chancel during the meeting (optional):
> 
> 
> 
> Yocto IRC: http://webchat.freenode.net/?channels=#yocto
> 
> IRC Tutorial: http://www.irchelp.org/irchelp/irctutorial.html
> 
> 
> 
> Conference Details:
> 
> Company:           WIND RIVER SYS
> 
> Ready-Access Number: 8007302996/9139049836
> 
> Access Code:     2705751
> 
> 
> For International numbers see: https://www.yoctoproject.org/tools-resources/community/weekly-technical-call
> 
> 
> Thanks,
> 
> Stephen K. Jolley
> Yocto Project Program Manager
> INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
> *   Work Telephone:          (503) 712-0534
> *    Cell:                                (208) 244-4460
> * Email:                             stephen.k.jolley@intel.com
> 
> 
> 
> 
Greetings All,
I can't IRC tomorrow for the meeting as I am at school :(. Would
someone either email me the major points of the meeting or think
of some way to allow me to known what happened during the meeting.
Thanks,
Nick

