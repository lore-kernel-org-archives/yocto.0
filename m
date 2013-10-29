Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a96.g.dreamhost.com (caiajhbdcbbj.dreamhost.com
	[208.97.132.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 147DFE01756
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 15:55:38 -0700 (PDT)
Received: from homiemail-a96.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a96.g.dreamhost.com (Postfix) with ESMTP id 0C8613B805C
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 15:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:subject:references:in-reply-to:
	content-type; s=aeonyx.ca; bh=y41xqGYoDwHKuciUXEn9yB6zjB8=; b=Gb
	AJAR3d7/PrGfFFfd8WWP6PLcbtNnfMBIzQkZ6uWFCK4NyROXS8cb4+kIPLs5psek
	b2IfWpz7whEov1vwweDKBApQrSvKg2pGLATAUqZ46QJuVkBqzoHQS86NX74lXZA2
	gByh9VyyHphI+DveT9hFnNVF8eBUMa0cAc7CxBKEk=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a96.g.dreamhost.com (Postfix) with ESMTPSA id B3F463B805B
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 15:55:37 -0700 (PDT)
Message-ID: <52703CE8.9020306@aeonyx.ca>
Date: Tue, 29 Oct 2013 18:55:36 -0400
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <52702B41.1040504@aeonyx.ca>
In-Reply-To: <52702B41.1040504@aeonyx.ca>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Tue, 29 Oct 2013 22:55:39 -0000
Content-Type: multipart/alternative;
	boundary="------------070506010605070703030001"

--------------070506010605070703030001
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear list,

A quick update:

- The same build failure occurred when I tried "bitbake 
core-image-minimal" using a fresh poky 1.5 downloaded from the Yocto web 
site, with MACHINE set to genericx86-64.
- The same build failure occurred when I manually created a recipe for 
syslinux 6.02 and tried to build it directly "bitbake syslinux"

Any assistance would be greatly appreciated.

Thanks very much
Markus


On 10/29/2013 05:40 PM, Markus Svilans wrote:
> Dear list,
>
> I'm trying to build a core-image-minimal recipe using 
> MACHINE=genericx86-64 but it always fails at syslinux-native-6.01 
> recipe. I've tried deleting my tmp and build folders several times, 
> but it will not build. I am using the genericx86-64 BSP package 
> downloaded from the Yocto website, located at:
>
> https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devices-genericx86-64 
>
>
> File: genericx86-64-dora-10.0.0.tar.bz2
>
> I extracted it to:
> /home/markus/yocto/genericx86-64-dora-10.0.0
>
> Then ran the "oe-init-build-env" script and editted local.conf to 
> enable parallel make, and changed MACHINE to genericx86-64. (I've 
> attached a copy of my local.conf file.)
>
> After that, I ran the command "bitbake core-image-minimal" and sat 
> back, waiting for it to build.
>
> The build always fails at syslinux-native.
>
> I tried several things:
> - deleted tmp directory, re-try build = failure
> - deleted build directory, re-try build = failure
> - deleted build directory, build only syslinux = failure
> - deleted build directory, build only syslinux-native = failure
>
> I think I may be doing something wrong, because about an hour of 
> Google searching did not turn up anybody having a similar issue.
>
> I am running Kubuntu 13.10 64-bit.
>
> Can anyone please offer any advice, so that I can successfully build 
> x86-64 images?
>
> Thanks very much
> Markus
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------070506010605070703030001
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Dear list,<br>
      <br>
      A quick update:<br>
      <br>
      - The same build failure occurred when I tried "bitbake
      core-image-minimal" using a fresh poky 1.5 downloaded from the
      Yocto web site, with MACHINE set to genericx86-64.<br>
      - The same build failure occurred when I manually created a recipe
      for syslinux 6.02 and tried to build it directly "bitbake
      syslinux"<br>
      <br>
      Any assistance would be greatly appreciated.<br>
      <br>
      Thanks very much<br>
      Markus<br>
      <br>
      <br>
      On 10/29/2013 05:40 PM, Markus Svilans wrote:<br>
    </div>
    <blockquote cite="mid:52702B41.1040504@aeonyx.ca" type="cite">Dear
      list,
      <br>
      <br>
      I'm trying to build a core-image-minimal recipe using
      MACHINE=genericx86-64 but it always fails at syslinux-native-6.01
      recipe. I've tried deleting my tmp and build folders several
      times, but it will not build. I am using the genericx86-64 BSP
      package downloaded from the Yocto website, located at:
      <br>
      <br>
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devices-genericx86-64">https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devices-genericx86-64</a>
      <br>
      <br>
      File: genericx86-64-dora-10.0.0.tar.bz2
      <br>
      <br>
      I extracted it to:
      <br>
      /home/markus/yocto/genericx86-64-dora-10.0.0
      <br>
      <br>
      Then ran the "oe-init-build-env" script and editted local.conf to
      enable parallel make, and changed MACHINE to genericx86-64. (I've
      attached a copy of my local.conf file.)
      <br>
      <br>
      After that, I ran the command "bitbake core-image-minimal" and sat
      back, waiting for it to build.
      <br>
      <br>
      The build always fails at syslinux-native.
      <br>
      <br>
      I tried several things:
      <br>
      - deleted tmp directory, re-try build = failure
      <br>
      - deleted build directory, re-try build = failure
      <br>
      - deleted build directory, build only syslinux = failure
      <br>
      - deleted build directory, build only syslinux-native = failure
      <br>
      <br>
      I think I may be doing something wrong, because about an hour of
      Google searching did not turn up anybody having a similar issue.
      <br>
      <br>
      I am running Kubuntu 13.10 64-bit.
      <br>
      <br>
      Can anyone please offer any advice, so that I can successfully
      build x86-64 images?
      <br>
      <br>
      Thanks very much
      <br>
      Markus
      <br>
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------070506010605070703030001--
