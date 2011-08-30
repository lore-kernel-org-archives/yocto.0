Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53338E0048C
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 14:19:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7ULJO7U002052;
	Tue, 30 Aug 2011 22:19:24 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01531-04; Tue, 30 Aug 2011 22:19:20 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7ULJGkT002038
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 30 Aug 2011 22:19:16 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Liming Wang <liming.wang@windriver.com>
In-Reply-To: <1314283529-20888-2-git-send-email-liming.wang@windriver.com>
References: <1314283529-20888-1-git-send-email-liming.wang@windriver.com>
	<1314283529-20888-2-git-send-email-liming.wang@windriver.com>
Date: Tue, 30 Aug 2011 22:19:05 +0100
Message-ID: <1314739145.5939.433.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH RESEND v2 1/1] scripts/runqemu: disable unfs boot mode for qemuppc
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
X-List-Received-Date: Tue, 30 Aug 2011 21:19:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-25 at 22:45 +0800, Liming Wang wrote:
> Because unfs boot mode is unstable for qemuppc, disable
> it temporarily.
> 
> Signed-off-by: Liming Wang <liming.wang@windriver.com>
> ---
>  scripts/runqemu |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)

Merged to master, thanks.

Richard


