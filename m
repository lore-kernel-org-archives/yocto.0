Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0DFCE008C1;
	Mon, 24 Feb 2014 07:46:16 -0800 (PST)
Received: from [109.224.171.0] (port=42593
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WHxjP-0000jw-Ll; Mon, 24 Feb 2014 15:46:12 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 24 Feb 2014 15:46:07 +0000
Message-Id: <2081A7FF-759C-444A-A5D8-479DC718591D@keylevel.com>
To: meta-intel@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
X-Mailer: Apple Mail (2.1827)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Cedartrail zero-copy texture updates
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
X-List-Received-Date: Mon, 24 Feb 2014 15:46:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to get zero-copy GLES textures working using Danny / =
Cedartrail (PVR) so I can stream video frames into a GLES application.

Googling hasn't really helped that much with how to do this, but I think =
I need to use eglCreateImageKHR and a client-side buffer so that =
glEGLImageTargetTexture2DOES() can be used to bind the texture to an =
image in memory.

eglCreatePixmapSurfaceHI() looks like it allows client memory to be used =
as a colour-buffer which can be passed to eglCreateImageKHR, but I can't =
seem to be able to create a context which supports pixmaps.

Are there any examples out there to show how to put all of this =
together?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




