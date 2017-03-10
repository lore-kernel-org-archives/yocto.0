Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C51D5E00A0C; Fri, 10 Mar 2017 12:49:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA686E009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 12:49:47 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id l7so55789363ioe.3
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 12:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=VxySLlG/ymN3hZhYN6Qn1ZEIWsXZgvRXZVM7W1p5Aks=;
	b=oa5/SF8MxcI6O2eupexroagkpoRSBhy7pIoNhdlSU5aOTmqNCtGJtSydmpHz/bA3rc
	fxNrWgHkSru+Ki0tN/5Kf1PYtl3nGZS5tC76QSm+YKIeU+TEmbPGBdP1YvGJe/meUcV8
	14OMkVEUeIHJNgwirTmqyrDyHLYKBsVRcYUHy7kJmwoYaVTFby3ILcAKx+Lspj7ADPX3
	V9aK5R+4Kab6srOdPCv527lKT3R/yF6WbVvdXxAfvMqwrhifsPVGi6505dmfvOuy458H
	jjl75IB+aZGNncCxBTTk8liY6B2IguWPoiOCLMA0agwgxcfC6gT7q+mFfEq8PSHMCYFT
	sv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=VxySLlG/ymN3hZhYN6Qn1ZEIWsXZgvRXZVM7W1p5Aks=;
	b=Zz4ekycbqAaRfFydoWHkaNGwkwE2s1qNxirMf1q4lzZC6LRHUj0MMaZrt6CdS3Z+KQ
	riP+wxd9zWUcUXLMNITi/Dbrk+KLmNHprkXD0GUsRbqULHp/mgHy/MN+I0xloM63+Hi6
	NyEimrYTiBdORJGzAfZigBW5j7UlEN55xbxosQyPiSXP7MiMsIhUsQPG1DqSKi6SMkuq
	aJ/EFiEt1e7N1SkMVrjhQSf+3EG9WCwNhDeXEUrJ4I2fpplKN+Z1m0rAjAV2nrDTNNnt
	5caShZ9TDenSg8g5hldQuBTx1ThvA85BUuKZIx8WDPwnTn4MZWU1goVL1OnO/nrEqNU4
	lr0g==
X-Gm-Message-State: AMke39mSZsQe9uQEFBL9sR0wq2IDMeD9myFOvntW4oob/7D/yQPhwbp/wcFVbCAcDXs7OA==
X-Received: by 10.107.176.79 with SMTP id z76mr19245382ioe.223.1489178986558; 
	Fri, 10 Mar 2017 12:49:46 -0800 (PST)
Received: from linux-uys3 (104-247-246-30.cpe.teksavvy.com. [104.247.246.30])
	by smtp.gmail.com with ESMTPSA id
	b126sm4833265ioa.55.2017.03.10.12.49.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 12:49:45 -0800 (PST)
Date: Fri, 10 Mar 2017 15:49:43 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <20170310204943.GA32004@linux-uys3>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-architecture@lists.openembedded.org
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 20:49:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Alexander,

Thanks for bringing up this important topic. There is no doubt we're seeing
paradigm shifts in the way applications are written, built, and packaged;
as well as a complete lack of interest in licensing.

Although the trend is to not care about licensing, I believe it is vitally
important that we do our best to keep track of all the licensing from every
package that is pulled into an image. If we're pulling in >1000 npm packages
just for one node app, then that means we should have >1000 item list of each
dependency and their respective licenses. Although it makes a recipe look
ugly, I wouldn't want to drop this functionality due to aesthetic concerns.
Maybe the license list could be moved to another file that is required by the
"main" recipe file? Maybe the list could be moved to the bottom of the file?

In the case of node specifically, I don't think trying to create and maintain
separate recipes for each and every dependency one might find in the npm
registry would be a sane approach. Currently we embed the version info into
the recipe filename. This will simply not scale to millions of npm packages,
each with numerous versions.

I've been playing with node a fair amount lately as it relates to OE and I
have to say I've been quite impressed! These aren't easy things and I think
there's a lot of good work happening.

I've outlined some of my thoughts on my experiences[1]:
http://lists.openembedded.org/pipermail/openembedded-core/2017-February/133432.html

Other than these (short-term?) issues devtool seems to be on the right
track (?) It does, for example, generate a lockdown.json file and an
npm-shrinkwrap.json file automatically. All we need is the package.json from
the app developer, and that can be auto-generated via npm. I think we have to
accept that node developers are going to want to develop on the target device
itself, and when they're done they can hand us the package.json file which we
can run devtool on which will generate the recipe for us.

As a short-term work-around, I've simply been creating an image with node+npm,
running it on the device, copying over the package.json file, running npm
install against it, then collecting up all the extra stuff that gets added
to my image (as a result), and bundling all that into a platform-specific
"bin_package" (bbclass). It works, but it's a multi-step process. If I could
cut out some of those steps (once things from [1] are fixed), it would be an
improvement.

Best regards,
	Trevor







[1] A short recap of those emails:

	Different paths seem to be followed depending on whether you point devtool at,
	say, a github repository versus a local checkout of the same project. That
	seems wrong.

	Also (as you've pointed out) RSS is messing all this up on master at the
	moment; but I assume this can/will get fixed? Things work fine on morty.

	Also, devtool gets tripped up when it encounters a license string that isn't
	found in its list of already-known license strings. This approach seems doomed
	to failure. It has to be able to recover gracefully and continue walking the
	dependency list without having to continuously add corner cases to the code.

