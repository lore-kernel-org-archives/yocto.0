Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F8CE013CB;
	Wed,  3 Jul 2013 03:15:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r63AFBsF011793
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 3 Jul 2013 03:15:11 -0700 (PDT)
Received: from [128.224.162.215] (128.224.162.215) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 3 Jul 2013 03:15:08 -0700
Message-ID: <51D3F9AA.1090608@windriver.com>
Date: Wed, 3 Jul 2013 18:15:06 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Michael Halstead <michael@yoctoproject.org>
References: <51D39006.5000000@yoctoproject.org>
	<51D3A0A2.2040008@yoctoproject.org>
In-Reply-To: <51D3A0A2.2040008@yoctoproject.org>
X-Originating-IP: [128.224.162.215]
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Project 1.5_M2.rc1 build underway, again
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
X-List-Received-Date: Wed, 03 Jul 2013 10:15:12 -0000
Content-Type: multipart/alternative;
	boundary="------------010704070805070902080903"

--------------010704070805070902080903
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Michael,

There are some errors like below:

mkdir: cannot create directory `/toolchain': Permission denied
cp: cannot create regular file `/toolchain/i686': No such file or directory
mkdir: cannot create directory `/toolchain': Permission denied
cp: cannot create regular file `/toolchain/x86_64': No such file or directory
program finished with exit code 1

Please see: http://autobuilder.yoctoproject.org:8011/builders/nightly-arm/builds/191/steps/Publishing%20Artifacts/logs/stdio
             http://autobuilder.yoctoproject.org:8011/builders/nightly-mips/builds/193/steps/Publishing%20Artifacts/logs/stdio


Thanks,
Yi

? 2013?07?03? 11:55, Michael Halstead ??:
>
> After correcting some configuration errors the Yocto Project 
> 1.5_M2.rc1 build is underway again. As tasks complete artifacts will 
> start appearing at their new location:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130703-2
>
> poky                	eaa5df34af42b6a37f6506847d0f3ef6ba0d298a  <https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=eaa5df34af42b6a37f6506847d0f3ef6ba0d298a>
> meta-fsl-arm    	daf582c93a7283fb0af3b25fe2ada48f4c9985c4  <https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=daf582c93a7283fb0af3b25fe2ada48f4c9985c4>
> meta-fsl-ppc    	b889029dca03fcb7e55c671aa5006fe8be1eefb0  <https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=b889029dca03fcb7e55c671aa5006fe8be1eefb0>
> meta-intel        	e0d6134ed2e2687ff9f2ee77701666447842bf33  <https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?id=e0d6134ed2e2687ff9f2ee77701666447842bf33>
> meta-minnow  		286a72ba3f5e29432be1dd77127de5bdc2d988c3  <https://git.yoctoproject.org/cgit/cgit.cgi/meta-minnow/commit/?id=286a72ba3f5e29432be1dd77127de5bdc2d988c3>  
> meta-qt3         	b73552fb998fd30a01dbee5a172e432a16078222  <https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/commit/?id=b73552fb998fd30a01dbee5a172e432a16078222>
> eclipse-poky    	e35dfd79e3970f88a8273125890a54f75f108b97  <https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=e35dfd79e3970f88a8273125890a54f75f108b97>  
> Please begin QA as soon as possible. Thank you.
> -- 
> Michael Halstead
> Yocto Project / Sys Admin
>


--------------010704070805070902080903
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre><span class="stderr">Hi Michael,

There are some errors like below:

mkdir: cannot create directory `/toolchain': Permission denied
cp: cannot create regular file `/toolchain/i686': No such file or directory
mkdir: cannot create directory `/toolchain': Permission denied
cp: cannot create regular file `/toolchain/x86_64': No such file or directory
</span><span class="header">program finished with exit code 1

Please see: <a class="moz-txt-link-freetext" href="http://autobuilder.yoctoproject.org:8011/builders/nightly-arm/builds/191/steps/Publishing%20Artifacts/logs/stdio">http://autobuilder.yoctoproject.org:8011/builders/nightly-arm/builds/191/steps/Publishing%20Artifacts/logs/stdio</a>
            <a class="moz-txt-link-freetext" href="http://autobuilder.yoctoproject.org:8011/builders/nightly-mips/builds/193/steps/Publishing%20Artifacts/logs/stdio">http://autobuilder.yoctoproject.org:8011/builders/nightly-mips/builds/193/steps/Publishing%20Artifacts/logs/stdio</a>


Thanks,
Yi
</span></pre>
    <div class="moz-cite-prefix">&#20110; 2013&#24180;07&#26376;03&#26085; 11:55, Michael Halstead
      &#20889;&#36947;:<br>
    </div>
    <blockquote cite="mid:51D3A0A2.2040008@yoctoproject.org" type="cite">
      <meta content="text/html; charset=ISO-8859-1"
        http-equiv="Content-Type">
      <br>
      After correcting some configuration errors the Yocto Project
      1.5_M2.rc1 build is underway again. As tasks complete artifacts
      will start appearing at their new location:<br>
      <br>
      <a moz-do-not-send="true"
        href="http://autobuilder.yoctoproject.org/pub/nightly/20130703-2">
        <span class="moz-txt-link-freetext">http://autobuilder.yoctoproject.org/pub/nightly/20130703-2</span>
      </a><br>
      <br>
      <pre wrap="">poky                	<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=eaa5df34af42b6a37f6506847d0f3ef6ba0d298a">eaa5df34af42b6a37f6506847d0f3ef6ba0d298a</a>
meta-fsl-arm    	<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=daf582c93a7283fb0af3b25fe2ada48f4c9985c4">daf582c93a7283fb0af3b25fe2ada48f4c9985c4</a>
meta-fsl-ppc    	<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=b889029dca03fcb7e55c671aa5006fe8be1eefb0">b889029dca03fcb7e55c671aa5006fe8be1eefb0</a>
meta-intel        	<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?id=e0d6134ed2e2687ff9f2ee77701666447842bf33">e0d6134ed2e2687ff9f2ee77701666447842bf33</a>
meta-minnow  		<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-minnow/commit/?id=286a72ba3f5e29432be1dd77127de5bdc2d988c3">286a72ba3f5e29432be1dd77127de5bdc2d988c3</a> 
meta-qt3         	<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/commit/?id=b73552fb998fd30a01dbee5a172e432a16078222">b73552fb998fd30a01dbee5a172e432a16078222</a>
eclipse-poky    	<a moz-do-not-send="true" href="https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=e35dfd79e3970f88a8273125890a54f75f108b97">e35dfd79e3970f88a8273125890a54f75f108b97</a> </pre>
      Please begin QA as soon as possible. Thank you.<br>
      <pre class="moz-signature" cols="72">-- 
Michael Halstead
Yocto Project / Sys Admin

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010704070805070902080903--
