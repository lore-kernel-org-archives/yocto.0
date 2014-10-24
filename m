Return-Path: <prashanthg@vtitan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3EA2E00830; Fri, 24 Oct 2014 04:40:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from sender1.zohomail.com (sender1.zohomail.com [74.201.84.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A99E3E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:40:21 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1414150819307555.7503887359213;
	Fri, 24 Oct 2014 04:40:19 -0700 (PDT)
Date: Fri, 24 Oct 2014 17:10:19 +0530
From: prashanthg <prashanthg@vtitan.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <14941f2a94a.e5585218137807.4674279379222329606@vtitan.com>
In-Reply-To: <1862666.GZ37KUIjUa@peggleto-mobl5.ger.corp.intel.com>
References: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
	<CAMCfZKHH88UfJgTsAze-Osu70CppqZ-iQPxU+kYpxEJ7MozHbw@mail.gmail.com>
	<1862666.GZ37KUIjUa@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Daisy - Beaglebone Black - core-image-minimal - Error: do_compile
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
X-List-Received-Date: Fri, 24 Oct 2014 11:40:25 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_182041_1938809767.1414150819254"

------=_Part_182041_1938809767.1414150819254
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

@PaulEggleton Thanks a lot. I tried 'bitbake -c clean file-native' but it didn't seem to solve the issue.

@DiegoSueiro I removed meta-yocto-bsp from bblayers.conf and even tried switching to master branch on the 'meta-qt5' folder. But the error remains the same.

If this is of any help, I get a Python error on the command line before the bitbake error occurs:

ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/vtitan/yocto/poky/bitbake/lib/bb/command.py", line 96, in runAsyncCommand
    self.cooker.updateCache()
  File "/home/vtitan/yocto/poky/bitbake/lib/bb/cooker.py", line 1306, in updateCache
    if not self.parser.parse_next():
  File "/home/vtitan/yocto/poky/bitbake/lib/bb/cooker.py", line 1809, in parse_next
    self.shutdown()
  File "/home/vtitan/yocto/poky/bitbake/lib/bb/cooker.py", line 1779, in shutdown
    bb.codeparser.parser_cache_savemerge(self.cooker.data)
  File "/home/vtitan/yocto/poky/bitbake/lib/bb/codeparser.py", line 86, in parser_cache_savemerge
    codeparsercache.save_merge(d)
  File "/home/vtitan/yocto/poky/bitbake/lib/bb/cache.py", line 818, in save_merge
    data, version = p.load()
AttributeError: 'module' object has no attribute 'pythonCacheLine'

Regards,

Prashanth Gandhiraj

---- On Fri, 24 Oct 2014 16:44:02 +0530 Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote ---- 

On Friday 24 October 2014 09:06:00 Diego Sueiro wrote: 
&gt; On Fri, Oct 24, 2014 at 8:24 AM, prashanthg &lt;prashanthg@vtitan.com&gt; wrote: 
&gt; &gt; I have been facing issues with 'bitbake core-image-minimal' with Qt5 
&gt; &gt; library added for BBB. 
&gt; &gt; 
&gt; &gt; Error Log: http://pastebin.com/ADdyJnz8 
&gt; &gt; 
&gt; &gt; Build Configuration: 
&gt; &gt; BB_VERSION = "1.22.0" 
&gt; &gt; BUILD_SYS = "i686-linux" 
&gt; &gt; NATIVELSBSTRING = "Ubuntu-13.10" 
&gt; &gt; TARGET_SYS = "arm-poky-linux-gnueabi" 
&gt; &gt; MACHINE = "beaglebone" 
&gt; &gt; DISTRO = "poky" 
&gt; &gt; DISTRO_VERSION = "1.6.1" 
&gt; &gt; TUNE_FEATURES = "armv7a vfp neon callconvention-hard cortexa8" 
&gt; &gt; TARGET_FPU = "vfp-neon" 
&gt; &gt; meta 
&gt; &gt; meta-yocto 
&gt; &gt; meta-yocto-bsp = "daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37" 
&gt; &gt; meta-oe = "daisy:518cd119a8724dbd485a5d5c5047de59e8fbd652" 
&gt; &gt; meta-ti = "daisy:80924d3bba59d6920217216c73af43fdd40d0152" 
&gt; &gt; meta-qt5 = "daisy:c29c317e0f22202bfaa85329a580564bbc179089" 
&gt; &gt; 
&gt; &gt; It would be great if you can help me solve this issue. 
&gt; &gt; 
&gt; &gt; Thanks and Regards, 
&gt; &gt; Prashanth 
&gt; 
&gt; I have Qt5.3.2 (meta-qt5 on master branch) with accelerated graphics built 
&gt; and running on BBB. 
&gt; I did not have seen this error. 
&gt; 
&gt; Note that you need to remove meta-yocto-bsp from your bblayers.conf to get 
&gt; the BSP support from meta-ti. 
 
That is true, but I don't think that's related to the issue here. I believe I 
have seen this issue before, a long time ago, and it relates to the file-native 
recipe rebuilding after a recipe upgrade - it picks up the "magic" data file 
from the previous older build and fails because the version doesn't match. 
Cleaning the recipe should work around the issue: 
 
 bitbake -c clean file-native 
 
Then you can re-try the original build. We should try to properly reproduce 
and fix the underlying issue however. 
 
Cheers, 
Paul 
 
-- 
 
Paul Eggleton 
Intel Open Source Technology Centre 





------=_Part_182041_1938809767.1414150819254
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'>@PaulEggleton Thanks a lot. I tried 'bitbake -c clean file-na=
tive' but it didn't seem to solve the issue.<br><br>@DiegoSueiro I removed =
meta-yocto-bsp from bblayers.conf and even tried switching to master branch=
 on the 'meta-qt5' folder. But the error remains the same.<br><br>If this i=
s of any help, I get a Python error on the command line before the bitbake =
error occurs:<br><br>ERROR: Command execution failed: Traceback (most recen=
t call last):<br>&nbsp; File "/home/vtitan/yocto/poky/bitbake/lib/bb/comman=
d.py", line 96, in runAsyncCommand<br>&nbsp;&nbsp;&nbsp; self.cooker.update=
Cache()<br>&nbsp; File "/home/vtitan/yocto/poky/bitbake/lib/bb/cooker.py", =
line 1306, in updateCache<br>&nbsp;&nbsp;&nbsp; if not self.parser.parse_ne=
xt():<br>&nbsp; File "/home/vtitan/yocto/poky/bitbake/lib/bb/cooker.py", li=
ne 1809, in parse_next<br>&nbsp;&nbsp;&nbsp; self.shutdown()<br>&nbsp; File=
 "/home/vtitan/yocto/poky/bitbake/lib/bb/cooker.py", line 1779, in shutdown=
<br>&nbsp;&nbsp;&nbsp; bb.codeparser.parser_cache_savemerge(self.cooker.dat=
a)<br>&nbsp; File "/home/vtitan/yocto/poky/bitbake/lib/bb/codeparser.py", l=
ine 86, in parser_cache_savemerge<br>&nbsp;&nbsp;&nbsp; codeparsercache.sav=
e_merge(d)<br>&nbsp; File "/home/vtitan/yocto/poky/bitbake/lib/bb/cache.py"=
, line 818, in save_merge<br>&nbsp;&nbsp;&nbsp; data, version =3D p.load()<=
br>AttributeError: 'module' object has no attribute 'pythonCacheLine'<br><b=
r>Regards,<br><br><font face=3D"verdana">Prashanth Gandhiraj</font><br><div=
 class=3D"zmail_extra"><div id=3D"1"><br>---- On Fri, 24 Oct 2014 16:44:02 =
+0530 <b>Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt;</b> wrote ----=
 <br></div><blockquote style=3D"border-left: 1px solid #0000FF;padding-left=
: 6px; margin: 0 0 0 5px">On Friday 24 October 2014 09:06:00 Diego Sueiro w=
rote: <br>&gt; On Fri, Oct 24, 2014 at 8:24 AM, prashanthg &lt;<a href=3D"m=
ailto:prashanthg@vtitan.com" target=3D"_blank">prashanthg@vtitan.com</a>&gt=
; wrote: <br>&gt; &gt; I have been facing issues with 'bitbake core-image-m=
inimal' with Qt5 <br>&gt; &gt; library added for BBB. <br>&gt; &gt;  <br>&g=
t; &gt; Error Log: <a href=3D"http://pastebin.com/ADdyJnz8" target=3D"_blan=
k">http://pastebin.com/ADdyJnz8</a> <br>&gt; &gt;  <br>&gt; &gt; Build Conf=
iguration: <br>&gt; &gt; BB_VERSION        =3D "1.22.0" <br>&gt; &gt; BUILD=
_SYS         =3D "i686-linux" <br>&gt; &gt; NATIVELSBSTRING   =3D "Ubuntu-1=
3.10" <br>&gt; &gt; TARGET_SYS        =3D "arm-poky-linux-gnueabi" <br>&gt;=
 &gt; MACHINE           =3D "beaglebone" <br>&gt; &gt; DISTRO            =
=3D "poky" <br>&gt; &gt; DISTRO_VERSION    =3D "1.6.1" <br>&gt; &gt; TUNE_F=
EATURES     =3D "armv7a vfp neon callconvention-hard cortexa8" <br>&gt; &gt=
; TARGET_FPU        =3D "vfp-neon" <br>&gt; &gt; meta <br>&gt; &gt; meta-yo=
cto <br>&gt; &gt; meta-yocto-bsp    =3D "daisy:bda51ee7821de9120f6f536fcabe=
592f2a0c8a37" <br>&gt; &gt; meta-oe           =3D "daisy:518cd119a8724dbd48=
5a5d5c5047de59e8fbd652" <br>&gt; &gt; meta-ti           =3D "daisy:80924d3b=
ba59d6920217216c73af43fdd40d0152" <br>&gt; &gt; meta-qt5          =3D "dais=
y:c29c317e0f22202bfaa85329a580564bbc179089" <br>&gt; &gt;  <br>&gt; &gt; It=
 would be great if you can help me solve this issue. <br>&gt; &gt;  <br>&gt=
; &gt; Thanks and Regards, <br>&gt; &gt; Prashanth <br>&gt;  <br>&gt; I hav=
e Qt5.3.2 (meta-qt5 on master branch) with accelerated graphics built <br>&=
gt; and running on BBB. <br>&gt; I did not have seen this error. <br>&gt;  =
<br>&gt; Note that you need to remove meta-yocto-bsp from your bblayers.con=
f to get <br>&gt; the BSP support from meta-ti. <br> <br>That is true, but =
I don't think that's related to the issue here. I believe I  <br>have seen =
this issue before, a long time ago, and it relates to the file-native  <br>=
recipe rebuilding after a recipe upgrade - it picks up the "magic" data fil=
e  <br>from the previous older build and fails because the version doesn't =
match.  <br>Cleaning the recipe should work around the issue: <br> <br> bit=
bake -c clean file-native <br> <br>Then you can re-try the original build. =
We should try to properly reproduce  <br>and fix the underlying issue howev=
er. <br> <br>Cheers, <br>Paul <br> <br>--  <br> <br>Paul Eggleton <br>Intel=
 Open Source Technology Centre <br></blockquote><br></div><br></div></body>=
</html>

------=_Part_182041_1938809767.1414150819254--
