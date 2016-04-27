Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A3CE00D5A; Tue, 26 Apr 2016 19:52:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1337FE00D68
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 19:51:59 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 26 Apr 2016 19:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,539,1455004800"; d="scan'208";a="793148017"
Received: from wlee9-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.75])
	by orsmga003.jf.intel.com with ESMTP; 26 Apr 2016 19:51:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Date: Wed, 27 Apr 2016 14:51:54 +1200
Message-ID: <1657687.Q4nigp6SVI@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.7-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <5719C335.3090300@elfin.de>
References: <1461157892-9156-1-git-send-email-piotr.lewicki@elfin.de>
	<571993F8.4070506@mlbassoc.com> <5719C335.3090300@elfin.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [PATCH] replace libav with ffmpeg and add a patch fixing building omxplayer after 3645b27848edd0d873925f5fa2a7686f3ff9eeb9
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
X-List-Received-Date: Wed, 27 Apr 2016 02:52:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Piotr,

On Fri, 22 Apr 2016 08:22:45 piotr.lewicki wrote:
> I'm new here and I didn't know how to prepare patch correctly- I just
> used instructions from meta-raspberrypi README.
> 
> I can resend it if you want. Especially now when the patch is not
> necessary anymore, because Andrei Gherzan has merged latest revision of
> omxplayer to master (patch with explicit linking vchostif lib was taken
> from there).
> 
> Please provide me with instruction on how to create a patch properly.

There are a couple of git command lines in the meta-raspberrypi README which 
if used will add Signed-off-by and the proper "[meta-raspberrypi]" subject 
prefix. Also, the shortlog (the first line of the commit message which ends up 
as the rest of the email subject) should start with the name of the recipe or 
item you're changing - in this case it would be omxplayer. The rest of the 
commit message after the blank line should then describe in a little more 
detail, most importantly covering why the patch is needed.

You may find this useful:

  http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

I know all of this seems a little onerous to begin with, but it not only makes 
patch review a bit easier for us, it also helps us keep the commit history 
readable in the (likely) event that someone wants to look back later on and 
find out why a particular change was made.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

