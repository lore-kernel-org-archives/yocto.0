Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F2D6E00498
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 12:23:44 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TrDk1-0001bP-8L; Fri, 04 Jan 2013 20:19:45 +0000
Message-ID: <50E73A16.4070303@dynamicdevices.co.uk>
Date: Fri, 04 Jan 2013 20:22:46 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: enelson1000@comcast.net
References: <50E31E11.2090708@comcast.net>
In-Reply-To: <50E31E11.2090708@comcast.net>
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Fri, 04 Jan 2013 20:23:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/01/2013 17:34, ed nelson wrote:
> I am getting a do_fetch failure on raspberrypi kernel.  Is anyone else 
> having this problem?
> 
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3"
> TUNE_FEATURES     = "armv6 vfp"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    = "danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
> meta-raspberrypi  = "master:305c5259e24eaa9fb285ca983dc4f9454743fa0c"
> 
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL 
> git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27, 
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository 
> '/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...
> 
> fatal: read error: Connection reset by peer
> fatal: early EOF
> fatal: index-pack failed
> 
> ERROR: Function failed: Fetcher failure for URL: 
> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'. 
> Unable to fetch URL from any source.
> 
> Thanks

I'm rebuilding an RPi image from scratch here now for some testing and I
see the same issue, which looks to be a GitHub hiccup.

I do have a cached download of the RPi linux GitHub repository from a
previous build, which you're welcome to use if it'll help you move
forward whilst GitHub has this issue.

I've tarred it up as github.com.raspberrypi.linux.git.tgz. You can
extract this into the Yocto downloads directory and I believe it'll be
picked up by the build tool, e.g.

cd /path/to/yoctoProject/raspberryPiBuild/downloads
tar xzf  /path/to/github.com.raspberrypi.linux.git.tgz

You should see it go into a "git2" folder in downloads.

It's currently uploading to a DropBox public link at

https://dl.dropbox.com/u/12130167/rpi/github.com.raspberrypi.linux.git.tgz

(It's around 620MB so it'll be about an hour before it's up. I'll
probably leave it up there over the weekend but it may disappear next week!)

Cheers,

Alex




> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 


