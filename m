Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D063EE01371
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2012 17:13:02 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 79B42F811EB; Sun, 22 Jan 2012 18:13:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E137EF811E9;
	Sun, 22 Jan 2012 18:12:58 -0700 (MST)
Message-ID: <4F1CB41A.301@mlbassoc.com>
Date: Sun, 22 Jan 2012 18:12:58 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <56375FA8-BB1F-4D3B-91EC-C84665DF9905@gmail.com>
In-Reply-To: <56375FA8-BB1F-4D3B-91EC-C84665DF9905@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: tar ball vs. git development questions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Jan 2012 01:13:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-22 13:19, James Abernathy wrote:
> I have used both git and the tarball methods of bitbaking projects, all of them derivatives of the examples in the Yocto documentation. I was having issues using the local clone of
> the Yocto kernel git repository this weekend. I had successfully done that before, but I was rebuilding the PC workstation, and getting everything setup and tested some of the
> meta-intel BSPs to make sure I had everything right. Cloning the linux-yocto-3.0 repository was successful, but the bakes against it failed. I made sure I had poky-extras setup
> right, but I still had problems. To isolate the problem, I changed to building with the tarballs and everything worked fine.
>
> So that got me thinking what are the differences between the 2 methods:
>
>   * I assume that if I use the tarball method, bitbake, using the recipes, pulls down files from the online repositories and puts those files into the centralized local download
>     directory ($DL_DIR), allowing reuse instead of re-downloading each time. The content downloaded for linux-yocto-3.0 is exactly what would be pulled from the local repository if
>     I used a local clone of the git repository for linux-yocto-3.0.
>   * If my assumption above is correct, if I'm not modifying the source code of the kernel (only changing config parameters), then once you've run at least one build with the
>     tarball method, the $DL_DIR directory contains all the files you'll need to build any image with linux-yocto-3.0. So there is no need to have a local clone of the kernel
>     repository for speeding up development. Am I right?
>   * If I have a successful creation of a bare clone of linux-yocto-3.0.git, how could builds of Edison packages be failing? That makes me concerned about using git and successfully
>     repeating builds of stable branches like Edison.

If you set BB_GENERATE_MIRROR_TARBALLS = "1" (e.g. in local.conf)
then you'll get tarballs which hold the git repositories after
download.  You can then reuse these (by sharing the DL_DIR or
using a local mirror).  Does that help with the issue you're seeing?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

