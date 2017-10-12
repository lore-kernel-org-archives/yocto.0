Return-Path: <prof7bit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90522E00CF5; Thu, 12 Oct 2017 02:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prof7bit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1696E00D00
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 02:34:01 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id q13so2372876vkb.2
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 02:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yMsyoTLLpTZ2b14VZKh0OE/HU4tKkoIzHeQkqHKorQM=;
	b=M9Y8CqHA9ImOdD9gtNjuUNH0IRgwGA2Mnowx//Ur8UHxmuF8EFiEWSwOyU7Nrc5gWX
	ZkX5bqSCGDjXTxM8ssgXvCr8bM/sJLEJzp64DQQodLgm26I+mr/T4I8m+HJQGsOTea8I
	BIELIwA1gZpQw3WPqGSuEXJVB2sqEo7daxMn5mmxax3prkaia/lUXa0UELdU756YHITz
	7eYM5QFHe62+Qhfeydi0ltdgvVE87mOBZ2xS9g9QcPTNmv+5Dq5eTeYd1qRxN1u2t2mn
	UKjG4uo0wKHNPk3gp97weGv+zZVj8cxndeX2kEoM8k3ne2cftSaqCZRVdLlAgZLMSzmm
	69MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yMsyoTLLpTZ2b14VZKh0OE/HU4tKkoIzHeQkqHKorQM=;
	b=szXfCo20p/9KcLIwR98A9jI1Iawgpp9Kxbe0KNzgxd5Il1eproUrggzF8d5D/tyI36
	1M1Mr2lSd+eJEKyD/RSH98SzffkwiE3/BJgwrwVOVQk/ymzEE4PeUoO5MtR4onboqA/n
	1iKKl+Ohz4k43NtwhZgP1sDwWgn3IyGC/xnlvzRWm9soWxleXZ/igwROJ+k0E4PplhFb
	7bNE2STrDTsmO8cbIucbdcQblaQifQUVISeAWQ8lyO1BshRfdTL1K+yim8BmzyqwDq/w
	FLwNcdld1XiAr3jCY/9oOApODnjvRVd6uvFMkZDX5HEXdOfRII4XmwpZIQm6R/odDesC
	mqPQ==
X-Gm-Message-State: AMCzsaVB0Zhzq2VotwkSd5Jcga/zyq74g0UJ0T7Ks4Wm3Bt4MjfeuNx7
	wSvZoHWFzft2xSjIYbu5HdJrki4cqPUXB+pJBG4=
X-Google-Smtp-Source: AOwi7QAxsh6FAQh9sPjzV5MCLdeg9TJO0TABsmScz3tbfVtuK/BBXShp5uDLNBtAwN8X7ACcuW8I/CW1J8SEfMQRYUY=
X-Received: by 10.31.108.69 with SMTP id h66mr432154vkc.61.1507800840608; Thu,
	12 Oct 2017 02:34:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.178.15 with HTTP; Thu, 12 Oct 2017 02:34:00 -0700 (PDT)
From: Bernd <prof7bit@gmail.com>
Date: Thu, 12 Oct 2017 11:34:00 +0200
Message-ID: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Navigating the layer labyrinth
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
X-List-Received-Date: Thu, 12 Oct 2017 09:34:11 -0000
Content-Type: text/plain; charset="UTF-8"

I am a new user for a few weeks now, trying to make a customized image
for a toradex colibri-vf module, so far I have succeeded in the
following disciplines:

* adding the 3rd party layers that I need
* making my own layers
* using a .bbappend to patch the device tree
* using a .bbappend to workaround a bug(?) in one of the freescale layers
* writing my own recipe to install a python script
* writing recipes for pulling additional python packages with pypi and
setuptools3
* writing my own image recipe
* making it boot and run on the target platform

During this learning experience I have made the following observations
of circumstances that made it especially hard for me to get things
done, I'm not yet really sure if this is a documentation issue or if
it is really a missing feature but I feel I could have had a much
*much* easier time learning and understanding the concepts and
relationships and the inner workings of existing layers upon which I
want to build my system if the following things were possible (and/or
if they are already possible they should be documented in the very
first chapter of the documentation):

* Finding the *file path* of an existing recipe (or append file or
class) *by its name* and also all existing .bbappends for it, i
imagine something simple like bitbake --show-paths foo-bar would
output me the small list of absolute paths of recipe files by the name
foo-bar and all matching .bbappend files in the order in which they
would be applied, it would show me only this small list of paths and
not dump 100kb of unrelated information along with it. This would be
incredibly helpful when I need to inspect an existing recipe in order
to understand how I can bbappend it or even just to see and understand
what it actually does.

* A simple way to track the assignment of a certain variable, to
inspect its contents and if it refers to other variables then
recursively show their contents too (and also the path of the bb file
where this happens), and also show which other recipes will directly
and indirectrly depend on this variable further down the line, I
imagine this should output two tree-like structures where one can see
at one glance how and where all the contents of that variable come
from and where they are going to be used. Again this should be a
simple command that formats and outputs that (and only that)
information in a well formatted and compact tree-like representation.

* The absolute killer application would be an IDE or an editor plugin
where I open any .bb file and can then just CTRL-click on any include,
require, inherit, depend, rdepend, or any variable name and it would
open another editor containing that recipe file where it is defined
and/or populate a sidebar with a list or a tree of direct and indirect
references to that name, backward and forward, and I could just click
on any node of that tree an and it would open the file in the editor
and jump to that line of code. Such a thing would be an incredibly
helpful tool, it would make even the most complex and tangled
labyrinth of recipes navigable with ease.

Please tell me that such a thing already exists and I just have not
found it yet.

Bernd

