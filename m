Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7FCB4C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 11:44:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RGiL5l031430;
	Wed, 27 Jul 2011 17:44:21 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30946-08; Wed, 27 Jul 2011 17:44:17 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6RGiExb031423
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 27 Jul 2011 17:44:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201107271718.45820.paul.eggleton@linux.intel.com>
References: <1311708150-24226-1-git-send-email-msm@freescale.com>
	<1311708150-24226-2-git-send-email-msm@freescale.com>
	<4E303825.1080304@linux.intel.com>
	<201107271718.45820.paul.eggleton@linux.intel.com>
Date: Wed, 27 Jul 2011 17:44:12 +0100
Message-ID: <1311785052.2344.409.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Update TERMCMD message to align with previous change
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
X-List-Received-Date: Wed, 27 Jul 2011 16:44:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 17:18 +0100, Paul Eggleton wrote:
> On Wednesday 27 July 2011 17:09:09 Saul Wold wrote:
> > Matthew,
> > 
> > Paul Eggelton recently made a similar change so I am going to drop this
> > one.
> 
> Hmm, actually I missed the default to xterm change and thus did not alter that 
> aspect of the comments. Therefore I think we should apply this.

Agreed, patch merged to master, thanks.

Richard


