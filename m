Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88983E009E3; Wed, 21 Sep 2016 10:05:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 29A3DE004F1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 10:05:26 -0700 (PDT)
Received: (qmail 10335 invoked by uid 1003); 21 Sep 2016 17:05:25 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@71.171.15.220)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	21 Sep 2016 17:05:25 -0000
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	=?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRQCiSe317HT8es4NjWhjOFiyr-nB2AcMWBoUR3MxKU8aA@mail.gmail.com>
	<2136602.cfMx8aiKfc@peggleto-mobl.ger.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <d737a38e-82c3-5f54-b8d6-1ec3b3bbc748@balister.org>
Date: Wed, 21 Sep 2016 13:05:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <2136602.cfMx8aiKfc@peggleto-mobl.ger.corp.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Wed, 21 Sep 2016 17:05:29 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 09/20/2016 07:29 PM, Paul Eggleton wrote:
> On Thu, 25 Aug 2016 18:14:23 Andreas Müller wrote:
>> seems layer list update is broken again e.g I am committing on
>> meta-qt5-extra regularly but last commit reported is one month ago.
> 
> OK, finally we should be back up and running with updates. We're still fixing 
> an issue to do with registering new accounts but that too should be sorted in 
> the next day or so. Sorry about the delay.

I'm working on PyQt5, does that belong in meta-qt5 or meta-qt5-extras?

Philip

PS: Checking commit og in case it is in -extras already :)

