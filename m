Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CD1FE009B9
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 14:17:57 -0800 (PST)
Received: from [109.224.171.0] (port=6796 helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WKEho-0000o5-ES
	for yocto@yoctoproject.org; Sun, 02 Mar 2014 22:17:56 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <DB981723-A2BE-4924-8C87-91DC5E300380@keylevel.com>
Date: Sun, 2 Mar 2014 22:17:55 +0000
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
Subject: QA issues when building gstreamer1.0 under 'danny'
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
X-List-Received-Date: Sun, 02 Mar 2014 22:17:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm using the gstreamer1.0 recipe files from master to add support to a =
project under 'danny'.

It seems to be mainly building fine, but I'm seeing QA issues. e.g., =
when running bitbake gstreamer1.0-plugins-base:

WARNING: QA Issue: gstreamer1.0-plugins-base: Files/directories were =
installed but not shipped
  /usr/lib/libgstriff-1.0.so.0.203.0
  /usr/lib/libgstapp-1.0.so.0.203.0
  /usr/lib/libgstvideo-1.0.so.0.203.0
  /usr/lib/libgstallocators-1.0.so.0
  /usr/lib/libgstpbutils-1.0.so.0
  /usr/lib/libgstsdp-1.0.so.0
  /usr/lib/libgsttag-1.0.so.0
  /usr/lib/libgstrtp-1.0.so.0
  /usr/lib/libgstrtsp-1.0.so.0.203.0
  /usr/lib/libgstapp-1.0.so.0
  /usr/lib/libgstpbutils-1.0.so.0.203.0
  /usr/lib/libgstsdp-1.0.so.0.203.0
  /usr/lib/libgsttag-1.0.so.0.203.0
  /usr/lib/libgstfft-1.0.so.0
  /usr/lib/libgstaudio-1.0.so.0
  /usr/lib/libgstrtsp-1.0.so.0
  /usr/lib/libgstriff-1.0.so.0
  /usr/lib/libgstfft-1.0.so.0.203.0

... and more

I suspect this is then related to an error I see when the rootfs is =
being built:

| Processing packagegroup-core-boot...
| error: Failed dependencies:
| 	libgstapp-1.0.so.0 is needed by opty4-X-r0.core2

What do I need to do to get these bits added to the image?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




