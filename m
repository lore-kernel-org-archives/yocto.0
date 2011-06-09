Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B1414C800B6
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 17:25:17 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p59MPE3M019207;
	Thu, 9 Jun 2011 23:25:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18733-08; Thu,  9 Jun 2011 23:25:10 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p59MP8WK019201
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Jun 2011 23:25:09 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Daryl Spitzer <daryl.spitzer@gmail.com>
In-Reply-To: <BANLkTinUJ_ry6PBQRAG2=hT9ArhAHP+ygw@mail.gmail.com>
References: <BANLkTimMEUXEUxOyWNpM8zndLzYcdhU2sg@mail.gmail.com>
	<1307656454.15712.189.camel@rex>
	<BANLkTinUJ_ry6PBQRAG2=hT9ArhAHP+ygw@mail.gmail.com>
Date: Thu, 09 Jun 2011 23:24:59 +0100
Message-ID: <1307658299.15712.193.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Troubleshooting ERROR: Function 'Fetcher failure for URL: 'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs; module=apps/update-rc.d; tag=r0_7'?
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
X-List-Received-Date: Thu, 09 Jun 2011 22:25:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-09 at 15:17 -0700, Daryl Spitzer wrote:
> How do I find out where DL_DIR is pointing?
> 
> I found this line, commented out in conf/local.conf:
> 
> #DL_DIR ?= "${TOPDIR}/downloads"
> 
> It's not listed after I run `bitbake -k poky-image-sato`:
> 
> OE Build Configuration:
> BB_VERSION        = "1.11.0"
> METADATA_BRANCH   = "<unknown>"
> METADATA_REVISION = "<unknown>"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.0.1"
> TARGET_FPU        = ""
> 
> And there is no DL_DIR environment variable defined (after I run
> `source poky-bernard-5.0.1/poky-init-build-env poky-5.0.1-build`).
> 
> There is a poky-5.0.1-build/downloads directory.  I'll assume that's
> it.  But I'd like to learn how to find out without guessing.

You can dump the bitbake datastore and find it like this:

bitbake -e | grep ^DL_DIR

Also, I think I have a patch for your problem:

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 27fcc3c..02a36b5 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -203,7 +203,10 @@ def uri_replace(ud, uri_find, uri_replace, d):
         result_decoded[loc] = uri_decoded[loc]
         if isinstance(i, basestring):
             if (re.match(i, uri_decoded[loc])):
-                result_decoded[loc] = re.sub(i, uri_replace_decoded[loc], uri_decoded[loc])
+                if not uri_replace_decoded[loc]:
+                    result_decoded[loc] = ""    
+                else:
+                    result_decoded[loc] = re.sub(i, uri_replace_decoded[loc], uri_decoded[loc])
                 if uri_find_decoded.index(i) == 2:
                     if ud.mirrortarball:
                         result_decoded[loc] = os.path.join(os.path.dirname(result_decoded[loc]), os.path.basename(ud.mirrortarball))

although I'm running some further tests on this to confirm it...

Cheers,

Richard



