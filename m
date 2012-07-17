Return-Path: <laurentiu.palcu@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6593CE0034C
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 00:01:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jul 2012 00:01:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,223";a="193765592"
Received: from lpalcu-linux (HELO [10.237.105.41]) ([10.237.105.41])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2012 00:01:10 -0700
Message-ID: <50050DB5.9060107@linux.intel.com>
Date: Tue, 17 Jul 2012 10:01:09 +0300
From: Laurentiu Palcu <laurentiu.palcu@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <87sjcrio8r.fsf@sonatest.com>
In-Reply-To: <87sjcrio8r.fsf@sonatest.com>
Subject: Re: xserver-xorg
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
X-List-Received-Date: Tue, 17 Jul 2012 07:01:11 -0000
X-Groupsio-MsgNum: 7940
Content-Type: multipart/mixed; boundary="------------040203060803020101030808"

--------------040203060803020101030808
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Marc,

Apparently, these tests were removed upstream. As we are going to
upgrade xserver-xorg package to 1.12.3, those fixes will be included
too. However, if you need the fix now, I attached the patch.

Thanks,
Laurentiu

On 07/16/2012 08:56 PM, Marc Ferland wrote:
> Hi all,
> 
> I'm having trouble building the xserver-xorg package. The build fails
> with:
> 
> | render2.c: In function '__glXDisp_Map1d':
> | render2.c:104:5: error: the comparison will always evaluate as 'true' for the address of 'u1' will never be NULL [-Werror=address]
> | render2.c:105:5: error: the comparison will always evaluate as 'true' for the address of 'u2' will never be NULL [-Werror=address]
> | render2.c: In function '__glXDisp_Map2d':
> | render2.c:147:5: error: the comparison will always evaluate as 'true' for the address of 'u1' will never be NULL [-Werror=address]
> | render2.c:148:5: error: the comparison will always evaluate as 'true' for the address of 'u2' will never be NULL [-Werror=address]
> | render2.c:149:5: error: the comparison will always evaluate as 'true' for the address of 'v1' will never be NULL [-Werror=address]
> | render2.c:150:5: error: the comparison will always evaluate as 'true' for the address of 'v2' will never be NULL [-Werror=address]
> | cc1: some warnings being treated as errors
> 
> The target machine is a x86_64. Looks like the compiler doesn't like how
> the __GLX_GET_DOUBLE macro tests the address of stack variables against
> NULL.
> 
> I would like to know if there is a patch upstream or if this is a known
> issue? What surprises me the most is that this machine looks a lot like
> the meta-sugarbay which builds correctly.
> 
> Regards,
> 
> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 


--------------040203060803020101030808
Content-Type: text/x-patch;
 name="0001-glx-warning-fixes.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="0001-glx-warning-fixes.patch"

From 63ccaec2c39f4b5742383472c951ee2cd35c9e14 Mon Sep 17 00:00:00 2001
From: Adam Jackson <ajax@redhat.com>
Date: Tue, 19 Oct 2010 11:59:23 -0400
Subject: [PATCH] glx: warning fixes
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

render2.c: In function ‘__glXDisp_Map2d’:
render2.c:127: warning: ‘u1’ may be used uninitialized in this function
render2.c: In function ‘__glXDisp_Map1d’:
render2.c:90: warning: ‘u1’ may be used uninitialized in this function

Remove unnecessary test, and change memcpy to memmove as all users were
doing overlapping copies.

Signed-off-by: Adam Jackson <ajax@redhat.com>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
---
 glx/unpack.h             |    2 +-
 hw/dmx/glxProxy/unpack.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/glx/unpack.h b/glx/unpack.h
index a4e6d7e..738e79d 100644
--- a/glx/unpack.h
+++ b/glx/unpack.h
@@ -47,7 +47,7 @@
 ** Fetch a double from potentially unaligned memory.
 */
 #ifdef __GLX_ALIGN64
-#define __GLX_MEM_COPY(dst,src,n)	if (src != NULL && dst != NULL) memcpy(dst,src,n)
+#define __GLX_MEM_COPY(dst,src,n)	memmove(dst,src,n)
 #define __GLX_GET_DOUBLE(dst,src)	__GLX_MEM_COPY(&dst,src,8)
 #else
 #define __GLX_GET_DOUBLE(dst,src)	(dst) = *((GLdouble*)(src))
diff --git a/hw/dmx/glxProxy/unpack.h b/hw/dmx/glxProxy/unpack.h
index f34b6fd..f4a9572 100644
--- a/hw/dmx/glxProxy/unpack.h
+++ b/hw/dmx/glxProxy/unpack.h
@@ -43,7 +43,7 @@
 ** Fetch a double from potentially unaligned memory.
 */
 #ifdef __GLX_ALIGN64
-#define __GLX_MEM_COPY(dst,src,n)	memcpy(dst,src,n)
+#define __GLX_MEM_COPY(dst,src,n)	memmove(dst,src,n)
 #define __GLX_GET_DOUBLE(dst,src)	__GLX_MEM_COPY(&dst,src,8)
 #else
 #define __GLX_GET_DOUBLE(dst,src)	(dst) = *((GLdouble*)(src))
-- 
1.7.9.5


--------------040203060803020101030808--
