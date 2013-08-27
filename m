Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7B0E01595
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 16:24:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 401FFF811EB; Tue, 27 Aug 2013 17:24:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7F515F811EA;
	Tue, 27 Aug 2013 17:24:39 -0600 (MDT)
Message-ID: <521D354E.1020909@mlbassoc.com>
Date: Tue, 27 Aug 2013 17:25:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
In-Reply-To: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Tue, 27 Aug 2013 23:24:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-27 16:27, Paul D. DeRocco wrote:
> I got really tired of waiting for builds on my lowly dual-core Atom
> machine, so I went out and bought a nice fast machine with an i7-4770K and
> a Samsung SSD. Full builds are now screechingly fast, over 10x compared to
> the Atom.
>
> But when making a tiny change, I still have to wait for do_rootfs. Since
> this is a single task, it runs on a single core, so it only runs maybe
> three times as fast. For my Gumstix stuff, it takes five minutes instead
> of something like 15. That's a meaningful improvement, but it still seems
> long when the task implementing the minor change took, oh, five seconds.
> Since it's the one task that _always_ gets executed, it seems like a
> bottleneck that should be addressed.
>
> Is there any way, in the future, of breaking do_rootfs into multiple
> threads, so they can take advantage of multiple cores? Or has something
> like this been tried already, and found not to produce much of a speedup?
> Or is the process intriniscally sequential?
>

As far as I understand, the 'do_rootfs' step in building an image is basically
equivalent to running "${PKG_MGR} install <all_required_packages>", where PKG_MGR
is your package management method of choice - ipk or rpm.  This seems to me to
be a very single-threaded process.

Perhaps you should think more about how you are using this.  If you don't need
to rebuild the whole image every time, maybe you can use the package management
tools instead?  For example, I routinely build images as well but I also try to
use 'opkg' as much as possible to manage package updates, etc.   This is a huge
time saver, especially when making small or incremental changes.  I only rely
on the full image builds when I want to "checkpoint" the state of the system.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

