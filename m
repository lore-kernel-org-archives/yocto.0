Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2152FE0096C; Thu,  1 May 2014 23:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72C50E00478
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 23:07:11 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wg6co-0000vD-08
	for yocto@yoctoproject.org; Fri, 02 May 2014 08:07:10 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:07:09 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:07:09 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 02 May 2014 08:06:58 +0200
Message-ID: <ljvcm2$jfs$1@ger.gmane.org>
References: <ljt73p$k5f$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <ljt73p$k5f$1@ger.gmane.org>
Subject: Re: quilt-native do_populate_sysroot error [solved]
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
X-List-Received-Date: Fri, 02 May 2014 06:07:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This made me crazy, so after lots of tries I thought I should try to do
it *without* my own conf files, although I couldn't imagine why my conf
files produce such an error.

Before I copied the whole conf dir back from a backup. This time I tried
with a completely new conf dir. I did that and strangely got another
error message by "sanity-check" saying that I am missing two files
(makeinfo, chrpath).

So, I now understand that there is a file called "sanity-check" in the
conf folder that is not a config file but a state file, declaring if my
installation is complete. As I copied this also in my first attempts, it
did no longer check and so the problem that I am missing a tool was not
reported.

Now, it seems, everything is working. Nonetheless, I would like to
suggest that the sanity-check file should be moved out of the conf
folder into the state folder in a future yocto revision.

Cheers

Michael


Am 01.05.2014 12:19, schrieb Neuer User:
> Hi
> 
> I needed to re-setup my yocto directory due to a fs error (was using
> btrfs). Before I used master-next. Now I checked out daisy.
> 
> When I start bitbaking, I already get an error ["File not found"] when
> building quilt-native. The error is in the step do_populate_sysroot. The
> problem is pretty clear:
> 
> run.do_populate_sysroot:
> 
> def do_populate_sysroot(d):
>     bb.build.exec_func("sysroot_stage_all", d)
>     for f in (d.getVar('SYSROOT_PREPROCESS_FUNCS', True) or '').split():
>         bb.build.exec_func(f, d)
>     pn = d.getVar("PN", True)
>     multiprov = d.getVar("MULTI_PROVIDER_WHITELIST", True).split()
>     provdir =
> d.expand("/home/ubuntu/yocto/build/tmp/work/x86_64-linux/quilt-native/0.61-r0/sysroot-destdir//home/ubuntu/yocto/build/tmp/sysroots/x86_64-linux/sysroot-providers/")
>     bb.utils.mkdirhier(provdir)
>     for p in d.getVar("PROVIDES", True).split():
>         if p in multiprov:
>             continue
>         p = p.replace("/", "_")
>         with open(provdir + p, "w") as f:
>             f.write(pn)
> 
> 
> do_populate_sysroot(d)
> 
> 
> Well, the provdir variable is definitely wrong!
> 
> How should I fix this?
> 
> Thanks
> 
> Michael
> 



