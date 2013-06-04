Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFD86E01564
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 00:15:55 -0700 (PDT)
Received: from [192.168.0.2] (host86-141-47-214.range86-141.btcentralplus.com
	[86.141.47.214]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 6C4C7952B
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:15:54 +0100 (BST)
Message-ID: <51AD9429.3080302@r-finger.com>
Date: Tue, 04 Jun 2013 08:15:53 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CALaXJ9ka0jF6QGhBKNKi1crtn3woMQhB4sEa8Kqv3+=sZ-d4fw@mail.gmail.com>
In-Reply-To: <CALaXJ9ka0jF6QGhBKNKi1crtn3woMQhB4sEa8Kqv3+=sZ-d4fw@mail.gmail.com>
Subject: Re: Commercial usage of Yocto
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
X-List-Received-Date: Tue, 04 Jun 2013 07:15:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 04/06/13 05:35, Kumita Bruce wrote:
> I have one question, can Yocto be used for commercial purpose? If the
> answer is yes, what should I do before using it for commercial purpose? 

Yocto is used in scores of a great variety of commercial products out
there, which is facilitated by the broad MIT license the framework is
released under. There is nothing special you have to do to use it
commercially.

When you ship your product, you will need, of course, to comply with the
licenses of the software packages that your device uses. Yocto is set up
to facilitate this, see
http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#maintaining-open-source-license-compliance-during-your-products-lifecycle.

Tomas

-- 
http://sleepfive.com

