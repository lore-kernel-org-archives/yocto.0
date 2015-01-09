Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA74E008DD; Fri,  9 Jan 2015 01:38:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30EA4E004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 01:38:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t099crMt026691
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 Jan 2015 01:38:54 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Fri, 9 Jan 2015 01:38:53 -0800
Message-ID: <54AFA1AE.7060107@windriver.com>
Date: Fri, 9 Jan 2015 17:38:54 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com>
In-Reply-To: <CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: Atom-pc, usb installation - NO BOOTABLE DEVICE
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
X-List-Received-Date: Fri, 09 Jan 2015 09:38:59 -0000
Content-Type: multipart/alternative;
	boundary="------------050106020401040609020406"

--------------050106020401040609020406
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2015 05:31 PM, Simon Bolek wrote:
> Hi,
>
> The following is the case:
> 1) atom-pc with ssd 80 GB hard drive(the only one, no optical, no usb, 
> etc.) as a target device
> 2) core-image-sato bitbaked and moved to usb device successfully
> 3) usb 'install' to atom-pc successfull (so the install script says)
> 4) after removing the usb device, pressing enter the boot says NO 
> BOOTABLE DEVICE
>
> WHY?
>

The minimal installer in OE has the problem of hardcoding disk names in 
grub configuration file instead of using UUID.
So it's possible that you may experience boot failures due to the change 
of disk names.

//Chen Qi

> At the same time, ISO image (generated at the same bitbake run) is 
> working in virtual box like a charm. 'Install' was successfull and 
> booting fine - i get GRUB menu with one 'Linux' entry as expected.
>
> On the Atom-pc this is not working. So something has to be missing. 
> Maybe you will have a clue.
> Here are the details:
> The SSD HDD is /dev/sda  with the partition table:
> /dev/sda1 - boot
> /dev/sda2 - rootfs
> /dev/sda3 - swap
> there is no asterix at boot partition
>
> under /dev/sda1/grub there is grub.cfg with:
> menuentry "Linux" {
>    set root=(hd0,1)
>    linux /vmlinux root=/dev/sda2 rw
> }
>   - so first HDD, first/boot partition
>   - it points to /vmlinuz and /dev/sda2
> It looks fine for me.
> I already tried to dd if=/dev/zero of=/dev/sda bs=4M, and 'install' 
> from usb again, but no luck.
> I already tried to put asterix on the boot partition, but than BOOT 
> gets me to /grub rescue>/
>
> If you have any ideas, where to look for, please let me know.
>
> thank you and best regards
> simon :-)
>
>


--------------050106020401040609020406
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/09/2015 05:31 PM, Simon Bolek
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>Hi, <br>
          <br>
        </div>
        <div>The following is the case: <br>
        </div>
        <div>1) atom-pc with ssd 80 GB hard drive(the only one, no
          optical, no usb, etc.) as a target device<br>
        </div>
        <div>2) core-image-sato bitbaked and moved to usb device
          successfully<br>
        </div>
        <div>3) usb 'install' to atom-pc successfull (so the install
          script says)<br>
        </div>
        <div>4) after removing the usb device, pressing enter the boot
          says NO BOOTABLE DEVICE<br>
          <br>
        </div>
        <div>WHY?<br>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    The minimal installer in OE has the problem of hardcoding disk names
    in grub configuration file instead of using UUID.<br>
    So it's possible that you may experience boot failures due to the
    change of disk names.<br>
    <br>
    //Chen Qi<br>
    <br>
    <blockquote
cite="mid:CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>At the same time, ISO image (generated at the same bitbake
          run) is working in virtual box like a charm. 'Install' was
          successfull and booting fine - i get GRUB menu with one
          'Linux' entry as expected.<br>
          <br>
        </div>
        <div>On the Atom-pc this is not working. So something has to be
          missing. Maybe you will have a clue. <br>
        </div>
        <div>Here are the details:<br>
        </div>
        <div>The SSD HDD is /dev/sda  with the partition table: <br>
        </div>
        <div>/dev/sda1 - boot<br>
        </div>
        <div>/dev/sda2 - rootfs<br>
        </div>
        <div>/dev/sda3 - swap<br>
        </div>
        <div>there is no asterix at boot partition<br>
        </div>
        <div><br>
        </div>
        <div>under /dev/sda1/grub there is grub.cfg with:<br>
        </div>
        <div>menuentry "Linux" {<br>
             set root=(hd0,1)<br>
        </div>
        <div>   linux /vmlinux root=/dev/sda2 rw<br>
        </div>
        <div>}<br>
        </div>
        <div>  - so first HDD, first/boot partition <br>
        </div>
        <div>  - it points to /vmlinuz and /dev/sda2   <br>
        </div>
        <div>It looks fine for me.<br>
        </div>
        <div>I already tried to dd if=/dev/zero of=/dev/sda bs=4M, and
          'install' from usb again, but no luck.<br>
        </div>
        <div>I already tried to put asterix on the boot partition, but
          than BOOT gets me to <i>grub rescue&gt;</i><br>
        </div>
        <div><br>
          If you have any ideas, where to look for, please let me know.<br>
        </div>
        <div><br>
        </div>
        thank you and best regards<br>
        simon :-)<br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------050106020401040609020406--
