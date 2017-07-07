Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58F42E00A38; Fri,  7 Jul 2017 01:06:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.189 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay11.public.one.com (mailrelay11.public.one.com
	[195.47.247.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA893E00718
	for <yocto@yoctoproject.org>; Fri,  7 Jul 2017 01:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=l4D/XTtxHs9RouMJ2M1+Epmw49fR8PZotYKctVXwLbw=;
	b=nXFVaqgn6a7sUwBM0G3plaLkb/YX9wjnbuNzo8Ixi8IBpdEf7EtA60mb1uKPRxNA/8N2K6nU3b7ri
	mz/Pk5HwSvSEYSd7BHp3WZOQAKg8wJBBhPuuJDu2k9OwqJxOX6X/qUFbsFULjXSul0bobQl+hgsrlr
	tHCmKsZ4dLTPyieE=
X-HalOne-Cookie: 36ca244e8a19676f5cc5f0d12ba61c83ef5aff7f
X-HalOne-ID: 18a4fe2f-62eb-11e7-be78-b82a72d06996
Received: from [192.168.1.73] (unknown [145.236.75.242])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id 18a4fe2f-62eb-11e7-be78-b82a72d06996;
	Fri, 07 Jul 2017 08:05:53 +0000 (UTC)
To: yocto@yoctoproject.org
References: <7238EEDF8C36444C95B21A966F50FB8851DB30BD@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <bce3d4ba-1a3f-1c94-07c2-ed1fc42fea9d@embexus.com>
Date: Fri, 7 Jul 2017 10:05:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <7238EEDF8C36444C95B21A966F50FB8851DB30BD@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN>
Subject: Re: Wifi on wandboard with Yoct0 Morty
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
X-List-Received-Date: Fri, 07 Jul 2017 08:06:05 -0000
Content-Type: multipart/alternative;
	boundary="------------899151CF5745A308443FA6C0"
Content-Language: en-US

--------------899151CF5745A308443FA6C0
Content-Type: text/plain; charset=koi8-r; format=flowed
Content-Transfer-Encoding: 8bit

Fo wandboard I use meta-freescale and meta-freescale-3rdparty layers.

Wifi works out of the box :-)


On 07.07.2017 09:59, Umamahesh Yelchuruvenkata wrote:
> Hi
> I am trying to bring up Wifi on wandboard Rev C1 and using Yocto Morty 
> version(2.2.2) , I downloaded the firmware bin files from following
>
> wget -c https://git.kernel.org/cgit/linux/kerne ... 0-sdio.bin 
> <https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/plain/brcm/brcmfmac4330-sdio.bin>
> wget -c https://rcn-ee.com/repos/git/meta-fsl-a ... 0-sdio.txt 
> <https://rcn-ee.com/repos/git/meta-fsl-arm-extra/recipes-bsp/broadcom-nvram-config/files/wandboard/brcmfmac4330-sdio.txt>
>
> Created a folder firmware/brcm under 
> tmp/work/wandboard-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/lib
>
> Enabled the drivers,
>
> <*> Broadcom FullMAC wireless cards support Å Å
> Å Å [*] SDIO bus interface support
>
> At the target getting following errors,
>
> root@wandboard:~# dmesg | grep brcm
> [ 1.739333] brcmfmac_sdio mmc1:0001:1: Direct firmware load for 
> brcm/brcmfmac4330-sdio.bin failed with error -2
> [ 1.748200] brcmfmac_sdio mmc1:0001:1: Falling back to user helper
> [ 62.783879] brcmfmac: brcmf_sdio_htclk: HT Avail timeout (1000000): 
> clkctl 0x50
> [ 63.793963] brcmfmac: brcmf_sdio_htclk: HT Avail timeout (1000000): 
> clkctl 0x50
> root@wandboard:~#
>
>
> Please suggest
>
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and 
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as 
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in 
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any 
> liability on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of 
> the author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction, 
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior 
> written consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error 
> please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for 
> viruses and other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
>
>

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
https://embexus.com


--------------899151CF5745A308443FA6C0
Content-Type: text/html; charset=koi8-r
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=koi8-r">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Fo wandboard I use meta-freescale and meta-freescale-3rdparty
      layers.</p>
    <p>Wifi works out of the box <span class="moz-smiley-s1"><span>:-)</span></span><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 07.07.2017 09:59, Umamahesh
      Yelchuruvenkata wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:7238EEDF8C36444C95B21A966F50FB8851DB30BD@CHN-HCLT-MBS02.HCLT.CORP.HCL.IN">
      <meta http-equiv="Content-Type" content="text/html;
        charset=koi8-r">
      <style type="text/css" id="owaParaStyle">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">Hi
        <br>
        I am trying to bring up Wifi on wandboard Rev C1 and using Yocto
        Morty version(2.2.2) , I downloaded the firmware bin files from
        following
        <br>
        <br>
        wget -c <a class="postlink"
