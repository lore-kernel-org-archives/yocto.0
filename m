Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A830E014F5
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 06:18:59 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-86-81.range86-137.btcentralplus.com
	[86.137.86.81]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id AF4339512
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 14:18:57 +0100 (BST)
Message-ID: <517538C0.6050803@r-finger.com>
Date: Mon, 22 Apr 2013 14:18:56 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20130419230440.DCDE7E0146E@yocto-www.yoctoproject.org>
	<20130419232226.GB941@wrk>
	<B98BBFB67D89184E8E876F332BDBC3E0A27FDD@GLDMS85001.goldlnk.rootlnka.net>
In-Reply-To: <B98BBFB67D89184E8E876F332BDBC3E0A27FDD@GLDMS85001.goldlnk.rootlnka.net>
Subject: Re: Trouble patching a package
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
X-List-Received-Date: Mon, 22 Apr 2013 13:18:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/04/13 13:56, Saridakis, Dean (US SSA) wrote:
>>> Seems like this ought to be pretty easy based on the docs - Not sure
>>> what I've got wrong. I've added an append to my layer w/
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>
>>> SRC_URI += "0001-yada-yada.patch"
>>>
>>> # Comment out while debugging
>>> #PRINC := "${@int(PRINC) + 1}"
>>>
>>> The append file is in BBFILES. The patch file is in the same dir as
>>> the append file (using a files sub-dir didn't help). Been doing
>>> "bitbake -c patch -f pkg" to test/debug. (pkg is canutils, which is
>>> autconf based)
>>
>> Based on the path you're using, the patch needs to be in a subdir relative to
>> your append file. Specifically, the subdir needs to have the same name as the
>> package.
>>
>> -Kevin
> 
> I've also tried just "${THISDIR}:" with the same results.
> 
> A lot of this stuff is still magic to me & I'm not sure how to go about demystifying it -- do I have to dig into the underlying classes?
> E.g., what magic is required to pick up & apply a patch file? Anything named *.patch? 


>>> #PRINC := "${@int(PRINC) + 1}"

Not sure which version of Yocto you are using, but this is probably the
source of your problems -- until very recently no PR change means no
rebuild.

The other thing, if you modify SRC_URI, re-running the 'patch' task is
not enough, the patches need to be added to the sources, which happens
during the 'unpack' task.

If you are adding a patch to the bbappend, there is only two things that
can go wrong: your extra path is wrong, in which case you will get a
failure during 'unpack', or your patch does not apply, then you will get
a failure during 'patch' task. If neither of these is happening, then
your bbappend changes are not being processed.

If in doubt run 'bitbake -c cleansstate package' to start from the
beginning.

Tomas

