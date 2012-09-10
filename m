Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A2C1E0146E
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 11:56:53 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1TB99v-0004TH-2r
	for yocto@yoctoproject.org; Mon, 10 Sep 2012 19:56:35 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 10 Sep 2012 19:56:32 +0100
Message-Id: <718DB276-4C65-4925-B1E9-3EFEA0B8B4B7@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Denzil / Cedartrail / EGL/GLES under X
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
X-List-Received-Date: Mon, 10 Sep 2012 18:56:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Does anyone have a simple recipe they are willing to share that uses =
meta/intel/cedartrail which shows how to get EGL/GLES running under X?

I've managed to get to the point where I think EGL is up (no API errors =
reported), but if I try anything on the GL side (e.g. glClear to get the =
background color) I'm not getting anything showing on the display when I =
call eglSwapBuffers().

If I run this app in a terminal within Sato then I can see printf-type =
diagnostics from the program, but nothing else.

I'm not sure how to configure my build to use the cdv-pvr-driver libs =
rather than the MESA-dri equivalents either. Both provide libGLESv2, =
etc., but I want the cdv-pvr-driver versions in the final image. =
However, cdv-prv-driver doesn't seem to have an include directory to use =
at build time, so MESA needs to be there as well. Is there a =
PREFERRED_PROVIDER_virtual/libgl value I can use?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




