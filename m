Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C89E009C6; Thu, 16 Apr 2015 06:11:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C77CE009A5
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 06:11:49 -0700 (PDT)
Received: by lbbqq2 with SMTP id qq2so58093116lbb.3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 06:11:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=H67pF8k1Bj+1LMlzLbG2LvEgiD1b/oZpwxhxB3bT8q0=;
	b=fVt54iUqL8W4pu6OKLqeswCdYJt7bfb1C16xKRiBxmg6EDvoS+kovx00B9jIO84vPU
	8kxp/FEvktOZY/Auyis8RcPEXY6MX7AeDavbqhroJFfxTLrUylxAStHOt/F9Qh32JBnG
	q92dF9qAgFCpYAYbfZIDwLug5GsUuGoS7/ztzD1o3eC8lX5R8/yy21vj0C/IioWQY1qy
	t3Z+y9hNUNFp4Vf2ZYD0fLqZpP2UYjbc2zyp1s7d4cXYvc11ygQQoi2zMFfNwhAheQnV
	fHKz5iZbZfJixKTpEg/7YCR8kwacKj22rr9LtJX56reBuq5VYZW8r10wolfGzE+dVvw4
	NQYg==
X-Gm-Message-State: ALoCoQm1zKn4RX6LGS4wRDLo4lVo3v6GDuZ2Hu6xsc7LmMKnmcMxcHi+HZLxwBO6CA2xlIdWD1a2
X-Received: by 10.112.126.136 with SMTP id my8mr8438564lbb.18.1429189907526;
	Thu, 16 Apr 2015 06:11:47 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84]) by mx.google.com with ESMTPSA id
	mx10sm1680441lbb.20.2015.04.16.06.11.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Apr 2015 06:11:46 -0700 (PDT)
Date: Thu, 16 Apr 2015 15:11:44 +0200
From: Anders Darander <anders@chargestorm.se>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20150416131144.GA9092@ad.chargestorm.se>
Mail-Followup-To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	John Ernberg <john.ernberg@actia.se>, yocto@yoctoproject.org
References: <552FA28B.5010507@actia.se>
	<14610153.uBZ2VKfICl@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <14610153.uBZ2VKfICl@peggleto-mobl.ger.corp.intel.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Thu, 16 Apr 2015 13:11:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Paul Eggleton <paul.eggleton@linux.intel.com> [150416 14:57]:

> Hi John,

> On Thursday 16 April 2015 11:52:48 John Ernberg wrote:
> > After restoring everything I re-created the recipe, this time I also
> > saved a copy of the recipe at a safe location.
> > At the end of the path given to subpath I had added a '/' as it was not
> > specified what the format of the path should be. I figured I would see
> > an error if the path was wrong, and technically I did.
> > Essentially the SRC_URI looked like this:
> > SRC_URI = "git://git@<server+repo>;protocol=ssh;subpath=path/"

> > Running the recipe resulted in do_fetch (or do_unpack) failing again and
> > complaining about missing files. This time the deletion was on a much
> > greater scale, it had deleted so much of my home-dir that my user
> > account was rendered entirely useless. The fastest way to recover this
> > time was re-installing the machine.

It's most likely a call to bb.utils.prunedir(destdir), with destdir
being set to '/'...

> Very sorry about this :(

Yeah, too bad...

> Looking at the code I can see at least two problems we need to fix relating to 
> this issue. It seems that having '/' either at the start or the end of the 
> value was unexpected and would trigger undesirable behaviour.

The issue with having '/' at the end ought to be solved by adding
.rstrip('/') like:
----------------------------
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 44fc271..0fd9bee 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -246,7 +246,7 @@ class Git(FetchMethod):
         subdir = ud.parm.get("subpath", "")
         if subdir != "":
             readpathspec = ":%s" % (subdir)
-            def_destsuffix = "%s/" % os.path.basename(subdir)
+            def_destsuffix = "%s/" %
os.path.basename(subdir.rstrip('/'))
         else:
             readpathspec = ""
             def_destsuffix = "git/"
---------------------------

Probably, the first issue could be solved by replacing subdir with
subdir.strip('/') on the line above that.

Though I might be missing something...

I've only looked for a moment on the patch above, which at least seems
to create correct path's when inspecting the output.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

