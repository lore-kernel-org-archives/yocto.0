Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF569E006D2
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 02:46:18 -0800 (PST)
Message-ID: <50E5620A.3070208@communistcode.co.uk>
Date: Thu, 03 Jan 2013 10:48:42 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
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
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Jan 2013 10:46:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/13 21:47, David Evans wrote:
> Dear Sirs,
>
> I apologise for asking this question to everyone, but I can't figure 
> out who best to direct this question to.
>
> When I build the standard Yocto Project in the Quick-Start guide I get 
> the following Warnings.
>
> WARNING: Failed to fetch URL 
> http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2, 
> attempting MIRRORS if available
> WARNING: Failed to fetch URL 
> ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz, attempting MIRRORS 
> if available
> WARNING: Failed to fetch URL 
> http://downloads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2, 
> attempting MIRRORS if available
>
> As a complete Newbie to Yocto, having the Quick-Start fail like this 
> is killing me, as I have no stable example upon which to build my 
> under standing.
>
> My ultimate goal is to run the Raspberry Pi project as outlined at 
> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7, but I am 
> seeing the same do_fetch failures as those reported by Ed Nelson at 
> https://lists.yoctoproject.org/pipermail/yocto/2013-January/013571.html.
>
> Any help will be much appreciated.
>
>
> Regards,
>
> David
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I will try to get round to updating this tutorial soon; as it has become 
a bit dated - however as Alex mentions it should still work fine albeit 
with a few warnings due to unavailable sources.

It should just be a matter of changing a few git revisions, and tweaking 
the wording a bit to involve the new meta-yocto, meta-yocto-bsp split. 
If anyone wishes to step up to the plate the source for this blog post 
is available at [1] and I will happily accept patches.

Cheers,
Jack.

[1] https://github.com/CommunistCode/PimpMyPi-Community-Blog-Posts

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


