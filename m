Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D44E0098E
	for <yocto@yoctoproject.org>; Sun, 23 Mar 2014 07:21:44 -0700 (PDT)
Received: from [109.224.171.0] (port=21497
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WRjHT-0000Xi-13
	for yocto@yoctoproject.org; Sun, 23 Mar 2014 14:21:43 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <72621A4D-01B8-4143-BFBE-455F6FFAE6A4@keylevel.com>
Date: Sun, 23 Mar 2014 14:21:42 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Subject: eglglessink from gstreamer 1.0 blacklisted
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
X-List-Received-Date: Sun, 23 Mar 2014 14:21:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm using meta-gstreamer1.0 to give 1.0 support under danny.

I've just added eglglessink to the image, but it's blacklisted. Running =
gst-inspect-1.0 on libeglglessink.so reports that eglDestroyImageKHR =
cannot be found.

I suspect there's something I need to pass when building =
meta-gstreamer1.0.

Has anyone already been through this?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




