Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40B1EE0045D
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 09:43:58 -0800 (PST)
Received: from [192.168.0.2] (host86-137-78-213.range86-137.btcentralplus.com
	[86.137.78.213]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id B773E9BE3
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 17:43:56 +0000 (GMT)
Message-ID: <50BCE4DB.3070105@r-finger.com>
Date: Mon, 03 Dec 2012 17:43:55 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50BBDB70.2040803@intel.com>
In-Reply-To: <50BBDB70.2040803@intel.com>
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Mon, 03 Dec 2012 17:43:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/12/12 22:51, Scott Garman wrote:
> Robert Day has brought up an inconsistency in the way we append to
> BBPATH within a couple of our layer.conf files.
> 
> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
> 
> BBPATH := "${BBPATH}:${LAYERDIR}"
> 
> but in meta-yocto, we do:
> 
> BBPATH := "${LAYERDIR}:${BBPATH}"
> 
> Unless someone explains to me that it's necessary to use this different
> ordering in meta-yocto's layer.conf, I will submit a patch to make this
> more consistent.

This meta-yocto setup is intentional (there was thread about that a
while back). meta-yocto is a distro layer, and for any distro layer it
is reasonable to enforce its own precedence over any other layers is may
use, and meta-yocto chooses to do this. Non-distro layers, including all
bsp layers, are expected to always use an append operation so that they
can be stacked together.

Tomas

-- 
http://sleepfive.com

