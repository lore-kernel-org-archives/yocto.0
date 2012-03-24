Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CEEBE0044D
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 04:53:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2OBr024005849;
	Sat, 24 Mar 2012 11:53:00 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03056-08; Sat, 24 Mar 2012 11:52:55 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2OBqogB005843
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 24 Mar 2012 11:52:51 GMT
Message-ID: <1332589972.27577.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Sat, 24 Mar 2012 11:52:52 +0000
In-Reply-To: <alpine.DEB.2.02.1203240525230.22364@oneiric>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tentative list of vars to be dropped from variable glossary
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
X-List-Received-Date: Sat, 24 Mar 2012 11:53:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-03-24 at 05:27 -0400, Robert P. J. Day wrote:
> finished perusing ref manual variable glossary and here's my list of
> variables that would appear to be dead and should be dropped from the
> glossary:
> 
> http://www.crashcourse.ca/wiki/index.php/OE-Core#Dead.28.3F.29_variables.2C_to_be_dropped_from_glossary
> 
> unless there are objections or anyone has any others to add to that
> list, i'll submit a patch that removes all those entries.


PACKAGE_SUMMARY - delete
PACKAGE_DESCRIPTION - delete
POKY_EXTRA_INSTALL - was renamed to CORE_IMAGE_EXTRA_INSTALL
POKYMODE -> rename TCMODE
POKYLIBC -> rename TCLIBC
SHELLCMDS - delete
TERMCMD - delete
TERMCMDRUN - delete

Cheers,

Richard




