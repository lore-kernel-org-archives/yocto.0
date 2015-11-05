Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E751FE00B44; Thu,  5 Nov 2015 05:22:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D53E00B3D
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 05:22:16 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DD66FF811DC; Thu,  5 Nov 2015 06:22:15 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 91933F811D7;
	Thu,  5 Nov 2015 06:22:15 -0700 (MST)
To: yocto@yoctoproject.org
References: <563B5700.3050306@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <563B5857.4090602@mlbassoc.com>
Date: Thu, 5 Nov 2015 06:23:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <563B5700.3050306@mlbassoc.com>
Subject: Re: tarballs from git
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
X-List-Received-Date: Thu, 05 Nov 2015 13:22:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-05 06:17, Gary Thomas wrote:
> I use BB_GENERATE_MIRROR_TARBALLS = "1" to generate tarballs
> from the various git-based recipes I use.  For the most part
> this works great and once the tar file is generated, it just
> gets reused.
>
> However, just now I rebuilt my kernel which uses such a git
> SRC_URI and the tar file was rebuilt even though I can't see
> anything that was newly fetched.  I had built from the same
> recipe yesterday (today I only touched a patch which changed
> neither the recipe nor the SRCREV, etc) and the tar file from
> last month was used.  Looking through the generated tar file,
> I can see that the last file updated was last Oct 5, so there
> should have been no reason to rebuild the tar file.
>
> Is there some trace (log file, etc) that might tell me why
> this happened?
>

Never mind - there were some differences that I missed.

That said, I'm still not sure what made it refetch the GIT tree
as I didn't change the SRCREV nor the recipe (only updated a
patch in the recipe) so the necessary BRANCH+SRCREV should have
been in the previous tar file.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

