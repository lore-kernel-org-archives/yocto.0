Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26F46E00280
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:08:24 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-26-151.range86-170.btcentralplus.com
	[86.170.26.151]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 714579C07
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 10:08:22 +0100 (BST)
Message-ID: <4FFBF105.4030807@r-finger.com>
Date: Tue, 10 Jul 2012 10:08:21 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1207081418590.28552@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207081418590.28552@oneiric>
Subject: Re: what's the preferred way of creating images for a classic beagle rev C4?
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
X-List-Received-Date: Tue, 10 Jul 2012 09:08:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 08/07/12 19:21, Robert P. J. Day wrote:
>   is it adequate to use the canonical beagleboard support in yocto, or
> should i take advantage of the developments in the meta-ti layer?
> this is for a training course so i don't need production-level
> reliability so much as i want access to as many features as i can get
> for educational purposes.  thanks.

Yocto alone should give you working Sato images; I am fairly certain
that works with Denzil.

If you want/need stuff like accelerated graphics, you have to use
meta-ti, but meta-ti does not play very well with Yocto, so expect to
have to do some tweaking to get things to build. Beyond that, my
experience is that actually getting the meta-ti accelerated video work
is a rather time consuming miss and hit exercise without any guaranteed
results at the end -- if you do not need this for your purposes, then
I'd say don't bother.

Tomas