href="https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/plain/brcm/brcmfmac4330-sdio.bin"
          moz-do-not-send="true">
          https://git.kernel.org/cgit/linux/kerne ... 0-sdio.bin</a><br>
        wget -c <a class="postlink"
href="https://rcn-ee.com/repos/git/meta-fsl-arm-extra/recipes-bsp/broadcom-nvram-config/files/wandboard/brcmfmac4330-sdio.txt"
          moz-do-not-send="true">
          https://rcn-ee.com/repos/git/meta-fsl-a ... 0-sdio.txt</a><br>
        <br>
        Created a folder firmware/brcm under
tmp/work/wandboard-fslc-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/lib<br>
        <br>
        Enabled the drivers,<br>
        <br>
        &lt;*&gt; Broadcom FullMAC wireless cards support Å Å <br>
        Å Å [*] SDIO bus interface support <br>
        <br>
        At the target getting following errors,<br>
        <br>
        root@wandboard:~# dmesg | grep brcm<br>
        [ 1.739333] brcmfmac_sdio mmc1:0001:1: Direct firmware load for
        brcm/brcmfmac4330-sdio.bin failed with error -2<br>
        [ 1.748200] brcmfmac_sdio mmc1:0001:1: Falling back to user
        helper<br>
        [ 62.783879] brcmfmac: brcmf_sdio_htclk: HT Avail timeout
        (1000000): clkctl 0x50<br>
        [ 63.793963] brcmfmac: brcmf_sdio_htclk: HT Avail timeout
        (1000000): clkctl 0x50<br>
        root@wandboard:~# <br>
        <br>
        <br>
        Please suggest</div>
      <span style="FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray;
        FONT-SIZE: 7.5pt; mso-fareast-font-family: 'Times New Roman'">
        <p style="MARGIN: 0in 0in 0pt" class="MsoNormal"><br>
          <br>
          <font style="FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray;
            FONT-SIZE: 9px">::DISCLAIMER::<br>
----------------------------------------------------------------------------------------------------------------------------------------------------</font></p>
        <p style="MARGIN: 0in 0in 0pt" class="MsoNormal"><font
            style="FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray;
            FONT-SIZE: 11px">The contents of this e-mail and any
            attachment(s) are confidential and intended for the named
            recipient(s) only.<br>
            E-mail transmission is not guaranteed to be secure or
            error-free as information could be intercepted, corrupted, <br>
            lost, destroyed, arrive late or incomplete, or may contain
            viruses in transmission. The e mail and its contents <br>
            (with or without referred errors) shall therefore not attach
            any liability on the originator or HCL or its affiliates. <br>
            Views or opinions, if any, presented in this email are
            solely those of the author and may not necessarily reflect
            the <br>
            views or opinions of HCL or its affiliates. Any form of
            reproduction, dissemination, copying, disclosure,
            modification, <br>
            distribution and / or publication of this message without
            the prior written consent of authorized representative of <br>
            HCL is strictly prohibited. If you have received this email
            in error please delete it and notify the sender immediately.
            <br>
            Before opening any email and/or attachments, please check
            them for viruses and other defects.</font></p>
        <p style="MARGIN: 0in 0in 0pt" class="MsoNormal"><font
            style="FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray;
            FONT-SIZE: 11px">----------------------------------------------------------------------------------------------------------------------------------------------------</font></p>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <br>
      </span></blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki

<a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
  </body>
</html>

--------------899151CF5745A308443FA6C0--
