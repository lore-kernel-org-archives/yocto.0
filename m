Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7443E00D15; Wed, 16 Sep 2015 00:09:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.134.25.71 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 477 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Sep 2015 00:09:36 PDT
Received: from smtp01.mail.online.nl (smtp01.mail.online.nl [194.134.25.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A81E00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 00:09:36 -0700 (PDT)
Received: from [192.168.1.5] (s55969068.adsl.online.nl [85.150.144.104])
	by smtp01.mail.online.nl (Postfix) with ESMTP id 5D8414001C
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 09:01:37 +0200 (CEST)
Message-ID: <55F913D0.2000109@topic.nl>
Date: Wed, 16 Sep 2015 09:01:36 +0200
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
In-Reply-To: <F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Wed, 16 Sep 2015 07:09:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 16-09-15 03:13, Khem Raj wrote:
>> On Sep 15, 2015, at 7:47 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>> On 09/15/15 04:26, Paul D. DeRocco wrote:
>>> My embedded system has enough room in it for full-featured command line
>>> tools,...
"Embedded" in my world is not about RAM or disk size. It's about 
building a device that has a set task in life, and nothing is as 
important as that one task. Whether that's running on an i7 or an M3 is 
irrelevant.

For a system to acquire and process sensor data, record your favorite TV 
shows, or guide a missile, there's no need for a full fledged bash shell 
interpreter. It just needs a bit of plumbing to get the application up 
and running, and that's about it.

Busybox is for systems like that. For these systems, anything more is 
overkill, and will waste resources and increase the boot time.



