Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86096E00A08; Sun,  7 Jun 2015 05:40:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C27E00961
	for <yocto@yoctoproject.org>; Sun,  7 Jun 2015 05:40:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9F1B6F811E4; Sun,  7 Jun 2015 06:40:09 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D62FCF811E4;
	Sun,  7 Jun 2015 06:40:08 -0600 (MDT)
Message-ID: <55743BAA.8010905@mlbassoc.com>
Date: Sun, 07 Jun 2015 06:40:10 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAGLePYs7OGHzbn9TUg0qj7PMEMF-DGkWzrDGdnD__OOA7uWiGA@mail.gmail.com>
In-Reply-To: <CAGLePYs7OGHzbn9TUg0qj7PMEMF-DGkWzrDGdnD__OOA7uWiGA@mail.gmail.com>
Subject: Re: How to list all of the .bb and .bbappend files used to build a specific package with bitbake?
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
X-List-Received-Date: Sun, 07 Jun 2015 12:40:15 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-07 03:49, Roberto Saltini wrote:
> Let's consider the package "virtual/kernel". I would like to know which .bb and .bbappend files are involved in building this package.
>
> I know that I can get the package name through:
>
>     bitbake -e virtual/kernel | grep ^BP=
>
> This command gives me the name of the package used to build virtual/kernel that in my case is |linux-fslc-4.0+gitAUTOINC+19ebefd40a|. However, I do not know how to get the list of
> .bb and .bbappend files (with their location included) used to build the |linux-fslc-4.0+gitAUTOINC+19ebefd40a| package.

Use
   find <LAYERS> -name "*.bb*"
where <LAYERS> are the directories holding your layers.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

