Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78B83E0070B; Thu,  8 Jan 2015 18:40:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E871CE0048B
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 18:40:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t092eG3D009462
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Jan 2015 18:40:16 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Thu, 8 Jan 2015 18:40:15 -0800
Message-ID: <54AF3F90.2070803@windriver.com>
Date: Fri, 9 Jan 2015 10:40:16 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
In-Reply-To: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: Booting .hddimg from USB failed -> ramdisk not found /dev/ram0 - HELP!
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
X-List-Received-Date: Fri, 09 Jan 2015 02:40:22 -0000
Content-Type: multipart/alternative;
	boundary="------------030307050905000000030204"

--------------030307050905000000030204
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

How about adding in local.conf the following line? Does it work for you?
USE_DEVFS = "0"

Regards,
Chen Qi

On 01/08/2015 05:59 AM, Simon Bolek wrote:
> Hello folks!
>
> I have the following problem/question.
> 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu 14.10
> 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP method)
> 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not 
> found ramdisk*
>
> so initrd is trying to find /dev/ram0 which does not exist in the 
> image. I checked rootfs and there is nothing under
> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/dev
>
> I googled this up and there is a thread telling to check the .config 
> file for /CONFIG_BLK_DEV_RAM /settings/./
> I have the following entries in:
> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
> ...
> CONFIG_BLK_DEV_RAM=y
> CONFIG_BLK_DEV_RAM_COUNT=16
> CONFIG_BLK_DEV_RAM_SIZE=4096
> ...
>
> I also */bitbake core-image-sato -c cleansstate/* twice//already.
> I also*bitbake core-image-sato -c menuconfig *once more and afterwards 
> *bitbake linux-yocto* again.
> I also tried IRC channels, but no answer so far...
>
> Can anyone help me? How can i force bitbake to create /dev/ram0 under 
> rootfs?
> Or maybe there is another trick to boot the image from USB?
>
> best regards
> simon:-)
>
> Viele Grüsse
> Simon Bolek
>
> mit freundlichem Gruss / best regards / pozdrawiam / atentamente
> Simon P. Bolek
> ------------------------------------------------------
> Dipl. Inf. Simon P. Bolek
> SAP Consultant
> Business Mobile and IVI Solutions
> mailto: simon.bolek@arcom-ivi.de <mailto:simon.bolek@arcom-ivi.de>
> http://www.arcom-ivi.de/
> XING: https://www.xing.com/profile/SimonP_Bolek
>
>


--------------030307050905000000030204
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">How about adding in local.conf the
      following line? Does it work for you?<br>
      USE_DEVFS = "0"<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 01/08/2015 05:59 AM, Simon Bolek wrote:<br>
    </div>
    <blockquote
cite="mid:CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Hello folks!<br>
            <br>
          </div>
          <div>I have the following problem/question. <br>
            1) I built a standard .hddimg core-image-sato genericx86 on
            ubuntu 14.10<br>
          </div>
          <div>2) Afterwards, this .hddimg was deployed to USB device
            (USB-ZIP method)<br>
          </div>
          <div>3) Tried to boot Atom PC from the USB Device -&gt; <b>ERROR:
              cound not found ramdisk</b><br>
            <br>
          </div>
          <div>so initrd is trying to find /dev/ram0 which does not
            exist in the image. I checked rootfs and there is nothing
            under <br>
../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/dev<br>
          </div>
          <div><br>
            I googled this up and there is a thread telling to check the
            .config file for <i>CONFIG_BLK_DEV_RAM </i>settings<i>.</i>
            <br>
            I have the following entries in:<br>
../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config<br>
            ...<br>
            CONFIG_BLK_DEV_RAM=y<br>
            CONFIG_BLK_DEV_RAM_COUNT=16<br>
            CONFIG_BLK_DEV_RAM_SIZE=4096<br>
          </div>
          <div>...<br>
            <br>
          </div>
          <div>I also <b><i>bitbake core-image-sato -c cleansstate</i></b>
            twice<i> </i>already.<br>
          </div>
          <div>I also<b> bitbake core-image-sato -c menuconfig </b>once
            more and afterwards <b>bitbake linux-yocto</b> again.<br>
          </div>
          <div>I also tried IRC channels, but no answer so far...<br>
            <br>
          </div>
          <div>Can anyone help me? How can i force bitbake to create
            /dev/ram0 under rootfs?<br>
          </div>
          <div>Or maybe there is another trick to boot the image from
            USB?<br>
          </div>
          <div><br>
          </div>
          best regards<br>
        </div>
        simon:-)<br>
        <div>
          <div>
            <div><br clear="all">
              <div>
                <div class="gmail_signature">Viele Grüsse<br>
                  Simon Bolek<br>
                  <br>
                  mit freundlichem Gruss / best regards / pozdrawiam /
                  atentamente<br>
                  Simon P. Bolek<br>
                  ------------------------------------------------------<br>
                  Dipl. Inf. Simon P. Bolek<br>
                  SAP Consultant<br>
                  <div>Business <span
style="font-family:arial,sans-serif;font-size:13px;border-collapse:collapse">Mobile
                      and IVI Solutions</span><br>
                    <span
style="font-family:arial,sans-serif;font-size:13px;border-collapse:collapse"></span>
                    <div>mailto: <a moz-do-not-send="true"
                        href="mailto:simon.bolek@arcom-ivi.de"
                        target="_blank">simon.bolek@arcom-ivi.de</a>
                      <div><a moz-do-not-send="true"
                          href="http://www.arcom-ivi.de/"
                          target="_blank">http://www.arcom-ivi.de/</a><br>
                        XING: <a moz-do-not-send="true"
                          href="https://www.xing.com/profile/SimonP_Bolek"
                          target="_blank">https://www.xing.com/profile/SimonP_Bolek</a><br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------030307050905000000030204--
