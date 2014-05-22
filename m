Return-Path: <Stefan_Seefeld@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3ED9E00B88; Thu, 22 May 2014 06:11:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from relay1.mentorg.com (unknown [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C3EE00B95
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:10:32 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1WnSlU-0003Sd-D3 from Stefan_Seefeld@mentor.com ;
	Thu, 22 May 2014 06:10:32 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Thu, 22 May 2014 06:10:32 -0700
Received: from [0.0.0.0] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.2.247.3;
	Thu, 22 May 2014 06:09:49 -0700
Message-ID: <537DF746.6060700@mentor.com>
Date: Thu, 22 May 2014 09:10:30 -0400
From: Stefan Seefeld <stefan_seefeld@mentor.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <537D1084.4000705@mentor.com> <1400739010.17834.10.camel@ted>
In-Reply-To: <1400739010.17834.10.camel@ted>
X-OriginalArrivalTime: 22 May 2014 13:10:32.0349 (UTC)
	FILETIME=[361394D0:01CF75BF]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mingw] build error
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
X-List-Received-Date: Thu, 22 May 2014 13:11:05 -0000
X-Groupsio-MsgNum: 19779
Content-Type: multipart/mixed; boundary="------------060007020408020308080102"

--------------060007020408020308080102
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 2014-05-22 02:10, Richard Purdie wrote:
> On Wed, 2014-05-21 at 16:45 -0400, Stefan Seefeld wrote:
>> Hello,
>>
>> I started experimenting with the meta-mingw layer today, using the
>> 'daisy' branch for both, poky as well as meta-mingw.
>>
>> Running `bitbake meta-toolchain`, the build process failed in one of the
>> last steps (1003 of 1005) with:
>>
>> ERROR: nativesdk-packagegroup-sdk-host not found in the base feeds
>> (x86_64-nativesdk-mingw32 noarch any all).
>>
>> Any idea what I may be missing ? I'm using
>>
>> MACHINE ??= "qemux86"
>> SDKMACHINE ?= "x86_64-mingw32"
> 
> Which pacxkage backend were you using? If you didn't use ipk, I'd
> suggest trying it. In theory others should work but its ipk I've been
> using when working with those layers.

OK, I was using rpm (the default), but now switched to ipk. That results
in a different error in meta/lib/oe/sdk.py:55, where do_populate() tries
to link ld.so.cache into a non-existent directory.
I have attempted a fix with the attached patch.

With that, things now appear to be working. (I think things should also
work with 'rpm' as package backend, though, right ? Should I file a bug
report somewhere to put that on record ?)

Thanks,
		Stefan


-- 
Stefan Seefeld
CodeSourcery / Mentor Embedded
http://www.mentor.com/embedded-software/

--------------060007020408020308080102
Content-Type: text/x-patch; name="sdk.py.diff"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="sdk.py.diff"

diff --git a/meta/lib/oe/sdk.py b/meta/lib/oe/sdk.py
index 5643199..4a03e96 100644
--- a/meta/lib/oe/sdk.py
+++ b/meta/lib/oe/sdk.py
@@ -50,8 +50,9 @@ class Sdk(object):
                                      "*.la"))
 
         # Link the ld.so.cache file into the hosts filesystem
-        link_name = os.path.join(self.sdk_output, self.sdk_native_path,
-                                 self.sysconfdir, "ld.so.cache")
+        sysconfdir = os.path.join(self.sdk_output, self.sdk_native_path, self.sysconfdir)
+        bb.utils.mkdirhier(sysconfdir)
+        link_name = os.path.join(sysconfdir, "ld.so.cache")
         os.symlink("/etc/ld.so.cache", link_name)
 
         execute_pre_post_process(self.d, self.d.getVar('SDK_POSTPROCESS_COMMAND', True))

--------------060007020408020308080102--
