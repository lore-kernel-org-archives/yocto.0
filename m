Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E640E013D4
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 05:51:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5BCpg4T014907;
	Mon, 11 Jun 2012 13:51:42 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13232-10; Mon, 11 Jun 2012 13:51:38 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5BCpWIt014900
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 11 Jun 2012 13:51:33 +0100
Message-ID: <1339419094.30460.20.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Mon, 11 Jun 2012 13:51:34 +0100
In-Reply-To: <1339171857-2776-1-git-send-email-paul.gortmaker@windriver.com>
References: <1339171857-2776-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] gitignore: add wildcard to match toplevel patch files
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
X-List-Received-Date: Mon, 11 Jun 2012 12:51:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-06-08 at 12:10 -0400, Paul Gortmaker wrote:
> To support the basic workflow of trivial patches:
> 
>  git format-patch HEAD~.. ; git send-email --to foo@bar.com 0001-foo.patch
> 
> We don't want git status reporting on patches lying in the top
> level dir in this case.

Merged to master, thanks.

Richard


