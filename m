Return-Path: <t_j_mail@wp.pl>
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.7])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06DD0E003D7
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 01:02:31 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 18184 invoked from network);
	19 Oct 2012 10:01:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1350633671; bh=BZuTcv350XUo89tQZlYWXLkOzzXdKADxLofjqygU90k=;
	h=From:To:Subject;
	b=RxHSKDWdY1A+rp5Ro6LtiLULiK7fv3A6UW0t9w5OviU1V1F6d4FzjrYRpK3y6n+w7
	J7SDhKmcfSKvnqFtY6FPXv1bfwZ7j7gmTGG6cxa0wBEN+DYtyY0mYi16tybXP/4Y0A
	dV0oF50FM5Z4Nb3atdQQvMNQZQpUlSeIh+3lRUXo=
Received: from static-78-8-9-52.ssp.dialog.net.pl (HELO [172.22.74.100])
	(t_j_mail@[78.8.9.52]) (envelope-sender <t_j_mail@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with CAMELLIA256-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 19 Oct 2012 10:01:11 +0200
Message-ID: <508108C5.4040309@wp.pl>
Date: Fri, 19 Oct 2012 10:01:09 +0200
From: Tomek Jankowski <t_j_mail@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [EfGD]                               
Subject: Making repository for custom Yocto environment
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
X-List-Received-Date: Fri, 19 Oct 2012 08:02:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I use Yocto for my project and I want to manage it with git. What 
directories/files I should add to repository? I assume, that I should 
use the same hierarchy of files as it's used for original Yocto 
distribution, right? I don't care about temporary builds  I only want to 
keep my configuration and recipes safe.

Bye

