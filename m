Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46150E009C9; Sat, 24 Mar 2018 09:48:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D96E00474
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2018 09:48:19 -0700 (PDT)
Received: (qmail 21883 invoked by uid 1003); 24 Mar 2018 16:48:22 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.152.143.112)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	24 Mar 2018 16:48:22 -0000
To: =?UTF-8?Q?Matthias_Sch=c3=b6pfer?= <matthias.schoepfer@identpro.de>,
	Peter Balazovic <balazovic.peter@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<CAFq4t4jerHvsYRmh41=nu01OK6cE0Vszn4Vs0VYFsFMDxN97pw@mail.gmail.com>
	<C44683C49AD51C4AB28DA746E48E35870101C9F0@SBS-IDENTPRO.intranet.identpro.net>
From: Philip Balister <philip@balister.org>
Message-ID: <531bef5a-d363-a751-29fa-4bd9872020ec@balister.org>
Date: Sat, 24 Mar 2018 12:48:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <C44683C49AD51C4AB28DA746E48E35870101C9F0@SBS-IDENTPRO.intranet.identpro.net>
Subject: Re: scipy recipe
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
X-List-Received-Date: Sat, 24 Mar 2018 16:48:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

On 03/23/2018 06:07 AM, Matthias Schöpfer wrote:
> Hi Peter,
> 
> I managed to get scipy to cross compile, since I was in a hurry, and
> have no deeper understanding of python / distutils / setuptools, it
> turned out to be an ugly hack (but obviously I was not the first one to
> do ugly things there ;) )
> 
> Maybe you have had some progress as well, and we can figure out a nicer
> solution.
> 
> See the attached files, involving openblas, a bbappend for python-numpy
> and python-scipy.

I'm confused why you need the bbappend for numpy?

The recipe in OE-Core should be solid without patches.

Other than that, this is very interesting stuff.

Philip


> 
> Regards,
> 
> 	Matthias
> 
> 
> 

