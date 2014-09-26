Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 495CFE00781; Fri, 26 Sep 2014 10:09:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id BBCC1E006DB
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 10:09:11 -0700 (PDT)
Received: (qmail 22194 invoked by uid 1003); 26 Sep 2014 17:09:10 -0000
Received: from unknown (HELO ?10.16.32.132?)
	(philip@opensdr.com@209.234.137.234)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	26 Sep 2014 17:09:10 -0000
Message-ID: <54259DB5.4060506@balister.org>
Date: Fri, 26 Sep 2014 10:09:09 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
Subject: Re: Adding 'build-id' to Build Image
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
X-List-Received-Date: Fri, 26 Sep 2014 17:09:14 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

I added https://bugzilla.yoctoproject.org/show_bug.cgi?id=6770

Sorry no patch yet :)

Philip

On 09/10/2014 12:38 AM, Paul Eggleton wrote:
> On Tuesday 09 September 2014 15:03:39 Philip Balister wrote:
>> On 09/08/2014 07:08 PM, Leo Schwab wrote:
>>> We'd like to have the system images we build to contain a build id, or
>>> at least a pile of information inside the image itself that lets us
>>> identify which build is being run/tested.  Indeed, the information
>>> 'bitbake' kicks out just as it starts a build is exactly the sort of
>>> thing we'd like sitting in a file in the image somewhere.
>>>
>>> I turned on the 'buildhistory' feature in conf/local.conf which, among
>>> other things, generates a 'build-id' file.  However, it doesn't place
>>> it in the image, but in an entirely separate directory hierarchy.
>>>
>>> Surely this sort of thing has been done before.  Is there an existing
>>> recipe I can use, or will I have to cobble together a custom recipe
>>> out of buildhistory_get_layers() or get_layers_branch_rev()?
>>
>> I was asking the same question yesterday. I have a hacky solution for my
>> immediate need, but I'd like a long term solution along these lines also.
>>
>> Should we add this to bugzilla and see if we can get it done for 1.8? (I
>> think I ahve the version number right)
> 
> Yes, please add this to the bugzilla. This has also come up before several 
> times, we should just do it (and bonus points if someone wants to send a patch 
> ;).
> 
> Cheers,
> Paul
> 

