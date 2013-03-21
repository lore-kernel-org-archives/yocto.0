Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB2A5E0148A
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 13:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=MfP4jkJJAPkucMSVtYLvOK+LFm5lra+dGph6jE78i5s=; 
	b=FVc2KgG/jk4Uti5f5oJ+BvYUOKHmCM1IxNj5NP618TY3fM9qMdp3QZhwHS9655iAMaDXKoXSi/T5h990TWXeeytwL3QRjX6qrwZBRVqPueSBu0jF0ZCOtFXd7iX3PrsQ;
Received: from [109.224.129.17] (port=15855
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UImT5-002KnS-30; Thu, 21 Mar 2013 20:52:11 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <514B6FB8.6040204@r-finger.com>
Date: Thu, 21 Mar 2013 20:52:09 +0000
Message-Id: <46DA4A7A-ABC0-423C-AE9B-CE7DC483B961@keylevel.com>
References: <C5ADEA0A-CC34-4A20-8D8B-27789A0C5358@keylevel.com>
	<514B6FB8.6040204@r-finger.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: No keyboard in X
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
X-List-Received-Date: Thu, 21 Mar 2013 20:52:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On 21 Mar 2013, at 20:38, Tomas Frydrych wrote:

> On 21/03/13 20:11, Chris Tapp wrote:
>> I've got a system (Danny, meta-intel-cedartrail) with a custom
>> /etc/mini_x/session file which is used to run an application at
>> startup.
>> 
>> This all works to the extent that the application starts and runs,
>> but the keyboard doesn't work - 'Esc' should cause the application to
>> terminate and the X session to end. The Xorg log shows that the
>> session is "Using VT number 2".
>> 
>> If I kill the session manually, login on the tty and restart (using
>> 'init 4', 'init 5') then the application runs as before but this time
>> the keyboard works as expected.
>> 
>> inittab runs a getty on tty1 to tty4.
> 
> Could be permissions; if you are not starting X as root, you have to
> make sure the X user has rw permissions to /dev/ttyN and /dev/input/*


Looking at the S09xserver-nodm script in rc5.d, it's started using:

       su -l -c '/etc/X11/Xserver&' $username 

where 'username' is set to 'root', so it looks like that should be ok.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




