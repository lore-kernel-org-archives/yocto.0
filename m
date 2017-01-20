Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1EB0E003E1; Fri, 20 Jan 2017 08:19:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7659E0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 08:19:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0KGJf3a021980
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 Jan 2017 08:19:44 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 20 Jan 2017 08:19:41 -0800
To: Peter Tulpen <ptulpen@emailn.de>, <yocto@yoctoproject.org>
References: <b8e51238b7798e9b642c019b120adac0@mail.emailn.de>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <07cd97a6-1f5f-e187-df5b-bf60cde1da21@windriver.com>
Date: Fri, 20 Jan 2017 10:19:40 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <b8e51238b7798e9b642c019b120adac0@mail.emailn.de>
Subject: Re: [layerindex-web] issue with webinterface
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
X-List-Received-Date: Fri, 20 Jan 2017 16:19:55 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 1/19/17 11:05 AM, Peter Tulpen wrote:
> Hello, I installed the webinterface locally and configured it with several branches
> But when I want to browse it, I can only choose master:
> 
> https://postimg.org/image/dq1vj6v7h/

I've been using a local instance of the layer index for a while now.  And I've
not experienced that behavior.  The group I work in is creating about 3 branches
a month that get added and indexed.

--Mark

> When I browse to http://MYSERVER/layerindex/branch/jethro/layers/, I see that
> the branches are there
> My installation based on a git clone from the master tree.
> 
> Did I miss something or did I hit a bug?
> 
> 
> 
> 
> --------------------------------------------------------------------------------
> 
> Versendet mit Emailn.de <https://www.emailn.de/> - Freemail
> 
> * Unbegrenzt Speicherplatz
> * Eigenes Online-Büro
> * 24h besten Mailempfang
> * Spamschutz, Adressbuch
> 
> 
> 


