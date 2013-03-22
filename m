Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FCFE01471
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 15:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=f5qysK8kVbP/D1Ih3i64IcsKXbjK/Usrl64L6cUArZw=; 
	b=cILKWvwe3pcL1+OCYZzIKSdcmJQMFb8Edjhtr4KiBoPdU32K/cTuQeTtcvW+xAKlUvReacG/2as9Wb8k+YxCTc2dC2jtRm4sSmM/e2GWAD+pzN1IK/C68n5rZucZAtcc;
Received: from [109.224.129.17] (port=49545
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UJAJN-000onQ-Ip
	for yocto@yoctoproject.org; Fri, 22 Mar 2013 22:19:45 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Fri, 22 Mar 2013 22:19:44 +0000
Message-Id: <2EF9EF33-8F85-4D84-897A-CA77FACC236D@keylevel.com>
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
Subject: Need help understanding GLES segfault on Cedartrail
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
X-List-Received-Date: Fri, 22 Mar 2013 22:19:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got some code that uses gstreamer to capture video frames (using =
appsink) and then render them to the screen using textures under GLES.

The code basically does:

  1) Grab image;
  2) Use one call per image row to glTexSubImage2D to update the texture
  3) Render the texture to a quad.

Sometime this runs ok (for weeks). Sometimes it crashes.

When it crashes a segfault is thrown in openGLES.so (using PRV drivers). =
It looks as if this happens in the call to glTexSubImage2D. I also =
suspect that some calls never return.

I've found that I need to add a call to glFinish() after the call to =
glTexSubImage2D. If I don't, some of the lines are sometimes filled with =
'static'.

To me this looks like some sort of memory/timing issue. Do I need to =
perform some sort of manual GPU/CPU synchronisation?

Adding significant amounts of diagnostic output (to std::cerr) makes the =
problem a heisenbug!

Chris Tapp

opensource@keylevel.com
www.keylevel.com




