Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7779FE009E4; Fri, 17 Jul 2015 06:03:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F1D7E009D7
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 06:03:18 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id B82F86001285;
	Fri, 17 Jul 2015 16:03:16 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1437138196; bh=ST7htCdvZHuJPOiYSclV98VlL0JUhQ+WIwStefzj4AA=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=V4F+9fzkDq0JNWthJOBD5Rx736gLtFKNHTz83g2HNxLYhR/keaXddgAiA18D6lkqV
	UlMr99o1bjZ3jUCREdaddkHazoY6zsID/C4FyzypgNbofYsNtMvfHl2RhyrI6kcg+o
	uh7Jsqgow7GvlqcAAT9uz9IBQls79kUDW3NNrbWY=
Message-ID: <55A8FD14.6040803@mail.bg>
Date: Fri, 17 Jul 2015 16:03:16 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, 
 Yocto Project <yocto@yoctoproject.org>
References: <55A79757.8010704@mlbassoc.com>
In-Reply-To: <55A79757.8010704@mlbassoc.com>
Subject: Re: Read-only file system with persistent storage
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
X-List-Received-Date: Fri, 17 Jul 2015 13:03:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Gary,

On 07/16/2015 02:36 PM, Gary Thomas wrote:
> I'd like to set up a system with a read-only root file system
> along with some persistent read-write storage.  What are the
> [best] options in Poky/Yocto for this?  Is there any support
> for some type of overlay file system?
>
> Thanks for any ideas/pointers

I remember that back in my automotive days, one of my teams had to use
Genivi's persistence component:

http://projects.genivi.org/persistence-management/

There are also git repositories over there. I can't comment on the code
quality and stability, but this component is part of the Genivi
reference platform (which technically doesn't mean anything), and
there's at least 1 vehicle from a major OEM which uses this component
on the roads. As usual, keep your eyes open for possible issues.

Kind regards,
Nikolay

