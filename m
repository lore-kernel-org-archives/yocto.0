Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78775E01468
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 00:48:25 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-82-212.range81-153.btcentralplus.com
	[81.153.82.212]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id CE3BB99A4
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 08:48:24 +0100 (BST)
Message-ID: <5077CB48.6090903@r-finger.com>
Date: Fri, 12 Oct 2012 08:48:24 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <tencent_30240F973705ED5413FC8C7A@qq.com>
In-Reply-To: <tencent_30240F973705ED5413FC8C7A@qq.com>
Subject: Re: how to use SECTION in .bb file
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
X-List-Received-Date: Fri, 12 Oct 2012 07:48:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/10/12 08:41, Liu wrote:
> Dear all, I want to add some packages to poky,then I faced a question
> : In a recipe there is "SECTION" variable,it is explaned where
> package should be put .But I do not understand what it really
> means.

It's for packages managers to allow them to group common packages
together in the user interface to make it easier to navigate the package
list.

Tomas

