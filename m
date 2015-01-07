Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27AAFE00571; Wed,  7 Jan 2015 13:22:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D546DE002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 13:21:54 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id at20so6139502iec.5
	for <yocto@yoctoproject.org>; Wed, 07 Jan 2015 13:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=6M2WfkzwoOvD8KVh9mj81awiYojGXrgEwtMMmp2oc/0=;
	b=IOAoylcZKbBsS2Lt6J9xYnf5nefqMZOaEFUcWfiEGWaMAcCiZYbM9Jq8oYxkA5N1BC
	jFtFGCTpn+OS8ul56C4jWUgHKI1rMedX+Av/TUUPyWyvPlLFT4ovmf19ox/5QU4Jq7PE
	pXFjUEiydoCoQgAy8yKEUmjZlmB9bSyCdWNtobZjiGOUrIwrJ5G/L4FLjU4paLz+QpdZ
	x5M8p6Ep4bySitDkfxcUp8mHsRf+B3OWHZkQcu6W//d165xnRxDlzd0mg116mBj0Uw2p
	C1oFeQjZWBE6oMN2kx20SB1ikVyaxGpBX3ItWnyVxgtsGZ1na4jToE7+NnBWsGjiUKfZ
	gUEg==
X-Received: by 10.42.71.194 with SMTP id l2mr4895082icj.71.1420665713400;
	Wed, 07 Jan 2015 13:21:53 -0800 (PST)
Received: from [192.168.141.85] ([67.55.37.231])
	by mx.google.com with ESMTPSA id 5sm1303167iom.7.2015.01.07.13.21.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Jan 2015 13:21:52 -0800 (PST)
Message-ID: <54ADA374.8050006@gmail.com>
Date: Wed, 07 Jan 2015 16:21:56 -0500
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
References: <1420622709.25779.60.camel@linuxfoundation.org>
In-Reply-To: <1420622709.25779.60.camel@linuxfoundation.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Bug reporting and good bug reports
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
X-List-Received-Date: Wed, 07 Jan 2015 21:22:03 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 01/07/15 04:25, Richard Purdie wrote:
> I also have a patch. Where should I share them? How do I ensure everyone
> with an interest in this defect actually gets the patch? Sure I can
> create email and send to the people who I think need to know.

When I went through that whole "let's add a MAINTAINERS file" thing last
year this is exactly what I had in mind at that time. A developer could
configure git to automatically invoke the script that accompanied that
patch during a "git send-email ...". The purpose of the script was to go
through the MAINTAINERS file to create a list of relevant people. But
the script was also smart enough to look at the lines of code the patch
was modifying and include the people who wrote the lines the patch was
going to modify.

Unfortunately everyone seemed to think a MAINTAINERS file was only good
for assigning responsibility, which is something that had never occurred
to me at the time :-)

> The
> bugzilla lets interested parties add themselves to bugs though.

...and people could add themselves as "R"'s in a MAINTAINERS file! :-)
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS#n73

