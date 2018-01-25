Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A16DEE00DEE; Thu, 25 Jan 2018 11:42:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DBD8E00B78
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 11:42:52 -0800 (PST)
Received: (qmail 28935 invoked by uid 1003); 25 Jan 2018 19:42:54 -0000
Received: from unknown (HELO ?192.168.11.100?)
	(philip@opensdr.com@73.216.230.216)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	25 Jan 2018 19:42:54 -0000
To: nick <xerofoify@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b9fae6f7-348c-00e2-b8bf-2322e7a7ab6c@gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <6c81438f-0e99-699b-ff44-1d87ce067717@balister.org>
Date: Thu, 25 Jan 2018 14:42:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <b9fae6f7-348c-00e2-b8bf-2322e7a7ab6c@gmail.com>
Subject: Re: Size of Packages from bitbake build feature idea
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
X-List-Received-Date: Thu, 25 Jan 2018 19:42:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

On 01/25/2018 01:49 PM, nick wrote:
> Greetings All,
> 
> I assume this is possibly already there or is in another tool used by most people
> here. However if not I was wondering if it's a good idea to add support for telling
> what packages use up the most space on the root filesystem before the build or even
> a good idea. 
> 
> Something like bitbake show package size can be very useful for trimming down your
> packages before the build is done or even before debugging storage requirements. It
> should also support telling what shared libraries are used by each package. 

Take a look at the buildhistory class.

Philip

> 
> Nick
> 

