Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 665EBE0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 18:45:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3D1jveb010008
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Apr 2012 18:45:57 -0700 (PDT)
Received: from [128.224.162.201] (128.224.162.201) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 12 Apr 2012 18:45:56 -0700
Message-ID: <4F878551.8040904@windriver.com>
Date: Fri, 13 Apr 2012 09:45:53 +0800
From: Zhao Yi <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAPhnLPDrex8Cw2tK9vkBNu9cSGo6Lo6fnzXoPy=BHCGEFQjcMw@mail.gmail.com>
In-Reply-To: <CAPhnLPDrex8Cw2tK9vkBNu9cSGo6Lo6fnzXoPy=BHCGEFQjcMw@mail.gmail.com>
X-Originating-IP: [128.224.162.201]
Cc: yocto@yoctoproject.org
Subject: Re: QA for 1.2_M4.rc3
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
X-List-Received-Date: Fri, 13 Apr 2012 01:45:58 -0000
Content-Type: multipart/alternative;
	boundary="------------090109060808040809030903"

--------------090109060808040809030903
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Beth,

We found the rc3 branch has been updated and rebuild on autobuilder. The 
images are available in 
http://autobuilder.pokylinux.org/nightly/20120412-2/
We should use it rather than 20120411-2 for our rc3 testing,  right ?

Thanks,
Yi

? 2012?04?12? 09:31, Flanagan, Elizabeth ??:
> Sorry for the lateness on this, we were waiting for a few patches.
>
> We began running the tagged rc3 build today at around 4pm PST. Images 
> should be available in about 10 hours (we are building from a clean 
> sstate). You can find images in a few hours at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20120411-2
>
> -- 
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--------------090109060808040809030903
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    Hi Beth,<br>
    <br>
    We found the rc3 branch has been updated and rebuild on autobuilder.
    The images are available in
    <a class="moz-txt-link-freetext" href="http://autobuilder.pokylinux.org/nightly/20120412-2/">http://autobuilder.pokylinux.org/nightly/20120412-2/</a>&nbsp; <br>
    We should use it rather than 20120411-2 for our rc3 testing,&nbsp; right
    ?<br>
    <br>
    Thanks,<br>
    Yi<br>
    <br>
    &#20110; 2012&#24180;04&#26376;12&#26085; 09:31, Flanagan, Elizabeth &#20889;&#36947;:
    <blockquote
cite="mid:CAPhnLPDrex8Cw2tK9vkBNu9cSGo6Lo6fnzXoPy=BHCGEFQjcMw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      Sorry for the lateness on this, we were waiting for a few patches.
      <br>
      <br>
      We began running the tagged rc3 build today at around 4pm PST.
      Images should be available in about 10 hours (we are building from
      a clean sstate). You can find images in a few hours at:<br>
      <br>
      <a moz-do-not-send="true"
        href="http://autobuilder.yoctoproject.org/pub/nightly/20120411-2">http://autobuilder.yoctoproject.org/pub/nightly/20120411-2</a><br
        clear="all">
      <br>
      -- <br>
      Elizabeth Flanagan<br>
      Yocto Project<br>
      Build and Release<br>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
  </body>
</html>

--------------090109060808040809030903--
