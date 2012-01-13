Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34E6BE0030F
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 18:54:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0D2sWfm004631
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jan 2012 18:54:32 -0800 (PST)
Received: from [128.224.23.8] (128.224.23.8) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 12 Jan 2012 18:54:32 -0800
Message-ID: <4F0F9CE7.9010505@windriver.com>
Date: Thu, 12 Jan 2012 21:54:31 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.20) Gecko/20110805 Thunderbird/3.1.12
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com>
In-Reply-To: <CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Developer Manual Appendix B example
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
X-List-Received-Date: Fri, 13 Jan 2012 02:54:36 -0000
Content-Type: multipart/alternative;
	boundary="------------080806080500040109080004"

--------------080806080500040109080004
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-12 09:50 PM, James Abernathy wrote:
> I'm trying to do the Developer Manual Appendix B example exactly as 
> written only changing the path to my home directory. When I get to 
> B.1.8.3, bitbake after patching the kernel calibrate.c and modifiing 
> the path to the local git repository for linux-yocto, I get an error 
> on the build.  The log file of the error is below:

Funny how things tend to arrive in bunches. We just discussed this today 
on the
list. The meta-kernel-dev layer is tied to master, and causes this 
problem when
used with edison. And that's what you are seeing here. I'm going to 
create a edison
branch for meta-kernel-dev to match up the tool SRCREVs.

In the meantime, if you remove the kern-tools-native_git.bbappend from 
the meta-kernel-dev
layer, the AUTOREV setting will be removed, and you won't pull in tools 
that are too
new for the matching kernel.

Cheers,

Bruce

>
> [INFO] doing kernel configme
> [INFO] Branch yocto/standard/common-pc/base used by common-pc-standard.scc
> [INFO] collecting configs in ./meta/meta-series
> mv: cannot stat 
> `/home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/linux-qemux86-standard-build/.tmp.config*': 
> No such file or directory
> creation of pre-processed config data failed
> config of yocto/standard/common-pc/base (common-pc-standard.scc) failed
> ERROR: Function 'do_kernel_configme' failed (see 
> /home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/temp/log.do_kernel_configme.15214 
> for further information)
>
> Any help would be appreciated.
>
> Jim A
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------080806080500040109080004
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
    <title></title>
  </head>
  <body text="#000000" bgcolor="#ffffff">
    On 12-01-12 09:50 PM, James Abernathy wrote:
    <blockquote
cite="mid:CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      I'm trying to do the Developer Manual Appendix B example exactly
      as written only changing the path to my home directory. When I get
      to B.1.8.3, bitbake after patching the kernel calibrate.c and
      modifiing the path to the local git repository for linux-yocto, I
      get an error on the build.&nbsp; The log file of the error is below:<br>
    </blockquote>
    <br>
    Funny how things tend to arrive in bunches. We just discussed this
    today on the<br>
    list. The meta-kernel-dev layer is tied to master, and causes this
    problem when<br>
    used with edison. And that's what you are seeing here. I'm going to
    create a edison<br>
    branch for meta-kernel-dev to match up the tool SRCREVs. <br>
    <br>
    In the meantime, if you remove the kern-tools-native_git.bbappend
    from the meta-kernel-dev<br>
    layer, the AUTOREV setting will be removed, and you won't pull in
    tools that are too<br>
    new for the matching kernel.<br>
    <br>
    Cheers,<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com"
      type="cite">
      <br>
      [INFO] doing kernel configme<br>
      [INFO] Branch yocto/standard/common-pc/base used by
      common-pc-standard.scc<br>
      [INFO] collecting configs in ./meta/meta-series <br>
      mv: cannot stat
      `/home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/linux-qemux86-standard-build/.tmp.config*':
      No such file or directory<br>
      creation of pre-processed config data failed<br>
      config of yocto/standard/common-pc/base (common-pc-standard.scc)
      failed<br>
      ERROR: Function 'do_kernel_configme' failed (see
      /home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/temp/log.do_kernel_configme.15214
      for further information)<br>
      <br>
      Any help would be appreciated. <br>
      <br>
      Jim A<br>
      <br>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------080806080500040109080004--
