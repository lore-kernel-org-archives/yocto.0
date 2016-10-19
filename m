Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E7CE00DB1; Wed, 19 Oct 2016 01:09:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.17 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [194.25.134.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailout02.t-online.de (mailout02.t-online.de [194.25.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB22AE00D73
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 01:08:58 -0700 (PDT)
Received: from fwd17.aul.t-online.de (fwd17.aul.t-online.de [172.20.27.64])
	by mailout02.t-online.de (Postfix) with SMTP id 629F141A02F8
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 10:08:54 +0200 (CEST)
Received: from [192.168.2.105]
	(JJBbRuZGQhr2xmzm3wLu8PvcNXhcK2W6Lmozwu6A0ZQBZAewAaU7aiUAjCSCDLDQHo@[79.199.47.227])
	by fwd17.t-online.de with (TLSv1.2:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1bwlvh-2Pzu2y0; Wed, 19 Oct 2016 10:08:53 +0200
To: Yocto <yocto@yoctoproject.org>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <a8cb4338-a230-de50-70af-329f69a0950b@t-online.de>
Date: Wed, 19 Oct 2016 10:08:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
X-ID: JJBbRuZGQhr2xmzm3wLu8PvcNXhcK2W6Lmozwu6A0ZQBZAewAaU7aiUAjCSCDLDQHo
X-TOI-MSGID: a02d695b-61c0-484a-9079-4bf79ab40867
Subject: Problems with image creation
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
X-List-Received-Date: Wed, 19 Oct 2016 08:09:02 -0000
Content-Type: multipart/alternative;
	boundary="------------C877CB6B95CA9A302ACA32E7"

--------------C877CB6B95CA9A302ACA32E7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am building an image for development in the morty branch. It is quite 
large and therefore I only create iso images with the variable NOHDD = 
"1". At task do_image_wic the following is applied:

| Error: exec_cmd: cp 
/home/flk/yocto-pc/poky/build-pc/tmp/work/genericx86-poky-linux/neutrino-image/1.0-r0/neutrino-image-1.0/hddimg/EFI/BOOT/* 
/home/flk/yocto-pc/poky/build-pc/tmp/work/genericx86-poky-linux/neutrino-image/1.0-r0/deploy-neutrino-image-image-complete/neutrino-image-genericx86-20161018191251/build/hdd/boot/EFI/BOOT 
returned '1' instead of 0


It should be ok if this is "1" , respectively the command shouldn`t be 
called at all

I can avoid the error quick and dirty like this:


# workaround: NOHDD varibale isn`t respected in do_wic_image

IMAGE_PREPROCESS_COMMAND += "do_fix_image_gen;"

do_fix_image_gen() {

mkdir -p ${S}/hddimg/EFI/BOOT/

touch ${S}/hddimg/EFI/BOOT/bla

}


Regards,

Markus


--------------C877CB6B95CA9A302ACA32E7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
    </p>
    <p>
      <title></title>
      <meta name="generator" content="LibreOffice 5.1.4.2 (Linux)">
      <style type="text/css">
		@page { margin: 2cm }
		p { margin-bottom: 0.25cm; line-height: 120% }
	</style>
      <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US"><font
          face="Helvetica, Arial, sans-serif">Hi,</font></p>
      <font face="Helvetica, Arial, sans-serif">
      </font>
      <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US"><font
          face="Helvetica, Arial, sans-serif">I am building an image for
          development in the morty branch. It is
          quite large and therefore I only create iso images with the
          variable
          NOHDD = "1". At task do_image_wic the following is applied:
        </font></p>
      <p style="margin-bottom: 0cm; line-height: 100%"><font face="STIX">|
          Error: exec_cmd:
          cp
/home/flk/yocto-pc/poky/build-pc/tmp/work/genericx86-poky-linux/neutrino-image/1.0-r0/neutrino-image-1.0/hddimg/EFI/BOOT/*
/home/flk/yocto-pc/poky/build-pc/tmp/work/genericx86-poky-linux/neutrino-image/1.0-r0/deploy-neutrino-image-image-complete/neutrino-image-genericx86-20161018191251/build/hdd/boot/EFI/BOOT
          returned '1' instead of 0</font></p>
      <p style="margin-bottom: 0cm; line-height: 100%"><br>
      </p>
      <font face="Helvetica, Arial, sans-serif">It
        should be ok if this is "1" , respectively the command
        shouldn`t be called at all</font></p>
    <p><font face="Helvetica, Arial, sans-serif">I can avoid the error
        quick and
        dirty like this: </font><br>
    </p>
    <p><font face="STIX"><br>
      </font></p>
    <p><font face="STIX"># workaround: NOHDD
        varibale isn`t respected in do_wic_image
      </font>
      <p style="margin-bottom: 0cm; line-height: 100%"><font face="STIX">IMAGE_PREPROCESS_COMMAND
          += "do_fix_image_gen;"</font></p>
      <font face="STIX">
      </font>
      <p style="margin-bottom: 0cm; line-height: 100%"><font face="STIX">do_fix_image_gen()
          {</font></p>
      <font face="STIX">
      </font>
      <p style="margin-bottom: 0cm; line-height: 100%"><font face="STIX">mkdir
          -p ${S}/hddimg/EFI/BOOT/</font></p>
      <font face="STIX">
      </font>
      <p style="margin-bottom: 0cm; line-height: 100%"><font face="STIX">touch
          ${S}/hddimg/EFI/BOOT/bla</font></p>
      <font face="Liberation Sans">
      </font>
      <p style="margin-bottom: 0cm; line-height: 100%"><font face="STIX">}</font></p>
      <font face="Helvetica, Arial, sans-serif"><br>
      </font></p>
    <p><font face="Helvetica, Arial, sans-serif">Regards,<br>
      </font></p>
    <p><font face="Helvetica, Arial, sans-serif">Markus
      </font>
    </p>
  </body>
</html>

--------------C877CB6B95CA9A302ACA32E7--
