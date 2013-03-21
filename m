Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A438FE0149D
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 13:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=gelTmtmrtWzya4T1pD7Jo/55asdL2AImqq3dIsMZ3J0=; 
	b=S0Vt15HTwxS1FnST98oOPgUdSyNLAe7eIw59XhW5Clcr/zxKAvTfVZt36zUJHNFBYD8+sXpoDqE4ZIfDkb5Ig+2BiCFO5+iDt9Ye/DJvcc0EGZ4w5h8B8pAPjx370D/5;
Received: from [109.224.129.17] (port=7469
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UIlpK-002CL0-Ol
	for yocto@yoctoproject.org; Thu, 21 Mar 2013 20:11:06 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 21 Mar 2013 20:11:05 +0000
Message-Id: <C5ADEA0A-CC34-4A20-8D8B-27789A0C5358@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
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
Subject: No keyboard in X
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
X-List-Received-Date: Thu, 21 Mar 2013 20:11:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a system (Danny, meta-intel-cedartrail) with a custom =
/etc/mini_x/session file which is used to run an application at startup.

This all works to the extent that the application starts and runs, but =
the keyboard doesn't work - 'Esc' should cause the application to =
terminate and the X session to end. The Xorg log shows that the session =
is "Using VT number 2".

If I kill the session manually, login on the tty and restart (using =
'init 4', 'init 5') then the application runs as before but this time =
the keyboard works as expected.

inittab runs a getty on tty1 to tty4.

Any idea what's going on here? Is it because tty2 isn't active when X =
starts, or is it something like a permissions problem which means the =
keyboard can't be used until a user is authenticated on the VT that's =
being used?

Would running the X session on the tty0 (console) work? If so, how can I =
force it to be used?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




