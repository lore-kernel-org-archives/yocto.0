Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B62DCE00830; Fri, 24 Oct 2014 03:32:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA979E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 03:32:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9OAVNhh016249; Fri, 24 Oct 2014 11:31:23 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Wi-R969OLdNh; Fri, 24 Oct 2014 11:31:23 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9OAVIOW016245
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 24 Oct 2014 11:31:19 +0100
Message-ID: <1414146713.30118.6.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jens Rehsack <rehsack@gmail.com>
Date: Fri, 24 Oct 2014 11:31:53 +0100
In-Reply-To: <DEACBB97-4D85-4426-ACA9-1FF991E74AF1@gmail.com>
References: <DEACBB97-4D85-4426-ACA9-1FF991E74AF1@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: OpenSSL-1.0.1j update making builds failing ...
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
X-List-Received-Date: Fri, 24 Oct 2014 10:32:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-10-24 at 11:14 +0200, Jens Rehsack wrote:
> yesterday applied OpenSSL update on daisy
> (https://github.com/rdm-dev/poky/commit/27a877becf76a1410aa96c02a25bb885bfbddf04) fails to bitbake, because newly added *ptest* files does not exists. Further patches had been removed from recipe without removing the files themselves ...
> 
> The first (for us critical) issue I've hacked away by
> https://github.com/rdm-dev/poky/commit/1ab58562a6adbbc1f48a78900912c7775f6172a3 - I do not recommend to apply that patch, I favor fixing the root cause (unfortunately a task for Ross?).
> 
> Best regards and thanks for the continuous improvements!

Later on yesterday
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=daisy&id=e93f9a838260100ece7cac36f01e42e321e6414b was merged which should have fixed this.

Cheers,

Richard


