Return-Path: <prashanthg@vtitan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6E56E00902; Mon, 27 Oct 2014 00:01:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F285E0084A
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 00:01:39 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 141439329593151.46325547710467;
	Mon, 27 Oct 2014 00:01:35 -0700 (PDT)
Date: Mon, 27 Oct 2014 12:31:35 +0530
From: prashanthg <prashanthg@vtitan.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <149506737da.e69757f7171304.4585030006829688786@vtitan.com>
In-Reply-To: <14735214.HfBokpjakL@peggleto-mobl5.ger.corp.intel.com>
References: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
	<1862666.GZ37KUIjUa@peggleto-mobl5.ger.corp.intel.com>
	<14941f2a94a.e5585218137807.4674279379222329606@vtitan.com>
	<14735214.HfBokpjakL@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Mon, 27 Oct 2014 07:01:54 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_218778_1674919462.1414393295875"

------=_Part_218778_1674919462.1414393295875
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Dear Paul Eggleton,

Thanks for the help. That seems to work!


Have a good day.


Regards,

Prashanth


---- On Fri, 24 Oct 2014 19:31:02 +0530 Paul Eggleton&lt;paul.eggleton@linux.intel.com&gt; wrote ---- 

On Friday 24 October 2014 17:10:19 prashanthg wrote: 
&gt; @PaulEggleton Thanks a lot. I tried 'bitbake -c clean file-native' but it 
&gt; didn't seem to solve the issue. 
 
Ah right, I now know how to trigger this. Did you perhaps switch from the dora 
to the daisy branch whilst keeping your existing TMPDIR? I would recommend you 
delete just your TMPDIR (by default the "tmp" directory under your build 
directory) and then try again. There was a change between dora and daisy that 
meant that the system could not remove old files from the sysroot, and thus the 
old magic file was getting in the way. 
 
Cheers, 
Paul 
 
-- 
 
Paul Eggleton 
Intel Open Source Technology Centre 






------=_Part_218778_1674919462.1414393295875
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'>Dear Paul Eggleton,<div><br></div><div>Thanks for the help. T=
hat seems to work!</div><div><br></div><div>Have a good day.</div><div><br>=
</div><div>Regards,</div><div><br><div id=3D""><div><font face=3D"verdana">=
Prashanth</font></div></div><div class=3D"zmail_extra"><div id=3D"1"><br>--=
-- On Fri, 24 Oct 2014 19:31:02 +0530 <b>Paul Eggleton&lt;paul.eggleton@lin=
ux.intel.com&gt;</b> wrote ---- <br></div><blockquote style=3D"border-left:=
 1px solid #0000FF; padding-left: 6px; margin:0 0 0 5px">On Friday 24 Octob=
er 2014 17:10:19 prashanthg wrote: <br>&gt; @PaulEggleton Thanks a lot. I t=
ried 'bitbake -c clean file-native' but it <br>&gt; didn't seem to solve th=
e issue. <br> <br>Ah right, I now know how to trigger this. Did you perhaps=
 switch from the dora  <br>to the daisy branch whilst keeping your existing=
 TMPDIR? I would recommend you  <br>delete just your TMPDIR (by default the=
 "tmp" directory under your build  <br>directory) and then try again. There=
 was a change between dora and daisy that  <br>meant that the system could =
not remove old files from the sysroot, and thus the  <br>old magic file was=
 getting in the way. <br> <br>Cheers, <br>Paul <br> <br>--  <br> <br>Paul E=
ggleton <br>Intel Open Source Technology Centre <br></blockquote><br></div>=
<br></div></div></body></html>

------=_Part_218778_1674919462.1414393295875--
