Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D05AE00D90; Fri, 28 Jun 2019 02:38:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0B3AE008E0
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 02:37:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5S9bc80029584
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Jun 2019 02:37:38 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Fri, 28 Jun 2019 02:37:37 -0700
To: <a.silberhorn@web.de>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <trinity-b095feb1-65bd-4db2-999a-3afe9a9f0428-1561451174816@3c-app-webde-bs02>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <85e7a539-cefc-e96c-4dd3-51d288a16a01@windriver.com>
Date: Fri, 28 Jun 2019 17:49:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <trinity-b095feb1-65bd-4db2-999a-3afe9a9f0428-1561451174816@3c-app-webde-bs02>
X-Originating-IP: [128.224.162.148]
Subject: Re: [yocto-builds] Yocto build won't boot from HDD
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
X-List-Received-Date: Fri, 28 Jun 2019 09:38:56 -0000
Content-Type: multipart/alternative;
	boundary="------------F2D11F03FD5F59B10A1C0EB9"

--------------F2D11F03FD5F59B10A1C0EB9
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Forward to this yocto mailing list. Hope some experts could help you.
When you have problems regarding yocto, please send email to this 
mailing list.

Regards,
Chen Qi

On 06/25/2019 04:26 PM, a.silberhorn@web.de wrote:
> Hello everybody,
> Since im new to Yocto I ran into some problems trying to boot my 
> intel-corei7-64 core-image-minimal from HDD.
> I used dd to put it on the hard drive but while booting it stops with 
> a Kernel panic:
> Kernel panic - not syncing: VFS: Unable to moutn root fs on unkknown 
> block (0,0)
> I tried a lot and searched for a solution. First of all I had to do a 
> grub-install and configured the grub.cfg file in the boot partition to 
> list the Image in GRUB but I am not getting any further than that 
> point. In some forums they said its meaning that the initramfs is missing.
> I dont think that the image itself is broken because it works on a usb 
> flash drive.
> Could someone of you folks be so nice to help me out of this misery?
> Best regards
> Alex
>
>


--------------F2D11F03FD5F59B10A1C0EB9
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Forward to this yocto mailing list.
      Hope some experts could help you.<br>
      When you have problems regarding yocto, please send email to this
      mailing list.<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 06/25/2019 04:26 PM, <a class="moz-txt-link-abbreviated" href="mailto:a.silberhorn@web.de">a.silberhorn@web.de</a> wrote:<br>
    </div>
    <blockquote
cite="mid:trinity-b095feb1-65bd-4db2-999a-3afe9a9f0428-1561451174816@3c-app-webde-bs02"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>Hello everybody,</div>
        <div> </div>
        <div>Since im new to Yocto I ran into some problems trying to
          boot my intel-corei7-64 core-image-minimal from HDD.</div>
        <div>I used dd to put it on the hard drive but while booting it
          stops with a Kernel panic:</div>
        <div> </div>
        <div>Kernel panic - not syncing: VFS: Unable to moutn root fs on
          unkknown block (0,0)</div>
        <div> </div>
        <div>I tried a lot and searched for a solution. First of all I
          had to do a grub-install and configured the grub.cfg file in
          the boot partition to list the Image in GRUB but I am not
          getting any further than that point. In some forums they said
          its meaning that the initramfs is missing.</div>
        <div>I dont think that the image itself is broken because it
          works on a usb flash drive.</div>
        <div> </div>
        <div>Could someone of you folks be so nice to help me out of
          this misery?</div>
        <div> </div>
        <div>Best regards</div>
        <div> </div>
        <div>Alex</div>
        <div> </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------F2D11F03FD5F59B10A1C0EB9--
