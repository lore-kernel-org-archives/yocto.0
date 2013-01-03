Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA721E002AB
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 15:57:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r03Nv3eZ002158
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Jan 2013 15:57:03 -0800 (PST)
Received: from msp-dhcp10.wrs.com (172.25.34.10) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Thu, 3 Jan 2013 15:57:02 -0800
Message-ID: <50E61AD5.6070600@windriver.com>
Date: Thu, 3 Jan 2013 17:57:09 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Ilya Dmitrichenko <errordeveloper@gmail.com>
References: <CAPhDKbHyqGUd5axL+fQVa0dbCF5yAjEEXmnexbb-ZwVJQKXfyA@mail.gmail.com>
In-Reply-To: <CAPhDKbHyqGUd5axL+fQVa0dbCF5yAjEEXmnexbb-ZwVJQKXfyA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: configuration management on remote target
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
X-List-Received-Date: Thu, 03 Jan 2013 23:57:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/3/13 5:43 PM, Ilya Dmitrichenko wrote:
> Hi,
>
> As my day job mostly involves configuring servers using puppet configuration
> management system, I had been thinking of what sort of tool would be best to use
> on an embedded devices where on some occasions one would want to update a couple
> of config files and scripts. Perhaps this can be limited just to the `/etc`
> direcotry...
>
> So the best I could come up with so far is to implement it as cron job that
> would pull a git repository, perhaps it would also run a script (git hook) that
> would restart a daemon or do something of that kind.
>
> I suppose that some people will suggest to just use packages, but I'm not very
> keen on maintaining a package repository on some sever out in the internet that
> would be one big single point of failure. Although, perhaps, on some occasion,
> this may be the only way.
> Another reason why I wouldn't like to use git to manage configuration, as that
> way all configs are going to be at hand from one directory tree, which is, IMO,
> much quicker to manage and validate rather then a recipes spread across
> subdirectories.

There are different systems out there that need to be managed (as well as 
different philosophies of how to manage them.)  Solving all of the problems 
isn't going to work.  Solving a specific problem has a chance.  :)

It's fairly typical that a device can be maintained as files, packages, or 
filesystem images.  Each of those approaches requires a very different 
upgrade/maintenance mechanism.  In addition since embedded systems do not have 
an admin console, if they fail during the upgrade process you can brick a user, 
so a fail safe is almost always required!

In each of the above methods, you can do things like transfer an individual file 
(or files) and related reset commands after an upgrade has occurred.. send up a 
package (or packages) and automate that -- or even upgrade the filesystem, but 
in each of these cases bandwidth may be at a premium.  Most field upgrade 
systems want a "delta" (diff) based system, where only the changes have to be 
sent, not the whole file.

> Firstly, I'd appreciate any feedback on this!
>
> And I do have a few rather more specific questions ;)

> a) How often OE users do not implement any system updates over the wire in their
> products, although the product is able to access the internet?

Due to the complexity of upgrading, this is fairly typical on embedded systems 
in my experience...but it's being tolerated less and less over time.  (They 
usually have some kind of an upgrade mechanism, they just don't do it over the 
internet.)

> b) Has anyone here use the configuration tools like puppet, chef or cfendgine
> and understands the benefits?
>
> c) Has anyone succeeded building git without having to include perl on the
> target? I'd probably get ways with just a subset of git commands.
> I have also had a look at libgit2, but not sure if I'd be able to implement
> something as robust as git itself with libgit2...

Last time I looked (a few months back) it was not possible to build a functional 
git system w/o perl -- or at least I wasn't able to.  I hope this continues to 
get better, as perl is -very- heavy weight for an embedded system.


So if you want the ultimate works for everyone system.. it really needs to be a 
field upgrade tool of some kind.  Basically providing the infrastructure to 
push/pull the update, a way to use a delta of the update to what is already 
installed on the device to construct the "file" to save bandwidth, a way to 
apply the update and control the associated behavior.  Then people can use that 
to implement file, package or image based upgrades... fail safe behavior is also 
usually device specific and would be implemented based on the toolkit.

>
> Cheers,
> --
> Ilya
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


