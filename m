Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38F07E006E9; Thu, 26 Feb 2015 06:08:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C32CE003AB
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 06:08:38 -0800 (PST)
Received: by pabrd3 with SMTP id rd3so14257836pab.1
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 06:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=P/xRJegT0dJ/M72+4+A2eJkreUvJxgUbOaUCiFRruyI=;
	b=SNa1H4PerKX6JmJQ4980eii9Eit6+MG+w/5amkZHnicR6zhw8MMwT1ix02BPrDCuY7
	/G0zJS3RrdzKkBCr96+kTmti1BNGOz5mZEDi7tFdIi3HfoZOpcPGDeBwY7X/CkK5+VDP
	mJvVqH785N3KFCHdZyCSTuJXsF7sClhudzz7lSADfWE/q8Sctij/Ct/Mzk89vUWUmlY5
	Hv31HnrrlQkdaumw97kexwDODvFNYgWEHgoZi4qA9lWpX2+dyu3nxt5oEbRu9KJrrZLD
	KKyDSVBnpzY91dLlZxFhzlLERbVXwXtYqS8QfdW3WzMwlsMEA4hevLX3OGG6DPUhNqDL
	ReYg==
X-Received: by 10.70.93.36 with SMTP id cr4mr14884909pdb.168.1424959718261;
	Thu, 26 Feb 2015 06:08:38 -0800 (PST)
Received: from [192.168.2.35] ([213.132.102.178])
	by mx.google.com with ESMTPSA id ak7sm1136570pad.47.2015.02.26.06.08.34
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Feb 2015 06:08:37 -0800 (PST)
Message-ID: <54EF28DF.5030501@gmail.com>
Date: Thu, 26 Feb 2015 06:08:31 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54EE5EAC.6050901@linux.intel.com>
In-Reply-To: <54EE5EAC.6050901@linux.intel.com>
Subject: Re: Recipe reporting system Announcement
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
X-List-Received-Date: Thu, 26 Feb 2015 14:08:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

very nice.

thanks to all.

- armin

On 02/25/2015 03:45 PM, Aníbal Limón wrote:
> Hi All,
>
> I'm glad to announce the available of the Recipe reporting system
> (a.k.a, RRS) [1].
>
> The RRS publish the status of Recipes for Openembedded-core (meta)
> layer, the status means:
> who maintains the Recipe?, what other Linux distribution contains the
> Package, list of upgrades
> of a Recipe, upstream version of the Recipe and Milestone statics about
> package upgrades, details [2].
>
>
> The RRS design specification can be found at Bugzilla [3] and the source
> code is available [4].
>
> Special mention to,
>      Belen Barros Pena for did the design of the RRS [3].
>      Saul Wold for supporting the development direction.
>      Michael Halstead for help in production setup.
>      Paul Eggleton for make the Layerindex app that servers as base of RRS.
>
> Contact me for any issue.
>
> Best regards,
>      alimon
>
> [1] http://packages.yoctoproject.org/
> [2] http://packages.yoctoproject.org/rrs/about/
> [3] https://bugzilla.yoctoproject.org/show_bug.cgi?id=6273
> [4]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=alimon/RRS

