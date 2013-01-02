Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFFE3E013D9
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 13:55:49 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8E75FF811D9; Wed,  2 Jan 2013 14:55:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	DEAR_SOMETHING autolearn=no version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C03ADF811D9;
	Wed,  2 Jan 2013 14:55:48 -0700 (MST)
Message-ID: <50E4ACE5.2020502@mlbassoc.com>
Date: Wed, 02 Jan 2013 14:55:49 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50E4AAFE.4080905@btinternet.com>
In-Reply-To: <50E4AAFE.4080905@btinternet.com>
Subject: Re: Basic failures building 1st Yocto Project and Yocto Raspberry Pi
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
X-List-Received-Date: Wed, 02 Jan 2013 21:55:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-01-02 14:47, David Evans wrote:
> Dear Sirs,
>
> I apologise for asking this question to everyone, but I can't figure out who best to direct this question to.
>
> When I build the standard Yocto Project in the Quick-Start guide I get the following Warnings.
>
> WARNING: Failed to fetch URL http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2, attempting MIRRORS if available
> WARNING: Failed to fetch URL ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz, attempting MIRRORS if available
> WARNING: Failed to fetch URL http://downloads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2, attempting MIRRORS if available
>
> As a complete Newbie to Yocto, having the Quick-Start fail like this is killing me, as I have no stable example upon which to build my under standing.
>
> My ultimate goal is to run the Raspberry Pi project as outlined at http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7, but I am seeing the same do_fetch failures as those
> reported by Ed Nelson at https://lists.yoctoproject.org/pipermail/yocto/2013-January/013571.html.
>
> Any help will be much appreciated.

What version of Yocto (OE-core) do you have?  Those are pretty old
recipes and the corresponding tarballs seem to no longer be available.
If you update your repositories, you may get farther along.

n.b. when you run bitbake, you'll see a summary of what repositories
you are using.  Posting that would help a lot.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

