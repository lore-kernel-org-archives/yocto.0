Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEBDDE013A6
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 05:12:57 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-114-123.range81-153.btcentralplus.com
	[81.153.114.123]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 2A3D399A4
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 13:12:56 +0100 (BST)
Message-ID: <50853848.80606@r-finger.com>
Date: Mon, 22 Oct 2012 13:12:56 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+JN8xNGvDMQKRQ18ME22DKXDaCY+UrZz+YCrW_ROHbxxf9UeA@mail.gmail.com>
In-Reply-To: <CA+JN8xNGvDMQKRQ18ME22DKXDaCY+UrZz+YCrW_ROHbxxf9UeA@mail.gmail.com>
Subject: Re: AUTOREV problems
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
X-List-Received-Date: Mon, 22 Oct 2012 12:12:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 22/10/12 12:56, Seth Bollinger wrote:
> 1.  What is the expected operation of bitbake builds for recipes using
> autorev?

It should just work (and FWIW, it's working here).

> 2.  How can I get my autorev recipes to rebuild when their repositories
> change?
> 3.  If this is working for everyone else, how can I find what I have
> screwed up?  :)

It's hard to say without seeing the recipe in question.

Tomas

