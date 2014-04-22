Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95C56E00C71
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 07:49:04 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wcc0I-0007jp-2L
	for yocto@yoctoproject.org; Tue, 22 Apr 2014 16:48:58 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 16:48:58 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 16:48:58 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Tue, 22 Apr 2014 16:48:45 +0200
Message-ID: <lj5vgd$njl$1@ger.gmane.org>
References: <lj57d5$6ao$1@ger.gmane.org>
	<CF7BEDE6.25E3D9%rcalhoun@shotspotter.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <CF7BEDE6.25E3D9%rcalhoun@shotspotter.com>
Subject: Re: Newbie question: How to get dependencies into compile of custom recipe?
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
X-List-Received-Date: Tue, 22 Apr 2014 14:49:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

H Rob

Thanks for the information.

To clarify: My recipe is a very simple one. It is just one c file with
maybe 40 lines or so.

But it uses library functions from another recipe "gst-rtsp", which
again uses "gstreamer".

Both, "gstreamer" and "gst-rtsp" are compiled and working nicely, as far
as I can tell.

Now I have a simple c program file that needs to be compiled and linked
against "gst-rtsp". Hmmm.

I don't have a makefile. I don't use any autotools for this file. The bb
recipe is based on the example in the Yocto Development guide for a
simple c file.

I have to admit: I am extremely new to Yocto. I am also not a c
programmer. If I program, I typically use python or Qt5. :-)

I guess, I try the "devshell" and see what variables are set and what
pkg-config output is like.

In the end, it is probably very simple to do, but for a Newbie like
me... :-)

Am 22.04.2014 16:32, schrieb Robert Calhoun:
> 
> 
> On 4/22/14 3:57 AM, "Neuer User"
> <auslands-kv@gmx.de> wrote:
>> Sorry for this simple question. I've just started building my
>> first image with yocto and would now like to add a (very simple)
>> own recipe.
> 
> (I am not familiar with gstreamer, but it looks like a big project
> and maybe not so simple!)
> 
> The yocto build system figures out dependencies and build order, sets
> the environment, and generates shell scripts to do the actual tasks.
> The actual "work" is done by these shell scripts, not by the python
> code.
> 
> Your recipe explicitly defines some steps like do_compile(). When you
> do this, you are saying "Let me control the compilation, I know what
> I am doing!". Your do_compile() step is going to generate a
> run.do_compile script, and that has to work just as if you were
> running the script yourself.
> 
> 
> If something doesn't work, try "bitbake {pkg} -c devshell".  That
> will drop you into the environment the compiler is going to see. The
> shell scripts are in ../temp. Each script is a single step
> (do_compile etc). All of the substitutions that Richard described
> will already have been made; and you will see all the environment
> variables being set and the calls made to the compiler, linker etc.
> This directory also contains the log files from recent executions.
> 
> You can run these manually, e.g. ../temp/run.do_compile. (The files 
> without PIDs are symlinks to the latest script.) You can edit this
> script and re-run the compile and link step until it works. Once
> you've figured out what needs to be set or run, modify the recipe to
> generate that environment or command.
> 
> An important thing to understand is that each step lives in its own
> little world; an environment variable set in the do_compile is not
> present in do_install unless you put it there. Avoidance of global
> state allows the build system to run multiple tasks in parallel.
> 
> -Rob Calhoun (still figuring this stuff out myself)
> 



