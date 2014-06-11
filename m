Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6D31E00BEC; Wed, 11 Jun 2014 07:48:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 912DFE00BC1
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 07:48:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5BEm92w026196
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 07:48:09 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Wed, 11 Jun 2014 07:48:09 -0700
Message-ID: <53986C28.9000701@windriver.com>
Date: Wed, 11 Jun 2014 09:48:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
In-Reply-To: <1402421465.2402.11.camel@marlon-Z68X-UD3H-B3>
Subject: Re: Best way to "freeze" Yocto for production
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
X-List-Received-Date: Wed, 11 Jun 2014 14:48:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/10/14, 12:31 PM, Marlon Smith wrote:
> Hi everyone,
>
> We've decided to use Yocto in our company's product!  And I have a question:
>
> Since Yocto is updated pretty frequently, at some point we'll need to freeze
> everything and keep a permanent copy so that we can make small changes/bug fixes
> without having to worry about anything being changed outside of our control.  My
> current theory is that we'll do a bitbake -c fetchall, then zip up the entire
> Yocto directory and save it somewhere so we'll always have a static copy.  We'll

This is really the first step.  Take you Yocto Project sources, and related 
downloads and store them for retrieval later.  You can use the:

    BB_NO_NETWORK = "1"

to ensure that the system will use your local copy and not attempt to go to the 
network for downloads.

> place our application and custom bsp layer under a separate Git repository, and
> then to do a build we'll just combine everything together and run bitbake on the
> whole thing.

This pretty much is the standard way to do it.  If your BSP is based off of 
another git tree, you can enable networking just for that one item if necessary.

> Is there a better or recommended way of doing this?

I think you have the basics down.  When it comes to upgrading and bug fixing, 
this is where doing very management resources come into play.

One way to do it is just track the Yocto Project until your product release. 
This way you get all of the latest fixes for the branch you choose.

Another mechanism (what I'd recommend for after product release, but some do it 
during development) is to watch the changes from your starting location, to the 
current state of development (either in the branch, or even master).  Using this 
information, you can determine if any of the items are fixes that you believe 
your product will require.  Use the git 'cherry-pick' option to pull down only 
the fixes you are interested in.  This dramatically slows the rate-of-change of 
your local tree.

One thing to keep in mind, you will -always- end up with some local fix that 
does not exist upstream.  You should limit these as much as possible.  For a 
single project, it's not all that painful to carry and support your changes, but 
when you start working on the next product, it's nice to be able to start with a 
newer version of the Yocto Project.  If you have a lot of local changes that 
have not gone back to the community, you'll then have to abandon them -- or 
carry them forward.  This can be time consuming, and the usual reaction is to 
stick with the older version to avoid this additional work.

You should always budget the time to get the fixes ready and send them back to 
the community, it will save you (and others) time when getting ready for the 
next project.

> Thanks again, and I'm excited to start working with Yocto!
>
> Marlon
>
>


