Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E3694C808B0
	for <yocto@yoctoproject.org>; Wed, 22 Dec 2010 10:18:24 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBMGIHP9024915;
	Wed, 22 Dec 2010 08:18:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 08:18:16 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 08:18:17 -0800
Message-ID: <4D1224C8.7080100@windriver.com>
Date: Wed, 22 Dec 2010 11:18:16 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Cliff Brake <cliff.brake@gmail.com>
References: <AANLkTik3-5x2W+DRTJ9bC0YnUQB9HbvSWEYLSMWLTPjZ@mail.gmail.com>
In-Reply-To: <AANLkTik3-5x2W+DRTJ9bC0YnUQB9HbvSWEYLSMWLTPjZ@mail.gmail.com>
X-OriginalArrivalTime: 22 Dec 2010 16:18:17.0305 (UTC)
	FILETIME=[D7653490:01CBA1F3]
Cc: yocto@yoctoproject.org,
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: Multiple Repository support
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
X-List-Received-Date: Wed, 22 Dec 2010 16:18:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-22 11:09 AM, Cliff Brake wrote:
> Hello,
>
> I've started collecting ideas from various emails on multiple
> repository support.
>
> http://wiki.openembedded.org/index.php/MultipleRepositoryMethods
>
> Please feel free to update the above page.
>
> In my mind, this is a key problem we need to solve, not just for
> Yocto/OE, but also for anyone doing product development.
>
> I've personally been using git submodules for most projects, and repo
> for Android based projects.
>
> Appreciate any ideas, experiences, or insights into how we solve this problem.

We've used (and walked away) from git submodules in the
past for some really large projects. Our experiences closely
match "the bad" on the wiki link you sent. I've met very
few people who can effectively manage active development
in a git submodule based environment. My blunt opinion is
that if I never see another one in my life, I'd probably
be happy. I haven't looked at a submodule in about a year,
so maybe they have been fixed for the better .. but I'm
skeptical.

The solution to the submodule chaos that was used
sucessfully was to create something we called
'subgits'. They use git, a wrapper script and standard
git configs. A subgit points to a remote repo, specifies
where it should be cloned, and has a place for special
properties. You can recursively pull from a top level
and have all subgits updated in a uniform fashion. The
model can be extended for multi repository development
as well. The big win here is that you can independently
update repos, use normal git workflows, or wrap it as
you want. Nothing is forced.

Note: all the functionality of submodules isn't present
here (global tracking, bisect, etc), but that was functionality
that wasn't really crucial.

Just some comments and opinions to throw into the
discussion.

Cheers,

Bruce



>
> Thanks,
> Cliff
>


