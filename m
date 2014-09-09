Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65961E00563; Tue,  9 Sep 2014 12:10:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Sep 2014 12:10:21 PDT
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 88265E0049D
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 12:10:21 -0700 (PDT)
Received: (qmail 8280 invoked by uid 1003); 9 Sep 2014 19:03:40 -0000
Received: from unknown (HELO ?192.168.1.119?)
	(philip@opensdr.com@71.171.45.156)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	9 Sep 2014 19:03:40 -0000
Message-ID: <540F4F0B.7010707@balister.org>
Date: Tue, 09 Sep 2014 15:03:39 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: Leo Schwab <lschwab@sensity.com>, yocto <yocto@yoctoproject.org>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
In-Reply-To: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
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
X-List-Received-Date: Tue, 09 Sep 2014 19:10:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/08/2014 07:08 PM, Leo Schwab wrote:
> We'd like to have the system images we build to contain a build id, or
> at least a pile of information inside the image itself that lets us
> identify which build is being run/tested.  Indeed, the information
> 'bitbake' kicks out just as it starts a build is exactly the sort of
> thing we'd like sitting in a file in the image somewhere.
> 
> I turned on the 'buildhistory' feature in conf/local.conf which, among
> other things, generates a 'build-id' file.  However, it doesn't place
> it in the image, but in an entirely separate directory hierarchy.
> 
> Surely this sort of thing has been done before.  Is there an existing
> recipe I can use, or will I have to cobble together a custom recipe
> out of buildhistory_get_layers() or get_layers_branch_rev()?

I was asking the same question yesterday. I have a hacky solution for my
immediate need, but I'd like a long term solution along these lines also.

Should we add this to bugzilla and see if we can get it done for 1.8? (I
think I ahve the version number right)

Philip


> 
> Thanks,
> Schwab
> 

