Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C496E007DF; Tue, 30 Sep 2014 16:25:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A039BE0034C
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 16:25:12 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 39965F811E2; Tue, 30 Sep 2014 17:25:12 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 53AC8F811DD;
	Tue, 30 Sep 2014 17:25:10 -0600 (MDT)
Message-ID: <542B3C23.1040509@mlbassoc.com>
Date: Tue, 30 Sep 2014 17:26:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20140930160017.8c4e4b9406b77e1e78d5069819454ed7.477e300d77.wbe@email14.secureserver.net>
In-Reply-To: <20140930160017.8c4e4b9406b77e1e78d5069819454ed7.477e300d77.wbe@email14.secureserver.net>
Subject: Re: fetch task not run after SRCREV updated
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
X-List-Received-Date: Tue, 30 Sep 2014 23:25:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-09-30 17:00, ezekiel@sanborndeasis.net wrote:
> I noticed that if I update the SRCREV value in a recipe to a newer rev for a GIT repository, OE does not think it needs to run the fetch step unless I force it. In other words
>
> bitbake -c fetch foobar
>
> does not pick up that the SRCREV it was downloaded for is no longer correct.
>
> bitbake -f -c fetch foobar
>
> obviously works fine. It appears to come down to the do_fetch stampfile. Is this intended functionality? It seems that if my SRCREV does not match against what was downloaded that
> should be invalidated and the fetch should be forced. Am I missing something?

Check the recent [last week or so] logs - this has just been addressed
and should work with the latest master [or maybe master-next]

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

